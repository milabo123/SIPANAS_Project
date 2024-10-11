<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Perjadin extends Model
{
    use HasFactory;

    protected $fillable = [
        'pegawai_id', 'nama', 'nip', 'jabatan', 'pangkat', 'golongan', 'asal', 'tujuan', 'kegiatan', 'no_akun', 'hari',
        'tanggal_keberangkatan', 'tanggal_dibuat'
    ];

    public function pegawai()
    {
        return $this->belongsTo(Pegawai::class);
    }
    
    public function pagu()
    {
        return $this->hasOne(Pagu::class);
    }
}