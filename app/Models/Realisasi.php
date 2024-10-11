<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Realisasi extends Model
{
    use HasFactory;
    protected $table = 'realisasi';

    protected $fillable = [
        'perjadin_id', 'nama', 'nip', 'pangkat', 'jabatan', 'golongan',
        'asal', 'tujuan', 'kegiatan', 'no_akun', 'hari', 'tanggal_keberangkatan',
        'transport', 'hotel', 'uang_harian', 'taksi', 'paket_meeting',
        'representasi', 'tiket_pesawat', 'total_realisasi',
        'transport_file', 'hotel_file', 'taksi_file', 'paket_meeting_file', 'tiket_pesawat_file'
    ];

    public function perjadin()
    {
        return $this->belongsTo(Perjadin::class);
    }
}