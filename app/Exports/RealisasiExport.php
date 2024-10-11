<?php

namespace App\Exports;

use App\Models\Realisasi;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class RealisasiExport implements FromCollection, WithHeadings
{
    public function collection()
    {
        return Realisasi::all();
    }

    public function headings(): array
    {
        return [
            'ID', 'Nama', 'NIP', 'Pangkat', 'Jabatan', 'Golongan', 'Asal', 'Tujuan',
            'Kegiatan', 'No. Akun', 'Hari', 'Tanggal Keberangkatan', 'Transport',
            'Hotel', 'Uang Harian', 'Taksi', 'Paket Meeting', 'Representasi',
            'Total Realisasi', 'Created At', 'Updated At'
        ];
    }
}