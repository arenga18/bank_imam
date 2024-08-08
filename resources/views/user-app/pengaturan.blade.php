@extends('layout.header-transaksi')
@section('title', 'PENGATURAN')

@section('transaction-content')
@section('transaction-title', 'PENGATURAN')
<main class="main-container" style="min-height: calc(100vh - 64px);">
    <div class="user-profile">
        <div class="row">
            <div class="col d-flex justify-content-center">
                <img class="rounded-circle border border-3 border-white" style="z-index:11;" width="120px"
                    src="{{ $user->picture ?? asset('/images/profile3.png') }}">
            </div>
        </div>
        <div class="row mt-3 mx-3">
            <div class="col-12">
                <h4 id="username" name="username" class="text-center">
                    {{ $user->username ?? 'Anonim' }}
                </h4>
                <p class="text-center">{{ $user->email ?? 'abc@gmail.com' }}</p>
            </div>
        </div>
    </div>
    <div>
        <h6 class="mx-3 pt-1 fw-bold">
            Pengaturan Akun
        </h6>
        <div class="pt-2 mx-3">
            <div class="card border-0 shadow mb-2">
                <div class="card-body">
                    <div class="row d-flex align-items-center">
                        <div class="col text-start d-flex" onclick="location.href='/profile';" style="cursor: pointer;">
                            <i class="bi bi-pencil-square me-1"></i>
                            <p class="mb-0 fw-bold">
                                Edit Profil
                            </p>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <h6 class="mx-3 pt-3 fw-bold">
            Bantuan
        </h6>
        <div class="pt-2 mx-3">
            <div class="card border-0 shadow mb-2">
                <div class="card-body">
                    <div class="row d-flex align-items-center">
                        <div class="col text-start d-flex">
                            <i class="bi bi-question-circle me-1"></i>
                            <p class="mb-0 fw-bold">
                                Pusat Bantuan
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="pb-2">
        <h6 class="mx-3 pt-3 fw-bold">
            Tentang
        </h6>
        <div class="pt-2 mx-3">
            <div class="card border-0 shadow mb-2">
                <div class="card-body">
                    <div class="row d-flex align-items-center">
                        <div class="col text-start d-flex">
                            <i class="bi bi-pencil-square me-1"></i>
                            <p class="mb-0 fw-bold">
                                Syarat Dan Ketentuan
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card border-0 shadow mb-2">
                <div class="card-body">
                    <div class="row d-flex align-items-center">
                        <div class="col text-start d-flex">
                            <i class="bi bi-shield-lock-fill me-1"></i>
                            <p class="mb-0 fw-bold">
                                Tentang kami
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-4 mx-4 pb-5 px-3">
        <a class="btn btn-danger rounded-pill fw-bold my-2 px-4 py-2" href="/logout">
            LOGOUT
        </a>
    </div>
</main>
{{-- NAVIGATION MENU --}}
<div class="navigation-menu">
    <div class="container d-flex justify-content-evenly">
        <div>
            <a class="btn btn-lg border-0 px-1 py-auto" href="/dashboard">
                <i class="bi bi-house primary-color" style="font-size: 1.5rem;"></i>
                <p class="fw-bold font-sm p-0 m-0">Beranda</p>
            </a>
        </div>
        <div>
            <a class="btn btn-lg border-0 px-1 py-auto" href="/tukar-poin">
                <i class="bi bi-gift primary-color" style="font-size: 1.5rem;"></i>
                <p class="fw-bold font-sm p-0 m-0">Rewards</p>
            </a>
        </div>
        <div>
            <a class="btn btn-lg border-0 px-1 py-auto" href="/kategori-sampah">
                <i class="bi bi-trash primary-color" style="font-size: 1.5rem;"></i>
                <p class="fw-bold font-sm p-0 m-0">Jual Sampah</p>
            </a>
        </div>
        <div>
            <a class="btn btn-lg border-0 px-1 py-auto" href="/profile">
                <i class="bi bi-book primary-color" style="font-size: 1.5rem;"></i>
                <p class="fw-bold font-sm p-0 m-0">Edukasi</p>
            </a>
        </div>
        <div>
            <a class=" btn btn-lg border-0 px-1 py-auto" href="/settings" role="button">
                <i class="bi bi-person primary-color" style="font-size: 1.5rem;"></i>
                <p class="fw-bold font-sm p-0 m-0">Profil</p>
            </a>
        </div>
    </div>
</div>
@endsection