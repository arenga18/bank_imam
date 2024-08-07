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
    <div class="container container-body pt-4 pb-5">
        <!-- Filter Tags -->
        <div class="d-flex justify-content-center mb-3">
            <div class="filter-tag active" data-filter="all">Umum</div>
            @foreach ($sampahByCategory as $categoryId => $sampah)
                <div class="filter-tag" data-filter="{{ $categoryId }}">{{ $categoryId }}</div>
            @endforeach
        </div>

        <!-- Category Groups -->
        @foreach ($sampahByCategory as $categoryId => $sampah)
            <div class="category-group" data-category="{{ $categoryId }}">
                <h5 class="fw-bold mb-3">{{ $categoryId }}</h5>
                <!-- Items -->
                <div class="row">
                    @forelse ($sampah as $item)
                        <div class="col-6 mb-3 item-card">
                            <div class="card border border-primary" data-category="{{ $categoryId }}">
                                <img style="height: 110px;" src="{{ $item->image }}" class="card-img-top min-w-100" alt="...">
                                <div class="card-body text-center d-flex justify-content-between">
                                    <div class="">
                                        <h6 class="card-title my-0 fw-bold">
                                            Rp.{{ $item->price_per_kg }} /Kg
                                        </h6>
                                        <p class="card-text font-sm mt-0">{{ $item->name }}</p>
                                    </div>
                                    <button class="btn btn-primary add-to-cart" data-id="{{ $item->id }}" data-name="{{ $item->name }}" data-price="{{ $item->price_per_kg }}" data-image="{{ $item->image }}">+</button>
                                </div>
                            </div>
                        </div>
                    @empty
                        <div class="col-6 mb-3">
                            <div class="card border border-primary">
                                <div class="card-body text-center">
                                    <h6 class="card-title my-0 fw-bold">Belum ada data pada kategori ini.</h6>
                                </div>
                            </div>
                        </div>
                    @endforelse
                </div>
            </div>
            @endforeach
        </div>
    </div>

    {{-- Div Sticky Keranjang --}}
    <div id="cart" class="p-4 d-none">
        {{-- Masih belum digunakan --}}
        {{-- <ul id="cart-items" class="list-unstyled">
        </ul> --}}
        <div id="cart-summary" class="d-flex justify-content-between align-items-center w-100 px-2">
            <p id="cart-weight" class="m-0"><b>Jual</b> · 0 kg | 0 jenis</p>
            <b id="cart-total" class="m-0">Rp. 0</b>
        </div>
        <form action="{{ route('sales.store') }}" method="POST" id="sales-form">
            @csrf
            <input type="hidden" name="items" id="cart-items-input">
            <input type="hidden" name="total_weight" id="total-weight-input">
            <input type="hidden" name="total_price" id="total-price-input">
            <button type="submit" class="btn btn-primary d-inline"> > </button>
        </form>
    </div>

</main>
<script src="{{ asset('js/sampah.js') }}"></script>
@endsection
