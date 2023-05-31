-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 04:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mps`
--

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `id_berkas` int(11) NOT NULL,
  `berkas` varchar(64) NOT NULL,
  `keterangan` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `id_harga` tinyint(4) NOT NULL,
  `nama_harga` varchar(16) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`id_harga`, `nama_harga`, `nominal`) VALUES
(1, 'parkir_motor', 3000),
(2, 'parkir_mobil', 5000),
(3, 'kartu_hilang', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_transaksi`
--

CREATE TABLE `jenis_transaksi` (
  `id_jenis_transaksi` tinyint(4) NOT NULL,
  `nama_jenis_transaksi` varchar(32) NOT NULL,
  `deskripsi_jenis_transaksi` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_transaksi`
--

INSERT INTO `jenis_transaksi` (`id_jenis_transaksi`, `nama_jenis_transaksi`, `deskripsi_jenis_transaksi`) VALUES
(1, 'Top-Up', 'menambahkan saldo ke kartu parkir mahasiswa untuk digunakan dala'),
(2, 'Kartu-Hilang', 'Melakukan Pergantian Kartu, di karenakan kartu hilang'),
(3, 'Parkir', 'Sedang dalam area parkir');

-- --------------------------------------------------------

--
-- Table structure for table `kartu`
--

CREATE TABLE `kartu` (
  `id_kartu` int(11) NOT NULL,
  `nomor_kartu` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kartu`
--

INSERT INTO `kartu` (`id_kartu`, `nomor_kartu`, `saldo`, `created_at`, `updated_at`) VALUES
(3, 0, 0, '2023-05-05 03:55:40', '2023-05-05 03:55:40'),
(4, 0, 0, '2023-05-05 03:57:11', '2023-05-05 03:57:11'),
(5, 0, 0, '2023-05-05 03:58:02', '2023-05-05 03:58:02'),
(6, 0, 420000, '2023-05-05 04:02:04', '2023-05-29 19:05:18'),
(33, 123, 160000, '2023-05-24 22:34:30', '2023-05-29 17:15:50'),
(34, 12329888, 2000, '2023-05-26 15:19:42', '2023-05-26 15:19:42'),
(35, 6289533, 200000, '2023-05-29 14:56:36', '2023-05-29 19:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` tinyint(4) NOT NULL,
  `nama_role` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `nama_role`) VALUES
(1, 'admin'),
(2, 'keuangan'),
(3, 'operator'),
(4, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `status_transaksi`
--

CREATE TABLE `status_transaksi` (
  `id_status_transaksi` tinyint(4) NOT NULL,
  `nama_status_transaksi` varchar(32) NOT NULL,
  `deskripsi_status_transaksi` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_transaksi`
--

INSERT INTO `status_transaksi` (`id_status_transaksi`, `nama_status_transaksi`, `deskripsi_status_transaksi`) VALUES
(1, 'PENDING', 'Transaksi sedang dalam proses...'),
(2, 'COMPLETE', 'Transaksi Selesai...'),
(3, 'APPROVED', 'Transaksi Telah Disetujui Keuangan...'),
(4, 'CANCEL', 'Transaksi dibatalkan...');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kodebooking_transaksi` char(6) NOT NULL,
  `npm` int(11) NOT NULL,
  `id_jenis_transaksi` tinyint(4) NOT NULL,
  `saldoawal_transaksi` int(11) NOT NULL,
  `nominal_transaksi` int(11) NOT NULL,
  `saldoakhir_transaksi` int(11) NOT NULL,
  `id_status_transaksi` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kodebooking_transaksi`, `npm`, `id_jenis_transaksi`, `saldoawal_transaksi`, `nominal_transaksi`, `saldoakhir_transaksi`, `id_status_transaksi`, `created_at`, `updated_at`) VALUES
(1, 'YVCO67', 2021329901, 1, 0, 10000, 10000, 2, '2023-05-24 22:34:47', '2023-05-24 23:46:34'),
(2, '1PT7EM', 2021329901, 1, 10000, 20000, 30000, 2, '2023-05-26 09:30:50', '2023-05-26 09:44:23'),
(3, 'HJ1RJR', 2021329901, 1, 30000, 50000, 80000, 1, '2023-05-26 09:42:48', '2023-05-26 09:42:48'),
(4, '5HP85K', 2021329901, 1, 30000, 20000, 100000, 3, '2023-05-26 11:08:59', '2023-05-27 14:47:40'),
(5, '271V9D', 2021329901, 1, 30000, 20000, 50000, 1, '2023-05-26 11:29:43', '2023-05-26 11:29:43'),
(7, 'O8D3T0', 2021329901, 2, 110000, 50000, 160000, 3, '2023-05-26 14:35:03', '2023-05-29 17:15:50'),
(8, 'E6Q0I7', 2021329901, 2, 30000, 50000, 80000, 3, '2023-05-26 15:01:43', '2023-05-27 10:51:45'),
(9, 'R74U7M', 2021329901, 1, 50000, 20000, 70000, 3, '2023-05-27 14:16:39', '2023-05-27 15:04:38'),
(10, 'OP2UQH', 2021329901, 1, 80000, 20000, 100000, 1, '2023-05-27 14:17:33', '2023-05-27 14:17:33'),
(11, 'NP32M9', 2021329901, 1, 80000, 20000, 100000, 1, '2023-05-27 14:18:02', '2023-05-27 14:18:02'),
(12, 'ET7LEJ', 2021329901, 1, 70000, 20000, 90000, 3, '2023-05-27 14:28:01', '2023-05-27 15:06:44'),
(13, 'VXFUNQ', 2021329901, 1, 90000, 20000, 110000, 3, '2023-05-27 15:11:00', '2023-05-27 15:13:48'),
(14, 'IJTVWG', 2021329901, 1, 110000, 20000, 130000, 1, '2023-05-29 16:41:35', '2023-05-29 16:41:35'),
(15, 'O5L7Q6', 2021329901, 2, 110000, 50000, 160000, 1, '2023-05-29 16:55:19', '2023-05-29 16:55:19'),
(16, 'RPSZXX', 4, 1, 0, 20000, 20000, 3, '2023-05-29 18:57:11', '2023-05-29 18:59:02'),
(17, 'P4X9E3', 2021320013, 1, 0, 200000, 200000, 3, '2023-05-29 19:01:27', '2023-05-29 19:03:15'),
(18, '4NYJV6', 4, 1, 20000, 200000, 220000, 3, '2023-05-29 19:03:53', '2023-05-29 19:05:01'),
(19, 'SLQEX6', 4, 1, 220000, 200000, 420000, 3, '2023-05-29 19:04:17', '2023-05-29 19:05:18'),
(20, 'G1JPCI', 4, 1, 420000, 200000, 620000, 1, '2023-05-29 19:06:23', '2023-05-29 19:06:23'),
(21, 'JHMXDU', 4, 1, 420000, 200000, 620000, 1, '2023-05-29 19:06:28', '2023-05-29 19:06:28'),
(22, 'DOF4HC', 2021329902, 3, 0, 0, 0, 2, '2023-05-30 13:37:06', '2023-05-30 13:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `npm` int(11) NOT NULL,
  `id_kartu` int(11) NOT NULL,
  `id_role` tinyint(4) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` char(8) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`npm`, `id_kartu`, `id_role`, `nama`, `email`, `password`, `token`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Admin Root', 'rahmantoedmodo@gmail.com', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', '', '2023-05-05 03:55:40', '2023-05-29 16:58:39'),
(2, 4, 2, 'arief fadhil', '', '202cb962ac59075b964b07152d234b70', '', '2023-05-05 03:57:11', '2023-05-05 03:57:11'),
(3, 5, 3, 'dapidah', '', '202cb962ac59075b964b07152d234b70', '', '2023-05-05 03:58:02', '2023-05-05 03:58:02'),
(4, 6, 4, 'marselridwanfatah', '', '6edf26f6e0badff12fca32b16db38bf2', '', '2023-05-05 04:02:05', '2023-05-28 17:05:50'),
(2021320013, 35, 4, 'Zulian Zandi Nugraha ', 'zulianzandi3@gmail.com', '0815fe9856c1421abb2353d411bf59d2', '', '2023-05-29 14:56:36', '2023-05-29 14:56:36'),
(2021329901, 33, 4, 'Bin Abu Saleh', 'abusaleh@gmail.com', '6edf26f6e0badff12fca32b16db38bf2', '', '2023-05-24 22:34:30', '2023-05-24 22:34:30'),
(2021329902, 34, 4, 'Bin Abu Saleh', 'abusaleh2@gmail.com', 'dff70f4795011cab7d23af8037304008', '', '2023-05-26 15:19:42', '2023-05-26 15:19:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id_berkas`);

--
-- Indexes for table `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id_harga`);

--
-- Indexes for table `jenis_transaksi`
--
ALTER TABLE `jenis_transaksi`
  ADD PRIMARY KEY (`id_jenis_transaksi`);

--
-- Indexes for table `kartu`
--
ALTER TABLE `kartu`
  ADD PRIMARY KEY (`id_kartu`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `status_transaksi`
--
ALTER TABLE `status_transaksi`
  ADD PRIMARY KEY (`id_status_transaksi`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_npm_references_table_user_npm` (`npm`),
  ADD KEY `fk_id_jenis_transaksi_references_table_jenis_transaksi` (`id_jenis_transaksi`),
  ADD KEY `fk_id_status_transaksi_references_table_status_transaksi` (`id_status_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`npm`),
  ADD KEY `id_role_reference_tabel_role` (`id_role`),
  ADD KEY `id_kartu_reference_tabel_kartu` (`id_kartu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berkas`
--
ALTER TABLE `berkas`
  MODIFY `id_berkas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `harga`
--
ALTER TABLE `harga`
  MODIFY `id_harga` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kartu`
--
ALTER TABLE `kartu`
  MODIFY `id_kartu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_id_jenis_transaksi_references_table_jenis_transaksi` FOREIGN KEY (`id_jenis_transaksi`) REFERENCES `jenis_transaksi` (`id_jenis_transaksi`),
  ADD CONSTRAINT `fk_id_status_transaksi_references_table_status_transaksi` FOREIGN KEY (`id_status_transaksi`) REFERENCES `status_transaksi` (`id_status_transaksi`),
  ADD CONSTRAINT `fk_npm_references_table_user_npm` FOREIGN KEY (`npm`) REFERENCES `user` (`npm`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `id_kartu_reference_tabel_kartu` FOREIGN KEY (`id_kartu`) REFERENCES `kartu` (`id_kartu`),
  ADD CONSTRAINT `id_role_reference_tabel_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
