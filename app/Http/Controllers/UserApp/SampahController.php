<?php

namespace App\Http\Controllers\UserApp;

use App\Models\Sampah;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Models\SampahCategory;
use Illuminate\Support\Facades\DB;

class SampahController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $cms_user_id = $user->cms_user_id;

        $categories = SampahCategory::where('admin_id', $cms_user_id)->get();

        $sampahByCategory = [];

        foreach ($categories as $category) {
            $sampahByCategory[$category->name] = Sampah::where('category_id', $category->id)
            ->where('admin_id', $cms_user_id)
            ->get();
        }

        return view('user-app/sampah', compact('sampahByCategory'));
    }
    
    public function detail($id)
    {
        $sampah = Sampah::findOrFail($id);
        $userId = auth()->user()->id;
        $cmsUserId = auth()->user()->cms_user_id; 

        $admin = DB::table('cms_users')->where('id', $sampah->admin_id)->first();

        return view('user-app/detail-sampah')->with([
            'sampah' => $sampah,
            'bsu' => $admin
        ]);
    }
}
