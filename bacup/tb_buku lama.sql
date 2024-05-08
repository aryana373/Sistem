-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2022 at 02:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pbp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `pengarang` text NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `tgl_input` date NOT NULL,
  `tahun` int(11) NOT NULL,
  `penerbit` text NOT NULL,
  `bahasa` varchar(20) NOT NULL,
  `ISBN` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `pengarang`, `harga`, `jumlah`, `total_harga`, `status`, `tgl_input`, `tahun`, `penerbit`, `bahasa`, `ISBN`) VALUES
(115, 'Metode Penelitian Kualitatif', 'Sugiyono', 40000, 0, 0, 2, '2022-09-03', 2017, 'Alfabeta', 'Indonesia', '979-514-051-5'),
(116, 'Kultur Jaringan : Teori dan Praktek', 'Dwi Hapsono', 45000, 3, 135000, 3, '2022-07-31', 2019, 'ANDI', 'Indonesia', '978-979-29-7189-7'),
(117, 'Pengantar Kepemimpinan: Teori dan Praktek', 'Peter G. Northouse', 35000, 0, 0, 2, '2022-07-31', 2018, 'ANDI', 'Indonesia', '978-979-29-7093-7'),
(118, 'Manajemen Layanan Khusus di Sekolah', 'Wildan Zulkarnain', 50000, 0, 0, 2, '2022-07-31', 2018, 'Bumi Aksara', 'Indonesia', '978-602-444-238-5'),
(119, 'Gizi Kesehatan Masyarakat', 'Michael J. Gibney', 70000, 1, 70000, 1, '2022-07-31', 2020, 'EGC', 'Indonesia', '978-979-769-116-5'),
(120, 'menguasai statistik dengan spss   25', 'Singgih Santoso', 45000, 0, 0, 6, '2022-07-31', 2019, 'Singgih Santoso', 'Indonesia', '978-602-04-5810-6'),
(122, 'Menguasai Statistik dengan SPSS 25', 'Singgih Santoso', 45000, 1, 45000, 1, '2022-07-31', 2019, 'Singgih Santoso', 'Indonesia', '978-602-04-5810-6'),
(123, 'Manajemen Layanan Khusus di Sekolah', 'Wildan Zulkarnain', 50000, 0, 0, 2, '2022-07-31', 2018, 'Bumi Aksara', 'Indonesia', '978-602-444-238-5'),
(124, 'menguasai statistik dengan spss 33', 'made Santoso', 40000, 4, 160000, 3, '2022-07-31', 2022, 'Singgih', 'Indonesia', '978-602-04-5810-8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
