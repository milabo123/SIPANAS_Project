<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Kegiatan;

class KegiatanSeeder extends Seeder
{
    public function run()
    {
        $kegiatans = [
            ['nama_kegiatan' => 'Dukungan Koordinasi Teknis dan Pembinaan Operasional Satker', 'no_akun' => '3344.AEA.001.051.A.524111', 'tahun' => '2024'],
            ['nama_kegiatan' => 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', 'no_akun' => '3344.CCG.001.005.C.524111', 'tahun' => '2024'],
            ['nama_kegiatan' => 'Operasional Kedeputian Untuk Kunjungan/Inspeksi/Pendamping KUNKER', 'no_akun' => '3344.AEA.001.051.C.524211', 'tahun' => '2024'],
            ['nama_kegiatan' => 'Paket Meeting Fullboard Luar Kota Kegiatan Rakornas Bidang Teknis', 'no_akun' => '3344.AEA.001.051.B.524114', 'tahun' => '2024'],
            // Add more kegiatan as needed
        ];

        foreach ($kegiatans as $kegiatan) {
            Kegiatan::create($kegiatan);
        }
    }

}
