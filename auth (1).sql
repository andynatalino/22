-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 20 Feb 2018 pada 15.35
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_jual` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `kode_barang`, `gambar`, `nama_barang`, `satuan`, `qty`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(3, 'SDK - 00123', '487190.jpg', 'Kemeja', 'Lusin', '123', '232000', '233000', '2017-08-26 19:21:33', '2017-08-26 19:24:06'),
(4, 'KAS - 0123', 'bbgfix.png', 'Celana', 'Lusin', '123', '20000', '25000', '2017-09-05 04:18:22', '2017-09-05 04:18:22'),
(5, 'KAS - 1222', 'ericsson.png', 'Baju', 'Lusin', '23', '40000', '50000', '2017-09-05 04:52:17', '2017-09-05 04:52:17'),
(6, 'KAD - 2193', 'cancel.png', 'Topi', 'Lusin', '82', '12000', '15000', '2017-09-05 04:53:03', '2017-09-05 04:53:03'),
(7, 'kasdk', 'user.png', 'Helm', 'Lusin', '20', '20000', '35000', '2017-12-18 04:43:30', '2017-12-18 04:43:30'),
(8, 'kasd', 'azz.jpg', 'SAPU', 'BUAH', '10', '5000', '8000', '2017-12-18 19:47:54', '2017-12-18 19:47:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuks`
--

CREATE TABLE `barang_masuks` (
  `no_trans` int(10) UNSIGNED NOT NULL,
  `no_fak` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_trans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang_masuks`
--

INSERT INTO `barang_masuks` (`no_trans`, `no_fak`, `tgl_trans`, `supplier`, `nama_barang`, `jumlah`, `satuan`, `total_harga`, `created_at`, `updated_at`) VALUES
(2, '13123', '21 Agustus, 2017', 'mahs', 'Baju', '23', 'Lusin', '1150000', '2017-08-21 08:13:50', '2017-08-21 08:13:50'),
(3, '1231', '21 Agustus, 2017', 'MEN', 'Kemeja', '5', 'Lusin', '500000', '2017-08-21 08:23:08', '2017-08-21 08:23:08'),
(4, '020', '5 Desember, 2017', 'kibo', 'Helm', '3', 'Lusin', '60000', '2017-12-18 04:44:13', '2017-12-18 04:44:13'),
(5, '21', '19 Desember, 2017', 'ASD', 'SAPU', '5', 'BUAH', '25000', '2017-12-18 19:49:10', '2017-12-18 19:49:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2017_08_17_010151_create_barangs_table', 1),
(6, '2017_08_17_010205_create_barang_masuks_table', 1),
(7, '2017_08_17_010221_create_penjualans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('m.hilmy007@gmail.com', '$2y$10$eo.04mRhuMUKgSRF24aoKeJwYP.GL7a8n7N8XcEFwIHjt9eAWPApG', '2017-09-05 04:02:22'),
('asd@asd.com', '$2y$10$KWN/oac5IkALrKs6Jn6mHOQe/ybwpeKor/rVFWIMSk8iR/BS13J7K', '2017-10-09 03:35:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualans`
--

CREATE TABLE `penjualans` (
  `no_trans` int(10) UNSIGNED NOT NULL,
  `tgl_trans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pembeli` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualans`
--

INSERT INTO `penjualans` (`no_trans`, `tgl_trans`, `nama_pembeli`, `nama_barang`, `jumlah_barang`, `harga_barang`, `satuan`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, '18 August, 2017', 'asd', 'kasd', '10', '200000', 'box', '2000000', '2017-08-16 19:05:40', '2017-08-16 19:05:40'),
(2, '22 Agustus, 2017', 'Missu', 'Baju', '3', '70000', 'Lusin', '210000', '2017-08-21 08:41:47', '2017-08-21 08:41:47'),
(3, '20 Desember, 2017', 'Louis', 'Helm', '5', '35000', 'Lusin', '175000', '2017-12-18 04:44:49', '2017-12-18 04:44:49'),
(4, '19 Desember, 2017', 'LAS', 'SAPU', '5', '8000', 'BUAH', '40000', '2017-12-18 19:49:32', '2017-12-18 19:49:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(15, 'asd', 'asd@asd.com', '$2y$10$74q4cjbd5Hhjl3kGN3Q80.YHxmUMtRMq6RFYc6943uumjPbMSiUhO', 'jmHNAonDwYne7Nqh5uAJyZXQPIw2dO9eEHz0ai9nLn3LpysgAxWQ7DbcxOiK', '2017-09-05 01:51:00', '2017-09-05 01:51:00'),
(16, 'Admin', 'admin@admin.com', '$2y$10$cSzMPWFGhK.L7eC3/PLTFOWP.rnDs6c5A1Ch2QAc09qa973cIz7zq', 'rgaEMZxSGT5nFMbkqCGEzIe3ydcIGQyhIq5LOk6LS9ZeENdpMOzdlcni1uk6', '2017-12-18 04:45:36', '2017-12-18 04:45:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barangs_kode_barang_unique` (`kode_barang`);

--
-- Indexes for table `barang_masuks`
--
ALTER TABLE `barang_masuks`
  ADD PRIMARY KEY (`no_trans`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `penjualans`
--
ALTER TABLE `penjualans`
  ADD PRIMARY KEY (`no_trans`);

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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `barang_masuks`
--
ALTER TABLE `barang_masuks`
  MODIFY `no_trans` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `penjualans`
--
ALTER TABLE `penjualans`
  MODIFY `no_trans` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
