@extends('layout.main')

@section('content')
<header class="reward-header bg-primary-custom">
    <div class="header-tukar-reward p-3">
        <div class="container text-center">
            <div class="row mt-6">
                <div class="col d-flex justify-content-between align-items-center text-start">
                    <div>
                        <h6 class="mb-0 text-light" style="font-weight: 600;">Hello, 
                            {{ auth()->user()->username ?? 'Anonim'}}
                        </h6>
                    </div>
                    <div class="profile">
                        <img src="{{ auth()->user()->picture ?? asset('images/profile3.png') }}" alt="profile"
                            style="width: 48px; height:48px;" class="rounded-circle bg-light border-custom">
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<main id="reward-page" class="main-container">
    <div class="container pt-4">
        <div class="row mt-2 mx-3 py-3 rounded-3 gradient-brand-toRight  text-center">
            <div class="col my-auto text-center text-light">
                <p class="m-0 font-sm">Saldo Saat ini</p>
                <p class="m-0 fw-bold fs-5">
                    Rp.{{ $saldo->total_saldo }}
                </p>
                <p class="m-0" style="font-size: 0.7rem">Berlaku Hingga</p>
                <p class="m-0" style="font-size: 0.7rem">31-12-2023</p>
            </div>
            <div class="col border-start border-2 text-light" style="border-color:rgb(222, 222, 222) !important;">
                <p class="m-0 font-sm">Poin Saat ini</p>
                <p class="m-0 fw-bold fs-5">
                    {{ $point->total_points }}
                </p>
                <p class="m-0" style="font-size: 0.7rem">Berlaku Hingga</p>
                <p class="m-0" style="font-size: 0.7rem">31-12-2023</p>
            </div>
        </div>
    </div>
    @yield('tukar-point-content')

</main>

@endsection

@yield('scripts')