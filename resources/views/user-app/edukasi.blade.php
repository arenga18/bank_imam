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
            <h4 class="mb-0 text-light" style="max-width: 90%;">Ikuti Kegiatan Sosial di Sekitarmu!</h4>
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
                            <div class="d-flex mb-2 w-100 shadow-sm p-3 rounded-2 gap-3">
                                <img src="{{ $news->gambar }}" class="news-img rounded" alt="News Image" style="object-fit: cover">
                                <div class="card-body d-flex flex-column">
                                    <h6 class="card-title font-md text-truncate-2-lines">
                                        <a href="{{ $news->url }}" class="text-black judul-news">{{ $news->judul }}</a>
                                    </h6>
                                    <p class="card-text font-sm m-0 text-limit">
                                        <small class="text-muted ">sumber: {{ $news->domain }}</small>
                                    </p>
                                    <p class="card-text font-sm">
                                        <small class="text-muted">{{ $news->time_elapsed }}</small>
                                    </p>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
     {{-- NAVIGATION MENU --}}
    @include('layout.navigation')
</main>
    
@endsection
