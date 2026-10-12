@extends('layout.main')
@section('title', 'Edit Profil | Bank Imam')

@section('content')
@php
    $rawPic = $user->picture ?? '';
    if (strpos($rawPic, 'data:image') === 0 || filter_var($rawPic, FILTER_VALIDATE_URL)) {
        $picUrl = $rawPic;
    } elseif (!empty($rawPic)) {
        $picUrl = asset($rawPic);
    } else {
        $picUrl = asset('images/profile3.png');
    }
@endphp

{{-- ======================== HEADER EDIT PROFIL ======================== --}}
<header style="background: linear-gradient(150deg, #00c96e 0%, #005c2e 100%); position:relative; overflow:hidden; padding-bottom: 30px;">
    {{-- Decorative blobs --}}
    <div style="position:absolute; top:-35px; right:-35px; width:140px; height:140px; background:rgba(255,255,255,0.08); border-radius:50%;"></div>
    <div style="position:absolute; bottom:0; left:-25px; width:110px; height:110px; background:rgba(255,255,255,0.05); border-radius:50%;"></div>

    <div class="px-4 pt-4 pb-2 d-flex align-items-center gap-3" style="position:relative; z-index:1;">
        <a href="{{ url('settings') }}" class="text-white text-decoration-none">
            <div style="width:38px; height:38px; background:rgba(255,255,255,0.2); border-radius:12px; display:flex; align-items:center; justify-content:center; backdrop-filter:blur(6px); transition:transform 0.2s ease;"
                 onmouseover="this.style.transform='scale(1.08)'"
                 onmouseout="this.style.transform='scale(1)'">
                <i class="bi bi-arrow-left" style="font-size:18px;"></i>
            </div>
        </a>
        <div class="flex-grow-1">
            <p class="m-0 text-white" style="font-size:11px; opacity:0.85;">Pengaturan Akun</p>
            <h5 class="m-0 text-white fw-bold" style="font-size:17px; letter-spacing:0.3px;">Edit Profil</h5>
        </div>
    </div>

    {{-- Wave SVG --}}
    <svg viewBox="0 0 428 35" xmlns="http://www.w3.org/2000/svg" style="position:absolute; bottom:-1px; left:0; width:100%;">
        <path d="M0,18 C100,35 328,0 428,18 L428,35 L0,35 Z" fill="#f4f6f8"/>
    </svg>
</header>

{{-- ======================== MAIN CONTENT ======================== --}}
<main class="main-container" style="background:#f4f6f8; min-height: calc(100vh - 120px); padding-bottom: 95px;">
    <div class="container-body px-3 pt-2">

        {{-- Alerts --}}
        @if(session()->has('success'))
            <div class="alert alert-success d-flex align-items-center gap-2 rounded-4 py-2 px-3 mb-3" role="alert" style="background:#dcfce7; border:1px solid #bbf7d0; color:#15803d; font-size:13px;">
                <i class="bi bi-check-circle-fill" style="font-size:16px;"></i>
                <div>{{ session('success') }}</div>
            </div>
        @endif

        @if(isset($errors) && $errors->any())
            <div class="alert alert-danger rounded-4 py-2 px-3 mb-3" role="alert" style="font-size:13px;">
                <ul class="m-0 ps-3">
                    @foreach($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        {{-- Form Container Card --}}
        <div class="bg-white rounded-4 p-4 mb-3" style="box-shadow: 0 4px 18px rgba(0,0,0,0.05); border: 1px solid #eef2f6;">
            <form id="profileForm" action="/profile" method="post" enctype="multipart/form-data">
                @csrf
                @method('put')

                {{-- Avatar Upload Section --}}
                <div class="text-center mb-4">
                    <div class="position-relative d-inline-block">
                        <img src="{{ $picUrl }}" alt="Profile Picture" id="profileImage"
                             onerror="this.onerror=null; this.src='{{ asset('images/profile3.png') }}';"
                             class="rounded-circle"
                             style="width: 104px; height: 104px; object-fit: cover; border: 3.5px solid #00a056; box-shadow: 0 4px 16px rgba(0,160,86,0.18);">
                        
                        {{-- Hidden File Input --}}
                        <input type="file" id="picture" name="picture" style="display: none;" accept="image/jpeg,image/png,image/webp">

                        {{-- Camera Action Button --}}
                        <button type="button" class="btn position-absolute bottom-0 end-0 rounded-circle" id="uploadButton"
                                title="Ubah Foto Profil"
                                style="width: 34px; height: 34px; background:#00a056; color:#fff; border: 2.5px solid #fff; display: flex; align-items: center; justify-content: center; box-shadow: 0 2px 8px rgba(0,0,0,0.2); transition: transform 0.2s;"
                                onmouseover="this.style.transform='scale(1.1)'"
                                onmouseout="this.style.transform='scale(1)'">
                            <i class="bi bi-camera-fill" style="font-size: 13px;"></i>
                        </button>
                    </div>
                    <p class="m-0 mt-2 text-muted" style="font-size: 11px;">Ketuk tombol kamera untuk mengganti foto</p>
                </div>

                {{-- Form Fields --}}
                <div class="d-flex flex-column gap-3">
                    {{-- Nama Lengkap --}}
                    <div>
                        <label for="username" class="form-label fw-bold mb-1" style="font-size:12px; color:#334155;">
                            <i class="bi bi-person text-success me-1"></i> Nama Lengkap
                        </label>
                        <input type="text" class="form-control rounded-3 py-2 px-3" id="username" name="username"
                               style="font-size:13px; border:1.5px solid #e2e8f0; color:#1a1a2e;"
                               value="{{ $user->username ?? 'Nasabah' }}" required>
                    </div>

                    {{-- Email (Disabled) --}}
                    <div>
                        <div class="d-flex align-items-center justify-content-between mb-1">
                            <label for="email" class="form-label fw-bold m-0" style="font-size:12px; color:#334155;">
                                <i class="bi bi-envelope text-muted me-1"></i> Email Akun
                            </label>
                            <span class="badge" style="background:#f1f5f9; color:#64748b; font-size:10px; font-weight:600;">
                                <i class="bi bi-lock me-1"></i>Terkunci
                            </span>
                        </div>
                        <input type="email" id="email" name="email" class="form-control rounded-3 py-2 px-3"
                               style="font-size:13px; border:1.5px solid #e2e8f0; background:#f8fafc; color:#64748b;"
                               value="{{ $user->email ?? '-' }}" disabled>
                    </div>

                    {{-- No. HP / WhatsApp --}}
                    <div>
                        <label for="phone_number" class="form-label fw-bold mb-1" style="font-size:12px; color:#334155;">
                            <i class="bi bi-whatsapp text-success me-1"></i> No. Handphone / WhatsApp
                        </label>
                        <input type="text" id="phone_number" inputmode="numeric" name="phone_number"
                               class="form-control rounded-3 py-2 px-3"
                               style="font-size:13px; border:1.5px solid #e2e8f0; color:#1a1a2e;"
                               value="{{ $user->phone_number ?? '' }}" placeholder="Contoh: 08123456789">
                    </div>

                    {{-- Alamat --}}
                    <div>
                        <label for="address" class="form-label fw-bold mb-1" style="font-size:12px; color:#334155;">
                            <i class="bi bi-geo-alt text-danger me-1"></i> Alamat Domisili
                        </label>
                        <input type="text" id="address" name="address"
                               class="form-control rounded-3 py-2 px-3"
                               style="font-size:13px; border:1.5px solid #e2e8f0; color:#1a1a2e;"
                               value="{{ $user->address ?? '' }}" placeholder="Masukkan alamat lengkap">
                    </div>

                    {{-- BSU Unit (Disabled) --}}
                    <div>
                        <div class="d-flex align-items-center justify-content-between mb-1">
                            <label for="bsu-select" class="form-label fw-bold m-0" style="font-size:12px; color:#334155;">
                                <i class="bi bi-building text-primary me-1"></i> Bank Sampah Unit (BSU)
                            </label>
                            <span class="badge" style="background:#e0f2fe; color:#0284c7; font-size:10px; font-weight:600;">
                                Unit Terdaftar
                            </span>
                        </div>
                        <input type="text" id="bsu-select" name="bsu_id"
                               class="form-control rounded-3 py-2 px-3"
                               style="font-size:13px; border:1.5px solid #e2e8f0; background:#f8fafc; color:#64748b;"
                               value="{{ $bsu_name ?? 'Bank Sampah Unit Induk' }}" disabled>
                    </div>

                    {{-- Submit Button --}}
                    <div class="mt-3">
                        <button type="submit" class="btn btn-primary-custom w-100 py-3 rounded-pill fw-bold text-center"
                                style="font-size:14px; box-shadow:0 6px 18px rgba(0,160,86,0.25);">
                            <i class="bi bi-check2-circle me-1"></i> Simpan Perubahan
                        </button>
                    </div>
                </div>
            </form>
        </div>

    </div>
</main>
@endsection

@section('scripts')
<script>
document.addEventListener('DOMContentLoaded', function() {
    const uploadBtn = document.getElementById('uploadButton');
    const fileInput = document.getElementById('picture');
    const profileImg = document.getElementById('profileImage');

    if (uploadBtn && fileInput) {
        uploadBtn.addEventListener('click', function() {
            fileInput.click();
        });
    }

    if (fileInput && profileImg) {
        fileInput.addEventListener('change', function(event) {
            const file = event.target.files[0];
            if (file) {
                // Check max 5MB client-side
                if (file.size > 5 * 1024 * 1024) {
                    alert('Ukuran file foto maksimal 5 MB.');
                    fileInput.value = '';
                    return;
                }
                const reader = new FileReader();
                reader.onload = function(e) {
                    profileImg.src = e.target.result;
                };
                reader.readAsDataURL(file);
            }
        });
    }
});
</script>
@endsection