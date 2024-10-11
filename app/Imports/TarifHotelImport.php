<?php

namespace App\Imports;

use App\Models\TarifHotel2024;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class TarifHotelImport implements ToModel, WithStartRow
{
    public function model(array $row)
    {
        return new TarifHotel2024([
            'No' => $row[0],
            'Provinsi' => $row[1],
            'Satuan' => $row[2],
            'Tarif_Eselon_1' => $this->cleanCurrency($row[3]),
            'Tarif_Eselon_2' => $this->cleanCurrency($row[4]),
            'Tarif_Golongan_IV' => $this->cleanCurrency($row[5]),
            'Tarif_Golongan_III_II_I' => $this->cleanCurrency($row[6]),
        ]);
    }

    public function startRow(): int
    {
        return 4; // Data dimulai dari baris ke-4
    }

    private function cleanCurrency($value)
    {
        return preg_replace('/[^0-9]/', '', $value);
    }
}