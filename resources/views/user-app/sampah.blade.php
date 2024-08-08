@extends('layout.main')
@section('title', 'Kategori Sampah | We-Cycle')
@section('content')

<header class="gradient-brand-toRight mx-auto rounded-bottom" style="max-width: 428px; width: 100%">
    {{-- Nav Header --}}
    <div class="container position-relative text-center py-4">
        <div class="d-flex align-items-center">
            <a href="{{ url('dashboard') }}" class="d-inline-block position-absolute">
                <i style="font-size: 2rem; color: rgb(31, 31, 31);" class="bi bi-arrow-left me-3"></i>
            </a>
            <div class="col text-center text-light">
                <h4 class="text-black mb-0 fw-bold" style="letter-spacing: 1px;">
                    KATALOG SAMPAH
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
            <div class="category-group px-3" data-category="{{ $categoryId }}">
                <h5 class="fw-bold mb-3">{{ $categoryId }}</h5>
                <!-- Items -->
                <div class="row">
                    @forelse ($sampah as $item)
                        <div class="col-6 mb-3 item-card">
                            <div class="card border-0 shadow rounded" data-category="{{ $categoryId }}">
                                <img style="height: 140px;" src="{{ $item->image }}" class="card-img-top min-w-100" alt="...">
                                <div class="card-body text-left d-flex mb-2">
                                    <div class="d-flex justify-content-center flex-column w-100">
                                        <h6 class="card-title fw-bold m-0">{{ $item->name }}</h6>
                                        <p class="card-text my-0 secondary-color">
                                            <span class="fw-semibold">Rp.{{ $item->price_per_kg }}</span>/Kg
                                        </p>
                                    </div>
                                    {{-- <button class="btn btn-primary-custom add-to-cart" data-id="{{ $item->id }}" data-name="{{ $item->name }}" data-price="{{ $item->price_per_kg }}" data-image="{{ $item->image }}">+</button> --}}
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
