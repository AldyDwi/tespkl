-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Apr 2024 pada 04.27
-- Versi server: 10.4.27-MariaDB-log
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_menu`
--

CREATE TABLE `m_menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` enum('makanan','minuman','snack') NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_menu`
--

INSERT INTO `m_menu` (`id`, `nama`, `kategori`, `harga`) VALUES
(1, 'Nasi Goreng', 'makanan', 10000),
(2, 'Mie Freno', 'makanan', 10000),
(3, 'Nasi Teriyaki', 'makanan', 13000),
(4, 'Nasi Ayam Katsu', 'makanan', 10000),
(5, 'Nasi Goreng Mawut', 'makanan', 13000),
(6, 'Teh Hijau', 'minuman', 10000),
(7, 'Teh Lemon', 'minuman', 5000),
(8, 'Teh', 'minuman', 3000),
(9, 'Kopi Hitam', 'minuman', 3000),
(10, 'Kopi Susu', 'minuman', 3000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1ormrg8fRX5MbiqIHidARTDsxImKCDEgCzRrDVXK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUliUFJ2SlZJWnpuYkZZdENpTlZlQ0ZlZzVja0tWbDJWN0NpUHV4YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lP3NlYXJjaD0yMDIxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1713775860),
('BNZGxRiFtNMuJLYpeG5aOLN2wnFlwzdjawKpn2Py', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0RRYXNDeFNhMUc4Zmd3M3VDTk9FVnpEZTFzZmdrVHI4TXFCZmliZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lP3NlYXJjaD0yMDIyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1713233369),
('fZnD5M9iCmIaYJo81bfaBiOoiw1dVt4SdMqc5jYk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWFGazUxcXRkeXVScnBWVkt2WjNJZ2Z5cHI2cThsNTB2Wm5XYmRidCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713775840);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pesanan`
--

CREATE TABLE `t_pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `t_pesanan`
--

INSERT INTO `t_pesanan` (`id`, `tanggal`) VALUES
(1, '2021-01-01'),
(2, '2021-02-01'),
(3, '2021-03-01'),
(4, '2021-04-01'),
(5, '2021-05-01'),
(6, '2021-06-01'),
(7, '2021-07-01'),
(8, '2021-08-01'),
(9, '2021-09-01'),
(10, '2021-10-01'),
(11, '2021-11-01'),
(12, '2021-12-01'),
(13, '2022-01-01'),
(14, '2021-01-15'),
(15, '2021-01-31'),
(16, '2021-02-15'),
(17, '2021-02-28'),
(18, '2021-03-15'),
(19, '2021-03-31'),
(20, '2021-04-15'),
(21, '2021-04-30'),
(22, '2021-05-15'),
(23, '2021-05-31'),
(24, '2021-06-15'),
(25, '2021-06-30'),
(26, '2021-07-15'),
(27, '2021-07-31'),
(28, '2021-08-15'),
(29, '2021-08-31'),
(30, '2021-09-15'),
(31, '2021-09-30'),
(32, '2021-10-15'),
(33, '2021-10-31'),
(34, '2021-11-19'),
(35, '2021-11-30'),
(36, '2021-12-15'),
(37, '2021-12-31'),
(38, '2022-01-15'),
(39, '2022-01-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pesanan_detail`
--

CREATE TABLE `t_pesanan_detail` (
  `id` int(11) NOT NULL,
  `t_pesanan_id` int(11) NOT NULL,
  `m_menu_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `t_pesanan_detail`
--

INSERT INTO `t_pesanan_detail` (`id`, `t_pesanan_id`, `m_menu_id`, `jumlah`, `total`) VALUES
(1, 1, 1, 5, 50000),
(2, 1, 2, 3, 30000),
(3, 1, 2, 1, 10000),
(4, 1, 5, 2, 26000),
(5, 1, 8, 1, 3000),
(6, 1, 6, 2, 20000),
(7, 1, 9, 4, 12000),
(8, 1, 4, 1, 10000),
(9, 1, 7, 3, 15000),
(10, 1, 10, 1, 3000),
(11, 2, 3, 1, 13000),
(12, 2, 7, 1, 10000),
(13, 2, 1, 10, 100000),
(14, 2, 8, 10, 30000),
(15, 2, 5, 3, 39000),
(16, 2, 10, 7, 21000),
(17, 2, 1, 1, 10000),
(18, 2, 7, 1, 5000),
(19, 2, 2, 2, 20000),
(20, 2, 8, 2, 6000),
(21, 2, 9, 1, 3000),
(22, 3, 1, 1, 10000),
(23, 3, 8, 1, 3000),
(24, 3, 4, 1, 13000),
(25, 3, 7, 2, 10000),
(26, 3, 6, 4, 40000),
(27, 3, 1, 1, 10000),
(28, 3, 2, 1, 10000),
(29, 3, 4, 1, 10000),
(30, 3, 8, 3, 9000),
(31, 3, 3, 2, 26000),
(32, 4, 1, 3, 30000),
(33, 4, 5, 1, 13000),
(34, 4, 9, 3, 9000),
(35, 4, 3, 1, 13000),
(36, 4, 10, 1, 3000),
(37, 4, 2, 1, 10000),
(38, 4, 2, 1, 10000),
(39, 4, 4, 4, 40000),
(40, 4, 6, 1, 10000),
(41, 4, 8, 1, 3000),
(42, 4, 1, 2, 20000),
(43, 4, 6, 1, 10000),
(44, 4, 4, 3, 30000),
(45, 5, 3, 1, 13000),
(46, 5, 2, 3, 30000),
(47, 5, 7, 1, 10000),
(48, 5, 8, 1, 3000),
(49, 5, 4, 2, 10000),
(50, 5, 9, 1, 3000),
(51, 6, 3, 1, 13000),
(52, 6, 8, 1, 3000),
(53, 6, 10, 1, 3000),
(54, 6, 9, 1, 1000),
(55, 6, 5, 1, 13000),
(56, 6, 6, 1, 10000),
(57, 6, 7, 5, 50000),
(58, 6, 1, 1, 5000),
(59, 6, 2, 5, 50000),
(60, 7, 9, 1, 3000),
(61, 7, 5, 3, 39000),
(62, 7, 6, 2, 20000),
(63, 7, 7, 5, 25000),
(64, 7, 1, 1, 10000),
(65, 7, 8, 1, 3000),
(66, 7, 10, 2, 6000),
(67, 7, 5, 1, 13000),
(68, 7, 7, 1, 5000),
(69, 7, 6, 2, 20000),
(70, 7, 3, 1, 13000),
(71, 7, 4, 5, 50000),
(72, 7, 8, 5, 15000),
(73, 7, 10, 2, 6000),
(74, 8, 5, 2, 26000),
(75, 8, 7, 2, 10000),
(76, 8, 8, 2, 6000),
(77, 8, 4, 3, 30000),
(78, 8, 6, 1, 10000),
(79, 8, 9, 5, 15000),
(80, 8, 4, 10, 100000),
(81, 8, 5, 6, 78000),
(82, 8, 1, 1, 10000),
(83, 8, 8, 6, 18000),
(84, 9, 5, 1, 13000),
(85, 9, 5, 1, 13000),
(86, 9, 8, 3, 9000),
(87, 9, 2, 5, 50000),
(88, 9, 4, 1, 10000),
(89, 9, 10, 1, 3000),
(90, 9, 4, 1, 10000),
(91, 9, 1, 4, 40000),
(92, 9, 9, 7, 21000),
(93, 9, 6, 3, 30000),
(94, 9, 1, 1, 10000),
(95, 9, 2, 1, 10000),
(96, 9, 6, 1, 10000),
(97, 10, 4, 3, 30000),
(98, 10, 8, 2, 6000),
(99, 10, 7, 1, 5000),
(100, 10, 1, 1, 10000),
(101, 10, 8, 1, 3000),
(102, 10, 5, 1, 13000),
(103, 10, 5, 2, 26000),
(104, 10, 4, 1, 10000),
(105, 10, 3, 2, 26000),
(106, 10, 2, 4, 40000),
(107, 11, 9, 5, 15000),
(108, 11, 10, 5, 15000),
(109, 11, 6, 1, 10000),
(110, 11, 7, 5, 25000),
(111, 11, 6, 1, 10000),
(112, 11, 1, 4, 40000),
(113, 11, 4, 2, 20000),
(114, 11, 5, 1, 13000),
(115, 11, 8, 1, 3000),
(116, 11, 9, 1, 3000),
(117, 11, 9, 1, 3000),
(118, 12, 8, 1, 3000),
(119, 12, 4, 1, 10000),
(120, 12, 5, 1, 13000),
(121, 12, 5, 1, 13000),
(122, 12, 9, 2, 3000),
(123, 12, 6, 3, 30000),
(124, 12, 4, 1, 10000),
(125, 12, 10, 5, 15000),
(126, 12, 1, 3, 30000),
(127, 12, 8, 1, 3000),
(128, 13, 9, 1, 3000),
(129, 13, 5, 2, 26000),
(130, 13, 9, 1, 3000),
(131, 13, 3, 3, 39000),
(132, 13, 1, 3, 30000),
(133, 13, 8, 4, 12000),
(134, 13, 1, 1, 10000),
(135, 13, 2, 2, 20000),
(136, 13, 3, 1, 13000),
(137, 13, 3, 1, 13000),
(138, 13, 9, 1, 3000),
(139, 13, 9, 1, 3000),
(140, 14, 4, 4, 40000),
(141, 14, 1, 1, 10000),
(142, 14, 5, 1, 13000),
(143, 14, 8, 1, 3000),
(144, 14, 9, 1, 3000),
(145, 14, 10, 3, 9000),
(146, 14, 6, 4, 40000),
(147, 14, 3, 1, 13000),
(148, 14, 1, 3, 30000),
(149, 14, 7, 1, 5000),
(150, 15, 9, 1, 3000),
(151, 15, 5, 1, 13000),
(152, 15, 1, 1, 10000),
(153, 15, 1, 3, 30000),
(154, 15, 7, 3, 15000),
(155, 15, 10, 6, 18000),
(156, 15, 7, 3, 15000),
(157, 15, 4, 2, 20000),
(158, 16, 3, 2, 26000),
(159, 16, 9, 1, 3000),
(160, 16, 9, 4, 12000),
(161, 16, 10, 3, 9000),
(162, 16, 2, 4, 40000),
(163, 16, 1, 1, 10000),
(164, 16, 4, 1, 10000),
(165, 16, 6, 5, 50000),
(166, 16, 9, 10, 30000),
(167, 16, 7, 1, 5000),
(168, 17, 1, 4, 40000),
(169, 17, 8, 4, 12000),
(170, 17, 7, 5, 25000),
(171, 17, 1, 1, 10000),
(172, 17, 10, 3, 9000),
(173, 17, 10, 1, 3000),
(174, 17, 8, 1, 3000),
(175, 17, 3, 2, 26000),
(176, 17, 7, 1, 5000),
(177, 17, 6, 2, 20000),
(178, 18, 1, 2, 20000),
(179, 18, 3, 1, 13000),
(180, 18, 8, 1, 3000),
(181, 18, 9, 3, 9000),
(182, 18, 4, 1, 10000),
(183, 19, 6, 5, 50000),
(184, 19, 5, 3, 39000),
(185, 19, 10, 3, 9000),
(186, 19, 2, 4, 40000),
(187, 19, 9, 1, 3000),
(188, 19, 8, 1, 3000),
(189, 19, 1, 1, 10000),
(190, 20, 9, 4, 12000),
(191, 20, 4, 2, 20000),
(192, 20, 1, 4, 40000),
(193, 20, 10, 3, 9000),
(194, 20, 7, 1, 5000),
(195, 20, 6, 2, 20000),
(196, 20, 8, 1, 3000),
(197, 20, 8, 3, 9000),
(198, 20, 6, 5, 50000),
(199, 20, 1, 1, 10000),
(200, 21, 9, 1, 3000),
(201, 21, 6, 8, 80000),
(202, 21, 2, 5, 50000),
(203, 21, 9, 3, 9000),
(204, 21, 6, 1, 10000),
(205, 21, 8, 1, 3000),
(206, 21, 5, 1, 13000),
(207, 21, 6, 1, 10000),
(208, 21, 8, 1, 3000),
(209, 21, 9, 4, 12000),
(210, 21, 5, 2, 26000),
(211, 21, 9, 2, 6000),
(212, 22, 7, 5, 25000),
(213, 22, 8, 1, 3000),
(214, 22, 5, 1, 13000),
(215, 22, 8, 1, 3000),
(216, 22, 10, 5, 15000),
(217, 22, 10, 1, 3000),
(218, 22, 5, 1, 13000),
(219, 22, 9, 2, 6000),
(220, 22, 3, 3, 30000),
(221, 22, 2, 1, 10000),
(222, 22, 9, 1, 3000),
(223, 23, 9, 1, 3000),
(224, 23, 9, 1, 3000),
(225, 23, 10, 2, 6000),
(226, 23, 7, 2, 10000),
(227, 23, 5, 2, 26000),
(228, 23, 6, 1, 10000),
(229, 23, 9, 1, 3000),
(230, 23, 8, 1, 3000),
(231, 24, 8, 10, 30000),
(232, 24, 6, 10, 100000),
(233, 24, 1, 1, 10000),
(234, 24, 9, 1, 3000),
(235, 24, 2, 1, 10000),
(236, 24, 8, 1, 3000),
(237, 24, 6, 1, 10000),
(238, 24, 1, 1, 10000),
(239, 24, 9, 1, 3000),
(240, 25, 5, 1, 13000),
(241, 25, 6, 1, 10000),
(242, 25, 4, 1, 10000),
(243, 25, 2, 2, 20000),
(244, 25, 8, 1, 3000),
(245, 25, 9, 1, 3000),
(246, 25, 6, 2, 20000),
(247, 25, 1, 4, 40000),
(248, 25, 8, 3, 9000),
(249, 25, 9, 1, 3000),
(250, 25, 10, 2, 6000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_menu`
--
ALTER TABLE `m_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `t_pesanan`
--
ALTER TABLE `t_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_pesanan_detail`
--
ALTER TABLE `t_pesanan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `m_menu`
--
ALTER TABLE `m_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `t_pesanan`
--
ALTER TABLE `t_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `t_pesanan_detail`
--
ALTER TABLE `t_pesanan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
