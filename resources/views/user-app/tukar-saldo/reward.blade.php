@extends('layout.header-to-rewards')

@section('title', 'Tukar Uang | Bank Imam')

@section('tukar-point-content')
<div class="container my-4 px-4">
    <div class="px-1" style="padding-bottom: 100px;">
        <form id="nominalForm" action="{{ route('confirmReward', ['id' => $reward->id]) }}" method="POST">
            @csrf
            <div class="row mb-3">
                <div class="col m-0">
                    <h5 class="fw-bold m-0">Pilih Nominal</h5>
                </div>
            </div>
            <div class="row justify-content-center">
                <!-- Pilihan Nominal -->
                <div class="d-flex flex-wrap p-0 justify-content-start">
                    @php
                        $nominals = [
                            5000 => 6000,
                            10000 => 11500,
                            25000 => 25500,
                            50000 => 50500,
                            75000 => 75500,
                            100000 => 100000,
                            200000 => 200000,
                        ];
                    @endphp
            
                    @foreach($nominals as $nominal => $mpoint)
                    <div class="col-6 mb-3 px-2">
                        <button type="button" class="btn py-2 nominal-button btn-outline-custom w-100 fw-bold" data-nominal="{{ $nominal }}">
                            Rp {{ number_format($nominal, 0, ',', '.') }}
                        </button>
                    </div>
                    @endforeach
                    
                </div>
                <div class="px-2">
                    <p class='text-center secondary-color fw-bold'>Atau</p>
                    <input type="text" inputmode="numeric" name="selected_nominal" class="py-2 px-3 w-100 fw-bold input-outline-custom rounded-2" placeholder="Masukan nominal..." value"">
                </div>
            </div>
            
            <!-- Hidden Input to Store Selected Nominal -->
            <input type="hidden" name="selected_nominal" id="selected_nominal" value="">
    
            <!-- Submit Button -->
            <div class="row mx-4 mt-4">
                <button type="submit" class="btn btn-primary-custom rounded-pill fw-bold my-2 px-4 py-2">Tukarkan Saldo</button>
            </div>
        </form>
    </div>
</div>
{{-- NAVIGATION MENU --}}
@include('layout.navigation')
@endsection

@section('scripts')
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Format nominal menjadi format Rupiah
        function formatRupiah(angka) {
            const format = angka.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
            return 'Rp ' + format;
        }

        // Event listener untuk setiap tombol nominal
        document.querySelectorAll('.nominal-button').forEach(button => {
            button.addEventListener('click', function () {
                document.querySelectorAll('.nominal-button').forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                document.getElementById('selected_nominal').value = this.getAttribute('data-nominal');
                document.querySelector('input[name="selected_nominal"]').value = '';
            });
        });

        // Event listener untuk input manual nominal
        const manualInput = document.querySelector('input[name="selected_nominal"]');
        manualInput.addEventListener('input', function () {
            // Hapus kelas 'active' dari semua tombol jika pengguna mengetik
            document.querySelectorAll('.nominal-button').forEach(btn => btn.classList.remove('active'));
            const value = this.value.replace(/[^0-9]/g, ''); // Hapus semua karakter non-numeric
            if (value) {
                this.value = formatRupiah(value); // Format nilai ke Rupiah
                document.getElementById('selected_nominal').value = value; // Simpan nilai tanpa format
            } else {
                this.value = '';
                document.getElementById('selected_nominal').value = '';
            }
        });

        // Event listener untuk form submit
        document.getElementById('nominalForm').addEventListener('submit', function (event) {
            const selectedNominal = document.getElementById('selected_nominal').value;
            if (!selectedNominal) {
                event.preventDefault(); // Cegah pengiriman form
                alert('Silakan pilih atau masukkan nominal terlebih dahulu.');
            }
        });
    });
</script>
@endsection
