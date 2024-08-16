<?php

namespace App\Http\Controllers\UserApp;

use App\Models\User;
use App\Models\Point;
use App\Models\BSU;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
          // Ambil seluruh data dari tabel cms_users
          $data_bsu = BSU::where('id', '!=', 1)->get();

          // Kirimkan data pengguna ke tampilan register
          return view('user-app.register', compact('data_bsu'));
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'username' => 'required|max:255|unique:users',
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed|min:6|max:255',
            'cms_user_id' => 'required|exists:cms_users,id'
        ]);
        $validatedData['password'] = Hash::make($validatedData['password']);
        
        // Ambil ID pengguna dari dropdown
        $selectedBsuId = $request->input('cms_user_id');

        // Buat pengguna baru
        $user = User::create($validatedData);

        // Tambahkan entry Point untuk pengguna baru
        Point::create([
            'user_id' => $user->id,
            'total_points' => 0,
        ]);

        // Jika diperlukan, proses tambahan terkait pengguna terpilih dari dropdown
        $selectedBsu = BSU::find($selectedBsuId);
        // Lakukan proses lain jika diperlukan

        return redirect('/login')->with('success', 'Registrasi Berhasil! Silahkan Login.');
    }
}
