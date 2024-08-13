@extends('layout.main')

@section('title', 'Bank Imam | Login Page')

@section('content')
    <main class="loginscreen">
        <img src="{{ asset('images/favicon/Element.png') }}" alt="decoration" style="margin-top: -1rem;">
        <div class="form-wrapper text-center mt-4">
            @if(session()->has('success'))
            <div class="alert alert-success m-2" role="alert">
                {{ session('success') }}
            </div>
            @endif
            @if(session()->has('loginError'))
            <div class="alert alert-danger mx-2 my-1" role="alert">
                {{ session('loginError') }}
            </div>
            @endif

            <div class="title-section mb-4">
                <h1 class="fw-bold pb-2">Selamat Datang</h1>
                <h6>Masuk menggunakan akun</h6>
            </div>
            <div class="form-login">
                <form action="/login" method="post">
                    @csrf
                    <div class="input-group shadow-sm mb-3">
                        <span class="input-group-text">
                            <i class="fa fa-user icon "></i>
                        </span>
                        <input class="form-control form-control py-2" id="email" name="email" type="email"
                            placeholder="Masukan Email Anda">
                    </div>
                    <div class="input-group shadow-sm mb-3">
                        <span class="input-group-text">
                            <i class="fa fa-key icon">
                            </i>
                        </span>
                        <input class="form-control form-control py-2" id="password" name="password" type="password" placeholder="Masukan Password Anda">
                    </div>
                    <div class="ingat d-flex justify-content-between align-items-center">
                        <div class="form-input d-flex gap-2">
                            <input type="checkbox" id="checkbox" style="width:30px">
                            <label for="checkbox" class="d-block">Ingat saya</label>
                        </div>
                        <a href="#">Lupa Password?</a>
                    </div>
                    <div class="tombol mt-5">
                        <button type="submit" class="btn btn-primary-custom  btn-lg " style="padding: 0.5rem 6rem;">Login</button>
                    </div>
                </form>
            </div>
            <div class="register mt-5">
                <p>Belum Punya Akun?
                    <a href="/register" class="linkregis">Daftar Disini</a>
                </p>
            </div>
        </div>
    </main>

@endsection