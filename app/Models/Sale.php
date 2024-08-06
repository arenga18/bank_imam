<?php 
// app/Models/Sale.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    use HasFactory;

    // Tentukan tabel yang digunakan oleh model
    protected $table = 'sales';

    // Tentukan atribut yang bisa diisi massal
    protected $fillable = [
        'items',
        'total_weight',
        'total_price',
    ];

    // Untuk cast atribut JSON
    protected $casts = [
        'items' => 'array',
        'total_weight' => 'float',
        'total_price' => 'float',
    ];
}

?>