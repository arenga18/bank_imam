@extends('layout.main')
@section('title', 'Kategori Sampah | Bank Imam')
@section('content')

<header class="gradient-brand-toRight mx-auto rounded-bottom">
    {{-- Nav Header --}}
    <div class="container position-relative text-center py-4">
        <div class="d-flex align-items-center">
            <a href="{{ url('dashboard') }}" class="d-inline-block position-absolute">
                <i style="font-size: 2rem;" class="bi bi-arrow-left text-light me-3"></i>
            </a>
            <div class="col text-center text-light">
                <h4 class="text-light  mb-0 fw-bold" style="letter-spacing: 1px;">
                    KATALOG SAMPAH
                </h4>
            </div>
        </div>
    </div>
</header>
<main class="main-container">
    <div class="container container-body pt-4 pb-5">
        <!-- Filter Tags -->
        @if (isset($barang) || !empty($sampahByCategory))
            <div class="d-flex justify-content-center mb-4">
                <div class="filter-tags-wrapper">
                    <div class="filter-tag active" data-filter="all">Semua</div>
                    @foreach ($sampahByCategory as $categoryId => $sampah)
                        <div class="filter-tag" data-filter="{{ $categoryId }}">{{ $categoryId }}</div>
                    @endforeach
                </div>
            </div>
        

            <!-- Category Groups -->
            @foreach ($sampahByCategory as $categoryId => $sampah)
                <div class="row mt-3 justify-content-center category-group" data-category="{{ $categoryId }}">
                    <h5 class="fw-bold ps-3 mb-2">{{ $categoryId }}</h5>
                    <!-- Items -->
                    <div class="row px-2">
                        @forelse ($sampah as $item)
                            <div class="col-6 p-1 item-card">
                                <div class="card border shadow-sm rounded" data-category="{{ $categoryId }}">
                                    <img
                                    src="{{ $item->image }}" class="card-img-top min-w-100" alt="..." 
                                    style="height: 150px; width: 100%; object-fit: cover;">
                                    <div class="card-body border-top text-left d-flex flex-column">
                                        <h6 class="card-title fw-bold m-0">{{ $item->name }}</h6>
                                        <p class="card-text my-0 secondary-color">
                                            <span class="fw-semibold">Rp.{{ $item->price_per_kg }}</span>/Kg
                                        </p>
                                        {{-- <button class="btn btn-primary-custom add-to-cart" data-id="{{ $item->id }}" data-name="{{ $item->name }}" data-price="{{ $item->price_per_kg }}" data-image="{{ $item->image }}">+</button> --}}
                                    </div>
                                </div>
                            </div>
                        @empty
                            <div class="col-6 p-1 px-2 mb-3">
                                <div class="card border shadow-sm rounded">
                                    <div class="card-body text-center">
                                        <h6 class="card-title my-0 fw-bold">Belum ada data pada kategori ini.</h6>
                                    </div>
                                </div>
                            </div>
                        @endforelse
                    </div>
                </div>
            @endforeach
            @else
            <h5 class="text-danger text-center">
                Katalog sampah belum tersedia! <br> 
                Tunggu update selanjutnya
            </h5>
        @endif
        
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
