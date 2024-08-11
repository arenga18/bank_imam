@extends('layout.header-tukar-poin')
@section('title', 'Tukar Reward | Bank Imam')

@section('tukar-point-content')
<div class="container">
    {{-- MENU --}}
    <div class="mx-3 mt-3">
        <div class="row justify-content-between">
            <a class="col-6 shadow-sm p-2 rounded m-auto text-decoration-none text-black" href="/history/points" style="width: max-content;"> 
                <i class="bi bi-file-earmark-text-fill pe-1 text-primary"></i>
                <span>Riwayat Poin</span>
            </a>
            <a class="col-6 shadow-sm p-2 rounded m-auto text-decoration-none text-black" href="/history/tukar-poin" style="width: max-content;">
                <i class="bi bi-bag-dash-fill pe-1 text-primary"></i>
                <span>Pesanan Saya</span>
            </a>
        </div>
    </div>
</div>
{{-- REWARD --}}
<div class="container pb-5 mb-5">
    {{-- Reward Kategori 3 --}}
    <div class="row mt-4 mx-3">
        <h5 class="fw-bold ps-0 mb-3">Uang</h5>
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                @if (isset($uang) || !empty($uang ))
                @forelse ($uang as $reward)
                <div class="swiper-slide w-50">
                    <a class="text-dark text-decoration-none" href="{{url("/tukar-saldo/reward/{$reward->id}")}}">
                        <div class="card border-0 shadow rounded">
                            <img style="height: 140px;" src="{{ $reward->image }}" class="card-img-top min-w-100"
                                alt="{{ $reward->name }}">
                            <div class="card-body text-left d-flex mb-2">
                                <p class="card-text reward-name font-sm mt-0">
                                    {{ $reward->name }}
                                </p>
                            </div>
                        </div>
                    </a>
                </div>
                @empty
                <div class="card">
                    <div class="card-body">
                        <h6 class="card-title my-0 fw-bold">
                            Belum Ada Data!
                        </h6>
                        <p class="card-text reward-name font-sm mt-0">
                            Input data terlebih dulu!
                        </p>
                    </div>
                </div>
                @endforelse
                @endif
            </div>
        </div>
    </div>
    <div class="row mt-3 mx-3">
        <h5 class="fw-bold ps-0 mb-3">Hiasan</h5>
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                @if (isset($hiasan) || !empty($hiasan))
                @forelse ($hiasan as $reward)
                <div class="swiper-slide me-3 w-50">
                    <a class="text-dark text-decoration-none" href="{{url("/tukar-poin/reward/{$reward->id}")}}">
                        <div class="card border-0 shadow rounded">
                            <img style="height: 140px;" src="{{ $reward->image }}" class="card-img-top min-w-100"
                                alt="{{ $reward->name }}">
                            <div class="card-body text-left d-flex flex-column mb-2">
                                <h6 class="card-title my-0 fw-bold">
                                    {{ $reward->price }} Poin 
                                </h6>
                                <p class="card-text reward-name font-sm mt-0">
                                    {{ $reward->name }}
                                </p>
                            </div>
                        </div>
                    </a>
                </div>
                @empty
                <div class="card">
                    <div class="card-body">
                        <h6 class="card-title my-0 fw-bold">
                            Belum Ada Data!
                        </h6>
                        <p class="card-text reward-name font-sm mt-0">
                            Input data terlebih dulu!
                        </p>
                    </div>
                </div>
                @endforelse
                @endif
            </div>
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