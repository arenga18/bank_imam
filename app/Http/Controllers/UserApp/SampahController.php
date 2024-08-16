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
        $user = Auth::user();
        $cms_user_id = $user->cms_user_id;

        // Debugging: Cek nilai cms_user_id
        // dd($cms_user_id);

        // Mengambil kategori sampah yang admin_id-nya sesuai dengan cms_user_id user yang login
        $categories = SampahCategory::where('admin_id', $cms_user_id)->get();

        $sampahByCategory = [];

        foreach ($categories as $category) {
            $sampahByCategory[$category->name] = Sampah::where('category_id', $category->id)
            ->where('admin_id', $cms_user_id)
            ->get();
        }

        return view('user-app/sampah', compact('sampahByCategory'));
    }
}
