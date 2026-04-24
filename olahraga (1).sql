-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 20, 2026 at 02:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olahraga`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `ip`, `meta`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mengubah data user: Administrator', '127.0.0.1', NULL, '2026-04-16 03:42:19', '2026-04-16 03:42:19'),
(2, 1, 'Mengubah data user: Petugas Penyetujuan', '127.0.0.1', NULL, '2026-04-16 03:50:32', '2026-04-16 03:50:32'),
(3, 1, 'Membuat alat baru: assets', '127.0.0.1', NULL, '2026-04-16 04:10:29', '2026-04-16 04:10:29'),
(4, 1, 'Mengubah status peminjaman ID 1 menjadi approved', '127.0.0.1', NULL, '2026-04-16 04:12:49', '2026-04-16 04:12:49'),
(5, 1, 'Mengubah data user: Petugas Penyetujuan', '127.0.0.1', NULL, '2026-04-16 04:14:59', '2026-04-16 04:14:59'),
(6, 2, 'Mencatat pengembalian alat dari Anggota Peminjam', '127.0.0.1', NULL, '2026-04-16 04:15:17', '2026-04-16 04:15:17'),
(7, 2, 'Menyetujui peminjaman dari Anggota Peminjam', '127.0.0.1', NULL, '2026-04-16 04:21:40', '2026-04-16 04:21:40'),
(8, 2, 'Mencatat pengembalian alat dari Anggota Peminjam dengan total denda Rp 18.000', '127.0.0.1', NULL, '2026-04-16 05:05:50', '2026-04-16 05:05:50'),
(9, 2, 'Menandai denda peminjaman 2 milik Anggota Peminjam sebagai lunas', '127.0.0.1', NULL, '2026-04-16 05:05:59', '2026-04-16 05:05:59'),
(10, 2, 'Menyetujui peminjaman dari Anggota Peminjam', '127.0.0.1', NULL, '2026-04-16 05:12:48', '2026-04-16 05:12:48'),
(11, 2, 'Mencatat pengembalian alat dari Anggota Peminjam dengan total denda Rp 5.000', '127.0.0.1', NULL, '2026-04-16 05:13:14', '2026-04-16 05:13:14'),
(12, 2, 'Menandai denda peminjaman 3 milik Anggota Peminjam sebagai lunas', '127.0.0.1', NULL, '2026-04-16 05:13:23', '2026-04-16 05:13:23'),
(13, 2, 'Menyetujui peminjaman dari Anggota Peminjam', '127.0.0.1', NULL, '2026-04-16 05:17:00', '2026-04-16 05:17:00'),
(14, 2, 'Mencatat pengembalian alat dari Anggota Peminjam dengan total denda Rp 0', '127.0.0.1', NULL, '2026-04-16 05:20:41', '2026-04-16 05:20:41'),
(15, 1, 'Mengubah data alat: assets', '127.0.0.1', NULL, '2026-04-16 05:22:19', '2026-04-16 05:22:19'),
(16, 2, 'Menyetujui peminjaman dari Anggota Peminjam', '127.0.0.1', NULL, '2026-04-16 19:06:42', '2026-04-16 19:06:42'),
(17, 2, 'Mencatat pengembalian alat dari Anggota Peminjam dengan total denda Rp 0', '127.0.0.1', NULL, '2026-04-16 19:10:33', '2026-04-16 19:10:33'),
(18, 2, 'Menyetujui peminjaman dari ujang kedu', '127.0.0.1', NULL, '2026-04-19 10:49:26', '2026-04-19 10:49:26'),
(19, 2, 'Mencatat pengembalian alat dari ujang kedu dengan total denda Rp 7.000', '127.0.0.1', NULL, '2026-04-19 10:49:48', '2026-04-19 10:49:48'),
(20, 2, 'Memverifikasi pembayaran transfer denda peminjaman 6 milik ujang kedu', '127.0.0.1', NULL, '2026-04-19 10:50:54', '2026-04-19 10:50:54'),
(21, 1, 'Mengubah data alat: assets', '127.0.0.1', NULL, '2026-04-19 10:54:02', '2026-04-19 10:54:02'),
(22, 2, 'Menyetujui peminjaman dari ujang kedu', '127.0.0.1', NULL, '2026-04-19 10:55:25', '2026-04-19 10:55:25'),
(23, 2, 'Mencatat pengembalian alat dari ujang kedu dengan total denda Rp 5.000', '127.0.0.1', NULL, '2026-04-19 10:55:42', '2026-04-19 10:55:42'),
(24, 2, 'Menandai denda peminjaman 7 milik ujang kedu sebagai lunas', '127.0.0.1', NULL, '2026-04-19 10:57:05', '2026-04-19 10:57:05'),
(25, 2, 'Menyetujui peminjaman dari ujang kedu', '127.0.0.1', NULL, '2026-04-19 10:57:33', '2026-04-19 10:57:33'),
(26, 2, 'Mencatat pengembalian alat dari ujang kedu dengan total denda Rp 40.000', '127.0.0.1', NULL, '2026-04-19 10:57:52', '2026-04-19 10:57:52'),
(27, 2, 'Menandai denda peminjaman 8 milik ujang kedu sebagai lunas', '127.0.0.1', NULL, '2026-04-19 10:58:39', '2026-04-19 10:58:39'),
(28, 2, 'Menyetujui peminjaman dari ujang kedu', '127.0.0.1', NULL, '2026-04-19 10:58:48', '2026-04-19 10:58:48'),
(29, 2, 'Mencatat pengembalian alat dari ujang kedu dengan total denda Rp 45.000', '127.0.0.1', NULL, '2026-04-19 10:59:07', '2026-04-19 10:59:07'),
(30, 2, 'Menyetujui peminjaman dari ujang kedu', '127.0.0.1', NULL, '2026-04-19 11:03:50', '2026-04-19 11:03:50'),
(31, 2, 'Mencatat pengembalian alat dari ujang kedu dengan total denda Rp 77.000', '127.0.0.1', NULL, '2026-04-19 11:04:18', '2026-04-19 11:04:18'),
(32, 2, 'Memverifikasi pembayaran transfer denda peminjaman 10 milik ujang kedu', '127.0.0.1', NULL, '2026-04-19 11:04:58', '2026-04-19 11:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `borrowings`
--

CREATE TABLE `borrowings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `equipment_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `actual_return_date` date DEFAULT NULL,
  `status` enum('pending','approved','rejected','returned') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `note` text COLLATE utf8mb4_unicode_ci,
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `returned_at` timestamp NULL DEFAULT NULL,
  `return_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `late_days` int UNSIGNED NOT NULL DEFAULT '0',
  `daily_late_fee` bigint UNSIGNED NOT NULL DEFAULT '5000',
  `late_fine` bigint UNSIGNED NOT NULL DEFAULT '0',
  `damage_fine` bigint UNSIGNED NOT NULL DEFAULT '0',
  `total_fine` bigint UNSIGNED NOT NULL DEFAULT '0',
  `fine_status` enum('belum_lunas','lunas') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lunas',
  `fine_paid_at` timestamp NULL DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_amount` bigint UNSIGNED DEFAULT NULL,
  `payment_proof_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_submitted_at` timestamp NULL DEFAULT NULL,
  `payment_verification_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_verified_by` bigint UNSIGNED DEFAULT NULL,
  `payment_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrowings`
--

INSERT INTO `borrowings` (`id`, `user_id`, `equipment_id`, `qty`, `start_date`, `end_date`, `actual_return_date`, `status`, `note`, `approved_by`, `returned_at`, `return_condition`, `return_note`, `late_days`, `daily_late_fee`, `late_fine`, `damage_fine`, `total_fine`, `fine_status`, `fine_paid_at`, `payment_method`, `payment_amount`, `payment_proof_path`, `payment_submitted_at`, `payment_verification_status`, `payment_verified_by`, `payment_verified_at`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, '2026-04-16', '2026-04-17', NULL, 'returned', NULL, 1, '2026-04-16 04:15:17', NULL, NULL, 0, 5000, 0, 0, 0, 'lunas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-16 04:12:15', '2026-04-16 04:15:17'),
(2, 5, 1, 1, '2026-04-16', '2026-04-18', '2026-04-21', 'returned', NULL, 2, '2026-04-21 05:05:50', 'rusak_ringan', NULL, 3, 5000, 15000, 3000, 18000, 'lunas', '2026-04-16 05:05:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-16 04:21:17', '2026-04-16 05:05:59'),
(3, 5, 1, 1, '2026-04-16', '2026-04-17', '2026-04-18', 'returned', NULL, 2, '2026-04-18 05:13:14', 'baik', NULL, 1, 5000, 5000, 0, 5000, 'lunas', '2026-04-16 05:13:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-16 05:12:43', '2026-04-16 05:13:23'),
(4, 5, 1, 1, '2026-04-16', '2026-04-18', '2026-04-16', 'returned', NULL, 2, '2026-04-16 05:20:41', 'baik', NULL, 0, 5000, 0, 0, 0, 'lunas', '2026-04-16 05:20:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-16 05:16:52', '2026-04-16 05:20:41'),
(5, 5, 1, 1, '2026-04-17', '2026-04-18', '2026-04-17', 'returned', NULL, 2, '2026-04-16 19:10:33', 'baik', NULL, 0, 5000, 0, 0, 0, 'lunas', '2026-04-16 19:10:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-16 19:06:35', '2026-04-16 19:10:33'),
(6, 6, 1, 1, '2026-04-20', '2026-04-21', '2026-04-22', 'returned', NULL, 2, '2026-04-22 10:49:47', 'rusak_ringan', NULL, 1, 5000, 5000, 2000, 7000, 'lunas', '2026-04-19 10:50:54', 'transfer', 7000, 'fine-proofs/ts18n0EPFCZ2cqauChKJhvCSHgbI01oGSzPG4PlF.jpg', '2026-04-19 10:50:13', 'verified', 2, '2026-04-19 10:50:54', '2026-04-19 10:49:18', '2026-04-19 10:50:54'),
(7, 6, 1, 1, '2026-04-20', '2026-04-21', '2026-04-22', 'returned', NULL, 2, '2026-04-22 10:55:42', 'baik', NULL, 1, 5000, 5000, 0, 5000, 'lunas', '2026-04-19 10:57:05', 'cash', 5000, NULL, '2026-04-19 10:57:05', 'verified', 2, '2026-04-19 10:57:05', '2026-04-19 10:55:16', '2026-04-19 10:57:05'),
(8, 6, 1, 1, '2026-04-21', '2026-04-22', '2026-04-19', 'returned', NULL, 2, '2026-04-19 10:57:51', 'rusak_ringan', NULL, 0, 5000, 0, 40000, 40000, 'lunas', '2026-04-19 10:58:39', 'cash', 40000, NULL, '2026-04-19 10:58:39', 'verified', 2, '2026-04-19 10:58:39', '2026-04-19 10:57:28', '2026-04-19 10:58:39'),
(9, 6, 1, 1, '2026-04-20', '2026-04-21', '2026-04-24', 'returned', NULL, 2, '2026-04-24 10:59:07', 'rusak_berat', NULL, 3, 5000, 15000, 30000, 45000, 'lunas', '2026-04-19 11:00:53', 'cash', 45000, NULL, '2026-04-19 11:00:53', 'verified', NULL, '2026-04-19 11:00:53', '2026-04-19 10:58:29', '2026-04-19 11:00:53'),
(10, 6, 1, 1, '2026-04-20', '2026-04-21', '2026-04-23', 'returned', NULL, 2, '2026-04-23 11:04:18', 'rusak_berat', NULL, 2, 5000, 10000, 67000, 77000, 'lunas', '2026-04-19 11:04:58', 'transfer', 77000, 'fine-proofs/XeFWJ1yXIOgsjyvnah8hQQXCQ54vdmpeelTxN7A2.png', '2026-04-19 11:04:38', 'verified', 2, '2026-04-19 11:04:58', '2026-04-19 11:03:45', '2026-04-19 11:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Lapangan Olahraga', NULL, '2026-04-16 03:34:34', '2026-04-16 03:34:34'),
(2, 'Peralatan Gym', NULL, '2026-04-16 03:34:34', '2026-04-16 03:34:34'),
(3, 'Peralatan Olahraga', NULL, '2026-04-16 03:34:34', '2026-04-16 03:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_total` int NOT NULL DEFAULT '0',
  `qty_available` int NOT NULL DEFAULT '0',
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `category_id`, `name`, `code`, `qty_total`, `qty_available`, `condition`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'assets', 'philips-003', 2, 2, 'baik', NULL, 'equipment-images/puHONiJqHx8yKeTcmgJCol9Oqhcd4nzxI6hUSfgV.png', '2026-04-16 04:10:29', '2026-04-19 11:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_15_000000_add_profile_photo_and_address_to_users_table', 1),
(5, '2026_02_06_000001_create_roles_table', 1),
(6, '2026_02_06_000002_create_role_user_table', 1),
(7, '2026_02_06_000003_create_categories_table', 1),
(8, '2026_02_06_000004_create_equipments_table', 1),
(9, '2026_02_06_000005_create_borrowings_table', 1),
(10, '2026_02_06_000006_create_activity_logs_table', 1),
(11, '2026_04_16_000007_add_fines_to_borrowings_table', 2),
(12, '2026_04_20_000008_add_payment_fields_to_borrowings_table', 3),
(13, '2026_04_20_000009_add_image_to_equipments_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2026-04-16 03:31:22', '2026-04-16 03:31:22'),
(2, 'petugas', 'Petugas', '2026-04-16 03:31:22', '2026-04-16 03:31:22'),
(3, 'peminjam', 'Peminjam', '2026-04-16 03:31:22', '2026-04-16 03:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 3, 5, NULL, NULL),
(5, 3, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('kPplLw29i5z11iCDs7vUrKIIVBr5Pasa89KVkhlA', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQUhucnBQMGpmUW1OMTVOVGdZQnVQM2l1Q3NuSDZmZDQxanpQbUxTeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZW1pbmphbS9ib3Jyb3dpbmcvMSI7czo1OiJyb3V0ZSI7czoyNToicGVtaW5qYW0uYm9ycm93aW5nLmNyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7fQ==', 1776653601),
('ucH65WqDTHgo76IZYpcQNONKwi5MprRnxHJySV2c', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV3ZxRWluV0NvY1ZVVGhjZTVlSGNJRlJMRTNZaWNpUTlmMHVRUmlZayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9lcXVpcG1lbnRzIjtzOjU6InJvdXRlIjtzOjIyOiJhZG1pbi5lcXVpcG1lbnRzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1776653641);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `profile_photo`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@example.com', NULL, '$2y$12$/7YjGFaywK/mpaFgz1oRYelqgotzlCvYoOC/.lR2t1VX26FzRRNi2', '081234567890', 'profile-photos/zJKZPqF3e2EHd0XwZaqkXCmfek4FJwj9EqGiSfr8.png', 'Ciomas Pintu Ledeng Gang Sukamulya 1 No 10 RT02/RW03, 16610', NULL, '2026-04-16 03:31:23', '2026-04-16 03:42:19'),
(2, 'Petugas Penyetujuan', 'petugas@example.com', NULL, '$2y$12$u/3pI6EjimUkekyjHBlGYuT5..a4zXuzVpq/20WXmJ5KHt.21LAJW', '081234567891', 'profile-photos/zAwOEWkNNkLsHDQyi4NrqnZLAsgtnfJFxeEdrQy0.jpg', NULL, NULL, '2026-04-16 03:31:24', '2026-04-16 04:14:59'),
(3, 'Anggota Peminjam', 'revandra@example.com', NULL, '$2y$12$aXyjx3CWJi1OEm3GzbYk7umMc5hPYmQkMmYnjuJMN4lX7Bmz7xQlK', '081234567892', NULL, NULL, NULL, '2026-04-16 03:31:25', '2026-04-16 03:31:25'),
(5, 'Anggota Peminjam', 'peminjam@example.com', NULL, '$2y$12$Mn3iat37Oxpc4ekVo1eaNOQvJQeBF.zq5jfb/DwDyScTuXNEOKiWC', '081234567892', NULL, NULL, NULL, '2026-04-16 03:33:26', '2026-04-16 03:33:26'),
(6, 'ujang kedu', 'ujang@gmail.com', NULL, '$2y$12$ZS.w97CeSugbmWyzcTEsM.06BxvVBZ5uUxIB0QofESe8LLG0Qt4RC', '08328794726422', NULL, 'MWHEHEHEHEHEHEHHEHE', NULL, '2026-04-19 10:47:53', '2026-04-19 10:47:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowings_user_id_foreign` (`user_id`),
  ADD KEY `borrowings_equipment_id_foreign` (`equipment_id`),
  ADD KEY `borrowings_approved_by_foreign` (`approved_by`),
  ADD KEY `borrowings_payment_verified_by_foreign` (`payment_verified_by`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipments_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD CONSTRAINT `borrowings_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `borrowings_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `borrowings_payment_verified_by_foreign` FOREIGN KEY (`payment_verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `borrowings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `equipments`
--
ALTER TABLE `equipments`
  ADD CONSTRAINT `equipments_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
