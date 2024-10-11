<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PegawaiSeeder extends Seeder
{
    public function run()
    {
        $pegawais = [
            ['nip' => 'NIP.195905191982031002', 'nama' => 'name', 'jabatan' => 'name', 'pangkat' => 'name', 'golongan' => 'IV.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.196312141989031002', 'nama' => 'Dr. Ir MUHAMAD SADLY, M.Eng', 'jabatan' => 'Deputi Bidang Inskalrekjarkom BMKG', 'pangkat' => 'Pembina Utama / IV.e', 'golongan' => 'IV.e', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197110151994031002', 'nama' => 'BAMBANG SETIYO PRAYITNO, M.Si', 'jabatan' => 'Kepala Pusat Database', 'pangkat' => 'Pembina Utama Madya / IV.d', 'golongan' => 'IV.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.196411021985031001', 'nama' => 'Ir. Sunaryo, DEA', 'jabatan' => 'Koordinator Bidang Pemeliharaan Database', 'pangkat' => 'Pembina Tk. I / IV.b', 'golongan' => 'IV.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197607071998031001', 'nama' => 'Iqbal, S.Kom, M.Ti', 'jabatan' => 'Koordinator Bidang Pengembangan Database', 'pangkat' => 'Pembina Tk. I / IV.b', 'golongan' => 'IV.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.196712221992031002', 'nama' => 'Aminullah, S.T, M.T', 'jabatan' => 'Koordinator Bidang Manajemen Database', 'pangkat' => 'Pembina Tk. I / IV.b', 'golongan' => 'IV.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198504102008121001', 'nama' => 'Zulkarnain Adnan S.Si, M.Si', 'jabatan' => 'Sub Koordinator Pengembangan Database MKG', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198011192008012012', 'nama' => 'Tri Nurmayati, S.Si.', 'jabatan' => 'Sub Koordinator Manajemen Database MKG', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197406271995031001', 'nama' => 'Joko Wigianto, S.T,M.Kom.', 'jabatan' => 'Sub Koordinator Manajemen Database Umum', 'pangkat' => 'Pembina Tk. I / IV.b', 'golongan' => 'IV.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198012172006041001', 'nama' => 'Rusgito, S.Kom', 'jabatan' => 'Sub Koordinator Pemeliharaan Database Umum', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197607272012122004', 'nama' => 'Dr. Regina Yulia Yasmin, MT', 'jabatan' => 'Sub Koordinator Pengembangan Database Umum', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197205211997032001', 'nama' => 'Karnisih, S.Kom', 'jabatan' => 'Sub Koordinator Pemeliharaan Database MKG', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.196907021990082001', 'nama' => 'Yuliana, S.T', 'jabatan' => 'Staf Subid. Pemeliharaan Database Umum', 'pangkat' => 'Pembina Tk. I / IV.b', 'golongan' => 'IV.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197112191994022001', 'nama' => 'Fariyani, S.Si.', 'jabatan' => 'Staf Subid. Pemeliharaan Database Umum', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.196903301991022001', 'nama' => 'Antiq Dharlita K, S.P', 'jabatan' => 'Staf Subid. Manajemen Database MKG', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197808102000122001', 'nama' => 'Sitti Banawiah, S.Si.', 'jabatan' => 'Staf Subid. Pemeliharaan Database Umum', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197510252005021001', 'nama' => 'Hanapi, S.T', 'jabatan' => 'Staf Subid. Pengembangan Database MKG', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198211202006042004', 'nama' => 'Irda Rusdiana Sari, S.Kom.', 'jabatan' => 'Staf Subid. Manajemen Database MKG', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197704052006041022', 'nama' => 'Dwi Yuwono, S.T', 'jabatan' => 'Staf Subid. Pengembangan Database Umum', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198208272006041001', 'nama' => 'Aris Suwondo, S.T, M.Si', 'jabatan' => 'Staf Sub Bidang Manajemen Database Umum', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197312061993121001', 'nama' => 'Amzah', 'jabatan' => 'Staf Subid. Pemeliharaan Database Umum', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198903172018011001', 'nama' => 'Rahmat Hidayat, S.Kom', 'jabatan' => 'Staf Sub Bidang Pengembangan Database Umum', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198306122006041002', 'nama' => 'Kalimi, S.Si.', 'jabatan' => 'Staf Subid. Pemeliharaan Database Umum', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198903232019022004', 'nama' => 'Florence Adeleyda Siga, S.Si, M.Si', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database MKG', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197410161996031001', 'nama' => 'Heru Tribuwono Fitri, S.Si.', 'jabatan' => 'Staf Subid. Manajemen Database MKG', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197911162008012027', 'nama' => 'Nurhayati Rahayu S.Kom, MT', 'jabatan' => 'Staf Subid. Pengembangan Database Umum', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198601242008121003', 'nama' => 'Dian Handiana, M.Si.', 'jabatan' => 'Staf Subid. Pengembangan Database MKG', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198108162002121001', 'nama' => 'Fiqi Arman, S.Si', 'jabatan' => 'Staf Sub Bidang Manajemen Database Umum', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199006052009111001', 'nama' => 'Aji Prasetyo, S.Tr', 'jabatan' => 'Staf Subid. Manajemen Database Umum', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198101212008122001', 'nama' => 'Wiwis Anggraini A.Md', 'jabatan' => 'Staf Subid. Manajemen Database Umum', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198708042009112001', 'nama' => 'Indah Dwi Sulistyowati, S.Stat', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database Umum', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199108222010122001', 'nama' => 'Agita Devi Prastiwi, S.Tr', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database MKG', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198012172015021001', 'nama' => 'Dedi Arman Alif Hidayat, S.T', 'jabatan' => 'Staf Sub Bidang Pengembangan Database MKG', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199005312015021001', 'nama' => 'Join Wan Chanlyn S., S.T', 'jabatan' => 'Staf Sub Bidang Manajemen Database MKG', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198905072015022003', 'nama' => 'Iedita Widya Arsyta, S.Si.', 'jabatan' => 'Staf Sub Bidang Pengembangan Database Umum', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198403172015021001', 'nama' => 'Kgs. M. Nur Syamsuri, S.T', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database Umum', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.196311071987032001', 'nama' => 'Sylvia Andjarwati, M.T', 'jabatan' => 'Staf Subid. Pemeliharaan Database MKG', 'pangkat' => 'Pembina Tk. I / IV.b', 'golongan' => 'IV.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198401272015021001', 'nama' => 'Setia Adhi Darma, S.Si', 'jabatan' => 'Staf Sub Bidang Manajemen Database Umum', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199111252012101001', 'nama' => 'Setyo Aji Pramono, S.Tr', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database MKG', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199209212012101001', 'nama' => 'Reza Bayu Perdana, S.Tr', 'jabatan' => 'Staf Subid. Manajemen Database Umum', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199605182016011001', 'nama' => 'Reza Tisa Adi Pratama, A.P', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database MKG', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199404292016012001', 'nama' => 'HESTI HATI NURANI, S.Tr ,Inst.', 'jabatan' => 'Staf Sub Bidang Manajemen Database MKG', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199512282016011001', 'nama' => 'Hildan Nur Syahrudin, S.Tr ,Inst.', 'jabatan' => 'Staf Sub Bidang Pengembangan Database MKG', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199204052013122001', 'nama' => 'Tika Fitriani, S.Tr', 'jabatan' => 'Staf Sub Bidang Pengembangan Database Umum', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199212112013121001', 'nama' => 'Aziz Setia Aji, S.Tr', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database MKG', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199404282013121001', 'nama' => 'Feizal Amri Permana, S.Tr', 'jabatan' => 'Staf Sub Bidang Manajemen Database MKG', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199403052013122001', 'nama' => 'Sulkhi, S.Tr', 'jabatan' => 'Staf Sub Bidang Pengembangan Database MKG', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198002182008012016', 'nama' => 'Maria Damiana Nimas Ayu BP, S.P', 'jabatan' => 'Staf Sub Bidang Manajemen Database MKG', 'pangkat' => 'Pembina / IV.a', 'golongan' => 'IV.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199308222013122001', 'nama' => 'Alfrizta Purwa D\'Harsa, S.Tr', 'jabatan' => 'Staf Sub Bidang Pengembangan Database Umum', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198902202010121001', 'nama' => 'Akbar Yus Prasetyo, A.Md', 'jabatan' => 'Staf Sub Bidang Pengembangan Database MKG', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199211092019022004', 'nama' => 'RIZKI NOVIANTI NURFAJRI, M.Si', 'jabatan' => 'Staf Sub Bidang Pengembangan Database MKG', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199106282018012001', 'nama' => 'Suci Anggrayani, S.Stat', 'jabatan' => 'Staf Sub Bidang Manajemen Database Umum', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198803182009111001', 'nama' => 'Aby Rengga Saputra, ST', 'jabatan' => 'Staf Sub Bidang Pengembangan Database Umum', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199212142018011002', 'nama' => 'Adhi Asta Krisna, S.ST', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database MKG', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198605052018011001', 'nama' => 'Asmadi Djasman, ST', 'jabatan' => 'Staf Sub Bidang Pengembangan Database Umum', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199104272013122001', 'nama' => 'Anggi Budi Larasati, S.Tr', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database MKG', 'pangkat' => 'Penata / III.c', 'golongan' => 'III.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199210112018011001', 'nama' => 'Mahisa Ajy Kusuma, S.Kom', 'jabatan' => 'Staf Subid. Manajemen Database MKG', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.198509032008012005', 'nama' => 'SANANTI NINGSIH, ST, M.T', 'jabatan' => 'Staf Sub Bidang Pengembangan Database Umum', 'pangkat' => 'Penata Tk. I / III.d', 'golongan' => 'III.d', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199406222018012001', 'nama' => 'Putri Juanita Wahab, S.Si', 'jabatan' => 'Staf Sub Bidang Pengembangan Database MKG', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199601062020012001', 'nama' => 'SITI HASANAH, S.Tr', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database Umum', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199805162021061001', 'nama' => 'KARISMA KUSUMA NAGARI, S.Tr', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database Umum', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199903252022041001', 'nama' => 'HENDRA SETIAJI, S.Tr.Inst.', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database Umum', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199610192020011001', 'nama' => 'KHOERI ZUHDI, S.Tr', 'jabatan' => 'Staf Sub Bidang Pengembangan Database MKG', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199005142022021001', 'nama' => 'ADAM AJI NUGROHO, S.T., M.T.', 'jabatan' => 'Staf Sub Bidang Pengembangan Database MKG', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199911022022041001', 'nama' => 'Aminulloh Zaqi Darojat, S.Tr.Inst', 'jabatan' => 'Staf Sub Bidang Pengembangan Database Umum', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199405152019022002', 'nama' => 'MAYANATELA PUTRI, S.Si', 'jabatan' => 'Staf Sub Bidang Manajemen Database MKG', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199808052021062002', 'nama' => 'Zhenny Ma\'Rifatul Husna, S.Tr', 'jabatan' => 'Staf Sub Bidang Manajemen Database MKG', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199505022016011001', 'nama' => 'Mohammad Hajar Zakariya, S.Tr', 'jabatan' => 'Staf Sub Bidang Manajemen Database MKG', 'pangkat' => 'Penata Muda Tk. I / III.b', 'golongan' => 'III.b', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199908202022042004', 'nama' => 'KHAIRANI KHALIDA, S.Tr.Inst.', 'jabatan' => 'Staf Sub Bidang Manajemen Database Umum ', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199706082020011002', 'nama' => 'Wahyu Abdillah, S.Tr', 'jabatan' => 'Staf Sub Bidang Pemeliharaan Database MKG', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.200008122023021001', 'nama' => 'Fauzi Mahardika, S.Tr.Inst', 'jabatan' => 'Staf Sub Bidang Manajemen Database MKG/SPT. PMG Pertama', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.200009152023022002', 'nama' => 'Sentia Arianti, S.Tr', 'jabatan' => 'Staf Sub Bidang Pengembangan Database Umum', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.199712272020011001', 'nama' => 'Priambudi Huda Firmani', 'jabatan' => 'Staf Sub Bidang Pengembangan Database MKG', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.196607071989031002', 'nama' => 'GREGORIUS SETYADHI BUDHI DHARMAWAN, SE, M.T', 'jabatan' => 'Kepala Pusat Jaringan Komunikasi', 'pangkat' => 'Pembina Utama Muda / IV.c', 'golongan' => 'IV.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197108021994031001', 'nama' => 'HANIF ANDI NUGRAHA, S.Si, MT', 'jabatan' => 'Plt. Deputi Bidang Geofisika', 'pangkat' => 'Pembina Utama Muda / IV.c', 'golongan' => 'IV.c', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.200001122023021001', 'nama' => 'Reza Pitriyanto', 'jabatan' => 'SPT. PMG Pertama', 'pangkat' => 'Penata Muda / III.a', 'golongan' => 'III.a', 'asal' => 'Jakarta'],
            ['nip' => 'NIP.197111021995031001', 'nama' => 'Jefri Abednego Mondong', 'jabatan' => 'PMG Madya', 'pangkat' => 'Pembina Tk. I / IV.b', 'golongan' => 'IV.b', 'asal' => 'Jakarta'],
        ];

        foreach ($pegawais as $pegawai) {
            DB::table('pegawais')->insert($pegawai);
        }
    }
}