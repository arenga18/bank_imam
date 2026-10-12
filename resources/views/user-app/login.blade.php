@extends('layout.main')

@section('title', 'Login | Bank Imam')

@section('content')
<main class="min-vh-100 d-flex flex-column justify-content-between" style="background: #ffffff; padding: 24px 20px 40px;">
    {{-- Top Bar / Back button --}}
    <div>
        <div class="d-flex align-items-center justify-content-between mb-4">
            <a href="{{ url('/') }}" class="text-decoration-none">
                <div style="width:38px; height:38px; background:#f1f5f9; border-radius:12px; display:flex; align-items:center; justify-content:center; color:#1e293b; transition:transform 0.2s;"
                     onmouseover="this.style.transform='scale(1.08)'"
                     onmouseout="this.style.transform='scale(1)'">
                    <i class="bi bi-arrow-left" style="font-size:18px;"></i>
                </div>
            </a>
            <span style="font-size:12px; color:#94a3b8; font-weight:600;">Bank IMAM</span>
        </div>

        {{-- Brand Logo --}}
        <div class="text-center mb-4">
            <img src="{{ asset('images/logo.png') }}" alt="Bank Imam" style="max-width: 175px; width: 100%; height: auto; object-fit: contain;">
        </div>

        {{-- Heading --}}
        <div class="text-center mb-4">
            <h3 class="fw-bold m-0" style="color:#1a1a2e; font-size:22px; letter-spacing:-0.5px;">Selamat Datang! 👋</h3>
            <p class="mt-1 mb-0" style="color:#64748b; font-size:13px;">Masuk ke akun Anda untuk mulai menabung sampah</p>
        </div>

        {{-- Alerts --}}
        @if(session()->has('success'))
            <div class="alert alert-success d-flex align-items-center gap-2 rounded-4 py-2 px-3 mb-3" role="alert" style="background:#dcfce7; border:1px solid #bbf7d0; color:#15803d; font-size:13px;">
                <i class="bi bi-check-circle-fill"></i>
                <div>{{ session('success') }}</div>
            </div>
        @endif

        @if(session()->has('loginError'))
            <div class="alert alert-danger d-flex align-items-center gap-2 rounded-4 py-2 px-3 mb-3" role="alert" style="background:#fee2e2; border:1px solid #fecaca; color:#b91c1c; font-size:13px;">
                <i class="bi bi-exclamation-triangle-fill"></i>
                <div>{{ session('loginError') }}</div>
            </div>
        @endif

        {{-- Form Login --}}
        <form action="/login" method="post" class="mt-2">
            @csrf

            {{-- Username Input --}}
            <div class="mb-3">
                <label for="username" class="form-label fw-bold mb-1" style="font-size:12px; color:#334155;">
                    <i class="bi bi-person text-success me-1"></i> Username
                </label>
                <div class="input-group">
                    <span class="input-group-text bg-white" style="border: 1.5px solid #e2e8f0; border-right: none; border-radius: 12px 0 0 12px; color:#64748b;">
                        <i class="bi bi-person"></i>
                    </span>
                    <input type="text" class="form-control py-2 px-3" id="username" name="username"
                           value="{{ old('username') }}" placeholder="Masukkan username" required
                           autocomplete="username" autocapitalize="none"
                           style="border: 1.5px solid #e2e8f0; border-left: none; border-radius: 0 12px 12px 0; font-size:13px; color:#1a1a2e;">
                </div>
            </div>

            {{-- Password Input --}}
            <div class="mb-3">
                <label for="password" class="form-label fw-bold mb-1" style="font-size:12px; color:#334155;">
                    <i class="bi bi-lock text-success me-1"></i> Password
                </label>
                <div class="input-group">
                    <span class="input-group-text bg-white" style="border: 1.5px solid #e2e8f0; border-right: none; border-radius: 12px 0 0 12px; color:#64748b;">
                        <i class="bi bi-key"></i>
                    </span>
                    <input type="password" class="form-control py-2 px-3" id="password" name="password"
                           placeholder="Masukkan kata sandi" required
                           style="border: 1.5px solid #e2e8f0; border-left: none; border-right: none; font-size:13px; color:#1a1a2e;">
                    <button class="btn bg-white" type="button" id="togglePassword"
                            style="border: 1.5px solid #e2e8f0; border-left: none; border-radius: 0 12px 12px 0; color:#64748b;">
                        <i class="bi bi-eye" id="eyeIcon"></i>
                    </button>
                </div>
            </div>

            {{-- Remember Me --}}
            <div class="d-flex align-items-center justify-content-between mb-4">
                <div class="form-check d-flex align-items-center gap-2">
                    <input class="form-check-input mt-0" type="checkbox" name="remember" id="checkbox" style="cursor: pointer; width:16px; height:16px;">
                    <label class="form-check-label" for="checkbox" style="font-size:12px; color:#64748b; cursor: pointer;">
                        Ingat saya di perangkat ini
                    </label>
                </div>
            </div>

            {{-- Submit Button --}}
            <button type="submit" class="btn btn-primary-custom w-100 py-3 rounded-pill fw-bold text-center"
                    style="font-size:15px; box-shadow: 0 6px 18px rgba(0,160,86,0.28);">
                Masuk Sekarang <i class="bi bi-arrow-right ms-1"></i>
            </button>
        </form>
    </div>

    {{-- Bottom Link to Register --}}
    <div class="text-center pt-4">
        <p class="m-0" style="font-size:13px; color:#64748b;">
            Belum punya akun?
            <a href="{{ url('register') }}" class="fw-bold text-decoration-none" style="color:#00a056;">
                Daftar Disini
            </a>
        </p>
    </div>
</main>
@endsection

@section('scripts')
<script>
document.addEventListener('DOMContentLoaded', function() {
    const togglePassword = document.getElementById('togglePassword');
    const passwordInput = document.getElementById('password');
    const eyeIcon = document.getElementById('eyeIcon');

    if (togglePassword && passwordInput && eyeIcon) {
        togglePassword.addEventListener('click', function() {
            const isPassword = passwordInput.getAttribute('type') === 'password';
            passwordInput.setAttribute('type', isPassword ? 'text' : 'password');
            eyeIcon.classList.toggle('bi-eye', !isPassword);
            eyeIcon.classList.toggle('bi-eye-slash', isPassword);
        });
    }
});
</script>
@endsection