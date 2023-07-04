-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 05:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berkas`
--

INSERT INTO `berkas` (`id_berkas`, `berkas`, `keterangan`, `created_at`, `updated_at`) VALUES
(5, '1688390614_2a7db865e2037ccf5a60.pdf', 'Penggunaan E-Biu Parking', '2023-07-03 20:23:34', '2023-07-03 20:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `id_harga` tinyint(4) NOT NULL,
  `nama_harga` varchar(16) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`id_harga`, `nama_harga`, `nominal`) VALUES
(1, 'parkir_motor', 3000),
(2, 'parkir_mobil', 5000),
(3, 'kartu_hilang', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pembayaran`
--

CREATE TABLE `jenis_pembayaran` (
  `id_jenis_pembayaran` tinyint(4) NOT NULL,
  `nama_jenis_pembayaran` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_pembayaran`
--

INSERT INTO `jenis_pembayaran` (`id_jenis_pembayaran`, `nama_jenis_pembayaran`) VALUES
(1, 'cash'),
(2, 'transfer');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_transaksi`
--

CREATE TABLE `jenis_transaksi` (
  `id_jenis_transaksi` tinyint(4) NOT NULL,
  `nama_jenis_transaksi` varchar(32) NOT NULL,
  `deskripsi_jenis_transaksi` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `nomor_kartu` char(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kartu`
--

INSERT INTO `kartu` (`id_kartu`, `nomor_kartu`, `saldo`, `created_at`, `updated_at`) VALUES
(3, '66372637', 100000, '2023-05-05 03:55:40', '2023-06-29 00:11:10'),
(4, '76276376', 30000, '2023-05-05 03:57:11', '2023-06-15 13:19:31'),
(5, '5524232', 8000, '2023-05-05 03:58:02', '2023-06-16 15:27:18'),
(6, '', 522000, '2023-05-05 04:02:04', '2023-06-19 20:54:07'),
(33, '123', 157000, '2023-05-24 22:34:30', '2023-06-06 16:40:59'),
(34, '12329888', 2000, '2023-05-26 15:19:42', '2023-05-26 15:19:42'),
(35, '6289533', 200000, '2023-05-29 14:56:36', '2023-06-14 20:53:22'),
(36, '1234543212', 0, '2023-06-14 20:38:10', '2023-06-14 20:38:10'),
(37, '12421412', 20000, '2023-06-14 20:42:38', '2023-06-14 20:42:38'),
(38, '125151', 20000, '2023-06-14 20:45:59', '2023-06-14 20:45:59'),
(39, '1211123', 20000, '2023-06-14 21:21:11', '2023-06-14 21:21:11'),
(40, '2147483647', 20000, '2023-06-14 22:24:13', '2023-06-14 22:24:13'),
(41, '6246354', 20000, '2023-06-14 22:25:05', '2023-06-14 22:25:05'),
(42, '2152152', 20000, '2023-06-14 22:26:01', '2023-06-14 22:26:01'),
(43, '2152152', 20000, '2023-06-14 22:26:22', '2023-06-14 22:26:22'),
(44, '2151125', 20000, '2023-06-14 22:29:04', '2023-06-14 22:29:04'),
(45, '2151125', 20000, '2023-06-14 22:29:20', '2023-06-14 22:29:20'),
(46, '12421', 20000, '2023-06-14 22:34:25', '2023-06-14 22:34:25'),
(47, '12421', 20000, '2023-06-14 22:35:33', '2023-06-14 22:35:33'),
(48, '12421', 20000, '2023-06-14 22:35:40', '2023-06-14 22:35:40'),
(49, '12421', 20000, '2023-06-14 22:36:47', '2023-06-14 22:53:21'),
(50, '2147483647', 20000, '2023-06-14 22:38:42', '2023-06-14 22:38:42'),
(51, '12345678', 20000, '2023-06-14 22:39:22', '2023-06-14 22:59:42'),
(52, '2147483647', 20000, '2023-06-15 00:23:10', '2023-06-15 00:23:10'),
(53, '12345678', 20000, '2023-06-15 00:43:12', '2023-06-15 00:43:12'),
(54, '3719119', 20000, '2023-06-15 00:45:13', '2023-06-15 00:45:13'),
(55, '123', 14000, '2023-06-15 00:50:50', '2023-06-15 07:17:49'),
(56, '0', 20000, '2023-06-15 00:51:52', '2023-06-15 01:20:04'),
(57, '1234561', 20000, '2023-06-15 10:02:53', '2023-06-15 10:02:53'),
(58, '123454432', 20000, '2023-06-15 10:12:36', '2023-06-15 10:12:36'),
(59, '76543456', 20000, '2023-06-15 10:19:06', '2023-06-15 10:19:06'),
(60, '0003763481', 15000, '2023-06-15 15:27:24', '2023-06-18 20:58:40'),
(61, '89533', 47000, '2023-06-15 21:22:59', '2023-06-16 13:46:10'),
(62, '0', 90000, '2023-06-16 14:22:46', '2023-06-16 16:02:59'),
(63, '3694953', 20000, '2023-06-16 17:28:50', '2023-06-16 17:28:50'),
(64, '3696930', 20000, '2023-06-16 17:30:32', '2023-06-16 17:30:32'),
(65, '6969', 91000, '2023-06-16 17:34:19', '2023-06-19 20:14:22'),
(66, '0003708142', 0, '2023-06-18 21:02:04', '2023-06-18 21:08:51'),
(67, '0003650288', 20000, '2023-06-18 21:02:45', '2023-06-18 21:04:05'),
(68, '0003312840', 20000, '2023-06-20 14:47:08', '2023-06-20 14:47:08'),
(69, '11111111111', 20000, '2023-06-20 21:14:42', '2023-06-20 21:14:42'),
(70, '00066435467', 0, '2023-06-20 21:29:46', '2023-06-20 21:29:46'),
(71, '0002576495', 40000, '2023-06-21 09:35:01', '2023-06-29 10:12:54'),
(72, '8672762626', 100000, '2023-06-21 09:36:23', '2023-06-22 15:39:48'),
(73, '0004909173', 40000, '2023-06-21 09:38:09', '2023-06-21 10:33:30'),
(74, '', 170000, '2023-06-21 09:39:00', '2023-07-04 20:49:29'),
(75, '45678987654', 240000, '2023-06-21 09:39:45', '2023-06-29 10:44:36'),
(76, '0003704096', 87000, '2023-06-21 09:40:13', '2023-06-29 10:29:08'),
(77, '0003707577', 17000, '2023-06-21 09:40:42', '2023-06-21 10:26:53'),
(78, '0003769516', 3000, '2023-06-21 09:41:19', '2023-06-21 10:25:38'),
(79, '0003707248', 20000, '2023-06-21 09:41:47', '2023-07-01 12:12:05'),
(80, '0003679800', 20000, '2023-06-21 09:42:20', '2023-06-21 09:42:20'),
(81, '0003691622', 20000, '2023-06-21 09:44:31', '2023-06-21 09:49:09'),
(82, '0003648430', 20000, '2023-06-21 09:52:57', '2023-06-21 09:58:37'),
(83, '0003719119', 50000, '2023-06-21 09:53:43', '2023-06-21 10:19:15'),
(84, '234567890', 110000, '2023-07-01 10:57:23', '2023-07-01 11:44:08'),
(85, '3456787654', 0, '2023-07-01 12:03:06', '2023-07-01 12:03:06'),
(86, '87654567890', 20000, '2023-07-01 12:06:05', '2023-07-04 14:08:24'),
(87, '', 20000, '2023-07-01 18:21:28', '2023-07-01 19:09:55'),
(88, '0003446772', 20000, '2023-07-04 14:15:57', '2023-07-04 14:15:57'),
(89, '00034436777', 20000, '2023-07-04 14:34:39', '2023-07-04 14:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id_log` int(11) NOT NULL,
  `npm` int(11) DEFAULT NULL,
  `ip_address` char(20) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id_log`, `npm`, `ip_address`, `action`, `details`, `timestamp`) VALUES
(13, 2, '110.138.91.228', 'login', 'User logged in', '2023-07-01 04:06:52'),
(14, 2, '110.138.91.228', 'logout', 'User logged out', '2023-07-01 04:08:59'),
(15, 2021320010, '52.14.196.50', 'login', 'User logged in', '2023-07-01 04:10:37'),
(16, 1, '110.138.91.228', 'login', 'User logged in', '2023-07-01 04:11:49'),
(17, 1, '110.138.91.228', 'logout', 'User logged out', '2023-07-01 04:12:04'),
(18, 2021320004, '110.138.91.228', 'login', 'User logged in', '2023-07-01 04:12:09'),
(19, 3, '110.138.91.228', 'login', 'User logged in', '2023-07-01 04:13:07'),
(20, 2021320010, '110.138.91.228', 'login', 'User logged in', '2023-07-01 04:22:55'),
(21, 2021320010, '110.138.91.228', 'topup', 'Topup dengan kode booking I8P64X sebesar 20000 berhasil dilakukan', '2023-07-01 04:23:03'),
(22, 2021320010, '52.14.196.50', 'logout', 'User logged out', '2023-07-01 04:23:21'),
(23, 2, '52.14.196.50', 'login', 'User logged in', '2023-07-01 04:23:25'),
(24, 2021320010, '110.138.91.228', 'topup', 'Topup dengan kode booking 6FUB3S sebesar 20000', '2023-07-01 04:26:54'),
(25, 2021320010, '110.138.91.228', 'transaksi_kartuHilang', 'Transaksi kartu hilang dengan kode booking SBJ4RX sebesar 50000', '2023-07-01 04:31:21'),
(26, 2, '52.14.196.50', 'logout', 'User logged out', '2023-07-01 04:35:08'),
(27, 1, '52.14.196.50', 'login', 'User logged in', '2023-07-01 04:35:15'),
(28, 1, '52.14.196.50', 'transaksi_approve', 'Transaksi dengan kode booking SBJ4RX telah disetujui', '2023-07-01 04:35:27'),
(29, 2021320010, '110.138.91.228', 'transaksi_Topup', 'Topup dengan kode booking TCRPP7 sebesar 20000', '2023-07-01 04:38:59'),
(30, 2021320010, '110.138.91.228', 'Transaksi_Cancel', 'Transaksi dengan ID 193 dibatalkan', '2023-07-01 04:39:04'),
(31, 2021320010, '110.138.91.228', 'transaksi_Topup', 'Topup dengan kode booking 3LW7OR sebesar 20000', '2023-07-01 04:43:23'),
(32, 1, '52.14.196.50', 'logout', 'User logged out', '2023-07-01 04:43:34'),
(33, 2, '52.14.196.50', 'login', 'User logged in', '2023-07-01 04:43:48'),
(34, 2, '52.14.196.50', 'transaksi_approve', 'Transaksi dengan kode booking 3LW7OR disetujui', '2023-07-01 04:44:08'),
(35, 2, '52.14.196.50', 'logout', 'User logged out', '2023-07-01 04:49:47'),
(36, 1, '52.14.196.50', 'login', 'User logged in', '2023-07-01 04:49:52'),
(39, 1, '', 'User_Delete', 'Pengguna 2021320032Telah Dihapus', '2023-07-01 04:57:47'),
(40, 2021320010, '110.138.91.228', 'logout', 'User logged out', '2023-07-01 05:02:39'),
(41, 1, '110.138.91.228', 'login', 'User logged in', '2023-07-01 05:02:45'),
(42, 1, '', 'User Insertion', 'Pengguna 2021320019 Ditambahkan', '2023-07-01 05:03:06'),
(43, 1, '', 'User_Delete', 'Pengguna 2021320019 Telah Dihapus', '2023-07-01 05:04:13'),
(44, 2, '52.14.196.50', 'login', 'User logged in', '2023-07-01 05:05:45'),
(45, 2, '', 'User_Add', 'Pengguna 2021320019 Ditambahkan', '2023-07-01 05:06:05'),
(46, 1, '52.14.196.50', 'User_Update', 'Pengguna 2021320006 Telah Diperbarui', '2023-07-01 05:12:05'),
(47, 2, '140.213.35.119', 'login', 'User logged in', '2023-07-01 09:58:31'),
(48, 2, '120.188.6.198', 'login', 'User logged in', '2023-07-01 11:20:04'),
(49, 2, '120.188.6.198', 'User_Add', 'Pengguna 2021320109 Ditambahkan', '2023-07-01 11:21:28'),
(50, 2, '120.188.6.198', 'logout', 'User logged out', '2023-07-01 11:21:34'),
(51, NULL, '120.188.6.198', 'logout', 'User logged out', '2023-07-01 11:21:35'),
(52, NULL, '120.188.6.198', 'logout', 'User logged out', '2023-07-01 11:21:50'),
(53, 2021320109, '120.188.6.198', 'login', 'User logged in', '2023-07-01 11:22:00'),
(54, 2021320109, '120.188.6.198', 'login', 'User logged in', '2023-07-01 12:09:08'),
(55, 2021320109, '120.188.6.198', 'transaksi_KartuHilang', 'Transaksi kartu hilang dengan kode booking H10D0F sebesar 0', '2023-07-01 12:09:55'),
(56, 2021320109, '120.188.6.198', 'logout', 'User logged out', '2023-07-01 12:13:42'),
(57, 2021320010, '110.138.91.228', 'login', 'User logged in', '2023-07-01 14:17:00'),
(58, 2021320004, '118.99.106.212', 'transaksi_Topup', 'Topup dengan kode booking AZHNZZ sebesar 20000', '2023-07-04 05:42:26'),
(59, 2021320004, '118.99.106.212', 'Transaksi_Cancel', 'Transaksi dengan ID 196 dibatalkan', '2023-07-04 05:43:15'),
(60, 1, '118.99.106.212', 'User_Update', 'Pengguna 2021320004 Telah Diperbarui', '2023-07-04 06:01:07'),
(61, 2021320004, '118.99.106.212', 'transaksi_Topup', 'Topup dengan kode booking R3HW3V sebesar 50000', '2023-07-04 06:42:41'),
(62, 2, '118.99.106.212', 'transaksi_approve', 'Transaksi dengan kode booking R3HW3V disetujui', '2023-07-04 06:52:44'),
(63, 1, '118.99.106.212', 'User_Update', 'Pengguna 2021320019 Telah Diperbarui', '2023-07-04 07:08:24'),
(64, 1, '118.99.106.212', 'User_Add', 'Pengguna 2021320123 Ditambahkan', '2023-07-04 07:15:57'),
(65, 2021320004, '118.99.106.212', 'transaksi_Topup', 'Topup dengan kode booking BJWO7R sebesar 50000', '2023-07-04 07:21:14'),
(66, 1, '118.99.106.212', 'transaksi_approve', 'Transaksi dengan kode booking BJWO7R disetujui', '2023-07-04 07:22:40'),
(67, 2, '118.99.106.212', 'User_Add', 'Pengguna 2021320063 Ditambahkan', '2023-07-04 07:34:39'),
(68, 2021320004, '118.99.106.212', 'transaksi_KartuHilang', 'Transaksi kartu hilang dengan kode booking 5QJ7YT sebesar 50000', '2023-07-04 07:44:10'),
(69, 2021320004, '118.99.106.212', 'Transaksi_Cancel', 'Transaksi dengan ID 199 dibatalkan', '2023-07-04 08:13:45'),
(70, 2021320004, '118.99.106.212', 'transaksi_KartuHilang', 'Transaksi kartu hilang dengan kode booking EZDKFE sebesar 0', '2023-07-04 08:14:05'),
(71, 2, '118.99.106.212', 'transaksi_approve', 'Transaksi dengan kode booking EZDKFE disetujui', '2023-07-04 08:15:40'),
(72, 2021320004, '118.99.106.212', 'transaksi_KartuHilang', 'Transaksi kartu hilang dengan kode booking BE5X9P sebesar 0', '2023-07-04 08:16:37'),
(73, 2, '118.99.106.212', 'transaksi_approve', 'Transaksi dengan kode booking BE5X9P disetujui', '2023-07-04 08:17:21'),
(74, 2021320004, '110.138.92.75', 'transaksi_Topup', 'Topup dengan kode booking W1J6G3 sebesar 20000', '2023-07-04 13:46:44'),
(75, 2021320004, '110.138.92.75', 'Transaksi_Cancel', 'Transaksi dengan ID 202 dibatalkan', '2023-07-04 13:47:36'),
(76, 2021320004, '110.138.92.75', 'transaksi_Topup', 'Topup dengan kode booking GUKBQ6 sebesar 20000', '2023-07-04 13:47:47'),
(77, 2021320004, '110.138.92.75', 'Transaksi_Cancel', 'Transaksi dengan ID 203 dibatalkan', '2023-07-04 13:48:12'),
(78, 2021320004, '110.138.92.75', 'transaksi_Topup', 'Topup dengan kode booking 7W158K sebesar 20000', '2023-07-04 13:48:21'),
(79, 2021320004, '110.138.92.75', 'Transaksi_Cancel', 'Transaksi dengan ID 204 dibatalkan', '2023-07-04 13:48:39'),
(80, 2021320004, '110.138.92.75', 'transaksi_KartuHilang', 'Transaksi kartu hilang dengan kode booking RJVML9 sebesar 0', '2023-07-04 13:49:29'),
(81, 2021320004, '110.138.92.75', 'Transaksi_Cancel', 'Transaksi dengan ID 205 dibatalkan', '2023-07-04 13:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` tinyint(4) NOT NULL,
  `nama_role` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `nama_status` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `nama_status`) VALUES
(1, 'ebiu'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `status_transaksi`
--

CREATE TABLE `status_transaksi` (
  `id_status_transaksi` tinyint(4) NOT NULL,
  `nama_status_transaksi` varchar(32) NOT NULL,
  `deskripsi_status_transaksi` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id_jenis_pembayaran` tinyint(4) NOT NULL,
  `id_status_transaksi` tinyint(4) NOT NULL,
  `bukti_pembayaran` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `validator` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kodebooking_transaksi`, `npm`, `id_jenis_transaksi`, `saldoawal_transaksi`, `nominal_transaksi`, `saldoakhir_transaksi`, `id_jenis_pembayaran`, `id_status_transaksi`, `bukti_pembayaran`, `created_at`, `updated_at`, `validator`) VALUES
(163, 'I6W8HK', 2021320032, 2, 20000, 0, 20000, 1, 3, '', '2023-06-21 09:57:03', '2023-06-21 09:59:17', ''),
(164, 'EIWYU2', 2021320042, 1, 20000, 20000, 40000, 1, 3, '', '2023-06-21 09:58:53', '2023-06-21 10:01:47', ''),
(165, 'HXUJ7W', 2021320004, 1, 20000, 50000, 70000, 2, 3, '20230621100552_1687316752_a250c70e94e5eac818d3.png', '2023-06-21 10:04:06', '2023-06-21 10:07:22', ''),
(166, 'UXANXG', 2021320034, 3, 20000, 3000, 17000, 1, 2, '', '2023-06-21 10:20:23', '2023-06-21 10:20:23', ''),
(167, 'N8H2SM', 2021320034, 3, 17000, 3000, 14000, 1, 2, '', '2023-06-21 10:23:31', '2023-06-21 10:23:31', ''),
(168, 'BV4PQ6', 2021320034, 3, 14000, 3000, 11000, 1, 2, '', '2023-06-21 10:25:19', '2023-06-21 10:25:19', ''),
(169, '5AVR1J', 2021320034, 3, 11000, 3000, 8000, 1, 2, '', '2023-06-21 10:25:29', '2023-06-21 10:25:29', ''),
(170, 'M9SDC4', 2021320034, 3, 8000, 5000, 3000, 1, 2, '', '2023-06-21 10:25:38', '2023-06-21 10:25:38', ''),
(171, '3AJGXW', 2021320021, 3, 20000, 3000, 17000, 1, 2, '', '2023-06-21 10:26:53', '2023-06-21 10:26:53', ''),
(172, '31FMW9', 2021320123, 3, 50000, 3000, 47000, 1, 2, '', '2023-06-21 10:27:34', '2023-06-21 10:27:34', ''),
(173, 'ZEGCTI', 2021320108, 1, 50000, 20000, 70000, 1, 4, '', '2023-06-21 21:19:21', '2023-06-21 21:21:43', ''),
(174, '7XP6WS', 2021320108, 1, 50000, 20000, 70000, 2, 4, '', '2023-06-21 21:21:59', '2023-06-21 21:26:53', ''),
(175, '5LXA65', 2021320108, 2, 50000, 50000, 100000, 1, 3, '', '2023-06-21 21:27:02', '2023-06-22 15:39:48', ''),
(177, 'ZIAYFX', 2021320004, 1, 70000, 20000, 90000, 2, 4, '20230623095115_1687488675_92864a62312b80204c61.png', '2023-06-23 09:44:41', '2023-06-23 09:51:19', ''),
(178, 'JP6L54', 2021320004, 1, 70000, 20000, 90000, 2, 4, '20230623095327_1687488807_840e81e9a2511fcda033.png', '2023-06-23 09:51:27', '2023-06-23 10:08:01', ''),
(179, 'CUTF6A', 2021320004, 1, 70000, 20000, 90000, 2, 4, '', '2023-06-23 10:09:18', '2023-06-26 14:07:34', ''),
(180, '135S4N', 2021320123, 1, 47000, 20000, 67000, 1, 4, '', '2023-06-24 11:44:29', '2023-06-24 11:45:25', ''),
(181, 'ZJEB6T', 2021320123, 1, 47000, 20000, 67000, 2, 4, '', '2023-06-24 11:45:39', '2023-06-24 11:45:55', ''),
(182, 'RE1M1V', 2021320032, 1, 20000, 20000, 40000, 1, 4, '', '2023-06-24 12:14:50', '2023-06-24 12:17:16', ''),
(183, '6S5NDD', 2021320032, 1, 20000, 20000, 40000, 2, 3, '', '2023-06-24 12:17:52', '2023-06-29 10:12:54', ''),
(184, 'YJB4WH', 2021320123, 1, 67000, 20000, 87000, 2, 3, '', '2023-06-25 17:25:39', '2023-06-29 10:29:08', 'arief fadhil'),
(185, 'DFM2AC', 2021320004, 1, 70000, 100000, 170000, 1, 4, '', '2023-06-26 14:07:51', '2023-06-26 14:08:26', ''),
(186, '6NMS1X', 2021320121, 1, 20000, 50000, 70000, 2, 4, '', '2023-06-27 18:53:22', '2023-06-27 18:56:42', ''),
(187, 'HWVZTF', 2021320121, 2, 20000, 0, 20000, 1, 3, '', '2023-06-29 10:31:42', '2023-06-29 10:32:29', 'arief fadhil'),
(188, 'LIILON', 2021320121, 1, 20000, 20000, 40000, 2, 3, '20230629103353_1688009633_961bc1a8045a30fe27cf.jpg', '2023-06-29 10:33:17', '2023-06-29 10:34:37', 'arief fadhil'),
(189, '5HV8XZ', 2021320121, 1, 40000, 200000, 240000, 1, 3, '', '2023-06-29 10:44:07', '2023-06-29 10:44:36', 'Admin Root'),
(190, 'I8P64X', 2021320010, 1, 0, 20000, 20000, 1, 3, '', '2023-07-01 11:23:03', '2023-07-01 11:23:34', 'arief fadhil'),
(191, '6FUB3S', 2021320010, 1, 20000, 20000, 40000, 1, 3, '', '2023-07-01 11:26:54', '2023-07-01 11:27:37', 'arief fadhil'),
(192, 'SBJ4RX', 2021320010, 2, 40000, 50000, 90000, 1, 3, '', '2023-07-01 11:31:21', '2023-07-01 11:35:27', 'Admin Root'),
(193, 'TCRPP7', 2021320010, 1, 90000, 20000, 110000, 1, 4, '', '2023-07-01 11:38:59', '2023-07-01 11:39:04', ''),
(194, '3LW7OR', 2021320010, 1, 90000, 20000, 110000, 1, 3, '', '2023-07-01 11:43:23', '2023-07-01 11:44:08', 'arief fadhil'),
(195, 'H10D0F', 2021320109, 2, 20000, 0, 20000, 1, 1, '', '2023-07-01 19:09:55', '2023-07-01 19:09:55', ''),
(196, 'AZHNZZ', 2021320004, 1, 70000, 20000, 90000, 1, 4, '', '2023-07-04 12:42:26', '2023-07-04 12:43:15', ''),
(197, 'R3HW3V', 2021320004, 1, 70000, 50000, 120000, 1, 3, '', '2023-07-04 13:42:41', '2023-07-04 13:52:44', 'arief fadhil'),
(198, 'BJWO7R', 2021320004, 1, 120000, 50000, 170000, 1, 3, '', '2023-07-04 14:21:14', '2023-07-04 14:22:40', 'Admin Root'),
(199, '5QJ7YT', 2021320004, 2, 170000, 50000, 220000, 1, 4, '', '2023-07-04 14:44:10', '2023-07-04 15:13:45', ''),
(200, 'EZDKFE', 2021320004, 2, 170000, 0, 170000, 1, 3, '', '2023-07-04 15:14:05', '2023-07-04 15:15:40', 'arief fadhil'),
(201, 'BE5X9P', 2021320004, 2, 170000, 0, 170000, 2, 3, '', '2023-07-04 15:16:37', '2023-07-04 15:17:21', 'arief fadhil'),
(202, 'W1J6G3', 2021320004, 1, 170000, 20000, 190000, 1, 4, '', '2023-07-04 20:46:44', '2023-07-04 20:47:36', ''),
(203, 'GUKBQ6', 2021320004, 1, 170000, 20000, 190000, 2, 4, '', '2023-07-04 20:47:47', '2023-07-04 20:48:12', ''),
(204, '7W158K', 2021320004, 1, 170000, 20000, 190000, 1, 4, '', '2023-07-04 20:48:21', '2023-07-04 20:48:39', ''),
(205, 'RJVML9', 2021320004, 2, 170000, 0, 170000, 1, 4, '', '2023-07-04 20:49:29', '2023-07-04 20:50:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `npm` int(11) NOT NULL,
  `id_kartu` int(11) NOT NULL,
  `id_role` tinyint(4) NOT NULL,
  `id_status` int(11) NOT NULL,
  `masa_berlaku` datetime NOT NULL,
  `nama` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` char(8) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`npm`, `id_kartu`, `id_role`, `id_status`, `masa_berlaku`, `nama`, `email`, `password`, `token`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '0000-00-00 00:00:00', 'Admin Root', 'rahmantoadmojo@gmail.com', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', '', '2023-05-05 03:55:40', '2023-06-29 00:11:10'),
(2, 4, 2, 2, '0000-00-00 00:00:00', 'arief fadhil', 'Arieffdhl@gmail.com', '202cb962ac59075b964b07152d234b70', '993554', '2023-05-05 03:57:11', '2023-07-01 10:54:13'),
(3, 5, 3, 1, '0000-00-00 00:00:00', 'dapidah', 'davidst@gmail.com', '202cb962ac59075b964b07152d234b70', '', '2023-05-05 03:58:02', '2023-06-16 01:37:25'),
(2021320004, 74, 4, 1, '0000-00-00 00:00:00', 'User1', 'yyvcc88@gmail.com', '0406a18e88e08146adcd5615610d80f1', '774860', '2023-06-21 09:39:00', '2023-07-04 14:50:31'),
(2021320006, 79, 4, 1, '0000-00-00 00:00:00', 'Atika Hanifah Cantik', 'atikahanifah35@gmail.com', '3110147156938d8288f99d2233dd5ae2', '', '2023-06-21 09:41:47', '2023-07-01 12:12:05'),
(2021320010, 84, 4, 1, '0000-00-00 00:00:00', 'Marcellino Satrio Putro', 'Marcsatrioff@gmail.com', '1809c4a1ed69581a8e082b76046de7c0', '', '2023-07-01 10:57:23', '2023-07-01 10:58:20'),
(2021320019, 86, 4, 1, '0000-00-00 00:00:00', 'Marcellino', 'marcsatrio2222ff@gmail.com', '433f0d6073c60045a6568ded1c2559ff', '', '2023-07-01 12:06:05', '2023-07-04 14:08:24'),
(2021320021, 77, 4, 1, '0000-00-00 00:00:00', 'Agustin Amalia Saputri', 'agustinamaliasaputri@gmail.com', 'c55623f9dfb97a64a7c7346d71fc863b', '', '2023-06-21 09:40:42', '2023-06-21 09:40:42'),
(2021320042, 73, 4, 2, '2023-06-22 00:00:00', 'Faradila Galuh Pramesti', 'faradilapramesti5181@gmail.com', '0ec5752fc999a6ab2b7bc866848ad69b', '', '2023-06-21 09:38:09', '2023-06-21 10:33:29'),
(2021320063, 89, 4, 1, '0000-00-00 00:00:00', 'Alexa Sellena', 'Alexa11@gmail.com', '0e0931a27e7d64557725cbe098803825', '', '2023-07-04 14:34:39', '2023-07-04 14:34:39'),
(2021320085, 83, 4, 1, '0000-00-00 00:00:00', 'Jhoni Susanto', 'j.susanto103@gmail.com', 'a7d62590f3784d8c12e698da06c3ab92', '', '2023-06-21 09:53:43', '2023-06-21 10:19:15'),
(2021320090, 81, 4, 2, '2023-07-21 00:00:00', 'Mauhamad Raihan Fawwaz Ramadhan', 'muhamadraihan1511@gmail.com', '5fbeb23148308e3d5b626655fea8da9c', '', '2023-06-21 09:44:31', '2023-06-21 09:49:09'),
(2021320108, 72, 4, 1, '0000-00-00 00:00:00', 'Nahdah Rizky Nur Afifah', 'ernahdah@gmail.com', '3ef7ab4d6db7968b2af086ea45706e48', '', '2023-06-21 09:36:23', '2023-06-21 09:36:23'),
(2021320109, 87, 4, 1, '0000-00-00 00:00:00', 'Arief Fadhillah', 'aeferforbiu@gmail.com', '5e97ea322d7e189cfdc2c983ca7959f8', '', '2023-07-01 18:21:28', '2023-07-01 18:21:28'),
(2021320123, 88, 4, 1, '0000-00-00 00:00:00', 'Jackson Marino', 'jack1010@gmail.com', '0872ce176670a9f639e566127999f683', '', '2023-07-04 14:15:57', '2023-07-04 14:15:57');

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
-- Indexes for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  ADD PRIMARY KEY (`id_jenis_pembayaran`);

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
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `npm` (`npm`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

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
  ADD KEY `fk_id_status_transaksi_references_table_status_transaksi` (`id_status_transaksi`),
  ADD KEY `fk_id_jenis_pembayaran_references_table_jenis_pembayaran` (`id_jenis_pembayaran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`npm`),
  ADD KEY `id_role_reference_tabel_role` (`id_role`),
  ADD KEY `id_kartu_reference_tabel_kartu` (`id_kartu`),
  ADD KEY `id_status_reference_table_status` (`id_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berkas`
--
ALTER TABLE `berkas`
  MODIFY `id_berkas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `harga`
--
ALTER TABLE `harga`
  MODIFY `id_harga` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kartu`
--
ALTER TABLE `kartu`
  MODIFY `id_kartu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD CONSTRAINT `log_aktivitas_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `user` (`npm`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_id_jenis_pembayaran_references_table_jenis_pembayaran` FOREIGN KEY (`id_jenis_pembayaran`) REFERENCES `jenis_pembayaran` (`id_jenis_pembayaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
