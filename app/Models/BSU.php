<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BSU extends Model
{
    use HasFactory;

    protected $table = 'cms_users';
    protected $primaryKey = 'id'; 
    public $incrementing = true;
    protected $keyType = 'int';
    public $timestamps = true; 
}
