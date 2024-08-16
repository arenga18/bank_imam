@extends('layout.main')
@section('title', 'Profil | Bank Imam')

@section('content')
<header class="gradient-brand-toRight mx-auto rounded-bottom">
   {{-- Nav Header --}}
   <div class="container position-relative text-center py-4">
    <div class="d-flex align-items-center">
        <a href="{{ url('settings') }}" class="d-inline-block position-absolute">
            <i style="font-size: 2rem;" class="bi bi-arrow-left me-3 text-light"></i>
        </a>
        <div class="col text-center text-light">
            <h4 class="mb-0 fw-bold" style="letter-spacing: 1px;">
                Edit Profil
            </h4>
        </div>
    </div>
</div>
</header>
<main id="profile-detail" class="main-container">
    <div class="container mt-4 pb-3">
        <!-- Formulir dengan Input File dan Gambar Profil -->
        <form id="profileForm" action="/profile" method="post" enctype="multipart/form-data">
            @csrf
            @if(session()->has('success'))
            <div class="alert alert-success m-2 mb-3" role="alert">
                {{ session('success') }}
            </div>
            @endif
            @if($errors->any())
                {!! implode('', $errors->all('<div class="mx-1 font-sm text-danger">:message</div>')) !!}
            @endif
            @method('put')
            <div class="d-flex justify-content-center">
                <div class="position-relative">
                    <!-- Gambar Profil -->
                    <img src="{{ $user->picture ?? asset('/images/profile3.png') }}" alt="Profile Picture" id="profileImage" class="rounded-circle border border-3 border-custom" style="z-index: 1;" width="130px" height="130px;">
                    
                    <!-- Input file untuk upload foto -->
                    <input type="file" id="picture" name="picture" style="display: none;" accept="image/*">
    
                    <!-- Tombol untuk Upload Foto -->
                    <button type="button" class="btn btn-secondary-custom position-absolute bottom-0 end-0 mb-2 rounded-circle" id="uploadButton" title="Update Foto Profil">
                        <i class="bi bi-camera"></i>
                    </button>
                </div>
            </div>
            
            <div class="px-2 mt-2">
                <!-- Form lainnya -->
                <div class="mb-1">
                    <label for="username" class="form-label fw-bold mt-2 mb-1">Nama Lengkap</label>
                    <input type="text" class="form-control" id="username" name="username"
                        value="{{ $user->username ?? 'Anonim' }}">
                </div>
                <div class="col-12">
                    <label for="email" class="form-label fw-bold mt-2 mb-1">Email</label>
                    <input type="email" id="email" name="email" class="form-control"
                        value="{{ $user->email ?? 'abc@gmail.com' }}" disabled>
                </div>
                <div class="col-12">
                    <label for="phone-number" class="form-label fw-bold mt-2 mb-1">No. Handphone / WhatsApp</label>
                    <input type="text" id="phone_number" inputmode="numeric" name="phone_number" class="form-control"
                        value="{{ $user->phone_number ?? '112233122' }}">
                </div>
                <div class="col-12">
                    <label for="address" class="form-label fw-bold mt-2 mb-1">Alamat</label>
                    <input type="text" id="address" name="address" class="form-control"
                        value="{{ $user->address ?? 'Ciputat' }}">
                </div>
                <div class="col-12">
                    <label for="bsu-select" class="form-label fw-bold mt-2 mb-1">Bank Sampah Unit</label>
                    <input type="text" id="bsu-select" name="bsu_id" class="form-control"
                    value="{{ $bsu_name }}" disabled>
                </div>
                {{-- <div class="col-12">
                    <label for="bsu-select" class="form-label fw-bold mt-2 mb-1">Bank Sampah Unit</label>
                    <select id="bsu-select" name="bsu_id" class="form-control">
                        <option value="">Pilih Bank Sampah Unit</option>
                        @foreach($list_bsu as $bsu)
                            <option value="{{ $bsu->id }}" {{ $bsu->name === $bsu_name ? 'selected' : '' }}>
                                {{ $bsu->name }}
                            </option>
                        @endforeach
                    </select>
                </div> --}}
                <div class="row mt-4 mx-4 mb-5 pb-5">
                    <button type="submit" class="btn btn-primary-custom rounded-pill fw-bold my-2 px-4 py-2">
                        Simpan
                    </button>
                </div>
            </div>
        </form>
    </div>
</main>
@endsection

@section('scripts')
<script>
   document.getElementById('uploadButton').addEventListener('click', function() {
    document.getElementById('picture').click(); // Trigger file input click
});

document.getElementById('picture').addEventListener('change', function(event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
            document.getElementById('profileImage').src = e.target.result;
        }
        reader.readAsDataURL(file);
    }
});
</script>
@endsection