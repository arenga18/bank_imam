@extends('layout.main')
@section('title', 'Kategori Sampah | We-Cycle')
@section('content')

<header class="gradient-brand-toRight mx-auto rounded-bottom" style="max-width: 428px; width: 100%">
    <a href="{{ url('dashboard') }}">
        <i style="font-size: 1.3rem; color: black;" class="bi bi-arrow-left me-3"></i>
    </a>
    {{-- Nav Header --}}
    <div class="container text-center px-4 py-4">
        <div class="row">
            <div class="col py-4 text-center text-light">
                <h4 class="mb-0 fw-bold" style="letter-spacing: 1px;">
                    KATEGORI PEMILAHAN <br>
                    SAMPAH
                </h4>
            </div>
        </div>
    </div>
</header>
<main style="min-height: calc(100vh - 150px);" class="main-container">
    <div class="container container-body pt-4 pb-5 mb-5">
        <div class="d-flex justify-content-center">
            <div class="filter-tag active" data-filter="all">Umum</div>
            @foreach ($sampahByCategory as $categoryId => $sampah)
                <div class="filter-tag" data-filter="{{ $categoryId }}">{{ $categoryId }}</div>
            @endforeach
        </div>
        <div class="row mx-auto mt-3">
            @foreach ($sampahByCategory as $categoryId => $sampah)
            <div class="category-group" data-category="{{ $categoryId }}">
                <h5 class="fw-bold mb-3">
                    {{ $categoryId }}
                </h5>
                <div class="row">
                    @forelse ($sampah as $item)
                    <div class="col-6 mb-3 item-card">
                        <div class="card border border-primary"  data-category="{{ $categoryId }}">
                            <img style="height: 110px;" src="{{ $item->image }}" class="card-img-top min-w-100" alt="...">
                            <div class="card-body text-center d-flex justify-content-between">
                                <div class="">
                                    <h6 class="card-title my-0 fw-bold">
                                        Rp.{{ $item->price_per_kg }} /Kg
                                    </h6>
                                    <p class="card-text font-sm mt-0">
                                        {{ $item->name }}
                                    </p>
                                </div>
                                <button class="btn btn-primary add-to-cart" data-id="{{ $item->id }}" data-name="{{ $item->name }}" data-price="{{ $item->price_per_kg }}" data-image="{{ $item->image }}">+</button>
                            </div>
                        </div>
                    </div>
                    @empty
                </div>
                <div class="col-6 mb-3">
                    <div class="card border border-primary">
                        <div class="card-body text-center">
                            <h6 class="card-title my-0 fw-bold">
                                Belum ada data pada kategori ini.
                            </h6>
                        </div>
                    </div>
                </div>
                @endforelse
            </div>
            @endforeach
        </div>
    </div>

    {{-- Div Sticky Keranjang --}}
    <div id="cart" class="bg-light p-3 border-top d-none">
        <ul id="cart-items" class="list-unstyled">
            {{-- Items will be added here --}}
        </ul>
        <form action="{{ route('sales.store') }}" method="POST" id="sales-form">
            @csrf
            <input type="hidden" name="items" id="cart-items-input">
            <input type="hidden" name="total_weight" id="total-weight-input">
            <input type="hidden" name="total_price" id="total-price-input">
            <button type="submit" class="btn btn-primary w-100 mt-3">Lanjutkan ></button>
        </form>
    </div>

    {{-- NAVIGATION MENU --}}
    <div class="navigation-menu">
        <div class="container d-flex justify-content-evenly">
            <div>
                <a class="btn btn-lg border-0 px-1 py-auto" href="/dashboard">
                    <i class="bi bi-house" style="font-size: 1.5rem; color:#0575E6;"></i>
                    <p class="text-dark fw-bold font-sm p-0 m-0">Beranda</p>
                </a>
            </div>
            <div>
                <a class="btn btn-lg border-0 px-1 py-auto" href="/kategori-sampah">
                    <i class="bi bi-trash" style="font-size: 1.5rem; color:#0575E6;"></i>
                    <p class="text-dark fw-bold font-sm p-0 m-0">Kategori</p>
                </a>
            </div>
            <div>
                <a class="btn btn-lg border-0 px-1 py-auto" href="/profile">
                    <i class="bi bi-person" style="font-size: 1.5rem; color:#0575E6;"></i>
                    <p class="text-dark fw-bold font-sm p-0 m-0">Profil</p>
                </a>
            </div>
            <div>
                <a class=" btn btn-lg border-0 px-1 py-auto" href="/settings" role="button">
                    <i class="bi bi-gear" style="font-size: 1.5rem; color:#0575E6;"></i>
                    <p class="text-dark fw-bold font-sm p-0 m-0">Pengaturan</p>
                </a>
            </div>
        </div>
    </div>
</main>
<script src="{{ asset('js/sampah.js') }}"></script>
@endsection
