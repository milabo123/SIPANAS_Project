<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProvinsiKotaSeeder extends Seeder
{
    public function run()
    {
        // Insert provinsi data
        $provinsis = [
            'Aceh', 'Sumatera Utara', 'Sumatera Barat', 'Riau', 'Kepulauan Riau',
            'Jambi', 'Bengkulu', 'Sumatera Selatan', 'Kepulauan Bangka Belitung',
            'Lampung', 'Banten', 'DKI Jakarta', 'Jawa Barat', 'Jawa Tengah',
            'DI Yogyakarta', 'Jawa Timur', 'Bali', 'Nusa Tenggara Barat',
            'Nusa Tenggara Timur', 'Kalimantan Barat', 'Kalimantan Tengah',
            'Kalimantan Selatan', 'Kalimantan Timur', 'Kalimantan Utara',
            'Sulawesi Utara', 'Gorontalo', 'Sulawesi Tengah', 'Sulawesi Barat',
            'Sulawesi Selatan', 'Sulawesi Tenggara', 'Maluku', 'Maluku Utara',
            'Papua Barat', 'Papua', 'Papua Tengah', 'Papua Pegunungan', 'Papua Selatan'
        ];

        foreach ($provinsis as $provinsi) {
            DB::table('provinsis')->insert(['nama_provinsi' => $provinsi]);
        }

        // Insert kota data
        $kotas = [
            // Aceh
            ['nama_kota' => 'Banda Aceh', 'provinsi_id' => 1],
            ['nama_kota' => 'Langsa', 'provinsi_id' => 1],
            ['nama_kota' => 'Lhokseumawe', 'provinsi_id' => 1],
            ['nama_kota' => 'Sabang', 'provinsi_id' => 1],
            ['nama_kota' => 'Subulussalam', 'provinsi_id' => 1],

            // Sumatera Utara
            ['nama_kota' => 'Medan', 'provinsi_id' => 2],
            ['nama_kota' => 'Pematangsiantar', 'provinsi_id' => 2],
            ['nama_kota' => 'Binjai', 'provinsi_id' => 2],
            ['nama_kota' => 'Padang Sidempuan', 'provinsi_id' => 2],
            ['nama_kota' => 'Tebing Tinggi', 'provinsi_id' => 2],

            // Sumatera Barat
            ['nama_kota' => 'Padang', 'provinsi_id' => 3],
            ['nama_kota' => 'Bukittinggi', 'provinsi_id' => 3],
            ['nama_kota' => 'Payakumbuh', 'provinsi_id' => 3],
            ['nama_kota' => 'Solok', 'provinsi_id' => 3],
            ['nama_kota' => 'Pariaman', 'provinsi_id' => 3],

            // Riau
            ['nama_kota' => 'Pekanbaru', 'provinsi_id' => 4],
            ['nama_kota' => 'Dumai', 'provinsi_id' => 4],

            // Kepulauan Riau
            ['nama_kota' => 'Tanjung Pinang', 'provinsi_id' => 5],
            ['nama_kota' => 'Batam', 'provinsi_id' => 5],

            // Jambi
            ['nama_kota' => 'Jambi', 'provinsi_id' => 6],
            ['nama_kota' => 'Sungai Penuh', 'provinsi_id' => 6],

            // Bengkulu
            ['nama_kota' => 'Bengkulu', 'provinsi_id' => 7],

            // Sumatera Selatan
            ['nama_kota' => 'Palembang', 'provinsi_id' => 8],
            ['nama_kota' => 'Prabumulih', 'provinsi_id' => 8],
            ['nama_kota' => 'Lubuklinggau', 'provinsi_id' => 8],
            ['nama_kota' => 'Pagar Alam', 'provinsi_id' => 8],

            // Kepulauan Bangka Belitung
            ['nama_kota' => 'Pangkal Pinang', 'provinsi_id' => 9],

            // Lampung
            ['nama_kota' => 'Bandar Lampung', 'provinsi_id' => 10],
            ['nama_kota' => 'Metro', 'provinsi_id' => 10],

            // Banten
            ['nama_kota' => 'Serang', 'provinsi_id' => 11],
            ['nama_kota' => 'Tangerang', 'provinsi_id' => 11],
            ['nama_kota' => 'Cilegon', 'provinsi_id' => 11],
            ['nama_kota' => 'Tangerang Selatan', 'provinsi_id' => 11],

            // DKI Jakarta
            ['nama_kota' => 'Jakarta Pusat', 'provinsi_id' => 12],
            ['nama_kota' => 'Jakarta Utara', 'provinsi_id' => 12],
            ['nama_kota' => 'Jakarta Barat', 'provinsi_id' => 12],
            ['nama_kota' => 'Jakarta Selatan', 'provinsi_id' => 12],
            ['nama_kota' => 'Jakarta Timur', 'provinsi_id' => 12],

            // Jawa Barat
            ['nama_kota' => 'Bandung', 'provinsi_id' => 13],
            ['nama_kota' => 'Bogor', 'provinsi_id' => 13],
            ['nama_kota' => 'Depok', 'provinsi_id' => 13],
            ['nama_kota' => 'Bekasi', 'provinsi_id' => 13],
            ['nama_kota' => 'Cimahi', 'provinsi_id' => 13],

            // Jawa Tengah
            ['nama_kota' => 'Semarang', 'provinsi_id' => 14],
            ['nama_kota' => 'Surakarta', 'provinsi_id' => 14],
            ['nama_kota' => 'Pekalongan', 'provinsi_id' => 14],
            ['nama_kota' => 'Tegal', 'provinsi_id' => 14],
            ['nama_kota' => 'Magelang', 'provinsi_id' => 14],

            // DI Yogyakarta
            ['nama_kota' => 'Yogyakarta', 'provinsi_id' => 15],

            // Jawa Timur
            ['nama_kota' => 'Surabaya', 'provinsi_id' => 16],
            ['nama_kota' => 'Malang', 'provinsi_id' => 16],
            ['nama_kota' => 'Madiun', 'provinsi_id' => 16],
            ['nama_kota' => 'Kediri', 'provinsi_id' => 16],
            ['nama_kota' => 'Mojokerto', 'provinsi_id' => 16],

            // Bali
            ['nama_kota' => 'Denpasar', 'provinsi_id' => 17],

            // Nusa Tenggara Barat
            ['nama_kota' => 'Mataram', 'provinsi_id' => 18],
            ['nama_kota' => 'Bima', 'provinsi_id' => 18],

            // Nusa Tenggara Timur
            ['nama_kota' => 'Kupang', 'provinsi_id' => 19],

            // Kalimantan Barat
            ['nama_kota' => 'Pontianak', 'provinsi_id' => 20],
            ['nama_kota' => 'Singkawang', 'provinsi_id' => 20],

            // Kalimantan Tengah
            ['nama_kota' => 'Palangka Raya', 'provinsi_id' => 21],

            // Kalimantan Selatan
            ['nama_kota' => 'Banjarmasin', 'provinsi_id' => 22],
            ['nama_kota' => 'Banjarbaru', 'provinsi_id' => 22],

            // Kalimantan Timur
            ['nama_kota' => 'Samarinda', 'provinsi_id' => 23],
            ['nama_kota' => 'Balikpapan', 'provinsi_id' => 23],
            ['nama_kota' => 'Bontang', 'provinsi_id' => 23],

            // Kalimantan Utara
            ['nama_kota' => 'Tarakan', 'provinsi_id' => 24],

            // Sulawesi Utara
            ['nama_kota' => 'Manado', 'provinsi_id' => 25],
            ['nama_kota' => 'Bitung', 'provinsi_id' => 25],
            ['nama_kota' => 'Tomohon', 'provinsi_id' => 25],

            // Gorontalo
            ['nama_kota' => 'Gorontalo', 'provinsi_id' => 26],

            // Sulawesi Tengah
            ['nama_kota' => 'Palu', 'provinsi_id' => 27],

            // Sulawesi Barat
            ['nama_kota' => 'Mamuju', 'provinsi_id' => 28],

            // Sulawesi Selatan
            ['nama_kota' => 'Makassar', 'provinsi_id' => 29],
            ['nama_kota' => 'Parepare', 'provinsi_id' => 29],
            ['nama_kota' => 'Palopo', 'provinsi_id' => 29],

            // Sulawesi Tenggara
            ['nama_kota' => 'Kendari', 'provinsi_id' => 30],
            ['nama_kota' => 'Baubau', 'provinsi_id' => 30],

            // Maluku
            ['nama_kota' => 'Ambon', 'provinsi_id' => 31],
            ['nama_kota' => 'Tual', 'provinsi_id' => 31],

            // Maluku Utara
            ['nama_kota' => 'Ternate', 'provinsi_id' => 32],
            ['nama_kota' => 'Tidore Kepulauan', 'provinsi_id' => 32],

            // Papua Barat
            ['nama_kota' => 'Manokwari', 'provinsi_id' => 33],
            ['nama_kota' => 'Sorong', 'provinsi_id' => 33],

            // Papua
            ['nama_kota' => 'Jayapura', 'provinsi_id' => 34],

            // Papua Tengah
            ['nama_kota' => 'Nabire', 'provinsi_id' => 35],

            // Papua Pegunungan
            ['nama_kota' => 'Jayawijaya', 'provinsi_id' => 36],

            // Papua Selatan
            ['nama_kota' => 'Merauke', 'provinsi_id' => 37],
        ];

        DB::table('kotas')->insert($kotas);
    }
}