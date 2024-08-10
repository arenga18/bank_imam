<?php

namespace App\Http\Controllers\UserApp;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{

    public function profile()
    {
        return view('user-app/profile');
    }

    public function settings()
    {
        return view('user-app/pengaturan', ['user' => Auth::user()]);
    }
}
