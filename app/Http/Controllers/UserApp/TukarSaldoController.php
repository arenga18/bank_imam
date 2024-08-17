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
        $cmsUserId = auth()->user()->cms_user_id;
        
        $barang = Reward::where('category', 'barang')
            ->where('admin_id', $cmsUserId)
            ->get();
        $uang = Reward::where('category', 'uang')
            ->where('admin_id', $cmsUserId)
            ->get();

        $point = Point::where('user_id', auth()->user()->id)->first();
        $saldo = Saldo::where('user_id', auth()->user()->id)->first();
        
        return view('user-app.tukar-poin.tukar-poin-page')->with([
            'barang' => $barang,
            'uang' => $uang,
            'point' => $point,
            'saldo' => $saldo,
        ]);
    }

    public function show($id)
    {
        $cmsUserId = auth()->user()->cms_user_id; 

        $reward = Reward::where('id', $id)
            ->where('admin_id', $cmsUserId)
            ->firstOrFail();
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
        $cmsUserId = auth()->user()->cms_user_id; 

        $reward = Reward::where('id', $id)
            ->where('admin_id', $cmsUserId)
            ->firstOrFail();
        $saldo = Saldo::where('user_id', auth()->user()->id)->first();

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
        $cmsUserId = auth()->user()->cms_user_id; 

        $reward = Reward::where('id', $id)
            ->where('admin_id', $cmsUserId)
            ->firstOrFail();
        $saldo = Saldo::where('user_id', auth()->user()->id)->firstOrFail();
        $selected_nominal = $request->input('selected_nominal');

        
        if ($saldo->total_saldo >= $selected_nominal && $reward->stock >= 1) {
            TukarSaldo::create([
                'user_id' => auth()->user()->id,
                'reward_id' => $reward->id,
                'quantity' => 1,
                'total_price' => $selected_nominal,
                'status' => 'Pending'
            ]);

            $reward->update([
                'stock' => $reward->stock - 1
            ]);
            $saldo->update([
                'total_saldo' => $saldo->total_saldo - $selected_nominal
            ]);

            return view('user-app/tukar-saldo/success');
        }

        return view('user-app/tukar-saldo/failed');
    }
}
