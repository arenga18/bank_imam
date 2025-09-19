{{-- @extends('user-app.layouts.main')

@section('content')
    <div class="container">
        <h2>Panduan Nasabah</h2>
        @include('panduan._content')
    </div>
@endsection --}}
@extends('layout.main')
@section ('title', 'Panduan | Bank Imam')

@section('content')
<header class="gradient-brand-toRight mx-auto rounded-bottom">
   {{-- Nav Header --}}
   <div class="container position-relative text-center py-4">
    <div class="d-flex align-items-center">
        <a href="{{ url('settings') }}" class="d-inline-block position-absolute">
            <i style="font-size: 2rem;" class="bi bi-arrow-left me-3 text-light"></i>
        </a>
        <div class="col text-center text-light">
            <h4 class="mb-0 fw-bold" style="letter-spacing: 1px;">
                Panduan Nasabah
            </h4>
        </div>
    </div>
</div>
</header>

<main id="panduan" class="main-container">
    <div class="container mt-4 pb-5">
        <!-- Tombol navigasi -->
        <div class="d-flex justify-content-around mb-3">
            <a href="{{ route('nasabah.panduan',['tab'=>'buku']) }}" 
               class="btn {{ $tab == 'buku' ? 'btn-success' : 'btn-outline-success' }}">
                📘 Buku Panduan
            </a>
            <a href="{{ route('nasabah.panduan',['tab'=>'video']) }}" 
               class="btn {{ $tab == 'video' ? 'btn-success' : 'btn-outline-success' }}">
                🎥 Video Tutorial
            </a>
        </div>

        <!-- Konten -->
        @if($tab == 'buku')
            <div>
                <h5>Buku Panduan</h5>
                <embed src="{{ asset('files/Buku-Panduan-Bank-Imam-Nasabah-2025.pdf') }}" 
                   type="application/pdf" width="100%" height="600px" />
            </div>
        @elseif($tab == 'video')
            <div>
                <h5>Video Tutorial</h5>
                <video width="100%" controls>
                    <source src="{{ asset('files/Panduan_nasabah.mp4') }}" type="video/mp4">
                    Browser kamu tidak mendukung video.
                </video>
            </div>
        @endif
    </div>
</main>
@endsection
