@extends('layout.header-tukar-poin')
@section('title', 'Tukar Reward | Bank Imam')

@push('reward_id')
    {{ $uang->id }}
@endpush

@section('tukar-point-content')
<div class="container">
    {{-- MENU --}}
    <div class="mx-3 mt-3">
        <div class="row justify-content-center">
            <a class="col-6 shadow-sm py-2 px-3 rounded m-auto text-decoration-none text-black" href="/history/points" style="width: max-content;"> 
                <i class="bi bi-file-earmark-text-fill pe-1 secondary-color"></i>
                <span>Riwayat Poin</span>
            </a>
            <a class="col-6 shadow-sm py-2 px-4 rounded m-auto text-decoration-none text-black" href="/history/tukar-poin" style="width: max-content;">
                <i class="bi bi-bag-dash-fill pe-1 secondary-color"></i>
                <span>Pesanan Saya</span>
            </a>
        </div>
    </div>
</div>
{{-- REWARD --}}
<div class="container pb-5 mb-5">
    {{-- Reward Kategori 3 --}}
    <div class="row mt-4 justify-content-center">
        <h5 class="fw-bold ps-3 mb-3">Uang</h5>
        <div class="row p-0">
            @if (isset($uang) || !empty($uang ))
            @forelse ($uang as $reward)
            <div class="mb-3 item-card">
                <a class="text-dark text-decoration-none" href="{{url("/tukar-saldo/reward/{$reward->id}")}}">
                    <div class="row border mx-2 shadow-sm rounded">
                        <img 
                            src="{{ $reward->image }}" class="min-w-100 col-4 p-0 rounded-start"  
                            alt="{{ $reward->name }}" 
                            style="height: 110px; object-fit: cover; object-position: center;"
                        >
                        <div class="card-body p-3 pe-2 col-8 d-flex flex-column justify-content-center">
                            <p class="card-text reward-name fw-bold m-0">
                                {{ $reward->name }}
                            </p>
                            <p class="card-text reward-desc font-sm m-0" >Tukarkan saldo anda menjadi uang tunai!</p>
                        </div>
                    </div>
                </a>
            </div>
            @empty
            <div class="card border-0 px-3">
                <div class="card-body border rounded shadow-sm">
                    <h6 class="card-title my-0 fw-bold">
                        Reward belum tersedia
                    </h6>
                    <p class="card-text reward-name font-sm mt-0">
                        Mohon tunggu update selanjutnya
                    </p>
                </div>
            </div>
            @endforelse
            @endif
        </div>
    </div>
    <div class="row mt-3 justify-content-center">
        <h5 class="fw-bold ps-3 mb-2">Barang</h5>
        <div class="row px-3">
            @if (isset($barang) || !empty($barang))
            @forelse ($barang as $reward)
            <div class="col-6 p-1 item-card">
                <a class="text-dark text-decoration-none" href="{{url("/tukar-poin/reward/{$reward->id}")}}">
                    <div class="card border shadow-sm rounded">
                        <img src="{{ $reward->image }}" class="card-img-top min-w-100" alt="Reward Image" style="height: 150px; width: 100%; object-fit: cover; object-position: bottom;" >
                        <div class="card-body border-top text-left d-flex flex-column">
                            <p class="card-text reward-name fw-bold font-sm m-0">
                                {{ $reward->name }}
                            </p>
                            <p class="card-title my-0 text-primary">
                                {{ $reward->price }} Poin 
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            @empty
            <div class="card border-0 px-3">
                <div class="card-body border rounded shadow-sm">
                    <h6 class="card-title my-0 fw-bold">
                        Reward belum tersedia
                    </h6>
                    <p class="card-text reward-name font-sm mt-0">
                        Mohon tunggu update selanjutnya
                    </p>
                </div>
            </div>
            @endforelse
            @endif
        </div> 
    </div>
    
</div>
 {{-- NAVIGATION MENU --}}
 @include('layout.navigation')
@endsection

@section('scripts')
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper(".mySwiper", {
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    });
</script>
@endsection