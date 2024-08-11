@extends('layout.main')

@section('title', 'User Dashboard | We-Cycle')

@section('content')
<header class="dashboard-header gradient-top-bottom">
    <div class="header-user py-3 px-3">
        <div class="container text-center">
            <div class="row mt-6">
                <div class="col d-flex justify-content-between align-items-center text-start ">
                    <div class="text">
                        <p class="m-0" style="font-weight: 600; letter-spacing: 1px;">
                            Hello, {{ $user->username }}
                        </p>
                    </div>
                    <div class="profile">
                        <img src="{{ $user->picture ?? asset('images/profile3.png') }}" alt="profile"
                            style="width: 48px; height:48px;" class="rounded-circle">
                    </div>
                </div>
            </div>
           
        </div>
    </div>
</header>
<div class="row mt-4 mx-3 py-3 rounded-4 bg-light text-center">
    <div class="col">
        <p class="m-0 fw-bold mb-1">{{ $point->total_points }}</p>
        <p class="m-0 font-sm">
            <i class="fa-solid fa-coins"></i> Points
        </p>
    </div>
    <div class="col border-start border-end border-2">
        <p class="m-0 fw-bold mb-1">
            Rp{{ number_format($saldo->total_saldo, 0, ',', '.') }}
        </p>
        <p class="m-0 font-sm">
            <i class="fa-solid fa-wallet"></i> Saldo
        </p>
    </div>
    <div class="col">
        <p class="m-0 fw-bold mb-1">{{ $total_weight}} kg</p>
        <p class="m-0 font-sm">
            <i class="fa-solid fa-trash"></i> Sampah
        </p>
    </div>
</div>
<main id="dashboard-page" class="main-container">
    <div class="container pt-4 px-5">
        <a href="/tukar-poin" class="card rounded-4 mb-1 landing-card-shadow border-light" style="text-decoration: none;">
            <div class="row g-0 gradient-brand-toRight rounded-4 ps-4">
                <div class="col-3 d-flex justify-content-center align-items-center text-center">
                    <i class="bi bi-gift-fill secondary-color" style="font-size: 3rem;"></i>
                </div>
                <div class="col-9 d-flex align-items-center px-2 py-3 ">
                    <div class="card-body text-light">
                        <h6 class="card-title fw-bold text-black mb-0">
                            Tukar Poinmu Sekarang!
                        </h6>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <section class="container mt-4 pb-4">
        <div class="d-flex justify-content-between mx-3">
            <h6 class="fw-bold">
                Riwayat Transaksi
            </h6>
            <a class="text-dark fs-6" href="/history/transaction">
                Lihat Semua
            </a>
        </div>
        @if (isset($transactions) || !empty($transactions))
        @forelse ($transactions as $transaction)
        <div class="mt-3 mx-1">
            <div class="card border-0 shadow mb-2">
                <div class="card-body">
                    <div class="row d-flex align-items-center">
                        <div class="col-7 text-start">
                            <p class="mb-0 fw-bold">
                                Setoran Sampah
                                
                            </p>
                            <p class="mb-0">
                                Total:
                                <span class="fw-bold text-primary">
                                    {{ $transaction->total_weight }} Kg
                                </span>
                            </p>
                            <p class="mb-0 font-sm text-muted">
                                {{ $transaction->created_at }}
                            </p>
                        </div>
                        <div class="col-5 text-end">
                            <p class="mb-0 fw-bold">
                                Pendapatan
                            </p>
                            <p class="mb-0 pe-3 text-secondary fw-bold">
                                Rp{{ number_format($transaction->total_income, 0, ',', '.') }}
                            </p>
                            <p class="mb-0 ">
                                <span class="rounded-pill text-light bg-green-main px-2 fw-bold">
                                    {{ $transaction->point_received }} Poin
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @empty
        <div class="mt-3 mx-1">
            <div class="card p-2 border-0 shadow mb-2">
                <h5 class="text-center text-danger">
                    Anda belum pernah melakukan transaksi.
                </h5>
            </div>
        </div>
        @endforelse
        @endif

    </section>
    {{-- NAVIGATION MENU --}}
    @include('layout.navigation')
</main>
@endsection