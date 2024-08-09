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
        // Mengambil semua data berita edukasi
        $educationalNews = EducationalNews::all();

        // Proses untuk mengekstrak domain dari setiap URL
        $educationalNews->transform(function ($news) {
            $news->domain = $this->getHostFromUrl($news->url); // Menambahkan properti 'domain' ke dalam objek berita
            return $news;
        });

        // Kirim data ke view
        return view('user-app.edukasi', compact('educationalNews'));
    }

    // Fungsi helper untuk mengambil domain utama dari URL
    private function getHostFromUrl($url)
    {
        $parsedUrl = parse_url($url);
        return $parsedUrl['host'] ?? 'undefined';
    }
}

