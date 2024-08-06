@extends('layout.main')
@section('title', 'Detail Transaksi | We-Cycle')
@section('content')

<div class="container bg-white">
    <header class="gradient-brand-toRight mx-auto rounded-bottom" style="max-width: 428px; width: 100%">
        <a href="{{ url('dashboard') }}">
            <i style="font-size: 1.3rem; color: black;" class="bi bi-arrow-left me-3"></i>
        </a>
        {{-- Nav Header --}}
        <div class="container text-center px-4 py-4">
            <div class="row">
                <div class="col py-4 text-center text-light">
                    <h4 class="mb-0 fw-bold" style="letter-spacing: 1px;">
                        KATEGORI PEMILAHAN <br>
                        SAMPAH
                    </h4>
                </div>
            </div>
        </div>
    </header>
    <h4>Detail Transaksi</h4>

    <!-- Upload Gambar -->
    <div class="mb-4">
        <label for="upload-image" class="form-label">Upload Gambar</label>
        <input type="file" class="form-control" id="upload-image" accept="image/*">
        <img id="preview-image" src="https://via.placeholder.com/150" alt="Placeholder" class="img-thumbnail mt-2" style="max-width: 150px;">
    </div>

    <!-- Rincian Sampah -->
    <div class="mb-4">
        <h5 class="mb-3">Rincian Sampah</h5>
        <ul class="list-group">
            <!-- Contoh item, ganti dengan data dinamis -->
            @foreach ($items as $item)
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <div>
                    <strong>{{ $item['name'] }}</strong>
                    <div class="text-muted">
                        {{ $item['weight'] }} Kg - Rp.{{ $item['price'] }}
                    </div>
                </div>
                <div class="d-flex align-items-center">
                    <a href="#" class="me-2 text-primary"><i class="bi bi-pencil"></i></a>
                    <a href="#" class="text-danger"><i class="bi bi-trash"></i></a>
                </div>
            </li>
            @endforeach
        </ul>
    </div>

    <!-- Tombol Pilihan -->
    <div class="d-flex justify-content-between mb-4">
        <button class="btn btn-primary">Metode Pembayaran</button>
        <button class="btn btn-secondary">Pilihan Pengambilan Sampah</button>
    </div>

    <!-- Detail Penjualan -->
    <div class="mb-4">
        <h5 class="mb-3">Detail Penjualan</h5>
        <div class="d-flex justify-content-between mb-2">
            <span>Penjualan Sampah</span>
            <span>Rp.{{ $totalPrice }}</span>
        </div>
        <div class="d-flex justify-content-between mb-2">
            <span>Biaya Layanan</span>
            <span>Rp.100</span>
        </div>
    </div>

    <!-- Tombol Jual Sekarang -->
    <div class="d-flex justify-content-between">
        <form action="{{ route('sales.store') }}" method="POST">
            @csrf
            <input type="hidden" name="items" value="{{ json_encode($cartItems) }}">
            <input type="hidden" name="total_weight" value="{{ $totalWeight }}">
            <input type="hidden" name="total_price" value="{{ $totalPrice }}">
            <button type="submit" class="btn btn-success w-100">Jual Sekarang <span class="float-end">Rp.{{ $totalPrice }}</span></button>
        </form>
    </div>
</div>

@endsection

@section('scripts')
<script>
document.getElementById('upload-image').addEventListener('change', function(event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
            document.getElementById('preview-image').src = e.target.result;
        };
        reader.readAsDataURL(file);
    }
});
</script>
@endsection
