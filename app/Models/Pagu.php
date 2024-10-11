<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pagu extends Model
{
    use HasFactory;

    protected $fillable = [
        'perjadin_id',
        'transport',
        'uang_harian',
        'hotel',
        'taksi',
        'representasi',
        'paket_meeting',
        'tiket_pesawat', // Added this line
        'total_pagu',
    ];

    protected $attributes = [
        'transport' => 0,
        'uang_harian' => 0,
        'hotel' => 0,
        'taksi' => 0,
        'representasi' => 0,
        'paket_meeting' => 0,
        'tiket_pesawat' => 0, // Added this line
        'total_pagu' => 0,
    ];

    public function perjadin()
    {
        return $this->belongsTo(Perjadin::class);
    }
}