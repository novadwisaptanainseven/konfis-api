-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 02:32 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konfis`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisik`
--

CREATE TABLE `fisik` (
  `id_fisik` bigint(20) UNSIGNED NOT NULL,
  `kode_bidang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_urut` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_dpa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `ttd` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fisik`
--

INSERT INTO `fisik` (`id_fisik`, `kode_bidang`, `no_urut`, `no_dpa`, `uraian`, `tanggal`, `ttd`, `created_at`, `updated_at`) VALUES
(1, 'abc', '600', 'abc123', 'Lorem ipsum dolor sit amet edit', '2021-10-14', 'Nova Dwi Sapta', '2021-04-16 21:17:37', '2021-04-17 22:46:59'),
(4, 'PRM', '604', 'RPC/ABC', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facere explicabo a\ndoloremque asperiores eius officia saepe minima nobis, corrupti non ab quibusdam\nconsequatur sint repellat repudiandae dolorum et odio esse.', '2021-04-19', 'Deddy Corbuzier', '2021-04-17 22:40:54', '2021-04-17 22:40:54'),
(5, 'AKM', '605', 'RPC/DDF', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facere explicabo a\ndoloremque asperiores eius officia saepe minima nobis, corrupti non ab quibusdam\nconsequatur sint repellat repudiandae dolorum et odio esse.', '2021-04-19', 'Susilo Bambang Yudoyono', '2021-04-17 22:41:32', '2021-04-17 22:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `kontrak`
--

CREATE TABLE `kontrak` (
  `id_kontrak` int(11) NOT NULL,
  `no_kontrak` varchar(11) NOT NULL,
  `uraian` text NOT NULL,
  `tanda_terima` varchar(255) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontrak`
--

INSERT INTO `kontrak` (`id_kontrak`, `no_kontrak`, `uraian`, `tanda_terima`, `tanggal`, `updated_at`, `created_at`) VALUES
(12, '600.01', 'Semenisasi Jl. Kuburan RT.20 Kelurahan Makroman Kec. Sambutan Rp 199', 'Anto PSU', '2021-03-30', '2021-03-29 19:56:02', '2021-03-29 19:56:02'),
(13, '600.02', 'Semenisasi Gg. Kuburan Muslimin Jl. Pangkalan RT. 04 Kel. Pulau Tas Kec. Sambutan Rp 199.167.000', 'Bayu PSU', '2021-03-30', '2021-03-29 20:00:31', '2021-03-29 20:00:04'),
(14, '600.03', 'Paving Jl. Pemakaman Kel. Rawa Makmur Kec. Palaran Rp 199.650.000', 'Ricka PSU', '2021-03-30', '2021-03-29 20:01:57', '2021-03-29 20:01:57'),
(15, '600.04', 'Penerangan Jl. Umum Perum Korpri RT. 08 Kel. Pulau Atas Rp 194.520.000', 'Andi PSU', '2021-03-30', '2021-03-29 20:07:18', '2021-03-29 20:07:18'),
(16, '600.05', 'Pembangunan Infrastruktur Jl. Kilo 1 Gg. durian RT 21 Kel. Simpang Tiga Kec. Loa Janan Rp 199.993.380', 'Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:21:34', '2021-03-29 20:11:56'),
(17, '600.06', 'Peningkatan Jl. & Drainase di Jl. Bugis Gg. Kuburan RT. 04, Kel. Mugirejo Kec. Sungai Pinang Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:26:48', '2021-03-29 20:26:48'),
(18, '600.07', 'Peningkatan Jl. Trikora RT. 16 Gg. Tikungan Indah Kel. Handil Bakti Kec. Palaran Rp 124.988.130', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:28:42', '2021-03-29 20:28:42'),
(19, '600.08', 'Peningkatan Jalan Lingkungan Jl. Gunung Pasir Gg. Nayan RT. 14 Kel. Sambutan Kec. Sambutan Rp 199.933.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:30:48', '2021-03-29 20:30:48'),
(20, '600.09', 'Perbaikan Parit dan Gorong-Gorong Jl. Hasyim ashari RT. 36 Kel. Kel. Loa Bakung Kec. Sungai Kunjang Rp 199.933.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:32:29', '2021-03-29 20:32:29'),
(21, '600.10', 'Peningkatan Jl. Perum Puri indah Poros Jl. Kapt. Soejono Kel. sungai Kapih Kec. Sambutan Rp 199.933.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:33:51', '2021-03-29 20:33:51'),
(22, '600.11', 'Drainase Perum Keledang Mas Baru Blok Sidomukti Kel. Sungai Keldang Kec. Smd Sebrang Rp 199.933.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:36:34', '2021-03-29 20:36:34'),
(23, '600.12', 'Drainase Perum PKL Blok D RT. 11, Kel. sungai Kapih Kec. Sambutan Rp 199.933.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:45:58', '2021-03-29 20:45:58'),
(24, '600.13', 'Jalan Perumahan Bumi Alam Indah Kebon Agung RT. 51 Kel. Lempake Kec. Samarinda Utara Rp 199.933.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:47:30', '2021-03-29 20:47:30'),
(25, '600.14', 'Lanjutan semenisasi Jl. Lingkungan Perumahan Sempaja Lestari Blok C & M2 Kel. Sempaja Utara Kec. Samarinda Utara Rp 199.933.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:50:32', '2021-03-29 20:50:32'),
(26, '600.15', 'Lanjutan semenisasi Jl. Lingkungan Perum Puspita Bengkuring Blok AR,AS,RT.25 Kel. Sempaja Utara Kec. Samarinda Utara Rp 499.983.450', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:52:22', '2021-03-29 20:52:22'),
(27, '600.16', 'Lanjutan semenisasi Jl. Lingkungan Perum Puspita Bengkuring Blok AS,RT.25 Kel. Sempaja Utara  Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 20:53:44', '2021-03-29 20:53:44'),
(28, '600.17', 'Pembuatan Drainase Gg. Keledi 3 Perum PKL Blok B Rt. 19 Kel. Sei Kapih Kec. Sambutan  Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 21:30:35', '2021-03-29 21:30:35'),
(29, '600.18', 'Pembuatan Drainase Jl. Labu Merah 1,2,3,4 Perumnas Bengkuring Kel. Sempaja Timur Kec. Samarinda Utara Rp 773.250.000', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 21:32:32', '2021-03-29 21:32:32'),
(30, '600.19', 'Pembuatan Drainase Jl. Labu Merah 3 Perumnas Bengkuring Kel. Sempaja Timur Kec. Samarinda Utara Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 21:55:05', '2021-03-29 21:55:05'),
(31, '600.20', 'Pembuatan Drainase Perum PKL B RT.9 Kel. Sei Kapih Kec. Sambutan Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:02:40', '2021-03-29 22:02:40'),
(32, '600.21', 'Pembuatan Drainase Perum PKL Gg. Angsoka 4 RT.13 Kel. Sei Kapih Kec. Sambutan Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:06:40', '2021-03-29 22:06:40'),
(33, '600.22', 'Pembuatan Parit/Pembuatan Drainase Perum Puspita Bengkuring RT.26 Kel. Sempaja Utara Kec. Samarinda Utara Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:28:37', '2021-03-29 22:28:37'),
(34, '600.23', 'pengaspalan Jl. Kadrie Onening Perumahan Pandan Harum Indah Kel. Air Hitam Kec. Samarinda Ulu Rp 199.998.000', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:44:52', '2021-03-29 22:41:51'),
(35, '600.24', 'Peningkatan jl dan drainase Jl.PM Noor Perum bumi Sempaja Blok EC, EB, FA, FB, FF, FD Kel. Sempaja Selatan Kec. Samarinda Utara Rp 699.976.830', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:44:38', '2021-03-29 22:44:38'),
(36, '600.25', 'Peningkatan Jalan / Semenisasi Perum Artas Jl. Damanhuri Kel. Mugirejo Kec. Sungai Pinang Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:47:09', '2021-03-29 22:47:09'),
(37, '600.26', 'Peningkatan Jalan Puspita Bengkuring Rp 399.968.760', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:49:00', '2021-03-29 22:49:00'),
(38, '600.27', 'Saluran Drainase Perumahan Borneo Mukti Kel. Mugorejo Kec. sungai Pinang Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:52:18', '2021-03-29 22:52:18'),
(39, '600.28', 'Semenisasi dan Drainase Perum. PALMA (Palaran madani) RT.22 Kel. Simpang Pasir Kec. Palaran Rp 424.978.200', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:54:29', '2021-03-29 22:54:29'),
(40, '600.29', 'Semenisasi jalan Blok C Perum. PWI Kel. Air Hitam Kec. Samarinda Ulu Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:56:59', '2021-03-29 22:56:59'),
(41, '600.30', 'Semenisasi jalan, Perum. Keledang Mas Baru Blok BQ, RT 20, Kel. Sungai Keledang Kec. Samarinda Sebrang Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 22:58:43', '2021-03-29 22:58:43'),
(42, '600.31', 'Semenisasi jalan P. Suryanata, Komp. Graha indah Blok H, RT 53, Kel. Sungai Keledang Kec. Samarinda Sebrang Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 23:00:59', '2021-03-29 23:00:59'),
(43, '600.32', 'Semenisasi Jl. PM Noor Bumi Sempaja Blok FC RT 001, Kel. Sempaja Selatan Kec. Samarinda Utara Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 23:10:06', '2021-03-29 23:10:06'),
(44, '600.33', 'Semenisasi Jl. Pramuka Komplek PK Blok B , Kel. gunung Kelua Kec. Samarinda Ulu Rp 224.984.820', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 23:13:44', '2021-03-29 23:13:44'),
(45, '600.34', 'Semenisasi Jl. Pramuka Komplek PK RT 30, Kel. gunung Kelua Kec. Samarinda Ulu Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 23:17:32', '2021-03-29 23:17:32'),
(46, '600.35', 'Semenisasi Perum Puspita Bengkuring Baru Blok anggrek RT 25, Kel. Sempaja utara Kec. Samarinda Utara Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 23:19:52', '2021-03-29 23:19:52'),
(47, '600.36', 'Semenisasi Perum Puspita Blok AQ RT 25, Kel. Sempaja utara Kec. Samarinda Utara Rp 199.993.380', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 23:21:58', '2021-03-29 23:21:58'),
(48, '600.37', 'Pembangunan PSU rumah MBR Palaran Indah Resince Kel.  Handil Bakti Kec. Palaran Rp 150.000.000', 'Pak Zai PERUMAHAN', '2021-03-30', '2021-03-29 23:57:16', '2021-03-29 23:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengawasan`
--

CREATE TABLE `pengawasan` (
  `id_pengawasan` bigint(20) UNSIGNED NOT NULL,
  `kode_bidang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_urut` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_dpa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `ttd` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengawasan`
--

INSERT INTO `pengawasan` (`id_pengawasan`, `kode_bidang`, `no_urut`, `no_dpa`, `uraian`, `tanggal`, `ttd`, `created_at`, `updated_at`) VALUES
(2, 'abcedit', '601', 'abc', 'lorem ipsum dolor sit amet edit dfdsfdsfdsfsd', '2021-08-05', 'Tony Stark', '2021-04-16 22:31:21', '2021-04-17 22:05:16'),
(4, 'AKM', '601', 'RPC/ABC', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facere explicabo a\ndoloremque asperiores eius officia saepe minima nobis, corrupti non ab quibusdam\nconsequatur sint repellat repudiandae dolorum et odio esse.', '2021-04-20', 'Coki Pardede', '2021-04-17 22:01:10', '2021-04-17 22:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `perencanaan`
--

CREATE TABLE `perencanaan` (
  `id_perencanaan` int(10) UNSIGNED NOT NULL,
  `kode_bidang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_urut` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_dpa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `ttd` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perencanaan`
--

INSERT INTO `perencanaan` (`id_perencanaan`, `kode_bidang`, `no_urut`, `no_dpa`, `uraian`, `tanggal`, `ttd`, `created_at`, `updated_at`) VALUES
(4, 'abcperencanaan3', '600', 'abc123', 'Lorem ipsum dolor sit amet', '2021-10-10', 'Nova Dwi Sapta', '2021-04-16 22:42:32', '2021-04-16 22:42:32'),
(5, 'PRM', '603', 'PRC/AVC', 'Lorem ipsum dolor sit amet', '2021-04-18', 'Sarah Wijayanto', '2021-04-17 21:05:53', '2021-04-17 21:05:53'),
(6, 'PRM', '604', 'RPC/ABC', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facere explicabo a doloremque asperiores eius officia saepe minima nobis, corrupti non ab quibusdam consequatur sint repellat repudiandae dolorum et odio esse.', '2021-04-18', 'Tretan Muslim', '2021-04-17 21:11:52', '2021-04-17 21:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'dede', '5643ce7f978ccdc162c1394ff78e74cc71de6cf5d097c280ad5f647bfdd02dd1', '[\"*\"]', '2021-03-15 23:29:02', '2021-03-15 22:39:17', '2021-03-15 23:29:02'),
(2, 'App\\Models\\User', 1, 'dede', '26d349e2089d7dfd473490ee2b84641a5418e88b2589fffbbb9cfc2285d4297e', '[\"*\"]', NULL, '2021-03-17 06:34:36', '2021-03-17 06:34:36'),
(3, 'App\\Models\\User', 1, 'dede', '10f938b1125f4c7d0e7880e647528bd62009a095963bc65e0b26b0c7dbc174f5', '[\"*\"]', '2021-03-17 07:44:57', '2021-03-17 07:03:51', '2021-03-17 07:44:57'),
(4, 'App\\Models\\User', 1, 'dede', '64f7ad08f952b0d378cccb0928d0da8ed0e456f405c07fd551befac23c65c466', '[\"*\"]', '2021-03-17 09:11:02', '2021-03-17 08:07:58', '2021-03-17 09:11:02'),
(5, 'App\\Models\\User', 1, 'dede', '474d7060377a494048cdc1f6d5264c8ffcac7ea1595eb10755aa85c4bc2aea21', '[\"*\"]', '2021-03-18 08:48:30', '2021-03-18 07:22:35', '2021-03-18 08:48:30'),
(6, 'App\\Models\\User', 1, 'dede', 'f729fd0e4fa357dae07e984a763bf18ca44480f4efb0fa93606c02a61c31cf56', '[\"*\"]', '2021-03-18 11:29:28', '2021-03-18 11:24:37', '2021-03-18 11:29:28'),
(7, 'App\\Models\\User', 1, 'dede', 'e89e299bfa83fdc4c51874e97321aff4852b52e7298fe02b990feec6e5a19eb6', '[\"*\"]', '2021-03-18 18:49:52', '2021-03-18 18:49:50', '2021-03-18 18:49:52'),
(8, 'App\\Models\\User', 1, 'dede', '2828c81739948d95a498e5a47602dba82a11403f500e27ddffe8d879ecaf12ae', '[\"*\"]', '2021-03-29 19:33:52', '2021-03-29 19:32:27', '2021-03-29 19:33:52'),
(9, 'App\\Models\\User', 1, 'dede', '1e155fd91968203d8007f269102411daeaa1fadbd62182872f9e532b1c15e365', '[\"*\"]', '2021-03-29 23:24:29', '2021-03-29 19:37:03', '2021-03-29 23:24:29'),
(10, 'App\\Models\\User', 1, 'dede', '95d806009a4668a90f84f39db8ba15125be0f718b330d89eea3ec7d6e939d7ba', '[\"*\"]', '2021-03-30 00:15:38', '2021-03-29 20:10:59', '2021-03-30 00:15:38'),
(11, 'App\\Models\\User', 1, 'dede', '07b9c0bbed0eca0e99fee1e961d3983504a9d8001b6e4eee907498c31cd57d2c', '[\"*\"]', '2021-03-29 23:57:19', '2021-03-29 23:56:42', '2021-03-29 23:57:19'),
(12, 'App\\Models\\User', 1, 'dede', '967a65bcec8da81fe18160b0ae2131d6897c5d1674fd07860567926bd7d25ed1', '[\"*\"]', '2021-04-06 21:24:01', '2021-04-06 20:49:24', '2021-04-06 21:24:01'),
(13, 'App\\Models\\User', 1, 'dede', '0ad83bee618b045863ca91abcaddffec7b7c469a1ebfe01fc64538ac20a5c43b', '[\"*\"]', '2021-04-16 22:44:21', '2021-04-16 21:14:28', '2021-04-16 22:44:21'),
(14, 'App\\Models\\User', 1, 'dede', 'b88f1ef06cfbe40814fb8668632b1a942eac6e30518a75f4ec31c41c8c9d1047', '[\"*\"]', NULL, '2021-04-17 08:48:06', '2021-04-17 08:48:06'),
(15, 'App\\Models\\User', 1, 'dede', 'a7f2fbafd5dd1d2a4a1c0f03016734fdaa27ba754d6bcfda7b1987946ce776b1', '[\"*\"]', NULL, '2021-04-17 09:07:28', '2021-04-17 09:07:28'),
(16, 'App\\Models\\User', 1, 'dede', '6c930725d062b5ea0793cd6bdf0164f8d339b5ed8705e846537706f3eac95021', '[\"*\"]', NULL, '2021-04-17 09:08:08', '2021-04-17 09:08:08'),
(17, 'App\\Models\\User', 1, 'dede', '5f40e10c7fa83f2570b375f104c380d2976a32efb4c22f6e7a26484bc7e753f7', '[\"*\"]', NULL, '2021-04-17 09:12:59', '2021-04-17 09:12:59'),
(18, 'App\\Models\\User', 1, 'dede', 'a5b71784241b0d6e43301f0ec702c71ef0bfacdbe739c033b5e4254792259fdf', '[\"*\"]', NULL, '2021-04-17 09:15:20', '2021-04-17 09:15:20'),
(19, 'App\\Models\\User', 1, 'dede', 'a0868e5d6bef8a36bb5247cafd26698a823190b29c74e1f28dd363ebc9f42809', '[\"*\"]', NULL, '2021-04-17 09:16:41', '2021-04-17 09:16:41'),
(20, 'App\\Models\\User', 1, 'dede', '8cd9476f9215aed23b56b685a6714c1d932afaf0e3d7bc04498fa1f102762e63', '[\"*\"]', '2021-04-17 09:26:47', '2021-04-17 09:18:15', '2021-04-17 09:26:47'),
(21, 'App\\Models\\User', 1, 'dede', 'bdd6d968ce330a3771a57724195d96f0e95a4c3b684719a8779e2c643fd3e9d0', '[\"*\"]', NULL, '2021-04-17 09:31:33', '2021-04-17 09:31:33'),
(22, 'App\\Models\\User', 1, 'dede', '3df03ed73c4893bc52fd9bd1ec9fc1f25d26e965682de583a6130f2ab3225d36', '[\"*\"]', '2021-04-17 09:32:51', '2021-04-17 09:32:48', '2021-04-17 09:32:51'),
(23, 'App\\Models\\User', 1, 'dede', '762f2ba7d0bdddf0ee786832ca5f357ee51d6b7f4895d07535dd74c701eae23a', '[\"*\"]', '2021-04-17 09:34:04', '2021-04-17 09:34:01', '2021-04-17 09:34:04'),
(24, 'App\\Models\\User', 1, 'dede', '9d18997a96e3afe7eda5cd53d23cc258ce1821930b1a9a7bfa5be34185257c91', '[\"*\"]', '2021-04-17 22:52:28', '2021-04-17 20:35:28', '2021-04-17 22:52:28'),
(25, 'App\\Models\\User', 1, 'dede', '93a6bdd7d2f61192af5b777ee77b3017277d070dc27ba4eb5f48b9f2ec3cf0ee', '[\"*\"]', '2021-04-18 18:50:33', '2021-04-18 18:50:26', '2021-04-18 18:50:33'),
(26, 'App\\Models\\User', 1, 'dede', '2df0a1673711fefab69f58eeb8e55c26580504461062c150c1d9dea9449d7030', '[\"*\"]', '2021-04-19 04:31:18', '2021-04-19 04:31:12', '2021-04-19 04:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dede', 'dede', '$2y$10$lprtMoTu5oot7FnBWAKoQubzpIyXbkMuHJ0JeFNnDRY4k4VPpXh5.', NULL, '2021-03-15 22:32:14', '2021-03-15 22:32:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fisik`
--
ALTER TABLE `fisik`
  ADD PRIMARY KEY (`id_fisik`);

--
-- Indexes for table `kontrak`
--
ALTER TABLE `kontrak`
  ADD PRIMARY KEY (`id_kontrak`);

--
-- Indexes for table `pengawasan`
--
ALTER TABLE `pengawasan`
  ADD PRIMARY KEY (`id_pengawasan`);

--
-- Indexes for table `perencanaan`
--
ALTER TABLE `perencanaan`
  ADD PRIMARY KEY (`id_perencanaan`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fisik`
--
ALTER TABLE `fisik`
  MODIFY `id_fisik` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kontrak`
--
ALTER TABLE `kontrak`
  MODIFY `id_kontrak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pengawasan`
--
ALTER TABLE `pengawasan`
  MODIFY `id_pengawasan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perencanaan`
--
ALTER TABLE `perencanaan`
  MODIFY `id_perencanaan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
