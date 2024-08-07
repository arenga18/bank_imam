<?php

namespace App\Http\Controllers\UserApp;

use App\Models\Sampah;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Models\SampahCategory;

class SampahController extends Controller
{
    public function index()
    {
        $categories = SampahCategory::all();
        $sampahByCategory = [];

        foreach ($categories as $category) {
            $sampahByCategory[$category->name] = Sampah::where('category_id', $category->id)->get();
        }

        return view('user-app/sampah', compact('sampahByCategory'));
    }
}
