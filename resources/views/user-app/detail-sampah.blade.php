@extends('layout.main')
@section('title', 'Detail Sampah | Bank Imam')
@section('content')
<header class="gradient-brand-toRight mx-auto rounded-bottom">
    {{-- Nav Header --}}
    <div class="container position-relative text-center py-4">
        <div class="d-flex align-items-center">
            <a href="{{ url('kategori-sampah') }}" class="d-inline-block position-absolute">
                <i style="font-size: 2rem;" class="bi bi-arrow-left text-light me-3"></i>
            </a>
            <div class="col text-center text-light">
                <h4 class="text-light  mb-0 fw-bold" style="letter-spacing: 1px;">
                    DETAIL SAMPAH
                </h4>
            </div>
        </div>
    </div>
<main class="main-container text-dark">
    <div class="container container-body pt-4 pb-5">
        <div class="justify-content-center px-2">
            <img class="w-100 rounded-4" style="height:300px; object-fit: cover; object-position: center;" src="{{ url($sampah->image) }}" alt="reward">
            <div class="row mt-3">
                <div class="col">
                    <h5 class="mb-0 fw-bold">
                        {{ $sampah->name }}
                    </h5>
                </div>
                <div class="col text-end">
                    <h6 class="mb-0 fw-bold secondary-color">
                       Rp.{{ $sampah->price_per_kg }}/Kg
                    </h6>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col text-end">
                     <h6 class="card-text my-0 fw-bold primary-color">
                        <span><i class="fa-solid fa-coins"></i> {{$sampah->poin_per_kg}}</span>
                    </h6>
                </div>
            </div>
            @if($sampah->deskripsi != "")
                <p class="mt-3">Deskripsi: <br/> {{$sampah->deskripsi}}</p>
            @else
                <p class="mt-3">Tidak ada deskripsi...</p>
            @endif
        </div>
    </div>
</main>
@endsection