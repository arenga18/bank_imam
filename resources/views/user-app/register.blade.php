@extends('layout.main')

@section('title', 'Bank Imam | Login Page')

@section('content')
    <main class="loginscreen">
        <img src="{{ asset('images/favicon/Element.png') }}" alt="decoration" style="margin-top: -1rem; margin-left: -1rem;">
        <div class="form-wrapper text-center mt-3">
            <div class="title-section mb-4">
                <h1 class="fw-bold pb-2">Daftar</h1>
                <h6>Membuat Akun Pengguna Baru</h6>
            </div>
            <div class="form-login">
                <form action="/register" method="post" style="max-width:327px;margin:auto">
                    @csrf
                    @if($errors->any())
                    {!! implode('', $errors->all('<div class="mx-1 font-sm text-danger">:message</div>')) !!}
                    @endif
                    <div class="input-group shadow-sm mb-3">
                        <span class="input-group-text">
                            <i class="fa fa-user icon "></i>
                        </span>
                        <input class="form-control form-control py-2" id="username" name="username" type="text required"
                            placeholder="Username">
                    </div>
                    <div class="input-group shadow-sm mb-3">
                        <span class="input-group-text">
                            <i class="fa fa-envelope icon "></i>
                        </span>
                        <input class="form-control form-control py-2" id="email" name="email" type="email" placeholder="Email" required>
                    </div>
                    <div class="input-group shadow-sm mb-3">
                        <span class="input-group-text">
                            <i class="fa fa-key icon">
                            </i>
                        </span>
                        <input class="form-control form-control py-2" id="password" name="password" type="password" placeholder="Password"
                            required>
                    </div>
                    <div class="input-group shadow-sm mb-3">
                        <span class="input-group-text">
                            <i class="fa fa-key icon">
                            </i>
                        </span>
                        <input class="form-control form-control py-2" id="password_confirmation" name="password_confirmation" required
                            type="password" placeholder="Konfirmasi Password">
                    </div>
                    <div class="tombol mt-5">
                        <button type="submit" class="btn btn-primary-custom  btn-lg" style="padding: 0.5rem 6rem;">Daftar</button>
                    </div>
                </form>
            </div>
            <div class="login mt-5">
                <p>Sudah Punya Akun?
                    <a href="/login" class="linkregis">Masuk Disini</a>
                </p>
            </div>
        </div>

    </main>

@endsection