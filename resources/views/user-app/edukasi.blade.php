@extends('layout.main')

@section('title', 'Edukasi')

@section('header', 'Ruang Edukasi')

@section('content')
<header class="education-header p-3 pt-4 bg-white">
    <div class="header-title">
        <h3 class="text-center mb-4">Ruang Edukasi</h3>
    </div>
    <div class="banner py-4 px-3 text-black rounded-3 gradient-brand-toRight">
        <div class="d-flex align-items-center position-relative">
            <h4 class="mb-0">Ikuti Kegiatan Sosial di Sekitarmu!</h4>
            <img src="{{ asset('images/banner-edu.png') }}" alt="Banner Image" style="width: 80px;" class="position-absolute top-50 end-0 translate-middle-y">
        </div>
    </div>
</header>
<main id="education-page" class="main-container p-3">
        <div class="row">
            <div class="col-12">
                <!-- Tabs for Article and News -->
                <ul class="nav nav-tabs mb-3" id="edukasiTabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" id="artikel-tab" data-toggle="tab" href="#artikel" role="tab" aria-controls="artikel" aria-selected="false">Artikel</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" id="berita-tab" data-toggle="tab" href="#berita" role="tab" aria-controls="berita" aria-selected="true">Berita</a>
                    </li>
                </ul>
                <!-- Tab Content -->
                <div class="tab-content" id="edukasiTabsContent">
                    <div class="tab-pane fade" id="artikel" role="tabpanel" aria-labelledby="artikel-tab">
                        <!-- Artikel content goes here -->
                    </div>
                    <div class="tab-pane fade show active" id="berita" role="tabpanel" aria-labelledby="berita-tab">
                        @foreach($educationalNews as $news)
                        <div class="d-flex mb-2 w-100 shadow p-3 rounded-2 gap-3">
                            <img src="{{ $news->gambar }}" class="news-img rounded" alt="News Image">
                            <div class="card-body">
                                <h6 class="card-title text-truncate-2-lines">
                                    <a href="{{ $news->url }}" class="text-black judul-news">{{ $news->judul }}</a>
                                </h6>
                                <p class="card-text m-0"><small class="text-muted">sumber: {{ $news->domain }}</small></p>
                                <p class="card-text"><small class="text-muted">1 jam yang lalu</small></p>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        {{-- NAVIGATION MENU --}}
    <div class="navigation-menu">
        <div class="container d-flex justify-content-evenly">
            <div>
                <a class="btn btn-lg border-0 px-1 py-auto" href="/dashboard">
                    <i class="bi bi-house primary-color" style="font-size: 1.5rem;"></i>
                    <p class="primary-color font-sm p-0 m-0">Beranda</p>
                </a>
            </div>
            <div>
                <a class="btn btn-lg border-0 px-1 py-auto" href="/tukar-poin">
                    <i class="bi bi-gift primary-color" style="font-size: 1.5rem;"></i>
                    <p class="primary-color font-sm p-0 m-0">Rewards</p>
                </a>
            </div>
            <div>
                <a class="btn btn-lg border-0 px-1 py-auto" href="/kategori-sampah">
                    <i class="bi bi-trash primary-color" style="font-size: 1.5rem;"></i>
                    <p class="primary-color font-sm p-0 m-0">Jual Sampah</p>
                </a>
            </div>
            <div>
                <a class="btn btn-lg border-0 px-1 py-auto" href="/edukasi">
                    <i class="bi bi-book primary-color" style="font-size: 1.5rem;"></i>
                    <p class="primary-color font-sm p-0 m-0">Edukasi</p>
                </a>
            </div>
            <div>
                <a class=" btn btn-lg border-0 px-1 py-auto" href="/settings" role="button">
                    <i class="bi bi-person primary-color" style="font-size: 1.5rem;"></i>
                    <p class="primary-color font-sm p-0 m-0">Profil</p>
                </a>
            </div>
        </div>
    </div>
</main>
    
@endsection
