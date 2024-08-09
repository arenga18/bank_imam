<?php

namespace App\Http\Controllers\UserApp;

use App\Http\Controllers\Controller;
use App\Models\Point;
use App\Models\Saldo;
use App\Models\Reward;
use App\Models\TukarPoin;
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

        // Mendapatkan nominal yang dipilih dari request
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
        $reward = Reward::findOrFail($id);
        $point = Point::where('user_id', auth()->user()->id)->first();
        $saldo = Saldo::where('user_id', auth()->user()->id)->first();
        
        // Mendapatkan nominal yang dipilih dari request
        $selected_nominal = $request->input('selected_nominal');

        // Validasi apakah point mencukupi dan reward masih tersedia
        if ($point->total_points >= $reward->price && $reward->stock >= 1) {
            TukarPoin::create([
                'user_id' => auth()->user()->id,
                'reward_id' => $reward->id,
                'quantity' => 1,
                'total_price' => $reward->price,
                'status' => 'Pending'
            ]);

            // Update stok reward
            $reward->update([
                'stock' => ($reward->stock - 1)
            ]);

            // Update point user
            $point->update([
                'total_points' => ($point->total_points - $reward->price)
            ]);

            // Update saldo user berdasarkan nominal yang dipilih
            if ($saldo) {
                $saldo->update([
                    'total_saldo' => ($saldo->total_saldo + $selected_nominal)
                ]);
            } else {
                Saldo::create([
                    'user_id' => auth()->user()->id,
                    'total_saldo' => $selected_nominal
                ]);
            }

            return view('user-app/tukar-poin/success');
        }

        return view('user-app/tukar-poin/failed');
    }
}
