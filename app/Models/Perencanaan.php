<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Perencanaan extends Model
{
    use HasFactory;
    protected $table = "perencanaan";
    protected $primaryKey = "id_perencanaan";
}