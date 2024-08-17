<?php

namespace App\Http\Controllers\UserApp;

use App\Models\Point;
use App\Models\Saldo;
use App\Models\TukarPoin;
use App\Models\TukarSaldo;
use App\Models\Transaction;
use App\Models\BSU;
use App\Models\Pengumuman;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('user-app/login');
    }

    public function store(Request $request)
    {
        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required']
        ]);

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            $point = Point::where('user_id', $user->id)->first();
            $saldo = Saldo::where('user_id', $user->id)->first();
            $transactions = Transaction::where('user_id', $user->id)->latest()->limit(3)->get();
            $tukar_poin = TukarPoin::where('user_id', $user->id)->count();      

            return redirect()->intended('dashboard')->with([
                'user' => $user,
                'point' => $point,
                'saldo' => $saldo,
                'transactions' => $transactions,
                'tukar_poin' => $tukar_poin,
            ]);
        }

        return back()->with('loginError', 'Email Atau Password Salah.');
    }

    public function login()
    {
        $user = Auth::user();
        $point = Point::where('user_id', $user->id)->first();
        $saldo = Saldo::where('user_id', $user->id)->first();
        $transactions = Transaction::where('user_id', $user->id)->latest()->limit(3)->get();

        $total_tukar_poin_count = TukarPoin::where('user_id', $user->id)->count();

        $total_tukar_saldo_count = TukarSaldo::where('user_id', $user->id)->count();

        $total_reward_count = $total_tukar_poin_count + $total_tukar_saldo_count;

        $total_weight = Transaction::where('user_id', $user->id)->sum('total_weight');

        $bsuName = $user->bsu ? $user->bsu->name : null;

        $pengumuman = Pengumuman::where('admin_id', $user->cms_user_id)
        ->where('status', 'On Proses')
        ->first();

        return view('user-app/dashboard')->with([
            'user' => $user,
            'point' => $point,
            'saldo' => $saldo,
            'transactions' => $transactions,
            'total_reward_count' => $total_reward_count,
            'total_weight' => $total_weight, 
            'bsu_name' => $bsuName,
            'pengumuman' => $pengumuman,
        ]);
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }
}
