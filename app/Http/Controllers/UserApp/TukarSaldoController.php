<?php

namespace App\Http\Controllers\UserApp;

use App\Http\Controllers\Controller;
use App\Models\Point;
use App\Models\Saldo;
use App\Models\Reward;
use App\Models\TukarPoin;
use App\Models\TukarSaldo;
use Illuminate\Http\Request;

class TukarSaldoController extends Controller
{
    public function index()
    {
        $hiasan = Reward::where('category', 'hiasan')->get();
        $peralatan = Reward::where('category', 'peralatan')->get();
        $uang = Reward::where('category', 'uang')->get();
        $point = Point::where('user_id', auth()->user()->id)->first();
        $saldo = Saldo::where('user_id', auth()->user()->id)->first();
        
        return view('user-app.tukar-poin.tukar-poin-page')->with([
            'hiasan' => $hiasan,
            'peralatan' => $peralatan,
            'uang' => $uang,
            'point' => $point,
            'saldo' => $saldo,
        ]);
    }

    public function show($id)
    {
        $reward = Reward::findOrFail($id);
        $point = Point::where('user_id', auth()->user()->id)->first();
        $saldo = Saldo::where('user_id', auth()->user()->id)->first();

        return view('user-app/tukar-saldo/reward')->with([
            'reward' => $reward, 
            'point' => $point,
            'saldo' => $saldo 
        ]);
    }

    public function confirm(Request $request, $id)
    {
        $reward = Reward::findOrFail($id);
        $saldo = Saldo::where('user_id', auth()->user()->id)->first();

        // Validasi input 'selected_nominal'
        $request->validate([
            'selected_nominal' => 'required|numeric|min:1',
        ]);

        $selected_nominal = $request->input('selected_nominal');
        $time = date("Y-m-d");
        $saldo_left = $saldo->total_saldo - $selected_nominal;

        return view('user-app/tukar-saldo/konfirmasi-tukar-saldo')->with([
            'reward' => $reward,
            'saldo' => $saldo,
            'time' => $time,
            'saldo_left' => $saldo_left,
            'selected_nominal' => $selected_nominal
        ]);
    }


    public function store(Request $request, $id)
    {

        // Mendapatkan data reward, saldo, dan nominal yang dipilih
        $reward = Reward::findOrFail($id);
        $saldo = Saldo::where('user_id', auth()->user()->id)->firstOrFail();
        $selected_nominal = $request->input('selected_nominal');
    
        // Validasi apakah saldo mencukupi dan reward masih tersedia
        if ($saldo->total_saldo >= $selected_nominal && $reward->stock >= 1) {
            // Buat entri TukarSaldo
            TukarSaldo::create([
                'user_id' => auth()->user()->id,
                'reward_id' => $reward->id,
                'quantity' => 1,
                'total_price' => $selected_nominal,
                'status' => 'Pending'
            ]);
    
            // Update stok reward
            $reward->update([
                'stock' => $reward->stock - 1
            ]);
    
            // Update saldo user
            $saldo->update([
                'total_saldo' => $saldo->total_saldo - $selected_nominal
            ]);
    
            // Redirect ke halaman sukses
            return view('user-app/tukar-saldo/success');
        }
    
        // Redirect ke halaman gagal jika kondisi tidak terpenuhi
        return view('user-app/tukar-saldo/failed');
    }
    
}
