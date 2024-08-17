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
        $items = json_decode($request->input('items'), true); 
        $totalWeight = $request->input('total_weight');
        $totalPrice = $request->input('total_price');

        $sale = Sale::create([
            'items' => $items, 
            'total_weight' => $totalWeight,
            'total_price' => $totalPrice,
            'foto' => '',
        ]);

        session()->forget('cartItems');
        session()->forget('totalWeight');
        session()->forget('totalPrice');

        return redirect()->route('transaction.details');
    }

    public function showTransactionDetails()
    {
        // Ambil data transaksi terbaru
        $sale = Sale::latest()->first(); 
        $items = $sale->items; 
        $totalWeight = $sale->total_weight;
        $totalPrice = $sale->total_price;

        return view('user-app/details', compact('items', 'totalWeight', 'totalPrice'));
    }
}


?>