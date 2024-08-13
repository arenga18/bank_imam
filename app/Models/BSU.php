<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BSU extends Model
{
    use HasFactory;

    // Tentukan nama tabel jika tidak sesuai dengan konvensi Laravel
    protected $table = 'cms_users';

    // Tentukan primary key jika tidak menggunakan 'id'
    protected $primaryKey = 'id'; // Ganti dengan nama primary key jika berbeda

    // Jika primary key bukan auto-increment
    public $incrementing = true;

    // Jika primary key bukan integer
    protected $keyType = 'int'; // Ganti dengan tipe data jika berbeda

    // Untuk mengaktifkan timestamps jika menggunakan kolom created_at dan updated_at
    public $timestamps = true; // Ganti dengan false jika tidak menggunakan timestamps
}
