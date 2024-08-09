@extends('layout.main')

@section('content')
<header class="gradient-top-bottom mx-auto" style="max-width: 428px; width: 100%">
    {{-- Nav Header --}}
    <div class="container text-center px-4">
        <div class="row">
            <div class="col py-4 d-flex align-items-center justify-content-between text-start ">
                <div>
                    <h5 class="mb-0" style="font-weight: 500;">Hi, 
                        {{ auth()->user()->username ?? 'Anonim'}}
                    </h5>
                </div>
                <div class="profile">
                    <img src="{{ auth()->user()->picture ?? asset('images/profile3.png') }}" alt="profile"
                        style="width: 48px; height:48px;" class="rounded-circle">
                </div>
            </div>
        </div>
    </div>
</header>
<div id="tukar-poin-page" class="main-container">
    <div class="container pt-4">
        <div class="row mt-2 mx-3 py-3 rounded-3 gradient-brand-toRight">
            <div class="col my-auto">
                <p class="m-0 font-sm">Saldo Saat ini</p>
                <p class="m-0 fw-bold fs-5">
                    Rp.{{ $saldo->total_saldo }}
                </p>
                <p class="m-0" style="font-size: 0.7rem">Berlaku Hingga</p>
                <p class="m-0" style="font-size: 0.7rem">31-12-2023</p>
            </div>
            <div class="col border-start border-2">
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
</div>
@endsection

@yield('scripts')