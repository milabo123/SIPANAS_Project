<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TarifHotel2024 extends Model
{
    use HasFactory;

    protected $table = 'tarif_hotel_2024';
    protected $primaryKey = 'No';
    public $timestamps = false;

    protected $fillable = [
        'Provinsi',
        'Satuan',
        'Tarif_Eselon_1',
        'Tarif_Eselon_2',
        'Tarif_Golongan_IV',
        'Tarif_Golongan_III_II_I',
    ];
}