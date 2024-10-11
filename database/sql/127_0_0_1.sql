-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 04:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_pegawai`
--
CREATE DATABASE IF NOT EXISTS `database_pegawai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `database_pegawai`;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `no_akun` varchar(255) NOT NULL,
  `tahun` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `nama_kegiatan`, `no_akun`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 'Dukungan Koordinasi Teknis dan Pembinaan Operasional Satker', '3344.AEA.001.051.A.524111', 2024, '2024-10-08 19:07:16', '2024-10-08 19:07:16'),
(2, 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', '3344.CCG.001.005.C.524111', 2024, '2024-10-08 19:07:16', '2024-10-08 19:07:16'),
(3, 'Operasional Kedeputian Untuk Kunjungan/Inspeksi/Pendamping KUNKER', '3344.AEA.001.051.C.524211', 2024, '2024-10-08 19:07:16', '2024-10-08 19:07:16'),
(4, 'Paket Meeting Fullboard Luar Kota Kegiatan Rakornas Bidang Teknis', '3344.AEA.001.051.B.524114', 2024, '2024-10-08 19:07:16', '2024-10-08 19:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `kotas`
--

CREATE TABLE `kotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `provinsi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kotas`
--

INSERT INTO `kotas` (`id`, `nama_kota`, `provinsi_id`, `created_at`, `updated_at`) VALUES
(1, 'Banda Aceh', 1, NULL, NULL),
(2, 'Langsa', 1, NULL, NULL),
(3, 'Lhokseumawe', 1, NULL, NULL),
(4, 'Sabang', 1, NULL, NULL),
(5, 'Subulussalam', 1, NULL, NULL),
(6, 'Medan', 2, NULL, NULL),
(7, 'Pematangsiantar', 2, NULL, NULL),
(8, 'Binjai', 2, NULL, NULL),
(9, 'Padang Sidempuan', 2, NULL, NULL),
(10, 'Tebing Tinggi', 2, NULL, NULL),
(11, 'Padang', 3, NULL, NULL),
(12, 'Bukittinggi', 3, NULL, NULL),
(13, 'Payakumbuh', 3, NULL, NULL),
(14, 'Solok', 3, NULL, NULL),
(15, 'Pariaman', 3, NULL, NULL),
(16, 'Pekanbaru', 4, NULL, NULL),
(17, 'Dumai', 4, NULL, NULL),
(18, 'Tanjung Pinang', 5, NULL, NULL),
(19, 'Batam', 5, NULL, NULL),
(20, 'Jambi', 6, NULL, NULL),
(21, 'Sungai Penuh', 6, NULL, NULL),
(22, 'Bengkulu', 7, NULL, NULL),
(23, 'Palembang', 8, NULL, NULL),
(24, 'Prabumulih', 8, NULL, NULL),
(25, 'Lubuklinggau', 8, NULL, NULL),
(26, 'Pagar Alam', 8, NULL, NULL),
(27, 'Pangkal Pinang', 9, NULL, NULL),
(28, 'Bandar Lampung', 10, NULL, NULL),
(29, 'Metro', 10, NULL, NULL),
(30, 'Serang', 11, NULL, NULL),
(31, 'Tangerang', 11, NULL, NULL),
(32, 'Cilegon', 11, NULL, NULL),
(33, 'Tangerang Selatan', 11, NULL, NULL),
(34, 'Jakarta Pusat', 12, NULL, NULL),
(35, 'Jakarta Utara', 12, NULL, NULL),
(36, 'Jakarta Barat', 12, NULL, NULL),
(37, 'Jakarta Selatan', 12, NULL, NULL),
(38, 'Jakarta Timur', 12, NULL, NULL),
(39, 'Bandung', 13, NULL, NULL),
(40, 'Bogor', 13, NULL, NULL),
(41, 'Depok', 13, NULL, NULL),
(42, 'Bekasi', 13, NULL, NULL),
(43, 'Cimahi', 13, NULL, NULL),
(44, 'Semarang', 14, NULL, NULL),
(45, 'Surakarta', 14, NULL, NULL),
(46, 'Pekalongan', 14, NULL, NULL),
(47, 'Tegal', 14, NULL, NULL),
(48, 'Magelang', 14, NULL, NULL),
(49, 'Yogyakarta', 15, NULL, NULL),
(50, 'Surabaya', 16, NULL, NULL),
(51, 'Malang', 16, NULL, NULL),
(52, 'Madiun', 16, NULL, NULL),
(53, 'Kediri', 16, NULL, NULL),
(54, 'Mojokerto', 16, NULL, NULL),
(55, 'Denpasar', 17, NULL, NULL),
(56, 'Mataram', 18, NULL, NULL),
(57, 'Bima', 18, NULL, NULL),
(58, 'Kupang', 19, NULL, NULL),
(59, 'Pontianak', 20, NULL, NULL),
(60, 'Singkawang', 20, NULL, NULL),
(61, 'Palangka Raya', 21, NULL, NULL),
(62, 'Banjarmasin', 22, NULL, NULL),
(63, 'Banjarbaru', 22, NULL, NULL),
(64, 'Samarinda', 23, NULL, NULL),
(65, 'Balikpapan', 23, NULL, NULL),
(66, 'Bontang', 23, NULL, NULL),
(67, 'Tarakan', 24, NULL, NULL),
(68, 'Manado', 25, NULL, NULL),
(69, 'Bitung', 25, NULL, NULL),
(70, 'Tomohon', 25, NULL, NULL),
(71, 'Gorontalo', 26, NULL, NULL),
(72, 'Palu', 27, NULL, NULL),
(73, 'Mamuju', 28, NULL, NULL),
(74, 'Makassar', 29, NULL, NULL),
(75, 'Parepare', 29, NULL, NULL),
(76, 'Palopo', 29, NULL, NULL),
(77, 'Kendari', 30, NULL, NULL),
(78, 'Baubau', 30, NULL, NULL),
(79, 'Ambon', 31, NULL, NULL),
(80, 'Tual', 31, NULL, NULL),
(81, 'Ternate', 32, NULL, NULL),
(82, 'Tidore Kepulauan', 32, NULL, NULL),
(83, 'Manokwari', 33, NULL, NULL),
(84, 'Sorong', 33, NULL, NULL),
(85, 'Jayapura', 34, NULL, NULL),
(86, 'Nabire', 35, NULL, NULL),
(87, 'Jayawijaya', 36, NULL, NULL),
(88, 'Merauke', 37, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_08_08_014416_create_pegawais_table', 1),
(4, '2024_08_08_090500_create_provinsis_table', 1),
(5, '2024_08_08_090505_create_kotas_table', 1),
(6, '2024_08_12_023843_create_perjadin', 1),
(7, '2024_09_23_013046_create_pagu', 1),
(8, '2024_10_01_010344_create_table_kegiatan', 1),
(9, '2024_10_02_015859_create_realisasis_table', 1),
(10, '2024_10_09_020300_create_tarif_hotel_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagus`
--

CREATE TABLE `pagus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `perjadin_id` bigint(20) UNSIGNED NOT NULL,
  `transport` decimal(10,2) DEFAULT NULL,
  `uang_harian` decimal(10,2) DEFAULT NULL,
  `hotel` decimal(10,2) DEFAULT NULL,
  `taksi` decimal(10,2) DEFAULT NULL,
  `representasi` decimal(10,2) DEFAULT NULL,
  `paket_meeting` decimal(10,2) DEFAULT NULL,
  `tiket_pesawat` decimal(10,2) DEFAULT NULL,
  `total_pagu` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagus`
--

INSERT INTO `pagus` (`id`, `perjadin_id`, `transport`, `uang_harian`, `hotel`, `taksi`, `representasi`, `paket_meeting`, `tiket_pesawat`, `total_pagu`, `created_at`, `updated_at`) VALUES
(1, 1, 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 750000.00, 1050000.00, '2024-10-08 19:28:22', '2024-10-08 19:28:22'),
(2, 2, 100000.00, 100000.00, 100000.00, 0.00, 0.00, 0.00, 100000.00, 500000.00, '2024-10-08 23:54:04', '2024-10-08 23:54:32'),
(3, 3, 100000.00, 100000.00, 100000.00, 100000.00, 100000.00, 0.00, 700000.00, 1700000.00, '2024-10-09 00:07:00', '2024-10-09 00:07:00'),
(4, 4, 100000.00, 100000.00, 100000.00, 100000.00, 100000.00, 0.00, 100000.00, 800000.00, '2024-10-09 00:52:34', '2024-10-09 00:52:34'),
(5, 5, 100000.00, 200000.00, 0.00, 0.00, 0.00, 0.00, 750000.00, 1450000.00, '2024-10-09 01:49:00', '2024-10-09 01:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id`, `nip`, `nama`, `jabatan`, `pangkat`, `golongan`, `asal`, `created_at`, `updated_at`) VALUES
(1, 'NIP.195905191982031002', 'name', 'name', 'name', 'IV.d', 'Jakarta', NULL, NULL),
(2, 'NIP.196312141989031002', 'Dr. Ir MUHAMAD SADLY, M.Eng', 'Deputi Bidang Inskalrekjarkom BMKG', 'Pembina Utama / IV.e', 'IV.e', 'Jakarta', NULL, NULL),
(3, 'NIP.197110151994031002', 'BAMBANG SETIYO PRAYITNO, M.Si', 'Kepala Pusat Database', 'Pembina Utama Madya / IV.d', 'IV.d', 'Jakarta', NULL, NULL),
(4, 'NIP.196411021985031001', 'Ir. Sunaryo, DEA', 'Koordinator Bidang Pemeliharaan Database', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(5, 'NIP.197607071998031001', 'Iqbal, S.Kom, M.Ti', 'Koordinator Bidang Pengembangan Database', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(6, 'NIP.196712221992031002', 'Aminullah, S.T, M.T', 'Koordinator Bidang Manajemen Database', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(7, 'NIP.198504102008121001', 'Zulkarnain Adnan S.Si, M.Si', 'Sub Koordinator Pengembangan Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(8, 'NIP.198011192008012012', 'Tri Nurmayati, S.Si.', 'Sub Koordinator Manajemen Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(9, 'NIP.197406271995031001', 'Joko Wigianto, S.T,M.Kom.', 'Sub Koordinator Manajemen Database Umum', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(10, 'NIP.198012172006041001', 'Rusgito, S.Kom', 'Sub Koordinator Pemeliharaan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(11, 'NIP.197607272012122004', 'Dr. Regina Yulia Yasmin, MT', 'Sub Koordinator Pengembangan Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(12, 'NIP.197205211997032001', 'Karnisih, S.Kom', 'Sub Koordinator Pemeliharaan Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(13, 'NIP.196907021990082001', 'Yuliana, S.T', 'Staf Subid. Pemeliharaan Database Umum', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(14, 'NIP.197112191994022001', 'Fariyani, S.Si.', 'Staf Subid. Pemeliharaan Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(15, 'NIP.196903301991022001', 'Antiq Dharlita K, S.P', 'Staf Subid. Manajemen Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(16, 'NIP.197808102000122001', 'Sitti Banawiah, S.Si.', 'Staf Subid. Pemeliharaan Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(17, 'NIP.197510252005021001', 'Hanapi, S.T', 'Staf Subid. Pengembangan Database MKG', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(18, 'NIP.198211202006042004', 'Irda Rusdiana Sari, S.Kom.', 'Staf Subid. Manajemen Database MKG', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(19, 'NIP.197704052006041022', 'Dwi Yuwono, S.T', 'Staf Subid. Pengembangan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(20, 'NIP.198208272006041001', 'Aris Suwondo, S.T, M.Si', 'Staf Sub Bidang Manajemen Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(21, 'NIP.197312061993121001', 'Amzah', 'Staf Subid. Pemeliharaan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(22, 'NIP.198903172018011001', 'Rahmat Hidayat, S.Kom', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(23, 'NIP.198306122006041002', 'Kalimi, S.Si.', 'Staf Subid. Pemeliharaan Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(24, 'NIP.198903232019022004', 'Florence Adeleyda Siga, S.Si, M.Si', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(25, 'NIP.197410161996031001', 'Heru Tribuwono Fitri, S.Si.', 'Staf Subid. Manajemen Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(26, 'NIP.197911162008012027', 'Nurhayati Rahayu S.Kom, MT', 'Staf Subid. Pengembangan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(27, 'NIP.198601242008121003', 'Dian Handiana, M.Si.', 'Staf Subid. Pengembangan Database MKG', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(28, 'NIP.198108162002121001', 'Fiqi Arman, S.Si', 'Staf Sub Bidang Manajemen Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(29, 'NIP.199006052009111001', 'Aji Prasetyo, S.Tr', 'Staf Subid. Manajemen Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(30, 'NIP.198101212008122001', 'Wiwis Anggraini A.Md', 'Staf Subid. Manajemen Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(31, 'NIP.198708042009112001', 'Indah Dwi Sulistyowati, S.Stat', 'Staf Sub Bidang Pemeliharaan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(32, 'NIP.199108222010122001', 'Agita Devi Prastiwi, S.Tr', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(33, 'NIP.198012172015021001', 'Dedi Arman Alif Hidayat, S.T', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(34, 'NIP.199005312015021001', 'Join Wan Chanlyn S., S.T', 'Staf Sub Bidang Manajemen Database MKG', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(35, 'NIP.198905072015022003', 'Iedita Widya Arsyta, S.Si.', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(36, 'NIP.198403172015021001', 'Kgs. M. Nur Syamsuri, S.T', 'Staf Sub Bidang Pemeliharaan Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(37, 'NIP.196311071987032001', 'Sylvia Andjarwati, M.T', 'Staf Subid. Pemeliharaan Database MKG', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(38, 'NIP.198401272015021001', 'Setia Adhi Darma, S.Si', 'Staf Sub Bidang Manajemen Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(39, 'NIP.199111252012101001', 'Setyo Aji Pramono, S.Tr', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(40, 'NIP.199209212012101001', 'Reza Bayu Perdana, S.Tr', 'Staf Subid. Manajemen Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(41, 'NIP.199605182016011001', 'Reza Tisa Adi Pratama, A.P', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(42, 'NIP.199404292016012001', 'HESTI HATI NURANI, S.Tr ,Inst.', 'Staf Sub Bidang Manajemen Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(43, 'NIP.199512282016011001', 'Hildan Nur Syahrudin, S.Tr ,Inst.', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(44, 'NIP.199204052013122001', 'Tika Fitriani, S.Tr', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(45, 'NIP.199212112013121001', 'Aziz Setia Aji, S.Tr', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(46, 'NIP.199404282013121001', 'Feizal Amri Permana, S.Tr', 'Staf Sub Bidang Manajemen Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(47, 'NIP.199403052013122001', 'Sulkhi, S.Tr', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(48, 'NIP.198002182008012016', 'Maria Damiana Nimas Ayu BP, S.P', 'Staf Sub Bidang Manajemen Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(49, 'NIP.199308222013122001', 'Alfrizta Purwa D\'Harsa, S.Tr', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(50, 'NIP.198902202010121001', 'Akbar Yus Prasetyo, A.Md', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(51, 'NIP.199211092019022004', 'RIZKI NOVIANTI NURFAJRI, M.Si', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(52, 'NIP.199106282018012001', 'Suci Anggrayani, S.Stat', 'Staf Sub Bidang Manajemen Database Umum', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(53, 'NIP.198803182009111001', 'Aby Rengga Saputra, ST', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(54, 'NIP.199212142018011002', 'Adhi Asta Krisna, S.ST', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(55, 'NIP.198605052018011001', 'Asmadi Djasman, ST', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(56, 'NIP.199104272013122001', 'Anggi Budi Larasati, S.Tr', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(57, 'NIP.199210112018011001', 'Mahisa Ajy Kusuma, S.Kom', 'Staf Subid. Manajemen Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(58, 'NIP.198509032008012005', 'SANANTI NINGSIH, ST, M.T', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(59, 'NIP.199406222018012001', 'Putri Juanita Wahab, S.Si', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(60, 'NIP.199601062020012001', 'SITI HASANAH, S.Tr', 'Staf Sub Bidang Pemeliharaan Database Umum', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(61, 'NIP.199805162021061001', 'KARISMA KUSUMA NAGARI, S.Tr', 'Staf Sub Bidang Pemeliharaan Database Umum', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(62, 'NIP.199903252022041001', 'HENDRA SETIAJI, S.Tr.Inst.', 'Staf Sub Bidang Pemeliharaan Database Umum', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(63, 'NIP.199610192020011001', 'KHOERI ZUHDI, S.Tr', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(64, 'NIP.199005142022021001', 'ADAM AJI NUGROHO, S.T., M.T.', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(65, 'NIP.199911022022041001', 'Aminulloh Zaqi Darojat, S.Tr.Inst', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(66, 'NIP.199405152019022002', 'MAYANATELA PUTRI, S.Si', 'Staf Sub Bidang Manajemen Database MKG', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(67, 'NIP.199808052021062002', 'Zhenny Ma\'Rifatul Husna, S.Tr', 'Staf Sub Bidang Manajemen Database MKG', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(68, 'NIP.199505022016011001', 'Mohammad Hajar Zakariya, S.Tr', 'Staf Sub Bidang Manajemen Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(69, 'NIP.199908202022042004', 'KHAIRANI KHALIDA, S.Tr.Inst.', 'Staf Sub Bidang Manajemen Database Umum ', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(70, 'NIP.199706082020011002', 'Wahyu Abdillah, S.Tr', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(71, 'NIP.200008122023021001', 'Fauzi Mahardika, S.Tr.Inst', 'Staf Sub Bidang Manajemen Database MKG/SPT. PMG Pertama', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(72, 'NIP.200009152023022002', 'Sentia Arianti, S.Tr', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(73, 'NIP.199712272020011001', 'Priambudi Huda Firmani', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(74, 'NIP.196607071989031002', 'GREGORIUS SETYADHI BUDHI DHARMAWAN, SE, M.T', 'Kepala Pusat Jaringan Komunikasi', 'Pembina Utama Muda / IV.c', 'IV.c', 'Jakarta', NULL, NULL),
(75, 'NIP.197108021994031001', 'HANIF ANDI NUGRAHA, S.Si, MT', 'Plt. Deputi Bidang Geofisika', 'Pembina Utama Muda / IV.c', 'IV.c', 'Jakarta', NULL, NULL),
(76, 'NIP.200001122023021001', 'Reza Pitriyanto', 'SPT. PMG Pertama', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(77, 'NIP.197111021995031001', 'Jefri Abednego Mondong', 'PMG Madya', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perjadins`
--

CREATE TABLE `perjadins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `no_akun` varchar(255) NOT NULL,
  `hari` int(11) NOT NULL,
  `tanggal_keberangkatan` date NOT NULL,
  `tanggal_dibuat` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perjadins`
--

INSERT INTO `perjadins` (`id`, `pegawai_id`, `nama`, `nip`, `jabatan`, `pangkat`, `golongan`, `asal`, `tujuan`, `kegiatan`, `no_akun`, `hari`, `tanggal_keberangkatan`, `tanggal_dibuat`, `created_at`, `updated_at`) VALUES
(1, 2, 'Dr. Ir MUHAMAD SADLY, M.Eng', 'NIP.196312141989031002', 'Deputi Bidang Inskalrekjarkom BMKG', 'Pembina Utama / IV.e', 'IV.e', 'Jakarta', 'Solok', 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', '3344.CCG.001.005.C.524111', 3, '2024-01-01', '2024-10-09', '2024-10-08 19:28:22', '2024-10-08 19:28:22'),
(2, 8, 'Tri Nurmayati, S.Si.', 'NIP.198011192008012012', 'Sub Koordinator Manajemen Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', 'Padang', 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', '3344.CCG.001.005.C.524111', 2, '2024-01-01', '2024-10-09', '2024-10-08 23:54:04', '2024-10-08 23:54:04'),
(3, 5, 'Iqbal, S.Kom, M.Ti', 'NIP.197607071998031001', 'Koordinator Bidang Pengembangan Database', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', 'Sabang', 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', '3344.CCG.001.005.C.524111', 3, '2024-02-02', '2024-10-09', '2024-10-09 00:07:00', '2024-10-09 00:07:00'),
(4, 11, 'Dr. Regina Yulia Yasmin, MT', 'NIP.197607272012122004', 'Sub Koordinator Pengembangan Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', 'Sabang', 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', '3344.CCG.001.005.C.524111', 2, '2024-01-01', '2024-10-09', '2024-10-09 00:52:34', '2024-10-09 00:52:34'),
(5, 6, 'Aminullah, S.T, M.T', 'NIP.196712221992031002', 'Koordinator Bidang Manajemen Database', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', 'Payakumbuh', 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', '3344.CCG.001.005.C.524111', 3, '2024-01-01', '2024-10-09', '2024-10-09 01:49:00', '2024-10-09 01:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinsis`
--

CREATE TABLE `provinsis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_provinsi` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinsis`
--

INSERT INTO `provinsis` (`id`, `nama_provinsi`, `created_at`, `updated_at`) VALUES
(1, 'Aceh', NULL, NULL),
(2, 'Sumatera Utara', NULL, NULL),
(3, 'Sumatera Barat', NULL, NULL),
(4, 'Riau', NULL, NULL),
(5, 'Kepulauan Riau', NULL, NULL),
(6, 'Jambi', NULL, NULL),
(7, 'Bengkulu', NULL, NULL),
(8, 'Sumatera Selatan', NULL, NULL),
(9, 'Kepulauan Bangka Belitung', NULL, NULL),
(10, 'Lampung', NULL, NULL),
(11, 'Banten', NULL, NULL),
(12, 'DKI Jakarta', NULL, NULL),
(13, 'Jawa Barat', NULL, NULL),
(14, 'Jawa Tengah', NULL, NULL),
(15, 'DI Yogyakarta', NULL, NULL),
(16, 'Jawa Timur', NULL, NULL),
(17, 'Bali', NULL, NULL),
(18, 'Nusa Tenggara Barat', NULL, NULL),
(19, 'Nusa Tenggara Timur', NULL, NULL),
(20, 'Kalimantan Barat', NULL, NULL),
(21, 'Kalimantan Tengah', NULL, NULL),
(22, 'Kalimantan Selatan', NULL, NULL),
(23, 'Kalimantan Timur', NULL, NULL),
(24, 'Kalimantan Utara', NULL, NULL),
(25, 'Sulawesi Utara', NULL, NULL),
(26, 'Gorontalo', NULL, NULL),
(27, 'Sulawesi Tengah', NULL, NULL),
(28, 'Sulawesi Barat', NULL, NULL),
(29, 'Sulawesi Selatan', NULL, NULL),
(30, 'Sulawesi Tenggara', NULL, NULL),
(31, 'Maluku', NULL, NULL),
(32, 'Maluku Utara', NULL, NULL),
(33, 'Papua Barat', NULL, NULL),
(34, 'Papua', NULL, NULL),
(35, 'Papua Tengah', NULL, NULL),
(36, 'Papua Pegunungan', NULL, NULL),
(37, 'Papua Selatan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `realisasi`
--

CREATE TABLE `realisasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `perjadin_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `no_akun` varchar(255) NOT NULL,
  `hari` int(11) NOT NULL,
  `tanggal_keberangkatan` date NOT NULL,
  `transport` decimal(15,2) DEFAULT NULL,
  `transport_file` varchar(255) DEFAULT NULL,
  `hotel` decimal(15,2) DEFAULT NULL,
  `hotel_file` varchar(255) DEFAULT NULL,
  `uang_harian` decimal(15,2) DEFAULT NULL,
  `taksi` decimal(15,2) DEFAULT NULL,
  `taksi_file` varchar(255) DEFAULT NULL,
  `paket_meeting` decimal(15,2) DEFAULT NULL,
  `paket_meeting_file` varchar(255) DEFAULT NULL,
  `representasi` decimal(15,2) DEFAULT NULL,
  `tiket_pesawat` decimal(15,2) DEFAULT NULL,
  `tiket_pesawat_file` varchar(255) DEFAULT NULL,
  `total_realisasi` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `realisasi`
--

INSERT INTO `realisasi` (`id`, `perjadin_id`, `nama`, `nip`, `pangkat`, `jabatan`, `golongan`, `asal`, `tujuan`, `kegiatan`, `no_akun`, `hari`, `tanggal_keberangkatan`, `transport`, `transport_file`, `hotel`, `hotel_file`, `uang_harian`, `taksi`, `taksi_file`, `paket_meeting`, `paket_meeting_file`, `representasi`, `tiket_pesawat`, `tiket_pesawat_file`, `total_realisasi`, `created_at`, `updated_at`) VALUES
(1, 2, 'Tri Nurmayati, S.Si.', 'NIP.198011192008012012', 'Pembina / IV.a', 'Sub Koordinator Manajemen Database MKG', 'IV.a', 'Jakarta', 'Padang', 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', '3344.CCG.001.005.C.524111', 3, '2024-02-01', 100000.00, 'realisasi_files/4RvpCbWpG2wbBcdzDOUvyPheNTJZjTOG1t0HbCj2.jpg', 100000.00, 'realisasi_files/w154CoDbpQREaUu464cHMdvvVJDE46oQMpBNyz4V.jpg', 100000.00, 0.00, 'realisasi_files/7eO9GVjz9XVAHE06UNCtdZvS0eFgHFb4oeCVR1SF.jpg', 0.00, 'realisasi_files/Dl6Rx64KJOiNeLzflM7uWaFls8aFkHyOLnyoa8DY.jpg', 0.00, 100000.00, 'realisasi_files/tecuhX8vZ8N2YjrqSJLBRYG9Z16hY2FnjVnGupYB.jpg', 400000.00, '2024-10-08 23:55:29', '2024-10-08 23:55:29'),
(2, 1, 'Dr. Ir MUHAMAD SADLY, M.Eng', 'NIP.196312141989031002', 'Pembina Utama / IV.e', 'Deputi Bidang Inskalrekjarkom BMKG', 'IV.e', 'Jakarta', 'Solok', 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', '3344.CCG.001.005.C.524111', 3, '2024-02-01', 100000.00, 'realisasi_files/au28RsF1ZNM0dP31wTqV91PQmC1ZjpfnqTIy5ua9.jpg', 0.00, 'realisasi_files/AsL7bL3PNF8LQbt2I8XmtpoWQUEZhrD4TDlVkAFX.jpg', 100000.00, 0.00, 'realisasi_files/yZnx9IoamepSGLIWYBYBkxzltuJH3Uq034FYPJDu.jpg', 0.00, 'realisasi_files/9Eh5NFptGx4vr2qf5IeybjSFe07ZsEAsjY0e7K9K.jpg', 0.00, 750000.00, 'realisasi_files/JJWVzWUM5MMQYuOR1RKVMGmsGuMXaCLd6j5znF0G.jpg', 950000.00, '2024-10-09 00:08:36', '2024-10-09 00:08:36'),
(3, 4, 'Dr. Regina Yulia Yasmin, MT', 'NIP.197607272012122004', 'Pembina / IV.a', 'Sub Koordinator Pengembangan Database Umum', 'IV.a', 'Jakarta', 'Sabang', 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', '3344.CCG.001.005.C.524111', 2, '2024-01-01', 100000.00, 'realisasi_files/6G3C8yqHItO4q0FkLxxMDzKwMJnieXTl6dmONm6e.jpg', 100000.00, 'realisasi_files/rOuuddO6eNtlGMxcMbWcKVGyoPcWg23aCorsxFB9.jpg', 100000.00, 100000.00, 'realisasi_files/9Nvs9PzNU1uPWpFdubWiN69Vfj4ELg2kdAQn1pRy.jpg', 0.00, NULL, 100000.00, 100000.00, 'realisasi_files/aWuSuayLfmcqCsfJ3xK5RN5kH2PEEDVCNVbaFwJS.jpg', 600000.00, '2024-10-09 00:53:36', '2024-10-09 00:53:36'),
(4, 4, 'Dr. Regina Yulia Yasmin, MT', 'NIP.197607272012122004', 'Pembina / IV.a', 'Sub Koordinator Pengembangan Database Umum', 'IV.a', 'Jakarta', 'Sabang', 'Supervisi Pemeliharaan Sistem Pengelolaan Database MKG', '3344.CCG.001.005.C.524111', 4, '2024-01-02', 90000.00, 'realisasi_files/rWCRaN7CdHGWrCJ6T123025cQ7HLSRsx4i63rKmf.jpg', 100000.00, 'realisasi_files/HDjg2uCUOkqcMCgKByUCfR2QJUrfBZ8ga2myeWLD.jpg', 100000.00, 100000.00, 'realisasi_files/HOIHNR1aWImlyAex2W0s9HdrpS8xxlpa41beggjw.jpg', 0.00, NULL, 100000.00, 100000.00, 'realisasi_files/VIHEm11avqLVVXeEMmu7qvh0KxOUvobcV4eTnMSR.jpg', 590000.00, '2024-10-09 01:51:45', '2024-10-09 01:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `tarif_hotel_2024`
--

CREATE TABLE `tarif_hotel_2024` (
  `No` bigint(20) UNSIGNED NOT NULL,
  `Provinsi` varchar(255) NOT NULL,
  `Satuan` varchar(255) NOT NULL,
  `Tarif_Eselon_1` varchar(20) NOT NULL,
  `Tarif_Eselon_2` varchar(20) NOT NULL,
  `Tarif_Golongan_IV` varchar(20) NOT NULL,
  `Tarif_Golongan_III_II_I` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tarif_hotel_2024`
--

INSERT INTO `tarif_hotel_2024` (`No`, `Provinsi`, `Satuan`, `Tarif_Eselon_1`, `Tarif_Eselon_2`, `Tarif_Golongan_IV`, `Tarif_Golongan_III_II_I`) VALUES
(39, 'ACEH', 'OH', '4420000', '3526000', '1533000', '770000'),
(40, 'SUMATRA  UTARA', 'OH', '4960000', '2195000', '1100000', '699000'),
(41, 'R I A U', 'OH', '3820000', '3119000', '1650000', '852000'),
(42, 'KEPULAUAN  RIAU', 'OH', '5344000', '2318000', '1297000', '792000'),
(43, 'J A M B I', 'OH', '5000000', '4102000', '1225000', '580000'),
(44, 'SUMATRA  BARAT', 'OH', '5236000', '3332000', '1353000', '701000'),
(45, 'SUMATRA  SELATAN', 'OH', '5850000', '3083000', '1955000', '861000'),
(46, 'LAMPUN G', 'OH', '4491000', '2488000', '1425000', '580000'),
(47, 'BENGKULU', 'OH', '2140000', '1628000', '1546000', '692000'),
(48, 'BANGKA  BELITUNG', 'OH', '3827000', '2838000', '1957000', '649000'),
(49, 'B A N T E N', 'OH', '5725000', '2373000', '1204000', '724000'),
(50, 'JAWA  BARAT', 'OH', '5381000', '2755000', '1201000', '686000'),
(51, 'D.K.I.  JAKARTA', 'OH', '8720000', '2063000', '992000', '730000'),
(52, 'JAWA  TENGAH', 'OH', '5303000', '1850000', '1201000', '750000'),
(53, 'D.I. YOGYAKARTA', 'OH', '5017000', '2695000', '1384000', '845000'),
(54, 'JAWA  TIMUR', 'OH', '4449000', '2007000', '1153000', '814000'),
(55, 'B A L I', 'OH', '6848000', '2433000', '1685000', '1138000'),
(56, 'NUSA  TENGGARA  BARAT', 'OH', '4375000', '2648000', '1418000', '907000'),
(57, 'NUSA  TENGGARA  TIMUR', 'OH', '3750000', '2133000', '1355000', '688000'),
(58, 'KALIMANTAN  BARAT', 'OH', '2654000', '1923000', '1125000', '538000'),
(59, 'KALIMANTAN  TENGAH', 'OH', '4901000', '3391000', '1160000', '659000'),
(60, 'KALIMANTAN  SELATAN', 'OH', '4797000', '3316000', '1500000', '697000'),
(61, 'KALIMANTAN  TIMUR', 'OH', '4000000', '2188000', '1507000', '804000'),
(62, 'KALIMANTAN  UTARA', 'OH', '4000000', '2735000', '1507000', '904000'),
(63, 'SULAWESI  UTARA', 'OH', '4919000', '2290000', '1270000', '978000'),
(64, 'GORONTALO', 'OH', '4168000', '3107000', '1606000', '955000'),
(65, 'SULAWESI  BARAT', 'OH', '4076000', '3098000', '1344000', '704000'),
(66, 'SULAWESI  SELATAN', 'OH', '4820000', '1938000', '1423000', '745000'),
(67, 'SULAWESI  TENGAH', 'OH', '2309000', '2027000', '1679000', '951000'),
(68, 'SULAWESI  TENGGARA', 'OH', '3088800', '2574000', '1297000', '786000'),
(69, 'MALUKU', 'OH', '3467000', '3240000', '1059000', '667000'),
(70, 'MALUKU  UTARA', 'OH', '4611600', '3843000', '1160000', '605000'),
(71, 'P A P U A', 'OH', '3859000', '3318000', '2521000', '1038000'),
(72, 'PAPUA  BARAT', 'OH', '3872000', '3341000', '2056000', '967000'),
(73, 'PAPUA  BARAT DAYA', 'OH', '3872000', '3341000', '2056000', '967000'),
(74, 'PAPUA TENGAH', 'OH', '3859000', '3318000', '2521000', '1038000'),
(75, 'PAPUA SELATAN', 'OH', '5673000', '4877000', '3706000', '1526000'),
(76, 'PAPUA PEGUNUNGAN', 'OH', '5711000', '4911000', '3731000', '1536000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kotas`
--
ALTER TABLE `kotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kotas_provinsi_id_foreign` (`provinsi_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagus`
--
ALTER TABLE `pagus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagus_perjadin_id_foreign` (`perjadin_id`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawais_nip_unique` (`nip`);

--
-- Indexes for table `perjadins`
--
ALTER TABLE `perjadins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perjadins_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `provinsis`
--
ALTER TABLE `provinsis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realisasi`
--
ALTER TABLE `realisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tarif_hotel_2024`
--
ALTER TABLE `tarif_hotel_2024`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kotas`
--
ALTER TABLE `kotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pagus`
--
ALTER TABLE `pagus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `perjadins`
--
ALTER TABLE `perjadins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinsis`
--
ALTER TABLE `provinsis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `realisasi`
--
ALTER TABLE `realisasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tarif_hotel_2024`
--
ALTER TABLE `tarif_hotel_2024`
  MODIFY `No` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kotas`
--
ALTER TABLE `kotas`
  ADD CONSTRAINT `kotas_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsis` (`id`);

--
-- Constraints for table `pagus`
--
ALTER TABLE `pagus`
  ADD CONSTRAINT `pagus_perjadin_id_foreign` FOREIGN KEY (`perjadin_id`) REFERENCES `perjadins` (`id`);

--
-- Constraints for table `perjadins`
--
ALTER TABLE `perjadins`
  ADD CONSTRAINT `perjadins_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`);
--
-- Database: `db_coba`
--
CREATE DATABASE IF NOT EXISTS `db_coba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_coba`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Web Design', '2024-09-13 00:52:12', '2024-09-13 00:55:55'),
(2, 'Programming', '2024-09-13 00:58:00', '2024-09-13 00:58:00'),
(3, 'Personal', '2024-09-13 01:00:10', '2024-09-13 01:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_04_034118_create_posts_table', 1),
(6, '2024_09_13_073749_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `db_sipanas`
--
CREATE DATABASE IF NOT EXISTS `db_sipanas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_sipanas`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_08_12_025922_create_tabel_pegawai', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pegawai`
--

CREATE TABLE `tabel_pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabel_pegawai`
--

INSERT INTO `tabel_pegawai` (`id`, `nip`, `nama`, `jabatan`, `pangkat`, `golongan`, `asal`, `created_at`, `updated_at`) VALUES
(1, 'NIP. 195905191982031002', 'name', 'name', 'name', 'IV.d', 'Jakarta', NULL, NULL),
(2, 'NIP. 196312141989031002', 'Dr. Ir MUHAMAD SADLY, M.Eng', 'Deputi Bidang Inskalrekjarkom BMKG', 'Pembina Utama / IV.e', 'IV.e', 'Jakarta', NULL, NULL),
(3, 'NIP. 197110151994031002', 'BAMBANG SETIYO PRAYITNO, M.Si', 'Kepala Pusat Database', 'Pembina Utama Madya / IV.d', 'IV.d', 'Jakarta', NULL, NULL),
(4, 'NIP. 196411021985031001', 'Ir. Sunaryo, DEA', 'Koordinator Bidang Pemeliharaan Database', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(5, 'NIP. 197607071998031001', 'Iqbal, S.Kom, M.Ti', 'Koordinator Bidang Pengembangan Database', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(6, 'NIP. 196712221992031002', 'Aminullah, S.T, M.T', 'Koordinator Bidang Manajemen Database', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(7, 'NIP. 198504102008121001', 'Zulkarnain Adnan S.Si, M.Si', 'Sub Koordinator Pengembangan Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(8, 'NIP. 198011192008012012', 'Tri Nurmayati, S.Si.', 'Sub Koordinator Manajemen Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(9, 'NIP. 197406271995031001', 'Joko Wigianto, S.T,M.Kom.', 'Sub Koordinator Manajemen Database Umum', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(10, 'NIP. 198012172006041001', 'Rusgito, S.Kom', 'Sub Koordinator Pemeliharaan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(11, 'NIP. 197607272012122004', 'Dr. Regina Yulia Yasmin, MT', 'Sub Koordinator Pengembangan Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(12, 'NIP. 197205211997032001', 'Karnisih, S.Kom', 'Sub Koordinator Pemeliharaan Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(13, 'NIP. 196907021990082001', 'Yuliana, S.T', 'Staf Subid. Pemeliharaan Database Umum', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(14, 'NIP. 197112191994022001', 'Fariyani, S.Si.', 'Staf Subid. Pemeliharaan Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(15, 'NIP. 196903301991022001', 'Antiq Dharlita K, S.P', 'Staf Subid. Manajemen Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(16, 'NIP. 197808102000122001', 'Sitti Banawiah, S.Si.', 'Staf Subid. Pemeliharaan Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(17, 'NIP. 197510252005021001', 'Hanapi, S.T', 'Staf Subid. Pengembangan Database MKG', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(18, 'NIP. 198211202006042004', 'Irda Rusdiana Sari, S.Kom.', 'Staf Subid. Manajemen Database MKG', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(19, 'NIP. 197704052006041022', 'Dwi Yuwono, S.T', 'Staf Subid. Pengembangan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(20, 'NIP. 198208272006041001', 'Aris Suwondo, S.T, M.Si', 'Staf Sub Bidang Manajemen Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(21, 'NIP. 197312061993121001', 'Amzah', 'Staf Subid. Pemeliharaan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(22, 'NIP. 198903172018011001', 'Rahmat Hidayat, S.Kom', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(23, 'NIP. 198306122006041002', 'Kalimi, S.Si.', 'Staf Subid. Pemeliharaan Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(24, 'NIP. 198903232019022004', 'Florence Adeleyda Siga, S.Si, M.Si', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(25, 'NIP. 197410161996031001', 'Heru Tribuwono Fitri, S.Si.', 'Staf Subid. Manajemen Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(26, 'NIP. 197911162008012027', 'Nurhayati Rahayu S.Kom, MT', 'Staf Subid. Pengembangan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(27, 'NIP. 198601242008121003', 'Dian Handiana, M.Si.', 'Staf Subid. Pengembangan Database MKG', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(28, 'NIP. 198108162002121001', 'Fiqi Arman, S.Si', 'Staf Sub Bidang Manajemen Database Umum', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(29, 'NIP. 199006052009111001', 'Aji Prasetyo, S.Tr', 'Staf Subid. Manajemen Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(30, 'NIP. 198101212008122001', 'Wiwis Anggraini A.Md', 'Staf Subid. Manajemen Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(31, 'NIP. 198708042009112001', 'Indah Dwi Sulistyowati, S.Stat', 'Staf Sub Bidang Pemeliharaan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(32, 'NIP. 199108222010122001', 'Agita Devi Prastiwi, S.Tr', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(33, 'NIP. 198012172015021001', 'Dedi Arman Alif Hidayat, S.T', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(34, 'NIP. 199005312015021001', 'Join Wan Chanlyn S., S.T', 'Staf Sub Bidang Manajemen Database MKG', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(35, 'NIP. 198905072015022003', 'Iedita Widya Arsyta, S.Si.', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(36, 'NIP. 198403172015021001', 'Kgs. M. Nur Syamsuri, S.T', 'Staf Sub Bidang Pemeliharaan Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(37, 'NIP. 196311071987032001', 'Sylvia Andjarwati, M.T', 'Staf Subid. Pemeliharaan Database MKG', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL),
(38, 'NIP. 198401272015021001', 'Setia Adhi Darma, S.Si', 'Staf Sub Bidang Manajemen Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(39, 'NIP. 199111252012101001', 'Setyo Aji Pramono, S.Tr', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(40, 'NIP. 199209212012101001', 'Reza Bayu Perdana, S.Tr', 'Staf Subid. Manajemen Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(41, 'NIP. 199605182016011001', 'Reza Tisa Adi Pratama, A.P', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(42, 'NIP. 199404292016012001', 'HESTI HATI NURANI, S.Tr ,Inst.', 'Staf Sub Bidang Manajemen Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(43, 'NIP. 199512282016011001', 'Hildan Nur Syahrudin, S.Tr ,Inst.', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(44, 'NIP. 199204052013122001', 'Tika Fitriani, S.Tr', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(45, 'NIP. 199212112013121001', 'Aziz Setia Aji, S.Tr', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(46, 'NIP. 199404282013121001', 'Feizal Amri Permana, S.Tr', 'Staf Sub Bidang Manajemen Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(47, 'NIP. 199403052013122001', 'Sulkhi, S.Tr', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(48, 'NIP. 198002182008012016', 'Maria Damiana Nimas Ayu BP, S.P', 'Staf Sub Bidang Manajemen Database MKG', 'Pembina / IV.a', 'IV.a', 'Jakarta', NULL, NULL),
(49, 'NIP. 199308222013122001', 'Alfrizta Purwa D\'Harsa, S.Tr', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(50, 'NIP. 198902202010121001', 'Akbar Yus Prasetyo, A.Md', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(51, 'NIP. 199211092019022004', 'RIZKI NOVIANTI NURFAJRI, M.Si', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(52, 'NIP. 199106282018012001', 'Suci Anggrayani, S.Stat', 'Staf Sub Bidang Manajemen Database Umum', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(53, 'NIP. 198803182009111001', 'Aby Rengga Saputra, ST', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(54, 'NIP. 199212142018011002', 'Adhi Asta Krisna, S.ST', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(55, 'NIP. 198605052018011001', 'Asmadi Djasman, ST', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(56, 'NIP. 199104272013122001', 'Anggi Budi Larasati, S.Tr', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata / III.c', 'III.c', 'Jakarta', NULL, NULL),
(57, 'NIP. 199210112018011001', 'Mahisa Ajy Kusuma, S.Kom', 'Staf Subid. Manajemen Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(58, 'NIP. 198509032008012005', 'SANANTI NINGSIH, ST, M.T', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Tk. I / III.d', 'III.d', 'Jakarta', NULL, NULL),
(59, 'NIP. 199406222018012001', 'Putri Juanita Wahab, S.Si', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(60, 'NIP. 199601062020012001', 'SITI HASANAH, S.Tr', 'Staf Sub Bidang Pemeliharaan Database Umum', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(61, 'NIP. 199805162021061001', 'KARISMA KUSUMA NAGARI, S.Tr', 'Staf Sub Bidang Pemeliharaan Database Umum', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(62, 'NIP. 199903252022041001', 'HENDRA SETIAJI, S.Tr.Inst.', 'Staf Sub Bidang Pemeliharaan Database Umum', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(63, 'NIP. 199610192020011001', 'KHOERI ZUHDI, S.Tr', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(64, 'NIP. 199005142022021001', 'ADAM AJI NUGROHO, S.T., M.T.', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(65, 'NIP. 199911022022041001', 'Aminulloh Zaqi Darojat, S.Tr.Inst', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(66, 'NIP. 199405152019022002', 'MAYANATELA PUTRI, S.Si', 'Staf Sub Bidang Manajemen Database MKG', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(67, 'NIP. 199808052021062002', 'Zhenny Ma\'Rifatul Husna, S.Tr', 'Staf Sub Bidang Manajemen Database MKG', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(68, 'NIP. 199505022016011001', 'Mohammad Hajar Zakariya, S.Tr', 'Staf Sub Bidang Manajemen Database MKG', 'Penata Muda Tk. I / III.b', 'III.b', 'Jakarta', NULL, NULL),
(69, 'NIP. 199908202022042004', 'KHAIRANI KHALIDA, S.Tr.Inst.', 'Staf Sub Bidang Manajemen Database Umum ', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(70, 'NIP. 199706082020011002', 'Wahyu Abdillah, S.Tr', 'Staf Sub Bidang Pemeliharaan Database MKG', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(71, 'NIP. 200008122023021001', 'Fauzi Mahardika, S.Tr.Inst', 'Staf Sub Bidang Manajemen Database MKG/SPT. PMG Pertama', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(72, 'NIP. 200009152023022002', 'Sentia Arianti, S.Tr', 'Staf Sub Bidang Pengembangan Database Umum', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(73, 'NIP. 199712272020011001', 'Priambudi Huda Firmani', 'Staf Sub Bidang Pengembangan Database MKG', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(74, 'NIP. 196607071989031002', 'GREGORIUS SETYADHI BUDHI DHARMAWAN, SE, M.T', 'Kepala Pusat Jaringan Komunikasi', 'Pembina Utama Muda / IV.c', 'IV.c', 'Jakarta', NULL, NULL),
(75, 'NIP. 197108021994031001', 'HANIF ANDI NUGRAHA, S.Si, MT', 'Plt. Deputi Bidang Geofisika', 'Pembina Utama Muda / IV.c', 'IV.c', 'Jakarta', NULL, NULL),
(76, 'NIP. 200001122023021001', 'Reza Pitriyanto', 'SPT. PMG Pertama', 'Penata Muda / III.a', 'III.a', 'Jakarta', NULL, NULL),
(77, 'NIP. 197111021995031001', 'Jefri Abednego Mondong', 'PMG Madya', 'Pembina Tk. I / IV.b', 'IV.b', 'Jakarta', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tabel_pegawai`
--
ALTER TABLE `tabel_pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tabel_pegawai_nip_unique` (`nip`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_pegawai`
--
ALTER TABLE `tabel_pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(2, 'Web Design', 'web-design', '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(3, 'Personal', 'personal', '2024-09-19 07:40:59', '2024-09-19 07:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_23_092926_create_posts_table', 1),
(5, '2021_06_23_102156_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Et voluptate ullam modi quis reiciendis placeat quia.', 'quam-blanditiis-voluptatibus-eos-doloribus-ratione-quia-sit-mollitia', 'Odio id qui sed et unde modi fuga. Sed dicta sed quibusdam unde. Dignissimos eos fugit repellendus aut veritatis nisi facere et.', '<p>Beatae voluptatibus qui reprehenderit nam et ut. Et sit dolor omnis animi at debitis rem. Quo illo et similique ea porro. Est consectetur officiis culpa earum magnam facere.</p><p>Velit praesentium voluptas doloremque. Ut illo fugit est suscipit nihil. Vel eius tempora est quo voluptate. Saepe nam explicabo unde eos. Quisquam enim excepturi blanditiis ut quia doloremque.</p><p>Sunt aspernatur veritatis ipsam velit est blanditiis. Maxime unde repellat molestias possimus laborum ut. Omnis explicabo assumenda nihil sed repellendus aut nobis perferendis. Quam dicta autem non.</p><p>Omnis veritatis hic ipsam qui. Ipsum vitae aut odio omnis doloribus et rerum. Magnam dicta nostrum nostrum minus aliquam maiores enim. Molestiae culpa voluptas ad culpa sint dolorem dolorem.</p><p>Eveniet unde illo vero voluptates vitae. Soluta magni a est hic corporis nihil. Iusto et debitis veritatis autem beatae ipsam in. Iure quis velit consequatur ducimus. Autem placeat numquam aut adipisci ipsam voluptates mollitia.</p><p>Debitis reiciendis modi nostrum suscipit vel. Quaerat totam et placeat dicta natus dolore molestiae. Blanditiis unde est adipisci et voluptatem esse doloribus. Et quia ut nisi id ut eos aut. Et et debitis natus eveniet non.</p><p>Occaecati laborum non illum est esse non amet error. Saepe repellendus ut ut voluptatem esse laudantium soluta assumenda. Consequatur qui est rem est est rem.</p><p>Voluptate voluptatum aut atque neque. Officiis consectetur maxime ut magni. Veritatis impedit quo quia et.</p><p>Recusandae est sit quisquam recusandae qui. Occaecati assumenda sunt occaecati dolor. Eos ad eaque similique omnis. Quo autem iste tempore corrupti minus.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(2, 1, 1, 'Vitae odio libero nulla repudiandae consequatur.', 'esse-ut-autem-perspiciatis-dolores-modi-quisquam', 'Sit rem consequuntur quaerat suscipit accusantium eveniet. Ut laborum omnis qui consequatur nihil laborum. Voluptatem sunt ut quae culpa porro ut est.', '<p>Sint nihil animi sit dolorem similique. Ad qui dignissimos et eaque veniam similique aperiam consectetur. Nostrum quia dolores nemo possimus placeat.</p><p>Ab accusantium quisquam dicta quia consequuntur. Sunt et rerum commodi enim facere aliquam sit. Maxime expedita impedit dolor consequatur ut quisquam.</p><p>Cum fugiat voluptas voluptatem labore aut commodi. Error ab enim quaerat aliquam. Eius impedit voluptas aut optio doloremque. Aperiam provident ipsam odit et.</p><p>Laboriosam possimus reiciendis corrupti vel consequatur asperiores. Beatae ipsam quas sit cumque laborum. Rerum nihil molestiae non eos libero. Qui ea quo et aperiam.</p><p>Illo natus esse aspernatur qui. Labore doloribus veritatis earum dolores aut qui. Debitis dolores est eveniet aperiam qui rerum alias.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(3, 2, 1, 'Voluptate quisquam aliquid est.', 'magnam-dicta-consequatur-delectus-esse-hic-alias', 'Eligendi illum sit cumque porro reiciendis aut. Animi rerum quos non ducimus. Veritatis autem modi voluptatibus pariatur est ex itaque.', '<p>Voluptas consequatur exercitationem cum dolor quo. Hic quia laudantium fuga voluptas. Culpa laudantium maxime omnis.</p><p>Enim quisquam quis nesciunt ad officia eum. Quisquam asperiores alias nostrum delectus et illo ut. Quibusdam eius rerum porro fuga non maxime.</p><p>At exercitationem ipsa quod ratione at incidunt incidunt. Nemo est quasi ipsum sed. Est excepturi occaecati et minima aperiam corrupti.</p><p>Atque suscipit aut reprehenderit voluptas voluptatem. Sint quidem voluptate voluptatem non autem exercitationem natus. Odit reiciendis sunt sunt autem quis quia aut.</p><p>Placeat laborum nobis numquam amet. Cumque laboriosam quisquam ducimus dolorem dolorem omnis cumque.</p><p>Corrupti blanditiis assumenda accusamus et ratione veniam nihil. Sit necessitatibus et quis odit. Aut nemo sed aut sequi tenetur. Blanditiis magni qui aut dolorum animi quas iste fugit. Voluptas quidem neque delectus perferendis ea non sit.</p><p>Dolores placeat non et asperiores vel rerum. Et est et ipsum nihil. Ut possimus distinctio quis esse at cum.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(4, 2, 2, 'Expedita nulla et.', 'distinctio-numquam-et-qui-ea-quasi-repellat-asperiores', 'Est quisquam error est nisi odit. Ut rerum at et neque cupiditate labore. Accusantium fugiat ipsam eum nobis nulla sit.', '<p>Fuga itaque optio quaerat praesentium et qui vero. Modi iste odit voluptatem sed dolor in. Officiis at nobis ipsa illo fuga optio. Ut qui maiores exercitationem quidem quasi quia reprehenderit saepe.</p><p>Doloremque id voluptate temporibus occaecati consequatur facilis et. Ea debitis adipisci enim. A dolores sit aut molestiae optio.</p><p>Quia numquam vero fuga autem incidunt explicabo modi. Qui quod delectus culpa cupiditate culpa optio voluptatem. Fuga culpa accusamus et et laboriosam cupiditate veritatis consequatur.</p><p>In minus eaque eum quasi iste nisi. Vero alias et a modi fugit voluptatibus. Id et voluptate accusantium vero aut. Voluptatem omnis aut nobis et quia nam eum. Qui in quis rerum voluptatem quas.</p><p>Facilis debitis nulla consequuntur quia et nisi. Qui maiores consequatur ut nostrum nobis.</p><p>Corporis ipsam incidunt enim ut ipsum nemo minus. Qui voluptas rem minus perferendis odit qui ut. Expedita minus et quaerat debitis totam exercitationem recusandae tenetur. Incidunt ut exercitationem molestiae porro animi.</p><p>Placeat vel voluptatem in quod nobis blanditiis itaque. Et dolorum maxime magni fugit adipisci accusamus porro aut. Iusto quo voluptas tenetur ipsum perspiciatis consequatur.</p><p>Ut et voluptates non a ut ut. Quia consectetur aut est a velit. Modi dolores aut quo sequi quas. Dolores vitae explicabo laborum sed sapiente quia.</p><p>Porro iure corporis sequi officia omnis distinctio soluta. Possimus tempore voluptatem asperiores. Tenetur dolores repudiandae quaerat beatae asperiores provident. Sed necessitatibus est culpa at reiciendis dolore. Non et omnis nisi.</p><p>Quia quas tempora libero debitis culpa fugiat. Cumque odio qui maiores nobis eveniet aliquam et iure. At necessitatibus unde praesentium aspernatur tempora. Molestias voluptates eaque consequatur quia itaque facere sit.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(5, 2, 3, 'Quos animi dolore dolores sint sit veniam.', 'quo-praesentium-dolorem-consequuntur-reprehenderit-inventore-eos-tempore', 'Enim aspernatur magni voluptatibus tempora. Quisquam quia minus nostrum quo. Pariatur magnam distinctio quo quisquam voluptatem.', '<p>Ab et voluptatum dolorem fuga dolorem possimus et beatae. Ipsam nam odio aut dolorem numquam aut et. Sint excepturi necessitatibus eius illum perspiciatis delectus. Itaque quidem est voluptas inventore et tempore ab eveniet.</p><p>Officia fugiat inventore quo exercitationem tempora. Et repudiandae autem ex quisquam qui nihil nobis. Voluptas tempore assumenda rerum harum voluptatem.</p><p>Asperiores voluptas cum et. Est ea eaque accusantium. Sed et incidunt quas et.</p><p>Et nobis suscipit dolore possimus ut quia. Omnis fuga quia quibusdam est eius expedita occaecati. Soluta asperiores fuga molestiae voluptatem sit.</p><p>Doloribus ullam molestias nulla et vero. Iste eveniet voluptatem ducimus occaecati. Omnis vero neque cupiditate omnis. Ullam dolor quo non ipsum qui.</p><p>Non consequatur consequatur soluta quibusdam rerum iure dignissimos cumque. Nam et sit eligendi id iusto. Cum reprehenderit soluta tempora assumenda libero et.</p><p>Rerum accusantium eaque rerum vero. Aliquam quas pariatur vero soluta harum cupiditate. Placeat alias reprehenderit id corporis voluptatem enim blanditiis. Eum a quaerat distinctio nesciunt.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(6, 1, 1, 'Sit dicta id molestias architecto non.', 'qui-dolores-nihil-laudantium-et', 'Quisquam facere id minima odio. Ea nobis vel et. Porro vel aut facilis enim aspernatur quod.', '<p>Amet repudiandae vitae et molestiae autem omnis accusantium minima. Illo nulla saepe omnis eum ipsum voluptas. Et voluptatem consequatur provident est tempore optio doloribus.</p><p>Modi enim quisquam vel molestias. Est quod nam adipisci et est. Dolorem aut est iure consequatur. Quidem eum sunt animi dolore.</p><p>Ullam ut laudantium inventore incidunt. Possimus nihil expedita sint. Molestias distinctio rerum explicabo sunt et. Ea odio voluptatibus distinctio natus.</p><p>Ea possimus ab dolor temporibus laborum nihil blanditiis alias. Rerum quis velit et id natus inventore aperiam. Distinctio culpa sed ex nobis mollitia accusantium nam nulla.</p><p>Debitis quidem repudiandae aut consectetur iure hic. Rerum minus tempora nesciunt vitae. Rem ut fuga totam qui consequuntur et pariatur. Ut voluptatem fuga impedit qui modi autem et.</p><p>Recusandae est aut officia eos consequatur dolor. Ut ad explicabo at fuga. Voluptas officiis recusandae porro impedit.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(7, 2, 2, 'A natus est ullam dolor eum dolores sunt.', 'qui-distinctio-vel-et', 'Perferendis fugit autem omnis. Consequatur eius voluptas aut ut rem. Molestiae et id provident perspiciatis temporibus.', '<p>Quam velit facilis sapiente incidunt sequi occaecati sint. Dolores non illum vel optio corporis. Omnis magnam eum rerum. Sunt et nisi ut voluptatem quo eos id. Placeat nulla quia quo.</p><p>Fugiat aut qui non sed molestiae. Iste consectetur in architecto voluptate id veniam facilis. Sunt molestiae corporis veritatis. Soluta ut esse et ut ex ut maxime voluptas.</p><p>Saepe quo nam dolorem natus et delectus dignissimos. Voluptas quaerat quod adipisci nobis facilis assumenda dolores non. In sint in ipsa quis ut. Amet earum magni consequatur eum non.</p><p>Et sapiente odio facere aliquam. Maxime eos quis consectetur et rerum. Veritatis aut qui quidem non officiis. Dolores voluptatem dolor ullam.</p><p>Repellat animi tempore dolores quos ipsam omnis cumque minus. Dicta non ipsam ut ipsa reprehenderit. Commodi aliquam unde numquam deserunt voluptas distinctio eos. Optio qui quia et facilis similique repellendus.</p><p>Voluptas culpa accusantium et eum. Aspernatur nesciunt fugiat quidem dignissimos labore dolor et. A architecto atque quas sed.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(8, 1, 1, 'Aliquam est asperiores vel quis distinctio tenetur qui illo dolorem.', 'reiciendis-porro-et-exercitationem', 'Voluptatem sunt quia nemo dolores. Voluptas sed at quisquam fugit aliquid cum iusto. Qui hic quae sit.', '<p>Sed illum ad quia non. Dolore at nemo maiores voluptates hic. Eos rerum est vel quod aut.</p><p>Consequatur aliquid magnam aliquam. Dolorem deserunt ratione ex non qui numquam. Quia deleniti placeat fugit possimus laborum soluta maxime.</p><p>Doloremque placeat modi illum occaecati delectus rem et. Est quasi nemo eveniet vel aut voluptatum ut dolorum. A quia omnis sed. Molestias doloribus velit deserunt molestias quia.</p><p>Sed nemo quis nulla laborum ducimus quos. Eos voluptatem culpa praesentium autem eos itaque ab. Voluptas quia dolores at consectetur voluptatem consequatur saepe amet.</p><p>Molestiae eum non unde laudantium nihil est excepturi. Voluptates ad a itaque dolorem. Sit voluptas est quo totam est veniam velit.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(9, 1, 3, 'Maxime suscipit quasi architecto totam voluptate atque.', 'quis-eius-ipsam-voluptatem-alias-et', 'Laborum voluptates minus provident omnis. Ullam laudantium minima dolores soluta autem. Ut nihil deleniti ea aut voluptatem.', '<p>Consequatur voluptatum voluptate dolor architecto asperiores ratione qui. Voluptates quos tempore explicabo mollitia sapiente rerum. Est placeat libero ut temporibus.</p><p>Reiciendis architecto quo non. Maiores sapiente modi deserunt tempora. Aut libero et rem autem nemo. Tempora similique blanditiis ut est eos.</p><p>Ut eum sed ullam ea. Expedita aspernatur fugit reiciendis et porro voluptatem non. Aut veniam qui qui dolor qui voluptatem. Error enim quo dignissimos sequi atque.</p><p>Dolorum explicabo consectetur cumque expedita. Sed expedita aperiam ut quae ipsa deserunt eaque. Repellat alias autem adipisci sit repellat.</p><p>Et facere vitae molestiae rem. Ut iste repellendus nam cupiditate et quae et. Aut blanditiis vitae perspiciatis dolorem laborum deserunt dignissimos occaecati.</p><p>Ut ipsum necessitatibus molestiae omnis sunt amet. Ducimus qui voluptatem sint aut. Similique qui maxime debitis aut reiciendis nihil. Ut inventore atque provident vel.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(10, 1, 2, 'Id quia.', 'totam-nobis-placeat-rem-perferendis', 'Fuga consectetur qui occaecati aspernatur. Inventore vitae provident illo quo. Qui aperiam sit libero debitis hic.', '<p>Aut libero saepe illo architecto error similique. Odio ex ea aliquam aut neque magnam. Doloremque modi doloremque fugit autem sit nihil maiores.</p><p>Odio vel et aut est quis cupiditate. Dolores velit laudantium esse. Dolorem harum modi possimus sit necessitatibus cupiditate. Repellendus non quia sapiente nesciunt voluptates.</p><p>Et quidem possimus commodi quod nostrum. Et voluptatum voluptates voluptatem aut. Odio autem incidunt et non nisi. Id non natus repellendus non quo. Vero ut soluta autem culpa.</p><p>Quidem excepturi ratione est eveniet qui qui sint. Quod eaque corrupti saepe sint est.</p><p>Laudantium animi molestiae eius provident possimus. Eligendi vel dolorem voluptatem repellendus fuga harum ut provident. Dolore libero id assumenda id.</p><p>Quaerat minus nesciunt nemo reprehenderit assumenda. Maiores veritatis ad dolorum est.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(11, 2, 1, 'Recusandae aliquam omnis ut.', 'officiis-blanditiis-minus-iusto-accusamus-sed-assumenda-quo', 'Quo sed ea est quo architecto accusamus. Modi ducimus omnis sed. Ullam beatae aut est necessitatibus iusto ducimus dolorem.', '<p>Aut nihil quia assumenda voluptatem optio fuga nesciunt. Facere sed qui qui sunt quasi nulla commodi ut. Qui autem velit dolorum eum et.</p><p>Vero ea aut rerum quas eum veniam. Voluptas voluptatem sed ut. Error officia vel accusamus magnam.</p><p>Quae voluptatem voluptas culpa aperiam non. Cupiditate iure non dolores nostrum reprehenderit. Labore quia nobis aut. Dolores earum qui perspiciatis inventore autem.</p><p>Soluta eligendi quibusdam vel magni ut. Excepturi sint tempora eius. Sit ducimus odio velit repellendus porro eligendi.</p><p>Optio nisi labore corporis delectus rerum. A est doloremque tempora mollitia quia eos omnis. Cupiditate dolorem dolores consequuntur ea ipsum.</p><p>Voluptatem molestiae ad blanditiis dolorem at similique. Cupiditate in reprehenderit consequuntur exercitationem qui inventore. Quia at dolorem rerum voluptates nemo dicta quia.</p><p>Eius et est vel reiciendis qui est sunt totam. Sunt sed ratione sunt quaerat et optio laboriosam sapiente. Dignissimos excepturi ratione nulla perferendis doloremque a deleniti ut.</p><p>Dolor consequatur ea illum totam ratione. Facere et non ut saepe nisi ex modi est. Explicabo voluptas et totam odio cupiditate. Tempora praesentium ea omnis repellendus consequatur blanditiis sequi voluptas.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(12, 1, 1, 'Atque quis accusamus est delectus.', 'labore-est-quasi-molestiae', 'Est inventore quia qui molestias unde alias laudantium. Voluptas minima amet fuga corporis sint similique. Et numquam maiores quos repudiandae. Incidunt est dolor excepturi dolor.', '<p>Suscipit vel nulla laborum molestiae eum explicabo. Ducimus non eligendi odit saepe esse. Tenetur nisi dignissimos nam est eligendi inventore omnis inventore. Voluptatum minima repellendus libero ut.</p><p>Qui voluptatem aut est dolore. In rem aut facere voluptatibus fugiat veniam. Vel at quaerat voluptatum dolor omnis.</p><p>Dolorem cumque quasi architecto iure omnis quia. Libero dolorem dolorum laudantium dignissimos. Quia ut omnis dolores voluptatem.</p><p>Est corporis sint deserunt laboriosam beatae. Quasi dolores incidunt sequi soluta id perferendis voluptatem. Veniam ratione est sit animi possimus nam.</p><p>Reprehenderit numquam temporibus non voluptas qui rerum saepe consequatur. Blanditiis earum nesciunt officiis ut at velit perferendis. Et eum odio id est dolorem aut omnis.</p><p>Dolores rerum est voluptatum totam est. Commodi repudiandae aut voluptatem sit.</p><p>Laborum et explicabo blanditiis eius itaque aliquam quia reiciendis. Quia id blanditiis corrupti adipisci sapiente dolorem ut. Aut facilis explicabo quaerat quis consequatur.</p><p>Vitae veniam eos dolorum nulla quas totam aut. Omnis illo voluptatem reprehenderit saepe ipsum. Saepe culpa excepturi voluptatem consequatur voluptatem quia qui. Fugiat et in error distinctio sint id voluptas vel.</p><p>Aliquid voluptas optio voluptas sit omnis. Unde nisi consequuntur et repellat vel atque. Libero eos et ratione dolorem aut. Soluta blanditiis ut nulla aut saepe reiciendis repudiandae nobis.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(13, 1, 3, 'Commodi esse aliquid.', 'sint-nihil-rerum-et-quisquam-consequatur-aut', 'Perferendis mollitia nihil perferendis dolorum magni vel qui. Qui veniam vitae labore temporibus officiis. In ea asperiores doloremque non placeat atque. Non deleniti quam nihil et sequi.', '<p>Omnis aliquam voluptates eligendi et ut. Rerum hic rerum vel sunt odio. Est voluptates praesentium consectetur numquam quia ut. Enim eum error in nesciunt atque iusto.</p><p>Magnam nihil recusandae cum quaerat. Deserunt id labore commodi tempora. Sint ex facilis inventore pariatur ea.</p><p>Quos doloremque neque laborum voluptas pariatur eveniet. Nam et architecto labore reiciendis sint facilis debitis. Quo doloremque numquam corrupti nobis.</p><p>Numquam occaecati dolorum odio ut dolorum minima. Possimus numquam ut vero sed iste fuga qui. Ex iure unde voluptas repellendus ut. Quasi iure sunt voluptatem praesentium incidunt quis debitis.</p><p>Consequatur odit quia et qui quaerat vel. Iusto aliquid et voluptate iure porro fuga.</p><p>Cumque omnis aliquid incidunt. Voluptatum odit tenetur voluptatem nihil. Quae libero incidunt quia eaque consequatur. Ad tempora iure ab ut doloribus omnis voluptatem rem.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(14, 2, 2, 'Ut non.', 'voluptas-esse-corporis-numquam-totam-porro-voluptatem-sit', 'Impedit culpa animi illum eligendi dolorem veritatis. Quasi ab nulla corporis ut. Quia fugit maxime dolore ea sed. Sunt facilis laborum nihil nulla voluptatibus quo omnis molestiae. Sapiente nam similique illum expedita.', '<p>Quod incidunt sed quam vitae animi minima sunt. Cupiditate expedita omnis ab magni. Qui cupiditate enim non dolorem ab.</p><p>Expedita veniam nihil placeat reiciendis. Vitae perspiciatis doloremque quia ex. Vitae in laudantium sed.</p><p>Exercitationem beatae ad illum perferendis. Atque voluptas quis ipsam quia pariatur dicta ad. Totam ut quia quia rerum labore ab.</p><p>Occaecati minus magni corrupti iste ea nostrum. Quos repellat et quis sed ut.</p><p>Veniam dolorem sed ipsam exercitationem repudiandae. Doloremque aperiam alias adipisci. Quas id quidem aliquid tempore eum. Praesentium ut fuga beatae deleniti illo dolorem.</p><p>Quia eius perspiciatis aspernatur. Cumque fugiat est et suscipit perspiciatis modi voluptas asperiores. Sed molestias eveniet non vitae et quo.</p><p>Ducimus rem alias voluptatem aut possimus et odit. Voluptatum et sequi rerum totam laboriosam est. Amet sit unde enim iusto ratione perspiciatis maiores. Sit magnam occaecati omnis aut.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(15, 2, 1, 'Consequatur et perferendis.', 'eos-et-tempore-omnis', 'Numquam vel dolorem et porro quia necessitatibus. Omnis sapiente corporis incidunt eum earum illum minus. Praesentium repellendus fugiat occaecati id et accusantium.', '<p>Ea fuga sint unde. Dignissimos expedita et sit vel. Asperiores ullam ut culpa quasi voluptas rerum. Sed facilis rerum non odio officiis nemo totam.</p><p>Aut molestiae rerum totam nihil tempora eum. Sequi ipsa perspiciatis aut qui quidem et voluptatibus. Voluptatem aliquam saepe eos dicta mollitia.</p><p>Rem eius ratione laudantium porro aliquam mollitia enim numquam. Aut eum excepturi reprehenderit dolor enim iusto. Aut voluptates itaque qui quae aut officiis provident. Iste labore sit cupiditate.</p><p>Debitis reprehenderit et unde quos nesciunt soluta aliquam. Neque placeat accusamus non natus. Atque quibusdam quia aut reprehenderit.</p><p>Dolorum est possimus molestiae repellat quae veniam. Est facere voluptatem aut sint maiores et. Perferendis quia consequatur magni mollitia sint ut voluptatem.</p><p>Repellat dignissimos magni qui sunt est eius quae nemo. Adipisci cupiditate recusandae aliquid aut amet ut in qui. Nesciunt et quia aliquam tenetur. Quia sed eum delectus repellendus.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(16, 2, 2, 'Et autem earum dignissimos tempore et eveniet numquam.', 'qui-ut-illum-nulla-dolorem-cum', 'Tenetur voluptas voluptas optio sunt esse. Nam tempora ut iste explicabo. Est rerum commodi cumque iusto aut.', '<p>Placeat excepturi ut cumque totam. Est et eveniet necessitatibus est dolorem. Voluptates eum magnam qui et officia ea. Reiciendis dolorum est sed similique temporibus temporibus eveniet.</p><p>Ratione assumenda quibusdam suscipit. Natus repellendus aliquam accusantium ipsum laborum neque. Officia fugiat illum deleniti natus repudiandae. Animi dignissimos deserunt iste. Magnam aut possimus delectus et quod et commodi.</p><p>Aut mollitia consectetur vitae voluptates quas. Eos qui quia voluptas nisi rerum et. Iste odit earum aut.</p><p>Aut atque et dolorem iusto et repudiandae provident quidem. Incidunt facilis sunt doloribus voluptatem molestias voluptatem maiores. Dolor voluptatem illo eos aut in.</p><p>Itaque voluptates ratione ut rem ab non. Aut sint accusantium atque odio ipsum sunt modi. Vel sed repellendus repellat dolorum doloremque dolor maxime. Et iusto magni voluptatibus et est molestiae maxime vero. Architecto molestiae dolorem molestiae consequatur enim et nulla.</p><p>Praesentium enim aspernatur a ullam. Deleniti laudantium sint fuga doloribus veniam. Aut sunt mollitia consectetur quia provident.</p><p>Deserunt et ut cupiditate unde. Et tempore hic nobis sit. Voluptatem dolor ullam omnis sapiente quidem.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(17, 1, 1, 'Ut dolorum et eveniet qui voluptatem.', 'iure-suscipit-fugit-quasi-ullam-repellat', 'Ipsum eveniet ipsam quia qui quia sapiente. Labore quia eius accusamus ut rem quae aut modi. Accusantium libero ut odio quia.', '<p>Cum voluptates et id est excepturi eos. Asperiores quasi voluptatem deserunt magni. Quia in non repellat perferendis est.</p><p>Amet et nam ex dolores. Quis voluptatibus tempore minima nam. Voluptatem qui dolorem eligendi eveniet vel dolorem distinctio nemo.</p><p>Esse voluptatem incidunt quia itaque autem necessitatibus voluptas veniam. Veniam velit autem repudiandae facilis totam rerum. A nostrum voluptatem doloremque voluptatem. Numquam et nesciunt est quo. Unde possimus recusandae repudiandae quia saepe.</p><p>Similique aliquid rerum repellendus officiis qui. Explicabo voluptas harum aut id eos occaecati qui. Quisquam deleniti labore a veniam dignissimos magnam. Aut numquam qui dolores alias quibusdam esse ea cum.</p><p>Iure voluptatem enim nihil sed et. Placeat dolorem aut ex tenetur. Illo tempore accusamus rem tenetur.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(18, 1, 3, 'Quia ut temporibus assumenda quidem.', 'eligendi-voluptatem-id-sit-deleniti-blanditiis-accusantium-autem-quia', 'Quis omnis laborum qui in in alias vel. Perspiciatis et minus quae vel enim. Provident eum possimus est non corporis tempore. Repellendus et labore sed voluptas.', '<p>Omnis voluptatem eligendi sint dolorum aliquam praesentium veritatis. Et tenetur quas excepturi tempore. Aut qui aut corrupti alias. Delectus voluptatum in cum non quo expedita consequuntur.</p><p>Et nobis ut dolor fuga sit eum voluptas quaerat. Impedit dolor ut exercitationem libero voluptatem necessitatibus et. Quia consequatur in neque illo illum mollitia veniam.</p><p>Fuga animi quisquam esse laudantium. Et commodi cupiditate aut omnis. Atque dolor architecto beatae sapiente ullam. In voluptatem sint distinctio corporis qui.</p><p>Repudiandae aut et veritatis. Velit aperiam quibusdam facere esse. Voluptas ut optio rem praesentium ut doloribus non. Et consectetur aut et nam.</p><p>Et et consequatur autem saepe esse repudiandae deleniti. Quidem commodi et aperiam qui aut reiciendis velit est. Sit ut quis quia consectetur laboriosam debitis et. Qui odio quia dolore consequatur facilis sequi omnis.</p><p>Consequatur labore rem expedita aliquid facilis. Quo in voluptas aut rerum quos. Et qui ut quam et quibusdam architecto et. Consequatur quidem debitis autem placeat ut odit aliquid.</p><p>Tenetur tenetur doloremque quae cupiditate. Cumque dolor dolorem consectetur vero doloribus sit enim. Non laboriosam voluptatem magni non totam voluptas qui. Eum expedita odit iste.</p><p>Quia qui a aut magnam. Ex facere similique natus harum aut omnis. Ut repellat repellat sapiente magnam eum. Sit et beatae est consectetur consectetur architecto. Et qui distinctio facere nihil doloremque iste adipisci ipsam.</p><p>Molestias sunt laborum doloribus quis ab voluptas qui inventore. Molestiae natus quo ea et qui quod et. Omnis possimus aliquam repellendus illum. Expedita occaecati magnam et repellendus ducimus error.</p><p>Sint modi iusto qui ipsam et. Voluptatibus sequi consequatur dolorum adipisci natus et cumque dolorem. Quasi cupiditate et et impedit reprehenderit. Asperiores ullam corrupti velit totam.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(19, 1, 2, 'Nihil quae.', 'harum-enim-sit-neque-nihil-quis-cumque', 'Molestiae facere distinctio sit omnis doloremque praesentium enim. Ipsam eos tempora velit et. Temporibus corrupti omnis saepe labore sequi voluptates. Rerum velit molestiae dolor est impedit.', '<p>Natus saepe vitae et nemo. Voluptate voluptatum et veniam ut magnam est tempore. Est aperiam aut aut.</p><p>Assumenda molestias quisquam quia facere non recusandae. Nisi ullam voluptatem magni et expedita dolorem architecto quod. Itaque et aperiam sit.</p><p>Aliquid officia quam enim ut doloremque dolorem. Autem et maiores sint aliquid. Sed animi in sit corrupti possimus. Et ea est ex quibusdam rerum.</p><p>Aspernatur sit illum corrupti illo illum. Sequi sapiente facilis distinctio sed. Aspernatur dolorum distinctio fugit recusandae earum.</p><p>Dolorem libero aut repudiandae magni. Eos fugit sint sunt libero. Molestiae non quae est aperiam magnam nemo illo architecto.</p><p>Aperiam inventore ipsam labore et recusandae ullam quam omnis. Aut quia et sed ut sequi necessitatibus voluptatem. Accusantium repellendus et vel ut ullam a consequatur.</p><p>Distinctio amet iusto aut expedita reiciendis. Est ullam dignissimos culpa rem ab quod ipsum. Voluptatibus labore omnis aut quis.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(20, 1, 2, 'Veniam voluptas perspiciatis voluptatem in quaerat quia.', 'et-officia-nam-non-quo-porro-ea-dicta', 'Laborum adipisci nisi cum. Voluptas quia saepe ut sunt inventore praesentium. Laboriosam ea quas quibusdam. Neque facilis quo quibusdam in.', '<p>Explicabo facere quia similique molestias. Tempora quo quo corporis nostrum ut. Repudiandae at quam sint distinctio dolorum ut et enim.</p><p>Et laborum magni impedit sint. Maxime occaecati iure rerum voluptas. Et itaque nesciunt sunt. Tempora error nihil accusamus aperiam.</p><p>Voluptatem architecto necessitatibus et ut eos. Iusto voluptatibus numquam porro mollitia molestiae non. Nisi eos aut nostrum ex voluptatum laborum.</p><p>Optio sed maiores quo dolorem. Sed assumenda sed saepe. Non labore nesciunt fuga ut ut eos aliquid. Eos laboriosam rem iusto.</p><p>Ex eum tempora corrupti quo molestias ipsum non. Voluptates deleniti sed non et.</p><p>Quibusdam enim possimus quis perspiciatis aliquid. In ut itaque ab explicabo aliquid. Cupiditate enim in vitae ut. Hic in vero quaerat accusamus architecto temporibus.</p><p>Illum temporibus exercitationem debitis ut qui aliquid nulla. Soluta in quia quasi ut asperiores quasi nam. Accusantium praesentium sit recusandae incidunt sint vero dignissimos.</p><p>Aperiam maiores occaecati et voluptatum. Odit dolorem esse ipsum voluptatem enim ut quasi sed. Voluptatem dolorum porro adipisci accusamus voluptate et dignissimos. Iure quasi voluptatem molestiae corrupti ut. Cumque soluta non soluta quo aut sit.</p><p>Esse tempora ratione asperiores repellat id sint fugit pariatur. Commodi a cupiditate pariatur voluptas aut unde ex. Ad tempore cupiditate optio commodi ullam et.</p><p>Iusto molestiae doloremque id animi repudiandae omnis. Aut non consequatur iure quisquam rerum non possimus. Quod et animi in ipsam quam ducimus.</p>', NULL, '2024-09-19 07:40:59', '2024-09-19 07:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Lavern Okuneva', 'mandy.legros', 'bertrand38@example.net', '2024-09-19 07:40:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kvTJgGF42p', '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(2, 'Ophelia Corwin DDS', 'orland.casper', 'kiehn.coty@example.org', '2024-09-19 07:40:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uSonfKGZdi', '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(3, 'Ms. Alanna Goyette MD', 'kerluke.jeremie', 'runolfsdottir.belle@example.org', '2024-09-19 07:40:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8xJZ9w4jTS', '2024-09-19 07:40:59', '2024-09-19 07:40:59'),
(4, 'Soy', 'Duckworth', 'bebeklari345@gmail.com', NULL, '$2y$10$KLIM8xr/uyWIxuYRjyBjIOsJKK./8S0ATKVqwSywa0BexsbYgEA..', NULL, '2024-09-19 07:50:26', '2024-09-19 07:50:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `laravel2`
--
CREATE DATABASE IF NOT EXISTS `laravel2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel2`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'personal_access_tokens', 'table', 'db_sipanas', ''),
('root', 'users', 'table', 'db_sipanas', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"database_pegawai\",\"table\":\"perjadins\"},{\"db\":\"database_pegawai\",\"table\":\"pegawais\"},{\"db\":\"database_pegawai\",\"table\":\"kwitansis\"},{\"db\":\"database_pegawai\",\"table\":\"pagus\"},{\"db\":\"database_pegawai\",\"table\":\"kotas\"},{\"db\":\"database_pegawai\",\"table\":\"provinsis\"},{\"db\":\"db_sipanas\",\"table\":\"personal_access_tokens\"},{\"db\":\"laravel\",\"table\":\"users\"},{\"db\":\"laravel\",\"table\":\"categories\"},{\"db\":\"db_coba\",\"table\":\"posts\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'database_pegawai', 'pegawais', '{\"sorted_col\":\"`nip` ASC\"}', '2024-09-26 16:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-09-29 10:29:23', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
