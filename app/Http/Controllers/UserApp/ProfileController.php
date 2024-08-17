<?php

namespace App\Http\Controllers\UserApp;

use App\Models\User;
use App\Models\BSU;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class ProfileController extends Controller
{
    public function show()
    {
        $user = Auth::user();
        $list_bsu = BSU::all();
        $bsuName = $user->bsu ? $user->bsu->name : null;
        return view('user-app/profile',  [
            'user' => $user,
            'list_bsu' => $list_bsu,
            'bsu_name' => $bsuName
        ]);
    }

    public function update(Request $request)
    {
        $user = User::findOrFail(auth()->id());

        $user->username = $request->input('username') ?? $user->username;
        $user->email = $request->input('email') ?? $user->email;
        $user->address = $request->input('address') ?? $user->address;
        $user->phone_number = $request->input('phone_number') ?? $user->phone_number;

        // Handle the uploaded image
        if ($request->hasFile('picture')) {
            $picture = $request->file('picture');
            $pictureName = time() . '_' . $picture->getClientOriginalName();
            $picture->move(public_path('uploads/profile'), $pictureName);
            $user->picture = '/uploads/profile/' . $pictureName;
        }

        $user->save();

        return redirect()->back()->with('success', 'Profile has been updated successfully');
    }
}
