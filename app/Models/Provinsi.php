<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Provinsi extends Model
{
    use HasFactory;
    protected $fillable = ['nama_provinsis'];

    public function create() {
        $provinsis = Provinsi::all(); // Ambil semua data provinsi
        return view('nama_view', compact('provinsis'));
    }
}
