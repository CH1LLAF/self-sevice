-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2024 at 02:31 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_catshop`
--
CREATE DATABASE IF NOT EXISTS `db_catshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_catshop`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `email`, `password`, `username`) VALUES
(1, 'radityadio2k5@gmail.com', '$2y$10$Q2VWwfy4gyeKIoK3AuQ6ze5NomFO/Xzb1N6tGFsd/2QqKi/RVtNxW', 'dio'),
(2, 'radityadio2k5@gmail.com', '$2y$10$vHBp9H/T3S14D6lRX2yrEOTHBK0YyWVGqXtXRsweM6KHiOLxc1XFu', 'dio'),
(8, 'radityadio2k5@gmail.com', '$2y$10$MDPysL8ZOrd6a36RwjWwz.BORRi0595BIXUsC6dWOWUN2VNOs8gLW', 'dio');

-- --------------------------------------------------------

--
-- Table structure for table `tb_categories`
--

CREATE TABLE `tb_categories` (
  `id` int NOT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `categories` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_categories`
--

INSERT INTO `tb_categories` (`id`, `photo`, `categories`, `price`, `description`) VALUES
(2, '674031e1443bc.jpg', 'luwak', 5000, 'prenjak alang-alang'),
(3, '6740348b3a9e5.png', 'anggora', 500, 'kuceng'),
(4, '674033c0541dd.jpg', 'macan', 250000, 'ROARRR');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaction`
--

CREATE TABLE `tb_transaction` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nomorhp` varchar(15) DEFAULT NULL,
  `alamat` text,
  `jenis` varchar(50) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_transaction`
--

INSERT INTO `tb_transaction` (`id`, `nama`, `nomorhp`, `alamat`, `jenis`, `harga`, `status`, `tanggal`) VALUES
(1, 'ilham', '09823713', 'jl.eltari 98/2\r\n', 'luwak', '5000', 'succes', '2024-11-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_categories`
--
ALTER TABLE `tb_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaction`
--
ALTER TABLE `tb_transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_categories`
--
ALTER TABLE `tb_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_transaction`
--
ALTER TABLE `tb_transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_elektronik`
--
CREATE DATABASE IF NOT EXISTS `db_elektronik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_elektronik`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `sku` char(15) NOT NULL,
  `kode_kategori` char(10) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `stok` int DEFAULT NULL,
  `harga` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`sku`, `kode_kategori`, `nama_barang`, `stok`, `harga`) VALUES
('B001', 'K002', 'Setrika Listrik', 20, 50000),
('B002', 'K002', 'Mesin Cuci', 20, 12000000),
('B003', 'K002', 'Tv LG Android', 20, 45000000),
('B004', 'K002', 'Samsung A30S', 20, 35000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `kode_kategori` char(15) NOT NULL,
  `nama_kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`kode_kategori`, `nama_kategori`) VALUES
('K001', 'Smart Phone'),
('K002', 'Alat Rumah Tangga'),
('K003', 'Elektronik Digital');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian`
--

CREATE TABLE `tb_pembelian` (
  `kode_beli` char(10) NOT NULL,
  `sku` char(10) DEFAULT NULL,
  `total_beli` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_pembelian`
--

INSERT INTO `tb_pembelian` (`kode_beli`, `sku`, `total_beli`) VALUES
('KD001', 'BOO1', 2),
('KD002', 'B003', 1),
('KD003', 'BOO4', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`sku`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  ADD PRIMARY KEY (`kode_beli`);
--
-- Database: `db_laravel_catshop`
--
CREATE DATABASE IF NOT EXISTS `db_laravel_catshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_laravel_catshop`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomorhp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `harga` bigint NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `db_soccer`
--
CREATE DATABASE IF NOT EXISTS `db_soccer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_soccer`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `price`, `photo`, `created_at`) VALUES
(2, 'bola', '50.00', 'specs.jpg', '2024-12-12 18:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'radityadio2k5@gmail.com', 'dio', '$2y$10$uFDLuwvi8MMnHEZqNl38qO8xs3LGEA..dUjWTHX.2g8RZ8c4uoHiW', '2024-12-12 16:24:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `db_soccer_line_laravel`
--
CREATE DATABASE IF NOT EXISTS `db_soccer_line_laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_soccer_line_laravel`;

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
(4, '2024_12_11_202609_database_soccerline', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_program` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `informasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama_program`, `kategori`, `informasi`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'bola', 'alat', 'sepak bola', '50.000', '2024-12-12 13:23:34', '2024-12-12 13:23:34'),
(2, 'sepatu', 'alat', 'pemakaian', '50.000', '2024-12-12 13:23:56', '2024-12-12 13:23:56');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `rumah_sakit`
--
CREATE DATABASE IF NOT EXISTS `rumah_sakit` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `rumah_sakit`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` char(20) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `spesialis_dokter` varchar(25) NOT NULL,
  `email_dokter` varchar(30) NOT NULL,
  `nomor_dokter` varchar(15) NOT NULL,
  `hari_kerja` varchar(40) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `spesialis_dokter`, `email_dokter`, `nomor_dokter`, `hari_kerja`, `jam_mulai`, `jam_selesai`) VALUES
('DK001', 'Radya', 'penyakit dalam', 'raradya@gmail.com', '0812344535', 'senin-kamis', '08:30:00', '17:00:00'),
('DK002', 'Nafeeza', 'anak', 'feezana@gmail.com', '08223465793', 'senin-jumat', '09:00:00', '17:30:00'),
('DK003', 'Asrul', 'saraf', 'jojo28@gmail.com', '08326575622', 'senin-rabu', '10:00:00', '17:30:00'),
('DK004', 'Suwandi', 'kandungan dan ginekologi', 'soewandi123@gmail.com', '0842344535', 'selasa-kamis', '10:00:00', '17:30:00'),
('DK005', 'Selia', 'bedah', 'seliarahma@gmail.com', '0852344535', 'selasa-kamis', '10:00:00', '17:30:00'),
('DK006', 'Prasetya', 'kulit dan kelamin', 'prasetia527@gmail.com', '0872344535', 'selasa-kamis', '10:00:00', '17:30:00'),
('DK007', 'Anggry', 'THT', 'anggrycans12@gmail.com', '0855344535', 'senin-jumat', '09:00:00', '17:30:00'),
('DK008', 'Rosmalia', 'mata', 'triarosma@gmail.com', '0865344535', 'selasa-rabu', '10:00:00', '17:00:00'),
('DK009', 'Mulan', 'Psikiater', 'incesmulan@gmail.com', '0895344535', 'rabu-jumat', '09:00:00', '17:00:00'),
('DK010', 'Arthur', 'Dokter gigi', 'playmaker27@gmail.com', '0825444535', 'senin-jumat', '09:00:00', '17:30:00'),
('DK011', 'Zeta', 'Dokter gigi', 'secretagent@gmail.com', '0845444535', 'selasa-jumat', '09:00:00', '17:30:00'),
('DK012', 'Iofi', 'THT', 'iofiria@gmail.com', '0832444535', 'rabu-jumat', '09:00:00', '17:30:00'),
('DK013', 'Ellent', 'kulit dan kelamin', 'ellent@gmail.com', '0878444535', 'selasa-jumat', '09:00:00', '17:30:00'),
('DK014', 'IU', 'Psikiater', 'IU32@gmail.com', '0890444535', 'senin-jumat', '09:00:00', '17:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_janjitemu`
--

CREATE TABLE `tb_janjitemu` (
  `id_temu` char(20) NOT NULL,
  `id_pasien` varchar(20) NOT NULL,
  `id_dokter` varchar(20) NOT NULL,
  `tgl_temu` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_janjitemu`
--

INSERT INTO `tb_janjitemu` (`id_temu`, `id_pasien`, `id_dokter`, `tgl_temu`, `status`) VALUES
('JT001', 'PS001', 'DK004', '2024-02-02', 'Dikonfirmasi'),
('JT002', 'PS003', 'DK006', '2024-02-04', 'Tertunda'),
('JT003', 'PS001', 'DK010', '2024-03-03', 'Dikonfirmasi'),
('JT004', 'PS002', 'DK009', '2024-03-11', 'Dikonfirmasi'),
('JT005', 'PS002', 'DK010', '2024-04-08', 'Dikonfirmasi'),
('JT006', 'PS003', 'DK008', '2024-04-12', 'Dikonfirmasi'),
('JT007', 'PS004', 'DK006', '2024-05-02', 'Dikonfirmasi'),
('JT008', 'PS005', 'DK008', '2024-06-10', 'Tertunda'),
('JT009', 'PS010', 'DK007', '2024-06-11', 'Dikonfirmasi'),
('JT010', 'PS015', 'DK002', '2024-06-15', 'Tertunda'),
('JT011', 'PS016', 'DK004', '2024-07-21', 'Dikonfirmasi'),
('JT012', 'PS008', 'DK001', '2024-08-06', 'Tertunda'),
('JT013', 'PS017', 'DK005', '2024-08-16', 'Tertunda'),
('JT014', 'PS011', 'DK006', '2024-09-04', 'Dikonfirmasi'),
('JT015', 'PS0023', 'DK005', '2024-10-02', 'Tertunda'),
('JT016', 'PS0020', 'DK009', '2024-12-02', 'Dikonfirmasi'),
('JT017', 'PS026', 'DK007', '2024-12-06', 'Dikonfirmasi'),
('JT018', 'PS027', 'DK006', '2024-12-04', 'Tertunda');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` char(20) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jenis_obat` varchar(50) NOT NULL,
  `kegunaan_obat` varchar(200) NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `jenis_obat`, `kegunaan_obat`, `harga`) VALUES
('OB001', 'Parasetamol', 'Obat Bebas', 'Digunakan untuk meredakan nyeri dan menurunkan demam', 100000),
('OB002', 'Amoxicillin', 'Antibiotik', 'Digunakan untuk mengobati infeksi bakteri', 60000),
('OB003', 'Ibuprofen', 'Obat kandungan', 'Digunakan untuk meredakan nyeri dan mengurangi pendarahan kandungan', 600000),
('OB004', 'Cetirizine', 'Antihistamin', 'Digunakan untuk mengatasi alergi dan gejala pilek', 50000),
('OB005', 'Metformin', 'Antidiabetik', 'Digunakan untuk mengontrol gula darah pada penderita diabetes', 145000),
('OB006', 'Lansoprazole', 'Antasida', 'Digunakan untuk mengurangi produksi asam lambung', 176000),
('OB007', 'Simvastatin', 'Statina', 'Digunakan untuk menurunkan kadar kolesterol', 40000),
('OB011', 'Diazepam', 'Benzodiazepin', 'Digunakan untuk mengatasi kecemasan dan gangguan tidur', 78000),
('OB012', 'Ciprofloxacin', 'Antibiotik', 'Digunakan untuk mengobati infeksi bakteri', 100000),
('OB013', 'Metoclopramide', 'Antiemetik', 'Digunakan untuk mengatasi mual dan muntah', 120000),
('OB014', 'Amlodipine', 'Antagonis Kalsium', 'Digunakan untuk mengatasi tekanan darah tinggi', 130000),
('OB015', 'Aspirin', 'Obat Bebas', 'Digunakan untuk meredakan nyeri dan mengurangi peradangan', 140000),
('OB016', 'klomifen', 'Statina', 'Digunakan untuk memperbaiki siklus menstruasi', 100000),
('OB017', 'Metoprolol', 'Beta Blocker', 'Digunakan untuk mengatasi tekanan darah tinggi dan gangguan jantung', 90000),
('OB018', 'Levothyroxine', 'Hormon Tiroid', 'Digunakan untuk menggantikan hormon tiroid yang kurang', 76000),
('OB019', 'Fluoxetine', 'Antidepresan', 'Digunakan untuk mengatasi depresi dan gangguan kecemasan', 300000),
('OB026', 'Cefixime', 'Antibiotik', 'Digunakan untuk mengobati infeksi bakteri', 150000),
('OB031', 'Dexamethasone', 'Kortikosteroid', 'Digunakan untuk mengurangi peradangan dan mengatasi alergi', 200000),
('OB032', 'Xanax', 'ACE Inhibitor', 'Digunakan untuk mengatasi tinnitus parah dan masalah lain', 70000),
('OB033', 'artificial tears', 'ACE Inhibitor', 'Digunakan untuk meredakan sakit mata', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` char(20) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat_pasien` varchar(100) NOT NULL,
  `email_pasien` varchar(50) DEFAULT NULL,
  `nomor_pasien` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `alamat_pasien`, `email_pasien`, `nomor_pasien`) VALUES
('PS001', 'Nazeera', 'P', 'Jl. Anggrek No. 23', 'zeerana@gmail.com', '08123454322'),
('PS0018', 'Juju', 'P', 'Cluster Flamboyan Residence, No. 8C', 'juju@gmail.com', '083210111121'),
('PS002', 'Galih', 'L', 'Perumahan Melati Indah Blok C2 No. 17', 'gallz@gmail.com', '081234567890'),
('PS0020', 'Raisya', 'P', 'Jl. Mawar Sari II, No. 64', 'syaa@gmail.com', '083431313141'),
('PS0021', 'Justina', 'P', 'Komplek Bougenville Regency, Blok H2/18', 'justina@gmail.com', '083541414151'),
('PS0022', 'Aetherna', 'P', 'Jl. Cendana Asri, No. 47', 'aetherna@gmail.com', '083651515161'),
('PS0023', 'Agnes', 'P', 'Cluster Anggrek Putih, RT 14/10', 'agnes@gmail.com', '083981818191'),
('PS0024', 'Justin', 'L', 'Griya Puri Indah, Blok D6/25', 'justin@gmail.com', '084191919111'),
('PS0025', 'Windah', 'L', 'Jl. Melati Damai, No. 31', 'windah@gmail.com', '084210111121'),
('PS003', 'Kaemi', 'L', 'Komplek Dahlia Permai, RT 05/08', 'kaemi@gmail.com', '081345678910'),
('PS004', 'Ilya', 'L', 'Jl. Mawar Sari III No. 42A', 'rafiatutali@gmail.com', '081456789101'),
('PS005', 'Exccurate', 'L', 'Cluster Sakura Residence, Blok 10', 'triyananda@gmail.com', '081567891011'),
('PS006', 'Prod', 'L', 'Griya Flamboyan, Jl. Flamboyan Raya No. 7', 'prodcm@gmail.com', '081678910121'),
('PS007', 'Panca', 'L', 'Green Valley Residence, Cluster 15A', 'panca5@gmail.com', '081789101213'),
('PS008', 'Zekken', 'L', 'Jl. Kenanga Asri II, No. 29', 'pursepur@gmail.com', '081891012131'),
('PS009', 'Sinatraa', 'L', 'Komplek Bougenville, RT 12/04', 'sinatraa@gmail.com', '081910121314'),
('PS010', 'Tenz', 'L', 'Cluster Dahlia Hijau, No. 56B', 'arsengtg27@gmail.com', '082101213141'),
('PS011', 'Lee', 'L', 'Cluster Cempaka Residence, No. 12B', 'hanseoklee@gmail.com', '082212131415'),
('PS012', 'Jonaa', 'P', 'Jl. Cempaka Putih Selatan 8A', 'jonaa@gmail.com', '082321314151'),
('PS013', 'Medika', 'L', 'Perumahan Puri Alam Cendana Blok F3/12', 'medikaelzafa@gmail.com', '082431415151'),
('PS014', 'Speed', 'L', 'Jl. Melati Indah Barat, No. 33', 'speed@gmail.com', '082541515161'),
('PS015', 'Sakura', 'P', 'Cluster Teratai Permai, Blok B5/21', 'sakura@gmail.com', '082651516161'),
('PS016', 'Sandy', 'L', 'Graha Puspa Asri, Jl. Bunga Matahari No. 14', 'sandy@gmail.com', '082761616171'),
('PS017', 'Rio', 'L', 'Jl. Seroja Raya, RT 09/02', 'rio@gmail.com', '082871717181'),
('PS019', 'Mike', 'L', 'Taman Kenanga Indah, Blok 7/15', 'mike@gmail.com', '083321212131'),
('PS026', 'Rizad', 'L', 'Perumahan Puspa Cempaka, Blok 20', 'rizad@gmail.com', '089431238432'),
('PS027', 'Erina', 'P', 'Taman Sari Indah, Blok F8/22', 'erinana@gmail.com', '085312112233');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` char(20) NOT NULL,
  `id_medis` varchar(20) NOT NULL,
  `id_pasien` varchar(20) NOT NULL,
  `diagnosa_penyakit` varchar(50) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `harga_obat` int NOT NULL,
  `jumlah_obat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `id_medis`, `id_pasien`, `diagnosa_penyakit`, `nama_obat`, `tgl_pembayaran`, `harga_obat`, `jumlah_obat`) VALUES
('PB001', 'RM001', 'PS001', 'kandungan berdarah', 'Ibuprofen', '2024-02-02', 600000, 2),
('PB002', 'RM002', 'PS001', 'gigi berlubang', 'Cefixime', '2024-03-03', 150000, 1),
('PB003', 'RM003', 'PS002', 'depresi', 'Fluoxetine', '2024-03-11', 300000, 1),
('PB004', 'RM004', 'PS002', 'gigi berlubang', 'Cefixime', '2024-04-08', 150000, 2),
('PB005', 'RM005', 'PS003', 'mata lelah', 'artificial tears', '2024-04-12', 80000, 3),
('PB006', 'RM006', 'PS004', 'infeksi pada miss V', 'Cefixime', '2024-05-02', 200000, 1),
('PB007', 'RM007', 'PS010', 'Tinnitus', 'Xanax', '2024-06-11', 400000, 1),
('PB008', 'RM008', 'PS016', 'Perubahan Siklus Menstruasi', 'klomifen', '2024-07-21', 100000, 6),
('PB009', 'RM009', 'PS011', 'Reaksi alergi', 'Dexamethasone', '2024-09-04', 200000, 3),
('PB010', 'RM010', 'PS0020', 'depresi ringan', 'Diazepam', '2024-12-02', 78000, 5),
('PB011', 'RM011', 'PS026', 'penyakit asam lambung', 'Lansoprazole', '2024-12-06', 176000, 4),
('PB012', 'RM010', 'PS026', 'penyakit asam lambung', 'lansoprazole', '2024-12-03', 176000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekammedis`
--

CREATE TABLE `tb_rekammedis` (
  `id_medis` char(20) NOT NULL,
  `id_temu` varchar(20) NOT NULL,
  `id_pasien` varchar(20) NOT NULL,
  `id_obat` varchar(20) NOT NULL,
  `keluhan_pasien` text NOT NULL,
  `diagnosa_penyakit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_rekammedis`
--

INSERT INTO `tb_rekammedis` (`id_medis`, `id_temu`, `id_pasien`, `id_obat`, `keluhan_pasien`, `diagnosa_penyakit`) VALUES
('RM001', 'JT001', 'PS001', 'OB003', 'saya tiap malam sering merasa sakit pada perut', 'kandungan berdarah'),
('RM002', 'JT003', 'PS001', 'OB026', 'saya sering makan makanan manis dok dan gigi saya berlubang', 'gigi berlubang'),
('RM003', 'JT004', 'PS002', 'OB019', 'saya sering overthinking karena saya habis diputusin pacar saya', 'depresi'),
('RM004', 'JT005', 'PS002', 'OB026', 'saya jatuh dari sepeda dok dan gigi saya copot dan saya biarkan', 'gigi berlubang'),
('RM005', 'JT006', 'PS003', 'OB033', 'Saya suka membaca buku dok, sehari hari saya habiskan untuk membaca ketika lagi istirahat dan mengisi waktu kosong. mata saya sebelah kanan nampak lelah, karena saya juga pusing dok, ini gak sering cuma di waktu2 tertentu saja. obatinya pake apa dok?', 'mata lelah'),
('RM006', 'JT007', 'PS004', 'OB026', 'saya sering merasa gatal pada bagian miss V saya dok apa ya solusinya?', 'infeksi pada miss V'),
('RM007', 'JT009', 'PS010', 'OB032', 'saya sering merasakan dengungan pada telinga saya dok,apa ya solusinya?', 'Tinnitus'),
('RM008', 'JT011', 'PS016', 'OB016', 'saya melakukan penurunan berat badan ekstrim dan mengalami susah menstruasi', 'Perubahan Siklus Menstruasi'),
('RM009', 'JT014', 'PS011', 'OB031', 'saya sering merasa gatal2 pada bagian leher depan hingga dada yang bentuknya bruntusan-bruntusan putih', 'Reaksi alergi'),
('RM010', 'JT016', 'PS0020', 'OB011', 'dok Bbrp minggu belakangan ini anak perempuan sy sering merasa sedih menangis bingung sulit Timur dan sakit kepalanya', 'depresi ringan'),
('RM011', 'JT017', 'PS026', 'OB006', 'dok sudah 1 bulan ia mengalami suara serak dan suaranya sering terdengar lirih kecil padahal tidak sedang batuk', 'penyakit asam lambung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tb_janjitemu`
--
ALTER TABLE `tb_janjitemu`
  ADD PRIMARY KEY (`id_temu`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD PRIMARY KEY (`id_medis`);
--
-- Database: `tabel`
--
CREATE DATABASE IF NOT EXISTS `tabel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `tabel`;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `NIM` varchar(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `MK` varchar(50) NOT NULL,
  `Nilai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`NIM`,`Nama`,`MK`);
--
-- Database: `tb_mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `tb_mahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `tb_mahasiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_mhs` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_mhs`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_mhs` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
