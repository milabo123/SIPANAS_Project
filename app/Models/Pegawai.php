<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pegawai extends Model
{
    use HasFactory;

    protected $table = 'pegawais';
    protected $fillable = ['nip', 'nama', 'jabatan', 'pangkat', 'golongan', 'asal'];

    public function perjadin()
    {
        return $this->hasMany(Perjadin::class, 'nama', 'id');
    }
}