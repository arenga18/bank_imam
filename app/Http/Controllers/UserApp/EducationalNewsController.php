<?php

namespace App\Http\Controllers\UserApp;

use App\Models\EducationalNews;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;

class EducationalNewsController extends Controller
{
    public function index()
    {
        $educationalNews = EducationalNews::all();

        return view('user-app.edukasi', compact('educationalNews'));
    }
}
