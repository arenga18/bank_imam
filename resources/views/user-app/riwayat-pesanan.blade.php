@extends('layout.header-rewards')
@section('title', 'Riwayat Tukar Rewards')

@section('transaction-content')
@section('transaction-title', 'RIWAYAT PENUKARAN')
<main class="main-container" style="min-height: calc(100vh - 64px);">
    <div class="pt-3 mx-3">
        @if (isset($tukarPoin_history) || !empty($tukarPoin_history))
        <div class="barang-section">
            <h5>Barang</h5>
        </div>
        @forelse($tukarPoin_history as $tukar_poin)
        <a href="{{ url('/tukarPoin/'.$tukar_poin->id.'/detail') }}" class="text-decoration-none text-dark">
            <div class="card border rounded-3 shadow-sm mb-2">
                <div class="card-body">
                    <div class="row d-flex align-items-center">
                        <div class="col-2">
                            <img class="min-w-100" style="height: 36px;" src="{{ url($tukar_poin->reward->image) }}"
                                alt="reward">
                        </div>
                        <div class="col-6 text-start">
                            <p class="mb-0 fw-bold">
                                {{ $tukar_poin->reward->name }}
                            </p>
                            <p class="mb-0 font-sm text-muted">
                                {{ $tukar_poin->created_at }}
                            </p>
                        </div>
                        @if( $tukar_poin->status == 'Pending')
                        <div class="col-4 text-center">
                            <p class="mb-0 font-sm fw-bold text-white bg-dark rounded-3">
                                {{ $tukar_poin->status }}
                            </p>
                        </div>
                        @elseif( $tukar_poin->status == 'On Proses' )
                        <div class="col-4 text-center">
                            <p class="mb-0 font-sm fw-bold text-white bg-primary rounded-3">
                                {{ $tukar_poin->status }}
                            </p>
                        </div>
                        @else
                        <div class="col-4 text-center">
                            <p class="mb-0 font-sm fw-bold text-white bg-success rounded-3">
                                {{ $tukar_poin->status }}
                            </p>
                        </div>
                        @endif
                    </div>
                </div>
            </div>
        </a>
        @empty
        <div class="card border shadow-sm mb-2">
            <div class="card-body">
                <div class="row d-flex align-items-center">
                    <div class="col text-center text-danger">
                        <p class="mb-0 fw-bold">
                            Anda belum pernah melakukan penukaran poin menjadi reward.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        @endforelse
        @endif
        @if (isset($tukarSaldo_history) || !empty($tukarSaldo_history))
        <div class="uang-section mt-4">
            <h5>Uang</h5>
        </div>
        @forelse($tukarSaldo_history as $tukar_saldo)
        <a href="{{ url('/tukarSaldo/'.$tukar_saldo->id.'/detail') }}" class="text-decoration-none text-dark">
            <div class="card border rounded-3 shadow-sm mb-2">
                <div class="card-body">
                    <div class="row d-flex align-items-center">
                        <div class="col-2">
                            <img class="" style="width:36px; height: 36px;" src="{{ url($tukar_saldo->reward->image) }}"
                                alt="reward">
                        </div>
                        <div class="col-6 text-start">
                            <p class="mb-0 fw-bold">
                                Rp{{ number_format($tukar_saldo->total_price, 0, ',', '.') }}
                            </p>
                            <p class="mb-0 font-sm text-muted">
                                {{ $tukar_saldo->created_at }}
                            </p>
                        </div>
                        @if( $tukar_saldo->status == 'Pending')
                        <div class="col-4 text-center">
                            <p class="mb-0 font-sm fw-bold text-white bg-dark rounded-3">
                                {{ $tukar_saldo->status }}
                            </p>
                        </div>
                        @elseif( $tukar_saldo->status == 'On Proses' )
                        <div class="col-4 text-center">
                            <p class="mb-0 font-sm fw-bold text-white bg-primary rounded-3">
                                {{ $tukar_saldo->status }}
                            </p>
                        </div>
                        @else
                        <div class="col-4 text-center">
                            <p class="mb-0 font-sm fw-bold text-white bg-success rounded-3">
                                {{ $tukar_saldo->status }}
                            </p>
                        </div>
                        @endif
                    </div>
                </div>
            </div>
        </a>
        @empty
        <div class="card border shadow-sm mb-2">
            <div class="card-body">
                <div class="row d-flex align-items-center">
                    <div class="col text-center text-danger">
                        <p class="mb-0 fw-bold">
                            Anda belum pernah melakukan penukaran Saldo
                        </p>
                    </div>
                </div>
            </div>
        </div>
        @endforelse
        @endif
    </div>
</main>
@endsection