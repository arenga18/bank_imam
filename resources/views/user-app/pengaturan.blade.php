@extends('layout.main')

@section('title', 'User Dashboard | Bank Imam')
@section('content')
<header class="user-profile pt-4 rounded-top rounded-5">
    <div class="">
        <div class="col d-flex justify-content-center">
            <img class="rounded-circle border border-3 border-custom bg-light" style="z-index:11;" width="120px" height="120px"
                src="{{ $user->picture ?? asset('/images/profile3.png') }}">
        </div>
    </div>
    <div class=" mt-2">
        <div class="col-12">
            <h4 id="username" name="username" class="text-center font-md fw-bold m-0">
                {{ $user->username ?? 'Anonim' }}
            </h4>
            <p class="text-body-tertiary text-center font-sm m-0">{{ $user->email ?? 'abc@gmail.com' }}</p>
            <p class="text-body-tertiary text-center text-danger fw-bold font-sm">{{ $bsu_name ?? 'bank sampah unit' }}</p>
        </div>
    </div>
</header>
<main class="main-container">
    <div class="container">
        <div>
            <div class="pt-1">
                <div class="card border-0 shadow-sm mb-1">
                    <div class="card-body px-4">
                        <div class="row d-flex align-items-center">
                            <div class="col text-start d-flex align-items-center" onclick="location.href='/profile';" style="cursor: pointer;">
                                <i class="bi bi-person-circle me-3 secondary-color" style="font-size: 25px;"></i>
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
            <div class="pt-1">
                <div class="card border-0 shadow-sm mb-1">
                    <div class="card-body px-4">
                        <div class="row d-flex align-items-center">
                            <div class="col text-start d-flex align-items-center" onclick="location.href='{{ route('nasabah.panduan') }}';" style="cursor: pointer;">
                                <i class="bi bi-journal-text me-3 secondary-color" style="font-size: 25px;"></i>
                                <p class="mb-0 fw-bold">
                                    Panduan Nasabah
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <div class="pt-1">
                <div class="card border-0 shadow-sm mb-1">
                    <div class="card-body px-4">
                        <div class="row d-flex align-items-center">
                            <div class="col text-start d-flex align-items-center">
                                <i class="bi bi-pencil-square me-3 secondary-color" style="font-size: 25px;"></i>
                                <p class="mb-0 fw-bold">
                                    Syarat Dan Ketentuan
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <div class="pt-1">
                <div class="card border-0 shadow-sm mb-1">
                    <div class="card-body px-4">
                        <div class="row d-flex align-items-center">
                            <div class="col text-start d-flex align-items-center">
                                <i class="bi bi-shield-lock-fill me-3 secondary-color" style="font-size: 25px;"></i>
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
        {{-- NAVIGATION MENU --}}
        @include('layout.navigation')
    </div>
</main>
@endsection