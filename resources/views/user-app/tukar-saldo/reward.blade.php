@extends('layout.header-tukar-poin')

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
            </div>
            
            <!-- Hidden Input to Store Selected Nominal -->
            <input type="hidden" name="selected_nominal" id="selected_nominal" value="">
    
            <!-- Submit Button -->
            <div class="row mx-4 mt-3">
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
    // Event listener untuk setiap tombol nominal
    document.querySelectorAll('.nominal-button').forEach(button => {
        button.addEventListener('click', function () {
            // Hapus kelas 'active' dari semua tombol
            document.querySelectorAll('.nominal-button').forEach(btn => btn.classList.remove('active'));

            // Tambahkan kelas 'active' pada tombol yang diklik
            this.classList.add('active');

            // Set nilai dari input hidden
            document.getElementById('selected_nominal').value = this.getAttribute('data-nominal');
            console.log('Selected Nominal:', this.getAttribute('data-nominal')); // Debugging
        });
    });

    // Event listener untuk form submit
    document.getElementById('nominalForm').addEventListener('submit', function (event) {
        // Ambil nilai dari input hidden
        const selectedNominal = document.getElementById('selected_nominal').value;
        
        // Cek apakah nominal sudah dipilih
        if (!selectedNominal) {
            event.preventDefault(); // Cegah pengiriman form
            alert('Silakan pilih nominal terlebih dahulu.');
            console.log('Form tidak dikirim: Nominal belum dipilih.'); // Debugging
        } else {
            console.log('Form dikirim dengan nominal:', selectedNominal); // Debugging
        }
    });
});

</script>
@endsection
