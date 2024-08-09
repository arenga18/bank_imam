@extends('layout.header-tukar-poin')

@section('title', 'Tukar Uang | We-Cycle')

@section('tukar-point-content')
<div class="container mt-4 pb-5 mb-5">
    <form id="nominalForm" action="{{ route('confirmReward', ['id' => $reward->id]) }}" method="POST">
        @csrf
        <div class="row">
            <div class="col m-0 d-flex justify-content-between">
                <h5 class="fw-bold m-0">Pilih Nominal</h5>
                <p class="text-muted m-0">*Minimal top up adalah Rp 10.000</p>
            </div>
        </div>
        
        <div class="row">
            <!-- Pilihan Nominal -->
            <div class="d-flex flex-wrap justify-content-start">
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
                <button type="button" class="nominal-button btn btn-outline-primary m-2" data-nominal="{{ $nominal }}">
                    Pulsa Rp {{ number_format($nominal, 0, ',', '.') }} <br>
                    {{ number_format($mpoint, 0, ',', '.') }} M-Point
                </button>
                @endforeach
            </div>
        </div>
        
        <!-- Hidden Input to Store Selected Nominal -->
        <input type="hidden" name="selected_nominal" id="selected_nominal" value="">

        <!-- Submit Button -->
        <div class="row mx-4 mt-3">
            <button type="submit" class="btn btn-primary rounded-pill fw-bold my-2 px-4 py-2">Tukarkan Saldo</button>
        </div>
    </form>
</div>

{{-- NAVIGATION MENU --}}
<div class="navigation-menu">
    <div class="container d-flex justify-content-evenly">
        <div>
            <a class="btn btn-lg border-0 px-1 py-auto" href="/dashboard">
                <i class="bi bi-house primary-color" style="font-size: 1.5rem;"></i>
                <p class="primary-color font-sm p-0 m-0">Beranda</p>
            </a>
        </div>
        <div>
            <a class="btn btn-lg border-0 px-1 py-auto" href="/tukar-poin">
                <i class="bi bi-gift primary-color" style="font-size: 1.5rem;"></i>
                <p class="primary-color font-sm p-0 m-0">Rewards</p>
            </a>
        </div>
        <div>
            <a class="btn btn-lg border-0 px-1 py-auto" href="/kategori-sampah">
                <i class="bi bi-trash primary-color" style="font-size: 1.5rem;"></i>
                <p class="primary-color font-sm p-0 m-0">Jual Sampah</p>
            </a>
        </div>
        <div>
            <a class="btn btn-lg border-0 px-1 py-auto" href="/edukasi">
                <i class="bi bi-book primary-color" style="font-size: 1.5rem;"></i>
                <p class="primary-color font-sm p-0 m-0">Edukasi</p>
            </a>
        </div>
        <div>
            <a class="btn btn-lg border-0 px-1 py-auto" href="/settings" role="button">
                <i class="bi bi-person primary-color" style="font-size: 1.5rem;"></i>
                <p class="primary-color font-sm p-0 m-0">Profil</p>
            </a>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
    // Event listener to handle button clicks
    document.querySelectorAll('.nominal-button').forEach(button => {
        button.addEventListener('click', function() {
            // Remove active class from other buttons
            document.querySelectorAll('.nominal-button').forEach(btn => btn.classList.remove('active'));

            // Add active class to the clicked button
            this.classList.add('active');

            // Set the hidden input value to the selected nominal
            document.getElementById('selected_nominal').value = this.getAttribute('data-nominal');
        });
    });

    // Deselect the button if clicked outside the buttons
    document.addEventListener('click', function(event) {
        const isClickInside = event.target.closest('.nominal-button');

        if (!isClickInside) {
            document.querySelectorAll('.nominal-button').forEach(btn => btn.classList.remove('active'));
            document.getElementById('selected_nominal').value = '';
        }
    });
</script>
@endsection
