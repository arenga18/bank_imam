<?php 
// app/Http/Controllers/SalesController.php

namespace App\Http\Controllers\UserApp;

use Illuminate\Http\Request;
use App\Models\Sale;
use App\Http\Controllers\Controller;

class SalesController extends Controller
{
    public function store(Request $request)
    {
        $items = json_decode($request->input('items'), true); // Menguraikan JSON
        $totalWeight = $request->input('total_weight');
        $totalPrice = $request->input('total_price');

        $sale = Sale::create([
            'items' => $items, // Laravel otomatis mengonversi array ke JSON
            'total_weight' => $totalWeight,
            'total_price' => $totalPrice,
            'foto' => '',
        ]);

        // Hapus data dari session storage setelah disimpan
        session()->forget('cartItems');
        session()->forget('totalWeight');
        session()->forget('totalPrice');

        return redirect()->route('transaction.details');
    }

    public function showTransactionDetails()
    {
        // Ambil data transaksi terbaru
        $sale = Sale::latest()->first(); // Ambil transaksi terbaru

        $items = $sale->items; // Laravel otomatis mengonversi JSON ke array
        $totalWeight = $sale->total_weight;
        $totalPrice = $sale->total_price;

        return view('user-app/details', compact('items', 'totalWeight', 'totalPrice'));
    }
}


?>