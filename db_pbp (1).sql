-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2022 at 07:47 AM
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
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `id_user` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `nama` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `jenis_user` varchar(15) NOT NULL,
  `unit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id_user`, `username`, `nama`, `password`, `jenis_user`, `unit`) VALUES
(1, 'kim', 'Kadek Aryana Dwi Putra,S.Kom.,M.A', 'fb1eaf2bd9f2a7013602be235c305e7a', 'admin', 'Admin '),
(2, 'fisip', 'Admin FISIP', '6ce566b74c3d4a9320ea15804dbb6e87', 'user', 'FISIP UNUD'),
(3, 'fmipa', 'Admin FMIPA', '640a10b73e5d19e72f5589be18d642f2', 'user', 'FMIPA UNUD'),
(4, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Admin ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bantu_pilih`
--

CREATE TABLE `tb_bantu_pilih` (
  `id_pilih` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jumlah_terpilih` int(11) NOT NULL,
  `status_terpilih` int(11) NOT NULL,
  `periode` int(11) NOT NULL,
  `total_harga_terpilih` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bantu_pilih`
--

INSERT INTO `tb_bantu_pilih` (`id_pilih`, `buku_id`, `user_id`, `jumlah_terpilih`, `status_terpilih`, `periode`, `total_harga_terpilih`) VALUES
(121, 548, 2, 2, 0, 1, 22000),
(125, 533, 2, 2, 0, 1, 160000),
(133, 528, 3, 1, 0, 1, 38000),
(136, 546, 3, 1, 0, 1, 30000),
(138, 547, 3, 1, 0, 1, 125000),
(144, 529, 2, 2, 0, 1, 222000),
(150, 527, 2, 2, 0, 1, 72000),
(151, 513, 2, 2, 0, 1, 130000),
(152, 538, 3, 3, 0, 1, 465000),
(154, 530, 3, 3, 0, 1, 357000),
(157, 527, 3, 1, 0, 1, 36000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `pengarang` text CHARACTER SET utf8 DEFAULT NULL,
  `isbn` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `penerbit` varchar(48) CHARACTER SET utf8 DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `bahasa` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `pengarang`, `isbn`, `penerbit`, `tahun`, `bahasa`, `harga`, `jumlah`, `total_harga`, `status`, `tgl_input`) VALUES
(8, 'Merah Putih : Antologi Puisi', 'Suastini, Ni Putu Putri', '978-602-5529-34-4', 'PT Percetakan Bali', 2020, 'Indonesia', 0, 2, 0, 1, '2022-09-10'),
(9, 'Suara Hati Guru di Masa Pandemi', 'Suastini, Ni Putu Putri', '978-602-5529-35-1', 'PT Percetakan Bali', 2020, 'Indonesia', 0, 2, 0, 1, '2022-09-11'),
(10, 'Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA', 'Tim Penulis', '978-602-5616-23-5', 'Direktorat Sekolah Menengah Atas', 2020, 'Indonesia', 0, 2, 0, 1, '2022-09-12'),
(11, 'Pola Baru Manajemen Sekolah Menengah Atas', 'Tim Penulis', '978-602-5616-25-9', 'Direktorat Sekolah Menengah Atas', 2020, 'Indonesia', 0, 2, 0, 1, '2022-09-13'),
(12, 'Kepemimpinan Kepala SMA yang Berorientasi pada Peningkatan Kualitas Hasil Belajar Siswa', 'Tim Penulis', '978-602-5616-24-2', 'Direktorat Sekolah Menengah Atas', 2020, 'Indonesia', 0, 2, 0, 1, '2022-09-14'),
(13, 'Paradigma Belajar dan Mengajar yang Berkesan : Kunci Kolaborasi Keluarga dengan Sekolah', 'Tim Penyusun', '978-602-5616-27-3', 'Direktorat Sekolah Menengah Atas', 2020, 'Indonesia', 0, 2, 0, 1, '2022-09-15'),
(14, 'Cara Ampuh Berpikir Kreatif: Kiat-Kiat Berpikir Kreatif Kaum Muda Milenial', 'Ningrum, Restia', '978-623-7115-49-6', 'Psikologi Corner', 2019, 'Indonesia', 50000, 0, 0, 2, '2022-09-16'),
(15, 'Alice\'s Adventures in Wonderland', 'Carroll, Lewis', '9786020387871', 'PT Gramedia Pustaka Utama', 2019, 'Indonesia', 0, 2, 0, 1, '2022-09-17'),
(16, 'Jokowi: Menuju Cahaya', 'Endah, Alberthiene', '978-602-320-680-3', 'PT Tiga Serangkai Pustaka Mandiri', 2019, 'Indonesia', 0, 2, 0, 1, '2022-09-18'),
(18, 'Jejak Dalem Tamblingan di Bali Utara (Desa Pancasari dan Desa Munduk)', 'Tim Penyusun Buku Kersos', '9786021424728', 'Universitas Mahendradatta', 2018, 'Indonesia', 0, 2, 0, 1, '2022-09-20'),
(20, 'Kamus Besar Bahasa Indonesia', 'Sunendar, Dadang', '978-602-437-171-5', 'CV Adi Perkasa', 2018, 'Indonesia', 0, 2, 0, 1, '2022-09-22'),
(21, 'Wirausaha Saja! Menjadi Pribadi Mandiri Dimulai Dari Usaha Sendiri', 'Askandar, Noor Shodiq', '978-602-6847-61-4', 'Esensi', 2018, 'Indonesia', 0, 2, 0, 1, '2022-09-23'),
(22, 'Peter Pan', 'Barrie, J. M.', '9786020303475', 'PT Gramedia Pustaka Utama', 2018, 'Indonesia', 60000, 0, 0, 2, '2022-09-24'),
(23, 'Ensiklopedia Napza: Zat Adiktif Jenis-Jenis dan Kandungannya', 'Ratriningsih, Dwi Pajar', '978-602-60520-2-5', 'Ardin Karya Bersama', 2017, 'Indonesia', 0, 2, 0, 1, '2022-09-25'),
(24, 'Ensiklopedia Napza: Psikotropika Jenis-Jenis dan Kandungannya', 'Wulan, Suryaning', '978-602-60520-1-8', 'Ardin Karya Bersama', 2017, 'Indonesia', 0, 2, 0, 1, '2022-09-26'),
(25, 'Ensiklopedia Napza : Narkotika, Jenis-Jenis dan Kandungan Jilid 1', 'Abdurahman, Dede', '978-602-60520-0-1', 'Ardin Karya Bersama', 2017, 'Indonesia', 0, 2, 0, 1, '2022-09-27'),
(26, 'Ensiklopedia Napza : Pemberantasan Narkoba di Lingkungan Sekolah dan Masyarakat Jilid 5', 'Nurhakim, Syerif', '978-602-60520-4-9', 'Ardin Karya Bersama', 2017, 'Indonesia', 0, 2, 0, 1, '2022-09-28'),
(27, 'Ensiklopedia Napza : Metode Penyuluhan, Pencegahan, dan Pemberantasan Narkoba', 'Wulan, Suryaning', '978-602-60520-5-6', 'Ardin Karya Bersama', 2017, 'Indonesia', 0, 2, 0, 1, '2022-09-29'),
(28, 'Someday', 'Efendi, Winna', '978-979-780-887-7', 'GagasMedia', 2017, 'Indonesia', 0, 2, 0, 1, '2022-09-30'),
(29, 'Kisah Sri Krsna dan Balarama', 'Adnyana, Gede Agus Budi', '978-979-617-141-5', 'CV. Kayumas Agung', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-01'),
(30, 'Aku Cinta Lovina: Sebuah Novel', 'Basuki, Sunaryono', '978-602-70355-8-4', 'Balai Bahasa Bali', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-02'),
(31, 'Bali Mandara, Estafeta untuk Generasi Muda : Manajemen Transformasi Pembangunan Bali', 'Suharja, Arya', '978-979-700-036-3', 'Bappeda Litbang Provinsi bali', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-03'),
(32, 'Sujud Kepada Krisna Perwujudan Keindahan', 'Anandamurti, Shrii Shrii', '978-062-72426-5-4', 'Yayasan Ananda Marga Yoga', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-04'),
(33, 'Ensiklopedia Napza : Bahaya Narkoba Dampak Kesehatan dan Hukum', 'Lacanda, Jayusman', '978-602-605-20-3', 'Ardit Karya Bersama', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-05'),
(34, 'Kelas Skenario: Wujudkan Ide Menjadi Naskah Film', 'Aristo, Salman', '978-602-6847-58-4', 'Esensi', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-06'),
(35, 'Instant Marketing For Busy People: Rangkuman Intisari Pemasaran', 'Ridwansyah, Ardhi', '978-602-6847-32-4', 'Esensi', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-07'),
(36, 'Koperasi dan UMKM sebagai Fondasi Perekonomian Indonesia', 'Tanjung, M Azrul', '978-602-434-231-9', 'Penerbit Erlangga', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-08'),
(37, 'Buku Seri Pendidikan Anti Korupsi : Sejarah Korupsi', 'Tim Penyusun', '978-602-71957-8-3', 'PT Tirta Asih Jaya', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-09'),
(38, 'Buku Seri Pendidikan Anti Korupsi : Pemberantasan Tindak Korupsi', 'Tim Penyusun', '978-602-61807-2-8', 'PT Tirta Asih Jaya', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-10'),
(39, 'Buku Seri Pendidikan Anti Korupsi : Upaya Pencegahan Tindak Korupsi', 'Tim Penyusun', '978-602-61807-1-1', 'PT Tirta Asih Jaya', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-11'),
(40, 'Buku Seri Pendidikan Anti Korupsi : Dampak Korupsi', 'Tim Penyusun', '978-602-61807-0-4', 'PT Tirta Asih Jaya', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-12'),
(41, 'Buku Seri Pendidikan Anti Korupsi : Bentuk-Bentuk Korupsi', 'Tim Penyusun', '978-602-71957-9-0', 'PT Tirta Asih Jaya', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-13'),
(42, 'Buku Seri Pancasila dalam Kehidupan Berbangsa dan Bernegara : Pancasila Sebagai Solusi Permasalahan Bangsa Indonesia', 'Tim Penyusun', '978-602-61807-8-0', 'PT Tirta Asih Jaya', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-14'),
(43, 'Buku Seri Pancasila dalam Kehidupan Berbangsa dan Bernegara : Pengamalan Nilai-Nilai Pancasila', 'Tim Penyusun', '978-602-61807-4-2', 'PT Tirta Asih Jaya', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-15'),
(44, 'Buku Seri Pancasila dalam Kehidupan Berbangsa dan Bernegara : Pancasila dalam UUD Negara Republik Indonesia Tahun 1945', 'Tim Penyusun', '978-602-61807-6-6', 'PT Tirta Asih Jaya', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-16'),
(45, 'Buku Seri Pancasila dalam Kehidupan Berbangsa dan Bernegara : Sejarah Lahirnya Pancasila', 'Tim Penyusun', '978-602-61807-4-2', 'PT Tirta Asih Jaya', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-17'),
(46, 'Buku Seri Pancasila dalam Kehidupan Berbangsa dan Bernegara : Hakikat Pancasila', 'Tim Penyusun', '978-602-61807-4-2', 'PT Tirta Asih Jaya', 2017, 'Indonesia', 0, 2, 0, 1, '2022-10-18'),
(47, 'Deteksi Kepribadian', 'Ghazali, H.A. Muin', '978-602-217-283-3', 'PT Bumi Aksara', 2016, 'Indonesia', 0, 2, 0, 1, '2022-10-19'),
(48, 'Harry Potter Et L\'enfant Maudit: Parties Un Et Deux', 'Rowling, J. K.', '978-2-07-507420-9', 'Gallimard', 2016, 'Indonesia', 0, 2, 0, 1, '2022-10-20'),
(49, 'Kamus Budaya Bali', 'Sukayana, I Nengah', '978-979-069-158-2', 'Balai Bahasa Bali', 2016, 'Indonesia', 0, 2, 0, 1, '2022-10-21'),
(50, '4G Guru Gaul Guru Galau', 'Dedew', '978-602-366-112-1', 'Tiga Ananda', 2016, 'Indonesia', 0, 2, 0, 1, '2022-10-22'),
(51, 'Kisah-Kisah Ajaran Panca-Sradha untuk Anak-Anak', 'Adnyana, Gede Agus Budi', '978-979-617-140-8', 'CV Kayumas Agung', 2016, 'Indonesia', 0, 2, 0, 1, '2022-10-23'),
(52, 'Memberi Jarak Pada Cinta', 'Falafu', '978-979-794-518-3', 'Medkita', 2016, 'Indonesia', 0, 2, 0, 1, '2022-10-24'),
(53, 'Seri Literasi Remaja: Kisah Ramayana', 'Suryosubroto, B.', '978-602-6847-05-8', 'Esensi', 2016, 'Indonesia', 0, 2, 0, 1, '2022-10-25'),
(54, '100 Golden Tips for Creativepreneur', 'Wirawan, Steve', '978-602-6328-23-6', 'Metagraf', 2016, 'Indonesia', 0, 2, 0, 1, '2022-10-26'),
(55, '120 Koleksi Lagu Wajib Nasional Indonesia', 'Kirana, Dilla Candra', '979-0-9013887-0-3', 'Kunci Aksara', 2016, 'Indonesia', 0, 2, 0, 1, '2022-10-27'),
(56, 'Gugur Bunga Kedaton: Sebuah Novel Kolosal', 'Wahyu, H.R.', '978-602-72097-2-5', 'Metamind', 2015, 'Indonesia', 0, 2, 0, 1, '2022-10-28'),
(57, 'Kubah di Atas Pasir', 'Fanani, Zhaenal', '978-602-72834-1-1', 'Metamind', 2015, 'Indonesia', 0, 2, 0, 1, '2022-10-29'),
(58, 'Ramayana', 'Lal, P.', '978-602-7521-18-6', 'MediaHindu', 2015, 'Indonesia', 0, 2, 0, 1, '2022-10-30'),
(59, 'Mahir Bercerita', 'Wahyudi, Johan', '978-602-9124-05-7', 'PT Pustaka Sunda', 2015, 'Indonesia', 0, 2, 0, 1, '2022-10-31'),
(60, 'Atlas Sejarah Indonesia dan Dunia', 'Jamil, Achmad', '979369746-6', 'Mascot Nusantara', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-01'),
(61, '99,9% Langsung Nangkap Soal-soal Latihan Sejarah SMA', 'Tim Tutor', '978-602-98535-7-5', 'Cahaya Atma Pustaka', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-02'),
(62, 'Ilmu Bumi', 'Tarbuck, Edward J.', '978-602-434-434-4', 'Erlangga', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-03'),
(63, 'Arief Rachman: Guru', 'Komarudin, Ukim', '978-602-7596-99-3', 'Esensi', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-04'),
(64, 'Bidadari Pemeluk Subuh', 'Rosadi, Nicky', '978-602-02-6868-2', 'Gramedia', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-05'),
(65, 'Nasihat Diri Menyelami Hidup dari Makna ke Makna', 'Yuliawan, Teddy Prasetya', '978-602-257-383-8', 'Metagraf', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-06'),
(66, 'Panrestyan Pandawa Korawa', 'Mardika, Jro Made M.', '978-602-204-497-0', 'Paramita', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-07'),
(67, 'Brahmavaivarta Purana', 'Maswinara, I Wayan', '979-9257-72-7', 'Paramita', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-08'),
(68, 'Pengawasan Pemilu Partisipatif: Gerakan Masyarakat Sipil untuk Demokrasi Indonesia', 'Suswantoro, Gunawan', '978-602-298-570-9', 'Penerbit Erlangga', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-09'),
(69, 'Intisari Biologi', 'Simon, Eric J.', '978-602-434-432-0', 'Penerbit Erlangga', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-10'),
(70, 'Berpikir Matematis : Matematika untuk Semua', 'Budhi, Wono Setya', '978-602-298-279-1', 'Penerbit Erlangga', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-11'),
(71, 'Buku Seri Bahaya Narkoba : Kamus Narkoba', 'Tim Penyusun', '978-602-71957-6-9', 'PT Tirta Asih Jaya', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-12'),
(72, 'Buku Seri Bahaya Narkoba ; Tata Cara Merehabilitasi Pecandu Narkoba', 'Tim Penyusun', '978-602-71957-5-2', 'PT Tirta Asih Jaya', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-13'),
(73, 'Buku Seri Bahaya Narkoba : Upaya Pencegahan dan Penanggulangan Penyalahgunaan Narkoba', 'Tim Penyusun', '978-602-71957-4-5', 'PT Tirta Asih Jaya', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-14'),
(74, 'Buku Bahaya Narkoba : Dampak dan Bahaya Narkoba', 'Tim Penyusun', '978-602-71957-3-8', 'PT Tirta Asih Jaya', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-15'),
(75, 'Buku Seri Bahaya Narkoba : Penyalahgunaan Narkoba', 'Tim Penyusun', '978-602-71957-2-1', 'PT Tirta Asih Jaya', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-16'),
(76, 'Buku Seri Bahaya Narkoba : Sejarah Narkoba', 'Tim Penyusun', '978-602-71957-1-4', 'PT Tirta Asih Jaya', 2015, 'Indonesia', 0, 2, 0, 1, '2022-11-17'),
(77, 'Rangkuman Pengetahuan Umum Lengkap (RPUL)', 'Tim Penyusun RPUL Buana Raya', '9789799451231', 'CV. Buana Raya', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-18'),
(78, 'Amurwabhumi: Cleret Taun', 'Hariadi, Langit Kresna', '978-602-9251-25-8', 'Metamind', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-19'),
(79, 'Mahabharata Asta Dasa Parwa (1): Adi Parwa', 'Gun, Gun', '978-602-9138-47-4', 'ESBE', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-20'),
(80, 'Mahabharata Asta Dasa Parwa (2): Sabha Parwa', 'Gun, Gun', '978-602-9138-48-1', 'ESBE', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-21'),
(81, 'Mahabharata Asta Dasa Parwa (3): Wana Parwa', 'Gun, Gun', '978-602-9138-49-8', 'ESBE', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-22'),
(82, 'Mahabharata Asta Dasa Parwa (4): Wirata Parwa', 'Gun, Gun', '978-602-9138-50-4', 'ESBE', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-23'),
(83, 'Mahabharata Asta Dasa Parwa (5): Udyoga Parwa', 'Gun, Gun', '978-602-9138-51-1', 'ESBE', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-24'),
(84, 'Satua Bali Kambing Takutin Macan', 'Supatra, I N. K.', '978-979-617-033-3', 'CV. Kayumas Agung', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-25'),
(85, 'Ayo Mengenal Kereta Api Indonesia', 'Muryanti', '978-602-9354-15-7', 'Pustaka Purwonegaran', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-26'),
(86, 'Pilihan Cinta Jo: Love Affair', 'Mathilda, Wike', '978-602-17533-0-9', 'Penerbit Mandiri Pustaka', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-27'),
(87, 'Sebuah Usaha Menulis Surat Cinta', 'Puthut EA', '978-602-1318-04-1', 'EA Books', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-28'),
(88, 'Menolak Kekuasaan Raja Gelgel: Masyarakat Desa Wangaya Gede Lakukan Upacara Pitra Yadnya dengan Cara Berbeda', 'Aryanatha, I Nengah', '978-602-98996-7-2', 'Ashram Gandhi Puri', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-29'),
(89, 'Ginanti Tanah Bali : Antologi Puisi', 'Adityarini, Putri', '978-602-1510-16-2', 'Penerbit Kendi Aksara', 2014, 'Indonesia', 0, 2, 0, 1, '2022-11-30'),
(90, 'Semua Indah, pada Waktunya', 'Hartono, Eko', '978-602-1588-57-4', 'Rumah Oranye', 2014, 'Indonesia', 0, 2, 0, 1, '2022-12-01'),
(91, 'Otonomi Daerah Menuju Era Baru Pembangunan Daerah 3', 'Kuncoro, Mudrajat', '978-602-298-187-9', 'Erlangga', 2014, 'Indonesia', 0, 2, 0, 1, '2022-12-02'),
(92, 'Minna no Nihongo 1', 'Indonesian Edition', '979-3303-018', 'International Multicultural (I\\\'Mc) Center Press', 2014, 'Indonesia', 0, 2, 0, 1, '2022-12-03'),
(93, 'Pintar IPA Sains', 'Ikranegara, Yudistira', '978-602-365-007-1', 'Lingkar Media', 2014, 'Indonesia', 0, 2, 0, 1, '2022-12-04'),
(94, 'How to Become A Great Supervisor: 67+ Saran Ahli untuk Sukses dalam Dunia Kerja Profesional', 'Andiyasari, Andin', '978-602-9212-21-1', 'Metagraf', 2014, 'Indonesia', 0, 2, 0, 1, '2022-12-05'),
(95, 'Politik Hukum: Hak Asasi Manusia', 'Marzuki, Suparman', '007-340-007-0', 'Penerbit Erlangga', 2014, 'Indonesia', 0, 2, 0, 1, '2022-12-06'),
(96, 'Penyakit Kardiovaskular pada Wanita: Buku Saku Klinis', 'Bybee, Kevin A.', '978-602-241-653-1', 'Penerbit Erlangga', 2014, 'Indonesia', 0, 2, 0, 1, '2022-12-07'),
(97, 'Desain instruksional Modern: Panduan Para Pengajar dan Inovator Pendidikan', 'Suparman, M. Atwi', '978-602-298-011-7', 'Penerbit Erlangga', 2014, 'Indonesia', 0, 2, 0, 1, '2022-12-08'),
(98, 'Balas Dendam yang Sangat Manis', 'A.K', '978-602-03-0365-9', 'PT Gramedia Pustaka Utama', 2014, 'Indonesia', 0, 2, 0, 1, '2022-12-09'),
(99, 'Perjalanan Konstitusi Menuju Indonesia Jaya', 'Erlangga, Ruri', '978-602-14035-1-8', 'CV Gemilang Sukses Bersama', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-10'),
(100, 'Kamus Lengkap Bahasa Indonesia', 'Sulistyowati', '9789799451101', 'CV. Buana Raya', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-11'),
(101, 'Aku Diramu dalam Pasukan', 'Nurhayati, Bety', '978-979-041-318-4', 'Ganeca Exact', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-12'),
(102, 'Origami Hati', 'Candra, Boy', '979-795-778-0', 'Wahyumedia', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-13'),
(103, 'Melihat Indonesia dalam Angka', 'Fitri, Khalida', '978-602-14035-0-1', 'CV. Gemilang Sukses Bersama', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-14'),
(104, 'Ergonomi Desain Produk Kriya', 'Utomo, Agus Mulyadi', '978-602-9164-11-4', 'UPT. Penerbitan ISI Denpasar', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-15'),
(105, 'Memihak Bumi Sasak', 'Suryani, Tri Vivi', '978-602-9350-05-0', 'Pustaka Wijaya Kusuma', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-16'),
(106, 'Aku Dirakit Dalam Pasukan', 'Nurbesti, Indri', '978-979-041-319-1', 'Geneca Exact', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-17'),
(107, 'Kamus Lengkap Inggris-Indonesia Indonesia-Inggris', 'Goenawan MA. Adi', '9786003572879', 'Cahaya Agency Suabaya', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-18'),
(108, 'Menjadi Guru Profesional: Strategi Meningkatkan Kualifikasi dan Kualitas Guru di Era Global', 'Suyanto', '978-602-7596-50-4', 'Esensi', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-19'),
(109, 'Mau Kemana Setelah SMA', 'Ayodya, Wulan', '978-602-7596-60-3', 'Esensi', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-20'),
(110, 'Padang Tuh', 'Tudekamantra', '978-602-204-322-5', 'Paramita', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-21'),
(111, 'Ensiklopedia Tubuh Manusia', 'Parker, Steve', '978-602-252-295-0', 'Penerbit Erlangga', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-22'),
(112, 'Ensiklopedia Kimia 1', 'Tim Penulis', '978-602-9083-84-2', 'PT Lentera Abadi', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-23'),
(113, 'Ensiklopedia Kimia 2', 'Tim Penulis', '978-602-9083-85-9', 'PT Lentera Abadi', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-24'),
(114, 'Ensiklopedia Kimia 3', 'Tim Penulis', '978-602-9083-86-6', 'PT Lentera Abadi', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-25'),
(115, 'Ensiklopedia Kimia 4', 'Tim Penulis', '978-602-9083-87-3', 'PT Lentera Abadi', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-26'),
(116, 'Daftar Alamat dan Telepon Penting Untuk Pelajar', 'Khumairoh, Putri', '978-602-1593-35-6', 'PT Menteri Utama Unggul', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-27'),
(117, 'Kamus 4 Bahasa Seri 2', 'Suyadi', '978-979-084-844-3', 'PT Tiga Serangkai Pustaka Mandiri', 2013, 'Indonesia', 0, 2, 0, 1, '2022-12-28'),
(118, 'Belajar Komputer dan Internet Tanpa Kursus untuk Orang Biasa Versi Update!', 'Kautsar, Fathya', '978-979-877-277-1', 'MediaKom', 2012, 'Indonesia', 0, 2, 0, 1, '2022-12-29'),
(119, 'Blak-Blakan Bahas Mapel Kimia SMA', 'Haryanto, Untung Tri', '978-979-610-678-3', 'Cabe Rawit', 2012, 'Indonesia', 0, 2, 0, 1, '2022-12-30'),
(120, 'Blak-Blakan Bahas Mapel Ekonomi', 'Rosardi, Raras Gistha', '978-979-610-686-8', 'Cabe Rawit', 2012, 'Indonesia', 0, 2, 0, 1, '2022-12-31'),
(121, 'Blak-Blakan Bahas Mapel Sosiologi SMA', 'Ruchayati, Siti', '978-979-610-688-2', 'Cabe Rawit', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-01'),
(122, 'Psikologi Pendidikan & Pengajaran: Teori dan Praktik', 'Ambarjaya, Beni S.', '978-602-9324-11-2', 'CAPS', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-02'),
(123, 'Filsafat Ilmu', 'Endraswara, Suwardi', '978-602-9324-06-8', 'CAPS', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-03'),
(124, '30 Menit Panduan Senam Hamil di Rumah Anda', 'Agnesti, Renvilla', '978-979-911-138-8', 'Media Pressindo', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-04'),
(125, 'My Only : Jika benar itu cinta. Aku takkan lagi mengingkarinya', 'Sintriana, Irin', '978-979-911-107-4', 'Media Pressindo', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-05'),
(126, 'Pedoman Tata Ruang Perpustakaan Sekolah/Madrasah', 'Atmodiwiryo, Paramita', '978-979-008-180-2', 'Bee Media Indonesia', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-06'),
(127, 'Tips Membuat Anak Rajin Sekolah + Hobi Belajar', 'Fakhruddin, Asep Umar', '978-602-7665-00-2', 'Flashbooks', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-07'),
(128, 'Jurus Kilat Mahir Internet Dari Nol Hingga Jago Dalam Hitungan Menit', 'Soetejo, John', '978-602-9146-24-0', 'Dunia Komputer', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-08'),
(129, 'Kekuatan Pena: Kiat, Kekuatan dan Alasan Harus Menulis', 'Prasetyo, Eko', '978-979-062-328-6', 'PT INDEKS', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-09'),
(130, 'Menjadi Guru Tangguh Berhati Cahaya', 'Kusumah, Wijaya', '978-979-062-340-8', 'PT INDEKS', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-10'),
(131, 'Kiat Nyaman Mengajar di Dalam Kelas', 'Partin, Ronald L.', '979-683-987-3', 'PT INDEKS', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-11'),
(132, 'Tes Psikologi : Panduan Esensial unutuk Penggunaan dan Keberhasilan Tes-tes Terpopuler dalam Rekrutmen dan Pengembangan Karier', 'Jones, Stephanie', '978-979-062-361-3', 'PT INDEKS', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-12'),
(133, 'Ingin Sukses? Anda Harus Gila: Rahasia Sukses dari Orang-Orang Super Sukses', 'Sutikno, M. Sobry', '978-602-18045-1-3', 'Holistica', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-13'),
(134, 'Manajemen Pendidikan: Langkah Praktis Mewujudkan Lembaga Pendidikan yang Unggul (Tinjauan Umum dan Islami)', 'Sutikno, M. Sobry', '978-602-18045-0-6', 'Holistica', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-14'),
(135, 'Awas, Jangan Jadi Guru Karbitan!: Kesalahan-Kesalahan Guru dalam Pendidikan dan Pembelajaran', 'Subini, Nini', '978-602-98182-5-3', 'PT. Buku Kita', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-15'),
(136, 'Seni Berkomunikasi: \"Komunikasi Dua Arah\"', 'Narda, Bustami', '978-602-95327-3-9', 'Debe Mustika', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-16'),
(137, 'Hafal Ala Native Speakers 16 Tenses', 'Fanani, Achmad', '978-602-98183-4-5', 'PT Buku Kita', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-17'),
(138, '123 Anti Bego', 'Ashshiddiq, Arief', '978-602-9481-07-5', 'PlotPoint Publishing', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-18'),
(139, 'Sundarigama', 'Suarka, I Nyoman', '978-602-9138-24-5', 'ESBE', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-19'),
(140, 'Yang Tercecer dalam Memahami Hinduisme', 'Purwa, I Ketut', '978-602-9138-25-2', 'ESBE', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-20'),
(141, 'Sanghyang Kemahayanikan', 'Tim Penyusun', '978-602-9138-26-9', 'ESBE', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-21'),
(142, 'Kamus Inggris-Indonesia, Indonesia-Inggris 900 Triliun', 'Alexander, Billy Berlian', '978-602-233-099-8', 'Serba Jaya', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-22'),
(143, 'Kisah Emas yang Menjadi Pasir: 75 Cerita Anak Islami yang Menginspirasi Jiwa', 'Maksum, Muhammad Syukron', '979-878-182-1', 'Mutiara Media', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-23'),
(144, 'Kisah Menarik Einstein dan Kawan-Kawan', 'Subini, Nini', '978-602-98183-5-2', 'Javalitera', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-24'),
(145, 'Exstream 1500an Bahas Soal, Gak Pake Lelet ! KIMIA SMA', 'Rahadian, Titah Dewi', '978-602-950171-2/1', 'Pelangi Ilmu', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-25'),
(146, 'Exstream 1500an Bahas Soal, Gak Pake Lelet ! Matematika SMA', 'Supriyana, Sunu', '978-602-950170-4', 'Pelangi Ilmu', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-26'),
(147, 'Belajar Merawat Indonesia', 'Nugroho, M. Adi', '978-602-19578-1-3', 'Dompet Dhuafa', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-27'),
(148, 'SPM Seri Pendalaman Materi Bahasa Inggris', 'Tim Penyusun', '978-602-254-001-4', 'Esis', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-28'),
(149, 'SPM Seri Pendalaman Materi Matematika Program IPA', 'Sulistiyono', '978-979-099-664-9', 'Esis', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-29'),
(150, 'Buku Pegangan Kimia Siswa SMA Kelas XI', 'Sugiarti, Afrida Era', '978-602-9393-42-2', 'Jalur Mas Media', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-30'),
(151, 'Pendidikan Karakter dalam Metode Aktif, Inovatif & Kreatif', 'Listyarti, Retno', '978-602-7596-31-3', 'Erlangga', 2012, 'Indonesia', 0, 2, 0, 1, '2023-01-31'),
(152, 'Bagaimana  SIswa Belajar', 'Holt, John', '978-602-241-040-9', 'Erlangga', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-01'),
(153, 'Si Peramal Cinta', 'Diepen, Allison van', '978-602-7596-18-4', 'Esensi', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-02'),
(154, 'Cara AMPUH Merebut Hati Murid', 'Wahyono, Joko', '978-602-241-096-6', 'Esensi', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-03'),
(155, 'Garuda Selalu di Dadaku', 'Simorangkir, Lee', '978-979-3896-05-2', 'Grafindo Litera Media', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-04'),
(156, 'Inovasi Tanpa Batas Bahasa Inggris SMA/MA', 'Tim Penyusun', '602-939-367-7', 'Kendi Mas Media', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-05'),
(157, 'Membangun Karakter dengan Hati Nurani: Pendidikan Karakter untuk Generasi Bangsa', 'Saleh, Akh. Muwafik', '978-602-241-030-0', 'Penerbit Erlangga', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-06'),
(158, 'Olimpiade Fisilka SMA', 'Tim SSCIntersolusi', '978-979-099-998-5', 'Penerbit Erlangga', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-07'),
(159, 'Manajemen Sumber Daya Manusia', 'Bangun, Wilson', '978-602-241-056-0', 'Penerbit Erlangga', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-08'),
(160, 'Tokoh Kontroversial Dunia : Mereka yang Menggores Sejarah Kemanusiaan Dunia', 'Montefiore, Simon Sebag', '978-979-25-5569-2', 'Penerbit Erlangga', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-09'),
(161, 'Olimpiade Kimia SMA', 'Tim SSCIntersolusi', '978-979-099-999-2', 'Penerbit Erlangga', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-10'),
(162, 'Biologi', 'Campbell, Neil A.', '978-979-075-777-6', 'Penerbit Erlangga', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-11'),
(163, 'Kimia Dasar : Prinsip-Prinsip dan Aplikasi Modern Jilid 3', 'Petrucci, Ralph H.', '978-602-241-162-8', 'Penerbit Erlangga', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-12'),
(164, 'Kupas Tuntas 1001 Soal Geografi', 'Ika, Femilia', '978-979-610-654-7', 'Penerbit Pustaka Widyatama', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-13'),
(165, 'Aku Ini Binatang Jalang: Koleksi Sajak 1942-1949', 'Anwar, Chairil', '978-979-22-8493-5', 'PT Gramedia Pustaka Utama', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-14'),
(166, 'Kamus Besar Bahasa Indonesia Pusat Bahasa', 'Pusat Bahasa', '978-979-22-3841-9', 'PT Gramedia Pustaka Utama', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-15'),
(167, 'Geografi: untuk Kelas IX SMA dan MA', 'Mulyo, Bambang Nianto', '978-979-084-706-4', 'PT Tiga Serangkai Pustaka Mandiri', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-16'),
(168, 'Kimia 2 untuk Kelas XI SMA/MA', 'Susilowati, Endang', '978-979-084-776-7', 'PT Tiga Serangkai Pustaka Mandiri', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-17'),
(169, 'Kamus 4 Bahasa Seri 1', 'Suyadi', '978-979-084-843-6', 'PT Tiga Serangkai Pustaka Mandiri', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-18'),
(170, 'Akuntansi 2 untuk Kelas XII SMA dan MA', 'Tim Penulis', '978-979-084-780-4', 'PT Tiga Serangkai Pustaka Mandiri', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-19'),
(171, 'Akuntansi 1 untuk Kelas XI SMA dan MA', 'Tim Penulis', '978-979-084-779-8', 'PT Tiga Serangkai Pustaka Mandiri', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-20'),
(172, 'Seri Kursus di Rumah Tata Bahasa Perancis Pour les Debutants', 'Paryatun', '978-979-610-691-2', 'Pustaka Widyatama', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-21'),
(173, 'Ulangan yang Sering Keluar: Sukses Nilai 100 Kelas 10 SMA', 'Forum Jogja Teacher Club', '978-979610-683-7', 'Pustaka Widyatama', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-22'),
(174, 'Cara Baru Hafalan Percakapan Bahasa Perancis Metode Paris', 'Nuryadin, A.', '978-979-610-727-8', 'Pustaka Widyatama', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-23'),
(175, 'Kupas Tuntas 1001 Soal Ekonomi SMA', 'Purwanti', '978-979-610-669-1', 'Pustaka Widyatama', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-24'),
(176, 'Kupas Tuntas 1001 Soal Sosiologi SMA', 'Aryani, Nugraheni Eri', '978-979-610-681-3', 'Pustaka Widyatama', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-25'),
(177, 'Super Trik! Kimia SMA Kelas X, XI, dan XII', 'Zulviana, Aficha', '978-979-610-718-6', 'Pustaka Widyatama', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-26'),
(178, '99,99% Jawab Soal Kimia dengan Benar untuk SMA Kelas X, XI, dan XII', 'Dwiwahyu, Essye', '978-979-610-728-5', 'Pustaka Widyatama', 2012, 'Indonesia', 0, 2, 0, 1, '2023-02-27'),
(179, '101 Manipulasi Photoshop untuk Pemula', 'Effendhy, A. Asep', '978-979-877-181-1', 'MediaKom', 2011, 'Indonesia', 0, 2, 0, 1, '2023-02-28'),
(180, 'Buku Pintar EYD, Bahasa dan Sastra Indonesia', 'Cisca', '978-979-610-553-3', 'Cabe Rawit', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-01'),
(181, 'Bintang Kelas Kuasai Rumus Matematika SMA IPA', 'Santosa, Dono', '978-979-610-631-8', 'Cabe Rawit', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-02'),
(182, 'Bintang Kelas Kuasai Rumus Matematika SMA IPS', 'Santosa, Dono', '979-610-632-9', 'Cabe Rawit', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-03'),
(183, 'Himpunan PP 2010 tentang Pengelolaan dan Penyelenggaraan Pendidikan', 'Tim Redaksi Pustaka Yustisia', '978-979-341-084-5', 'Pustaka Yustisia', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-04'),
(184, 'Memahami Berbagai Etika Profesi dan Pekerjaan', 'Yuwono, Ismantoro Dwi', '978-979-341-094-4', 'Pustaka Yustisia', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-05'),
(185, 'Dasar-Dasar Akuntansi', 'Sadeli, H. Lili M.', '979-526-543-1', 'PT Bumi Aksara', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-06'),
(186, 'Rahasia Orang-Orang Kaya', 'Sher, Brian', '979-911-028-9', 'Media Pressindo', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-07'),
(187, 'Politik Bahasa: Risalah Seminar Politik Bahasa', 'Indonesia', '979-685-098-2', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-08'),
(188, 'Buku Praktis Bahasa Indonesia 1', 'Sugono, Dendy', '979-685-305-1', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-09'),
(189, 'Pemberdayaan Bahasa Indonesia Memperkukuh Budaya Bangsa Dalam Era Globalisasi : Risalah Kongres Bahasa Indonesia VIII', 'Badan Pengembangan Bahasa', '978-979-069-079-0', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-10'),
(190, 'Kamus Bahasa Indonesia untuk Pelajar', 'Kepala Badan Pengembangan dan Pembinaan Bahasa', '978-979-069-074-5', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-11'),
(191, 'Perencanaan Bahasa Pada Abad ke-21 Kendala dan Tantangan', 'Badan Pengembangan dan Pembinaan Bahasa', '978-979-069-078-3', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-12'),
(192, 'Buku Praktis Bahasa Indonesia 2', 'Sugono, Dendy', '979-685-304-3', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-13'),
(193, 'Desain Grafis dan Layout dengan Corel Draw X5 Adobe Photoshop CS5 Adobe InDesign CS5', 'Hidayatullah, A. Taufiq', '978-979-16501-8-2', 'Buana Pustaka', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-14'),
(194, 'Bentuk Muka Bumi', 'Endarto, Danang', '978-979-091-030-0', 'PT Pustaka Tiga Kelana', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-15'),
(195, 'Perpustakaan Ajaib Bibbi Bokken', 'Gaarder, Jostein', '978-979-433-595-6', 'Mizan Pustaka', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-16'),
(196, 'Rumah Bersih dan Sehat', 'Onggo, Ira Tri', '978-602-98039-5-2', 'New Diglossia', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-17'),
(197, 'Lovable English Grammar', 'Sutrisno', '978-602-98039-9-0', 'New Diglossia', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-18'),
(198, 'Highly Effective Inventory Management: Mengubah Sediaan Menjadi Laba', 'Arwani, Ahmad', '979-442-355-6', 'Penerbit PPM', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-19'),
(199, 'Mengembangkan, Mengimplementasikan dan Menggunakan Key Performance Indicators', 'Parmenter, David', '979-442-325-4', 'Penerbit PPM', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-20'),
(200, 'Rahasia Penyembuhan Diabetes Secara Alami', 'Wijoyo, Padmiarso M.', '978-602-98702-6-8', 'Bee Media AGRO', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-21'),
(201, 'Ensiklopedi Manusia (2) Sistem Kerja Tubuh: Apa yang Harus Kita Ketahui dari Kerja Tubuh Manusia?', 'Tim Medium', '978-602-8144-08-7', 'Penerbit Medium', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-22'),
(202, 'Pajang Sebuah Novel Epos', 'Susetya, Wawan', '9786029785463', 'Flashbooks', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-23'),
(203, 'Get Smart & Get Fun With SmartMath: Pintar Matematika Dengan Rumus Cepat & Praktis', 'Team, Optima', '987-979-15894-0-7', 'Al-Hikmah', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-24'),
(204, 'Bidang Datar', 'Salamah, Umi', '978-979-040-263-8', 'PT Wangsa Jatra Lestari', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-25'),
(205, 'Bilangan dan Operasinya', 'Suwarni', '978-979-040-318-5', 'PT Wangsa Jatra Lestari', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-26'),
(206, 'Mahir Pidato', 'Wahyudi, Johan', '978-602-9124-01-9', 'Pustaka Sunda', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-27'),
(207, 'Ayo Berani Pidato : Tips dan Trik Menjadi Singa Podium', 'Putranto, Adi', '978-602-9124-35-4', 'Pustaka Sunda', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-28'),
(208, 'Teori dan Teknik Konseling', 'Komalasari, Gantina', '978-979-062-239-5', 'PT INDEKS', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-29'),
(209, 'Panembahan Senapati Sang Penguasa Tanah Jawa', 'Daryanto', '978-602-98549-3-0', 'Metamind', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-30'),
(210, 'Penangsang: Kidung Takhta Asmara', 'PurwOkartun, NasSirun', '978-602-9251-01-2', 'Metamind', 2011, 'Indonesia', 0, 2, 0, 1, '2023-03-31'),
(211, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar dalam Ujian Sosiologi SMA', 'Prasetyo, Andi', '978-979-877-222-1', 'Planet Ilmu', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-01'),
(212, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar dalam Ujian Matematika SMA IPA', 'Variani, Dian Ika', '978-979-877-217-7', 'Planet Ilmu', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-02'),
(213, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar Dalam Ujian Bahasa Inggris SMA', 'Prawesthi, Arviandri Dias', '979-877-218-0', 'Planet Ilmu', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-03'),
(214, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar Dalam Ujian Bahasa Indonesia SMA', 'Atmaja, Jati Fitria', '979-877-221-0', 'Planet Ilmu', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-04'),
(215, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar Dalam Ujian FISIKA SMA', 'Nugroho, Asep', '979-877-225-3', 'Planet Ilmu', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-05'),
(216, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar Dalam Ujian Geografi SMA', 'Wulandari, Sri', '979-877-231-8', 'Planet Ilmu', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-06'),
(217, 'Super Sakti Matematika Dasar Sekolah Menengah Atas', 'Dwinanto', '978-979-788-308-9', 'Cerdas Interaktif', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-07'),
(218, '96 Penemuan Teknologi Terbaru', 'Setiawan, Yusuf', '978-602-96795-9-5', 'Penerbit KartaMedia', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-08'),
(219, 'Pendidikan Kewarganegaraan SMA Kelas x', 'Rochmadi, Nur Wahyu', '978-979-092-473-4', 'Yudhistira', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-09'),
(220, '25 Kreasi Antaran Pernikahan', 'Daud, Ocha', '9786028677066', 'Rumah Kreasi', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-10'),
(221, 'Aneka Kreasi Sulaman Bayangan', 'Nurjanah, Lilis', '9786028677073', 'Rumah Kreasi', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-11'),
(222, 'Kamus 800 Triliun Inggris - Indonesia Indonesia - Inggris', 'Alexander, Billy Berlian', '978-602-233-099-8', 'Serba Jaya', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-12'),
(223, 'Kompas Matematika Dasar dan IPA SNM-PTN (Kompilasi Soal dan Pembahasan)', 'Sobie, Ka', '978-602-96405-8-8', 'Quantum Media', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-13'),
(224, 'Kitab Tanaman Obat Nusantara', 'Widyaningrum, Herlina', '978-979-911-031-2', 'MedPress', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-14'),
(225, 'Pedoman Uger-Uger: Pasang Aksara Latin Basa Bali dan Pasang Aksara Bali Basa Bali', 'Gautama, Guru Gede Pasek Budha', '978-979-617-075-3', 'CV. Kayumas Agung', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-15'),
(226, 'Segala Hal Tentang Tanah, Rumah & Perizinannya', 'Manulang, Rinto', '978-602-8931-38-0', 'Buku Pintar', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-16'),
(227, 'Atlas Pahlawan Indonesia: 160 Pahlawan dan Pejuang Nusantara + Terkini', 'Komandoko, Gamal', '978-979-911-083-1', 'Penerbit Quantum Ilmu', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-17'),
(228, 'Teknik Menulis Surat Bisnis yang Efisien dan Menarik : Techniques of Writing Efficient and Attractive Business Letters', 'Zuhdi, Umar Farouk', '978-602-95016-9-0', 'Wahana Totalita', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-18'),
(229, 'Sehat Tanpa Dokter: Panduan Lengkap Memahami Tubuh agar Tetap Sehat dan Awet Muda', 'Mehmet', '978-602-8579-11-7', 'Qanita', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-19'),
(230, 'Buku Pintar Laptop: Menjawab Segala Pertanyaan & Permasalahan Seputar Hardware, Software, Penggunaan Laptop & Perawatannya', 'Prakoso, Kukuh', '978-979-29-1790-1', 'CV. Andi Offset', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-20'),
(231, 'Penjelajahan dan Perkemahan', 'Bawa, Achmad Andang Wahyu', '978-602-9139-05-1', 'PT Pantja Simpati', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-21'),
(232, 'Sekolah Masa penjajahan Belanda', 'Dwiyantara, Heru', '978-602-99446-4-8', 'Edu Pustaka', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-22'),
(233, 'Rajutan untuk Pemula', 'Pang, Tatha', '978-979-1481-47-2', 'Puspa Swara', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-23'),
(234, 'Kreasi Aksesori dari Kain Perca', 'Daud, Ocha', '9786027517035', 'Rumah Ide', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-24'),
(235, 'Percakapan Sehari-Hari Bahasa Korea : Korea-Inggris-Indonesia', 'Pratiwi, Asti P.', '9786021922361', 'Rumah Ide', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-25'),
(236, 'Si Pitung : Jawara Betawi Asli!', 'Garjon', '978-979-877-175-0', 'Penerbit MediaKom', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-26'),
(237, 'Membuat Laporan Sederhana dengan Microsoft Excel 2007', 'Huning, Sri', '978-602-9352-07-8', 'Tiga Media Prima', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-27'),
(238, 'Mengenal Kehidupan Serangga', 'Artiyono', '978-602-99432-0-7', 'Media Kertagama', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-28'),
(239, 'Habibie : Kecil tapi  Otak Semua', 'Makka, A. Makmur', '978-602-8672-20-7', 'Penerbit Edelweiss', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-29'),
(240, 'Pendidikan Global : Menggunakan Teknologi untuk Memperkenalkan Dunia Global kepada Para Siswa', 'Peters, Laurence', '978-979-062-246-3', 'Indeks', 2011, 'Indonesia', 0, 2, 0, 1, '2023-04-30'),
(241, 'Sumber Energi Alternatif', 'Artiyono', '978-602-99441-5-0', 'Pusta Batavia', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-01'),
(242, 'Fenomena Perairan Darat', 'Rahmawati, Atik', '978-602-99435-4-2', 'PT Pustaka Purwonegaran', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-02'),
(243, 'Zona Siswa Juara SMA XII IPS', 'Tim Bimbel', '979-26-1856-2', 'Citra Media', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-03'),
(244, 'Zona Siswa Juara SMA XII IPA', 'Tim Bimbel', '979-26-1857-0', 'Citra Media', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-04'),
(245, 'Mengenal Hutan Mangrove', 'Tjandra, Ellen', '978-602-97501-3-3', 'Pakar Media', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-05'),
(246, '99,9% Langsung Nangkap Soal-Soal Latihan PKn SMA', 'Tim Tutor', '978-602-98535-8-2', 'Cahaya Atma Pustaka', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-06'),
(247, 'Panduan Budi Daya dan 19 Ragam Olahan Mangga', 'Rukmana, Rahmat', '978-602-9319-18-7', 'Cahaya Atma Pustaka', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-07'),
(248, 'Menentukan Hati', 'Zettira, Zara', '978-979-099-372-3', 'Esensi', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-08'),
(249, 'Strategi Belajar: Seri Strategi Belajar', 'Barwood, Tom', '978-979-099-187-3', 'Esensi', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-09'),
(250, 'Apa yang Berbeda dari Guru Hebat: 12 Kisah Inspiratif Bagi Para Pendidik', 'Prasetyo, Eko', '978-979-099-296-2', 'Esensi', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-10'),
(251, 'Winning with Passion', 'Gani, Jimmy', '978-979-099-248-1', 'Esensi', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-11'),
(252, 'Powerful UKM: Produksi Mi', 'Rustandi, Deddy', '978-602-9212-24-2', 'Metagraf', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-12'),
(253, '10 Biang Untung UKM', 'Ardiyanto, Gunawan', '978-602-9212-11-2', 'Metagraf', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-13'),
(254, '7 Steps to Reach Your Dream', 'Isman, Budi', '978-602-98553-0-2', 'Metagraf', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-14'),
(255, 'The Art of Stimulating Idea: Jurus Mendulang Ide dan Insaf agar Kaya di Jalan Menulis', 'Trim, Bambang', '978-602-9212-25-9', 'Metagraf', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-15'),
(256, 'How to Clean Absolutely Everything', 'Worth Yvonne', '978-602-98553-2-6', 'Metagraf', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-16'),
(257, '10 Biang Bangkrut Usaha Kecil Menengah', 'Ardiyanto, Gunawan', '978-602-9212-03-7', 'Metagraf', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-17'),
(258, 'Senopati Terakhir', 'Wardoyo, Setyo', '978-979-168-262-6', 'Narasi', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-18'),
(259, 'Arti Mimpi Menurut Hindu: Pengetahuan Lengkap tentang Mimpi berdasarkan Sastra Hindu', 'Rini, Ayu', '978-602204-110-8', 'Paramita', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-19'),
(260, 'Kepemimpinan Hindu', 'Ariasna, Ketut Gede', '979-9044-62-6', 'Paramita', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-20'),
(261, 'Tri Sandhya Sembahyang dan Berdoa', 'Titib, I Made', '9769799044138', 'Paramita', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-21'),
(262, 'Pemikiran-Pemikiran yang Membentuk Dunia Modern: Dari Machiavelli Sampai Nietzsche)', 'Hardiman, F. Budi', '978-979-099-168-2', 'Penerbit Erlangga', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-22'),
(263, 'Belajar dengan Hati Nurani', 'Saleh, Akh. Muwafik', '978-979-099-105-7', 'Penerbit Erlangga', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-23'),
(264, 'Olimpiade Matematika SMA', 'SSCIntersolusi, Tim', '978-979-099-934-3', 'Penerbit Erlangga', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-24'),
(265, 'Cara Mengajar agar Siswa Tetap Ingat', 'Sprenger, Marilee', '978-979-099-476-8', 'Penerbit Erlangga', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-25'),
(266, 'Dasar-Dasar Kewirausahaan: Panduan Bagi Mahasiswa untuk Mengenal, Memahami, dan Memasuki Dunia Bisnis', 'Hendro, M.M.', '978-979-075-851-3', 'Penerbit Erlangga', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-26'),
(267, 'Panduan Bagi Guru Bahasa Inggris', 'Ceranic, Helena', '978-602-241-147-5', 'Penerbit Erlangga', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-27'),
(268, 'Menguasai 250 Karakter Mandarin Dasar Jilid 2', 'Lee, Philip Yungkin', '978-979-075-896-4', 'Penerbit Erlangga', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-28'),
(269, 'Kimia Dasar : Prinsip-Prinsip dan Aplikasi Modern Jilid 1', 'Petrucci, Ralph H.', '978-979-075-889-6', 'Penerbit Erlangga', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-29'),
(270, 'Akuntansi Dasar (untuk Pemula)', 'Manurung, Elvy Maria', '978-979-075-975-6', 'Penerbit Erlangga', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-30'),
(271, '1500 Resep Minuman Laku Dijual', 'Indriani', '978-979-22-7048-8', 'PT Gramedia Pustaka Utama', 2011, 'Indonesia', 0, 2, 0, 1, '2023-05-31'),
(272, 'Poison', 'Poole, Sara', '978-602-9251-07-4', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-01'),
(273, 'Terampil Mengolah Limbah Menjadi Wadah dan Mainan', 'Daryanto', '978-979-084-512-1', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-02'),
(274, 'Kamus Kesehatan Bergambar', 'Sutarmin', '978-979-084-429-2', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-03'),
(275, 'Pencemaran Udara dan Suara', 'Arinto, Nugroho', '978-979-084-401-8', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-04'),
(276, 'Sistem Gerak Pada Manusia', 'Setyo M. Ria', '978-979-084-402-5', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-05'),
(277, 'Perkembangbiakan Vegetatif', 'Nugroho, Arinto', '978-979-084-4032-2', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-06'),
(278, 'Kamus olahraga Bergambar untuk SMP, SMA, dan Umum', 'Sutarmin', '978-979-084-500-8', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-07'),
(279, 'Pencemaran Tanah dan Air', 'Nugroho, Arinto', '978-979-084-408-7', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-08'),
(280, 'Metode Cling: Semua Rumus Matematika Gak Pake Mikir', 'Tentor, Forum', '978-979-610-463-5', 'Pustaka Widyatama', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-09'),
(281, 'Strategi Meraih Medali Emas Olimpiade Matematika SMA', 'Binatari, Nikenasih', '978-979-610-536-6', 'Pustaka Widyatama', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-10'),
(282, 'Otodidak Belajar Mandarin', 'Semita, Muryani J.', '978-979-610-543-4', 'Pustaka Widyatama', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-11'),
(283, 'The Textbook of English Grammar', 'Riyanto, Slamet', '978-979-610-556-4', 'Pustaka Widyatama', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-12'),
(284, 'Strategi Meraih Medali Emas Olimpiade Fisika SMA', 'Forum Fisikawan Filosofis dan Fundamental', '978-979-610-481-9', 'Pustaka Widyatama', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-13'),
(285, 'Kupas Tuntas 1001 Soal Kimia SMA Kelas X, XI, dan XII', 'Rahayu, S. Si, Agustina Dwi', '979-610-616-7', 'Pustaka Widyatama', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-14'),
(286, 'Sepak Bola', 'Luxbacher, Joseph A.', '978-979-18189-0-2', 'Rajawali Pers', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-15'),
(287, 'Sosiologi Pendidikan : Individu, Masyarakat, dan pendidikan', 'Idi, H. Abdulah', '978-979-769-350-3', 'Rajawali Pers', 2011, 'Indonesia', 0, 2, 0, 1, '2023-06-16'),
(288, 'NIBIRU dan Kesatria Atlantis', 'Tasaro GK', '978-979-084-346-2', 'Tiga Serangkai', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-17'),
(289, 'Hukum Pornografi: Kumpulan Perundangan tentang Pornografi', 'Tim Redaksi Pustaka Yustisia', '978-979-341-071-5', 'Pustaka Yustisia', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-18'),
(290, 'Kompilasi Hukum Ketenagakerjaan dan Jamsostek', 'Tim Redaksi Pustaka Yustisia', '978-979-341-054-8', 'Pustaka Yustisia', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-19'),
(291, 'Having Fun with CorelDRAW X4', 'Puspitosari, Heni A.', '978-602-95880-5-7', 'Skripta', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-20'),
(292, 'Berani Memulai & Menjalankan Bisnis dari Rumah', 'Power, Paul', '978-602-8535-98-4', 'Penerbit Tiga Kelana', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-21'),
(293, 'Berani Memulai & Menjalankan Bisnis Cleaning Service', 'Gordon, Robert', '978-602-8535-90-8', 'Penerbit Tiga Kelana', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-22'),
(294, 'Front of the Class: Kisah Sukses Seorang Guru Penderita Sindrom Tourett', 'Cohen, Brad', '978-602-8535-87-8', 'Penerbit Tiga Kelana', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-23'),
(295, 'Yes, I Know Everything about Kanker Serviks! Mengenali, Mencegahnya, & Bagaimana Anda Menjalani Pengobatannya', 'Samadi, Heru Priyanto', '978-979-091-013-3', 'Penerbit Tiga Kelana', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-24'),
(296, 'Terampil Berbahasa Inggris: Beberapa Tips Mengajar Bahasa Inggris', 'Rusmajadi, Jodih', '978-979-062-112-1', 'PT INDEKS', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-25'),
(297, 'Bali, Benteng Terbuka 1995-2005: Otonomi Daerah, Demokrasi Elektoral, dan Identitas-Identitas Defensif', 'Nordholt, Henk Schulte', '978-979-3790-48-0', 'Pustaka Larasan', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-26'),
(298, 'Pertarungan Ideologis Barat-Timur Tentang Penyu di Bali', 'Sudiana, I Gusti Ngurah', '978-979-17499-1-6', 'IHDN Press', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-27'),
(299, 'Super Pintar Soal untuk SMA/MA IPA', 'Guru Indonesia Cerdas', '978-602-8276-44-3', 'Penerbit Indonesia Cerdas', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-28'),
(300, 'Rangkuman Tuntas Bahasa Inggris untuk SMA/MA Kelas XI', 'Sukur, Silvester Goridus', '978-602-8276-09-2', 'Penerbit Indonesia Cerdas', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-29'),
(301, 'Fisika 1 SMA Kelas X', 'Purwoko', '978-979-019-339-0', 'Yudhistira', 2010, 'Indonesia', 0, 2, 0, 1, '2023-06-30'),
(302, 'Membumikan Matematika: Dari Kampus ke Kampung', 'Manfaat, Budi', '978-602-97578-0-4', 'Eduvision Publishing', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-01'),
(303, 'Metode \"Nyleneh\" 20 Menit [Dijamin] Hafal 16 Tenses', 'Sutrisno, Hani', '978-979-610-427-7', 'PT Buku Kita', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-02'),
(304, 'Karma Keadilan Tertinggi', 'Prabhupada, Sri Simad A.C. Bhaktivedanta Swami', '978-979-9384-53-9', 'Hanuman Sakti', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-03'),
(305, 'Ngomongin Hal-Hal Sulit dengan Orang-Orang Sulit', 'Yektiningsih, Deti', '978-979-788-187-0', 'MedPress', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-04'),
(306, 'Hilangnya Benua Atlantis: Benarkah Indonesia adalah Atlantis?', 'Vidia, Aprilia', '978-979-25-4722-1', 'STARBOOKS', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-05'),
(307, 'Step by Step Jadi Dokter', 'Fiershanty, Sabreena', '978-979-25-4766-5', 'STARBOOKS', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-06'),
(308, 'Mendidik Anak Menjadi Unggulan: Membaca Dinamika yang Mengelilingi Dunia Anak', 'Fakhruddin, Asep Umar', '978-602-90062-1-0', 'Penerbit Manika Books', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-07'),
(309, '1 Jam Mahir Desain Logo Untuk Pemula', 'Team Cyber', '978-602-95935-7-0', 'HP Cyber Community', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-08'),
(310, 'Bahas Tuntas 1001 Soal Bahasa Inggris SMA', 'Arifa, Muftia Arum', '978-979-610-391-1', 'Pustakawa Widyatama', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-09'),
(311, 'Teknologi Informasi dan Komunikasi untuk SMP dan MTs Kelas IX', 'Buono, Agus', '978-979-078-100-9', 'PT. Dian Rakyat', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-10'),
(312, 'Obat-Obat Penting : Khasiat Penggunaan dan Efek-Efek Sampingnya', 'Tjay, Tan Hoan', '978-979-27-19130', 'PT Elex Media Komputindo', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-11'),
(313, 'Pengkayaan Percakapan Harian Jepang', 'Kamiya, Taeko', '978-602-955-643-8', 'Garailmu', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-12'),
(314, 'Oxford Advanced Learner\'s Dictionary', 'Hornby, A S', '978-0-19-479914-0', 'Oxford University Press', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-13'),
(315, 'Kreasi Rajutan Cantik', 'Pang, Tatha', '978-979-1477-67-3', 'Kriya Pustaka', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-14'),
(316, 'Fisika Dasar Jilid I', 'Halliday, David', '9789790993273', 'Erlangga', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-15'),
(317, 'Fisika Dasar Jilid 2', 'Halliday, David', '978-602-241-595-4', 'Erlangga', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-16'),
(318, 'Fisika Dasar Jilid 3', 'Halliday, David', '9786022417361', 'Erlangga', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-17'),
(319, 'Peramal Cinta is Back', 'Diepen, Allison van', '978-602-7596-23-8', 'Erlangga', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-18'),
(320, 'Kenali Narkoba dan Musuhi Penyalahgunaannya', 'Partodiharjo, Subagyo', '978-979-075-435-5', 'Esensi', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-19'),
(321, 'Change Your Thoughts - Change Your Life: Kearifan Tao untuk Hidup Anda', 'Dyer, Wayne W.', '978-979-075-556-7', 'Esensi', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-20'),
(322, 'Cukup Dengan Satu Buku : Buku Sakti Materi + Rumus Lengkap SMA/MA Kelas XI IPA', 'Tim Tentor Ahli', '978-602-8362-66-5', 'Kendi Mas Media', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-21'),
(323, 'Cukup dengan Satu Buku : Buku Sakti materi + Rumus Lengkap SMA/MA Kelas X', 'Tim Tentor Ahli', '978-602-8362-65-8', 'Kendi Mas Media', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-22'),
(324, 'Sejarah Revolusi Indonesia 1945-1950', 'Maeswara, Garda', '978-979-168-231-2', 'Narasi', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-23');
INSERT INTO `tb_buku` (`id_buku`, `judul`, `pengarang`, `isbn`, `penerbit`, `tahun`, `bahasa`, `harga`, `jumlah`, `total_harga`, `status`, `tgl_input`) VALUES
(325, 'Bhagavad Gita : Pedoman Mengenai Tugas Kehidupan Manusia di Dunia', 'Prabhupada, A.C Bhaktivedanta Swami', '978-979-168-219-0', 'Narasi', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-24'),
(326, 'Kepemimpinan (Leadership) dalam Agama Hindu', 'Subagiasta, I Ketut', '978-979-722', 'Paramita', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-25'),
(327, 'Deva Ganesa: Kisah Kemuliaan Deva Ganesa, Sang Penghalau Rintangan Putra Deva Siva dan Devi Parvati', 'Wirawan, I Made Adi', '978-979-722-918-4', 'Paramita', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-26'),
(328, 'Hari Raya Saraswati : Ditinjau Dari Segi Tattwa, Susila, dan Upacara', 'Suratmini, Ni Wayan', '978-979-722-988-7', 'Paramita', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-27'),
(329, 'Kepemimpinan Hindu', 'Ariasna, Ketut Gede', '979-9044-62-6', 'Paramita', 2019, 'Indonesia', 38000, 0, 0, 6, '2023-07-28'),
(330, 'Rekor Sepak Bola Dunia 2010', 'Radnedge, Keir', '978-979-075-558-1', 'Penerbit Erlangga', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-29'),
(331, 'Mengapa Siswa Gagal', 'Holt, John', '978-979-099-294-8', 'Penerbit Erlangga', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-30'),
(332, 'Biologi Edisi 8 Jilid 1', 'Campbell, Neil A.', '978-979-075-688-5', 'Penerbit Erlangga', 2010, 'Indonesia', 0, 2, 0, 1, '2023-07-31'),
(333, 'Seri Pendalaman Materi Plus : Siap Tuntas Menghadapi Ujian Nasional SMA/MA 2010 Program IPS', 'Kurnianingsih, Sri', '979-734-998-5', 'Penerbit Erlangga', 2010, 'Indonesia', 0, 2, 0, 1, '2023-08-01'),
(334, '99,99% Sukses TOEFL : Metode Terbaik Melejitkan Skor TOEFL Pastikan Skor TOEFL Anda 500, 550, atau bahkan 650!', 'Tumijo', '978-979-610-411-6', 'Penerbit Pustaka Widyatama', 2010, 'Indonesia', 0, 2, 0, 1, '2023-08-02'),
(335, 'Bahas Tuntas 1001 Soal Sejarah SMA', 'Wibowo, Fajar Satrio', '978-979-610-392-8', 'Penerbit Pustaka Widyatama', 2010, 'Indonesia', 0, 2, 0, 1, '2023-08-03'),
(336, 'Berani Memulai & Menjalankan Bisnis Kedai Sandwich dan Kopi', 'Sutherland, Jill', '978-602-8535-93-9', 'PT Tiga Serangkai Pustaka Mandiri', 2010, 'Indonesia', 0, 2, 0, 1, '2023-08-04'),
(337, 'Mengenal Bangunan Bersejarah Di Indonesia', 'Herimanto', '978-979-018-119-9', 'PT Tiga Serangkai Pustaka Mandiri', 2010, 'Indonesia', 0, 2, 0, 1, '2023-08-05'),
(338, 'Sehari Mahir Merajut', 'Sitoresmi, Ajeng Galih', '978-602-8607-18-8', 'Pustaka Grhtama', 2010, 'Indonesia', 0, 2, 0, 1, '2023-08-06'),
(339, 'Trik Cepat Menyelesaikan Soal Listening & Reading SMA', 'Astuti, Indarti Puji', '978-979-610-394-2', 'Pustaka Widyatama', 2010, 'Indonesia', 0, 2, 0, 1, '2023-08-07'),
(340, 'Cepat Bisa! Bahasa Belanda', 'Irawan, Ayu', '978-979-610-384-3', 'Pustaka Widyatama', 2010, 'Indonesia', 0, 2, 0, 1, '2023-08-08'),
(341, '99,99% Sukses Toeic : Succesfull, Strategies for Toeic', 'Riyanto, Slamet', '978-979-610-445-1', 'Pustaka Widyatama', 2010, 'Indonesia', 0, 2, 0, 1, '2023-08-09'),
(342, 'Paling Mudah Membuat Website Profesional dengan Joomla', 'Wakhida, Ikhsan', '978-979-877-080-7', 'MediaKom', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-10'),
(343, 'Lebih Cerdas dengan Wikipedia', 'Hapiddin, Asep', '978-979-045-845-1', 'Tiga Serangkai', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-11'),
(344, 'Bencana Alam Geologi', 'Susila, P. Heru', '978-602-8535-45-8', 'PT Pustaka Tiga Kelana', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-12'),
(345, 'Bencana Alam Hidrologi', 'Susila, P. Heru', '978-602-8535-46-5', 'PT Pustaka Tiga Kelana', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-13'),
(346, 'Leadership with NLP (Neuro-Linguistic Programming)', 'Salim, Gendro', '979-1036-5-0', 'Sinergi Media', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-14'),
(347, 'Rumus Jitu Matematika', 'Gustanti, Dwi', '979-18625-7-5', 'Three Publishing', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-15'),
(348, 'Pengajaran Matematika Sesuai Cara Kerja Otak', 'Ronis, Diane', '978-979-062-049-0', 'PT INDEKS', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-16'),
(349, 'Cepat Tuntas Kuasai Bahasa Inggris SMA/MA Kelas XII', 'Sukur, Silvester Goridus', '978-602-8276-10-8', 'Penerbit Indonesia Cerdas', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-17'),
(350, 'Di Luar Kelahiran dan Kematian', 'Prabhupada, A.C Bhaktivedanta Swami', '979-9384-02-8', 'Hanuman Sakti', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-18'),
(351, 'Buku Bacaan Sosial Demokrasi: Negara Kesejahteraan dan Sosial Demokrasi', 'Petring, Alexander', '978-602-8866-09-5', 'Friedrich-Ebert-Stiftung', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-19'),
(352, 'Proses Belajar Mengajar di Sekolah', 'Suryosubroto, B.', '978-979-518-904-6', 'Rineka Cipta', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-20'),
(353, 'The Girl\'s Guide to Being a Boss: (without being a bitch) : pelajaran berharga, kiat sukses, dan kisah inspiratif para wanita pemimpin', 'Friedman, Caitlin', '978-602-95079-7-3', 'Publishing One', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-21'),
(354, 'KRSNA Personalitas Tuhan Yang Maha Esa', 'Prabhupada, Sri Simad A.C. Bhaktivedanta Swami', '9789799384423', 'Bhaktivedanta Book Trust', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-22'),
(355, 'Memotivasi Siswa di Kelas : Gagasan dan Strategi', 'Reid, Gavin', '978-979-683-909-4', 'Indeks', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-23'),
(356, 'Ramah Terhadap Sampah', 'Dwi. M. W', '978-979-8178-05-4', 'Percada', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-24'),
(357, 'Atlas Eksplorasi : Telusuri Jejak Para Penjelajah Hebat Dunia', 'Ganeri, Anita', '978-979-075-897-1', 'Erlangga for Kids', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-25'),
(358, 'The Life Plan: 700 Cara Sederhana Untuk Hidup Lebih Baik', 'Ashton, Robert', '978-979-033-816-6', 'Esensi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-26'),
(359, 'Panduan Menikah Wanita Modern', 'Ivens, Sarah', '978-979-075-522-2', 'Esensi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-27'),
(360, 'Ensiklopedia Kehamilan Hari Demi Hari', 'Blott, Maggie', '978-602-7596-37-5', 'Esensi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-28'),
(361, 'Buku Sakti Matematika SMA IPS', 'Setyaningtyas, Yualind', '602-8362-19-0', 'Kendi Mas Media', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-29'),
(362, 'Kamus Bahasa Bali', 'Gautama, W Budha', '978-979-722-576-6', 'Paramita', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-30'),
(363, 'Katuturaning Barong Swari Lan Dalang', 'Gautama, Wayan Budha', '978-979-722-666-4', 'Paramita', 2009, 'Indonesia', 0, 2, 0, 1, '2023-08-31'),
(364, 'Kanda Empat Dewa : Manusia Setengah Dewa Sakti Manderaguna', 'Yendra, I Wayan', '978-979-722-714-2', 'Paramita', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-01'),
(365, 'Tuntunan Nganteb Upakara Dewa Yadnya', NULL, '978-979-722-696-1', 'Paramita', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-02'),
(366, 'Mandiri Matematika Jilid 2 untuk SMA/MA Kelas XI Program Ilmu Alam', 'Suryani, Enung', '978-979-033-772-5', 'Penerbit Erlangga', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-03'),
(367, 'Eyewitness Travel Top 10 Sydney', 'Womersley, Steve', '978-979-075-286-3', 'Penerbit Erlangga', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-04'),
(368, 'Eyewitness Travel Top 10 New York', 'Bramblett, Reid', '978-979-075-053-1', 'Penerbit Erlangga', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-05'),
(369, 'Eyewitness Travel Top 10 Los Angeles', 'Gerber, Catherine', '978-979-075-854-4', 'Penerbit Erlangga', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-06'),
(370, 'Mandiri Fisika untuk SMA/MA Kelas X', 'Nugroho, Djoko', '978-979-033-857-9', 'Penerbit Erlangga', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-07'),
(371, 'SeribuPena Geografi', 'Winarno', '978-979-015-847-4', 'Penerbit Erlangga', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-08'),
(372, 'Mandiri Mengasah Kemampuan Diri FISIKA untuk SMA/MA Kelas XI', 'Nugroho, Djoko', '978-979-033-585-6', 'Penerbit Erlangga', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-09'),
(373, 'Ensiklopedia Sejarah dan Budaya 1', 'Tim Proyek', '978-979-3535-41-8', 'PT Lentera Abadi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-10'),
(374, 'Ensiklopedia Sejarah dan Budaya 2', 'Tim Proyek', '978-979-3535-41-8', 'PT Lentera Abadi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-11'),
(375, 'Ensiklopedia Sejarah dan Budaya 3', 'Tim Proyek', '978-979-3535-41-8', 'PT Lentera Abadi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-12'),
(376, 'Ensiklopedia Sejarah dan Budaya 4', 'Tim Proyek', '978-979-3535-41-8', 'PT Lentera Abadi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-13'),
(377, 'Ensiklopedia Sejarah dan Budaya 5', 'Tim Proyek', '978-979-3535-41-8', 'PT Lentera Abadi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-14'),
(378, 'Ensiklopedia Sejarah dan Budaya 6', 'Tim Proyek', '978-979-3535-47-0', 'PT Lentera Abadi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-15'),
(379, 'Ensiklopedia Sejarah dan Budaya 7', 'Tim Proyek', '978-979-3535-47-0', 'PT Lentera Abadi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-16'),
(380, 'Ensiklopedia Sejarah dan Budaya 8', 'Tim Proyek', '978-979-3535-47-0', 'PT Lentera Abadi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-17'),
(381, 'Mengenal Perserikatan Bangsa-Bangsa', 'Tim Penulis', '978-979-045-462-0', 'PT Tiga Serangkai Pustaka Mandiri', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-18'),
(382, 'Successful strategies for toefl : cara mudah sukses toefl, kuasai strateginya dan dongkrak skor toefl anda', 'Tumijo', '979-610-396-6', 'Pustaka Widyatama', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-19'),
(383, 'Menikah Yes or No', 'Ninghadiyanti, Utari', '978-979-033-667-4', 'Esensi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-20'),
(384, 'Simple Tips: Fun di Kantor (Belajar dari Orang Sukses)', 'Dennis, Fitryan', '978-979-033-815-9', 'Esensi', 2009, 'Indonesia', 0, 2, 0, 1, '2023-09-21'),
(385, 'Gajah Mada, Madakaripura Hamukti Moksa', 'Hariadi, Langit Kresna', '979-33-0712-9', 'Tiga Serangkai', 2008, 'Indonesia', 0, 2, 0, 1, '2023-09-22'),
(386, 'Kamus Kimia', 'HAM Mulyono', '979-526-060-x', 'PT Bumi Aksara', 2008, 'Indonesia', 0, 2, 0, 1, '2023-09-23'),
(387, '101++ Ide Jitu Peluang Usaha', 'Writer, Gemini', '978-979-1481-55-7', 'PT Pustaka Tiga Kelana', 2008, 'Indonesia', 0, 2, 0, 1, '2023-09-24'),
(388, 'Wahai Para Guru, Ubahlah Cara Mengajarmu - Perintah Pengajaran yang Berbeda-Beda dan Sesuai Dengan Otak', 'Kaufeldt, Martha', '9781904424611', 'PT INDEKS', 2008, 'Indonesia', 0, 2, 0, 1, '2023-09-25'),
(389, 'Efektivitas Kebijakan Pendidikan: Konsep, Strategi, dan Aplikasi Kebijakan Menuju Organisasi Sekolah Efektif', 'Syafaruddin', '978-979-518-902-2', 'Rineka Cipta', 2008, 'Indonesia', 0, 2, 0, 1, '2023-09-26'),
(390, 'Babad Bali baru : Sejarah Kependudukan Bali 1912-2000', 'Putrawan N.', '978-979-8506-20-8', 'Pustaka Manikgeni', 2008, 'Indonesia', 0, 2, 0, 1, '2023-09-27'),
(391, 'Pandangan Hindu atas Kristen dan Islam', 'Swarup, Ram', '978-979-18591-0-3', 'Semeton Temesi', 2008, 'Indonesia', 0, 2, 0, 1, '2023-09-28'),
(392, 'Oxford Learner\'s Pocket Grammar', 'Eastwood, John', '978-0-19-433684-0', 'Oxford University Press', 2008, 'Indonesia', 0, 2, 0, 1, '2023-09-29'),
(393, 'Mengenal dan Merawat Begonia', 'Hartutiningsih', '979-006-173-0', 'PT AgroMed Pustaka', 2008, 'Indonesia', 0, 2, 0, 1, '2023-09-30'),
(394, 'Seri Pendalaman Materi Matematika SMA dan MA Program IPS', 'Kurnianingsih, Sri', '979-734-907-1', 'Esis', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-01'),
(395, 'Istri-Istri Orang Seberang: Kisah Hidup Pasangan Kawin Campur', 'Poyk, Fanny J.', '978-979-015-678-4', 'Esensi', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-02'),
(396, 'Leak Meyoga Dikala Purnama', 'Yudhiantara, K', '978-979-722-657-2', 'Paramita', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-03'),
(397, 'Bunga Rampai ; Babad dan Rerajahan Kajang di Bali', 'Tim Penyusun Bunga Rampai', '978-979-722-539-1', 'Paramita', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-04'),
(398, 'Shraddha dan Bhakti', 'Subagiasta, I Ketut', '978-979-722-535-3', 'Paramita', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-05'),
(399, 'Eyewitness Travel Top 10 Hong Kong', 'Fitzpatrick, Liam', '978-979-075-052-4', 'Penerbit Erlangga', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-06'),
(400, '50 Terobosan Manajemen yang Perlu Anda Ketahui', 'Russell, Edward', '978-979-033-809-8', 'Penerbit Erlangga', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-07'),
(401, 'Biologi Edisi Kedelapan Jilid 3', 'Campbell, Neil A.', '978-979-099-153-8', 'Penerbit Erlangga', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-08'),
(402, 'Kimia Dasar : Prinsip-Prinsip & Aplikasi Modern Jilid 2', 'Petrucci, Ralph H.', '978-979-099-198-9', 'Penerbit Erlangga', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-09'),
(403, 'SeribuPena Kimia untuk SMA/MA Kelas X', 'Retnowati, Priscilla', '978-979-033-416-8', 'Penerbit Erlangga', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-10'),
(404, 'Menguasai 250 Karakter Mandarin Dasar Jilid 1', 'Lee, Philip Yungkin', '978-979-075-900-8', 'Penerbit Erlangga', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-11'),
(405, 'Bisnis & Budidaya Lele Dumbo & Lokal', 'Tim Agriminakultura', '978-979-22-4182-2', 'PT Gramedia Pustaka Utama', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-12'),
(406, 'Kamus Indonesia-Inggris', 'Echols, John M.', '978-979-403-755-3', 'PT Gramedia Pustaka Utama', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-13'),
(407, 'Kamus Indonesia-Inggris', 'Echols, John M.', '978-979-403-755-3', 'PT Gramedia Pustaka Utama', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-14'),
(408, 'Kamus Istilah Ilmu Pengetahuan Alam untuk SD/MI, SMP/MTs. dan SMA/MA', 'Tim Penulis', '978-979-018-121-2', 'PT Tiga Serangkai Pustaka Mandiri', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-15'),
(409, 'Belajar Praktis Kewarganegaraan', 'Amar, Abu', '978-979-018-114-1', 'PT Tiga Serangkai Pustaka Mandiri', 2008, 'Indonesia', 0, 2, 0, 1, '2023-10-16'),
(410, 'Selayang Pandang Indonesiaku : Sekilas tentang Sejarah, Geografi, Penduduk, dan Kebudayan', 'Tim Penulis Mandiri', '978-979-018-143-4', 'Tiga Serangkai', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-17'),
(411, 'Mahir dan Terampil Berkomputer TIK untuk Kelas XII Sekolah Menengah Atas', 'Kuswayatno, Lia', '979-758-383-x', 'Grafindo Media Pratama', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-18'),
(412, 'Kamus Umum Bahasa Indonesia', 'Poerwadarminta, W.J.S.', '979-666-291-4', 'Balai Pustaka', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-19'),
(413, 'Mari Mengenal Internet', 'Rozi, Zaenal A.', '978-979-29-0315-7', 'CV. Andi Offset', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-20'),
(414, 'Rangkuman Pengetahuan Pendidikan Jasmani, Olahraga, & Kesehatan (Penjas-Orkes)', 'Erlangga, Tony', '978-602-8644-26-6', 'CV. Bringin 55', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-21'),
(415, 'Special Assignments : The Further Adventures of Erast Fandorin', 'Akunin, Boris', '978-0-7538-2348-4', 'Phoenix Fiction', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-22'),
(416, 'Remaja Jilid 1', 'Santrock, John W.', '9789790750371', 'Erlangga', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-23'),
(417, 'Remaja Jilid 2', 'Santrock, John W.', '978-979-075-686-1', 'Erlangga', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-24'),
(418, 'Momoye Mereka Memanggilku: Biografi Sejarah Jugun Ianfu Indonesia', 'EkaHindra', '978-979-015-219-9', 'Esensi', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-25'),
(419, 'Wawasan & Tinjauan Seni Keramik', 'Utomo, Agus Mulyadi', '978-979-722-416-5', 'Paramita', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-26'),
(420, 'Perkembangan Anak', 'Santrock, John W.', '978-979-033-134-1', 'Penerbit Erlangga', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-27'),
(421, 'Pendidikan Jasmani Olahraga dan Kesehatan', 'Muhajir', '978-979-015-186-4', 'Penerbit Erlangga', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-28'),
(422, 'Lou! Buku Harian', 'Editions, Glenat', '978-979-015-881-8', 'Penerbit Erlangga', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-29'),
(423, 'Kompeten Berbahasa Indonesia untuk SMA Kelas XII', 'Tim Edukatif', '978-979-015-172-7', 'Penerbit Erlangga', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-30'),
(424, 'Guru Sebagai Pelatih Kelas', 'Stix, Andi', '978-602-241-146-8', 'Penerbit Erlangga', 2007, 'Indonesia', 0, 2, 0, 1, '2023-10-31'),
(425, 'Big Brother Complex', 'Angela, Primadonna', '978-979-22-2585-3', 'PT Gramedia Pustaka Utama', 2007, 'Indonesia', 0, 2, 0, 1, '2023-11-01'),
(426, 'Ensiklopedia Geografi 1', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'Indonesia', 0, 2, 0, 1, '2023-11-02'),
(427, 'Ensiklopedia Geografi 2', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'Indonesia', 0, 2, 0, 1, '2023-11-03'),
(428, 'Ensiklopedia Geografi 3', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'Indonesia', 0, 2, 0, 1, '2023-11-04'),
(429, 'Ensiklopedia Geografi 4', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'Indonesia', 0, 2, 0, 1, '2023-11-05'),
(430, 'Ensiklopedia Geografi 5', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'Indonesia', 0, 2, 0, 1, '2023-11-06'),
(431, 'Ensiklopedia Geografi 6', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'Indonesia', 0, 2, 0, 1, '2023-11-07'),
(432, 'Kamus Geografi Bergambar', 'Endarto, Danang', '978-979-018-101-4', 'PT Tiga Serangkai Pustaka Mandiri', 2007, 'Indonesia', 0, 2, 0, 1, '2023-11-08'),
(433, 'Atlas Duniaku', 'Adnan, Warsito', '978-979-018-153-3', 'PT Tiga Serangkai Pustaka Mandiri', 2007, 'Indonesia', 0, 2, 0, 1, '2023-11-09'),
(434, 'Pelajaran Seni Budaya 1 : Seni Tari dan Seni Musik', 'Astono, Sigit', '979-746-154-8', 'Yudhistira', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-10'),
(435, 'Krsna : Sumber Kebahagiaan', 'Prabhupada, A.C Bhaktivedanta Swami', '979-9384-13-3', 'Hanuman Sakti', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-11'),
(436, 'Arok Dedes', 'Toer, Pramoedya Ananta', '978-979-3820-14-9', 'Lentera Dipantara', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-12'),
(437, 'Antologi Puisi : Rumah Merah', 'Suastini, Ni Putu Putri', '978-602-5529-33-7', 'PT Percetakan Bali', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-13'),
(438, 'Berani Menggali Lebih Dalam', 'Tim Fokus Pada Keluarga', '979763290-3', 'Penerbit ANDI', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-14'),
(439, 'Memuja Tuhan dengan Puja Tri Sandhya, Kramaning Sembah, Ista Dewata Puja, Kidung Dewa Yadnya dan Doa Metirtha, Mesekar, Mebija', 'Dananjaya, S.', '979-8496-57-4', 'Pustaka Bali Post', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-15'),
(440, 'Tapak-Tapak Pejuang: Dari Reformis ke Revisionis', 'Sudrajat, A. Suryana', '979-781-610-9', 'Erlangga', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-16'),
(441, 'Leadership and Self-Deception: Berpikir di Luar Kotak', 'Institute, The Arbinger', '978-979-015-538-1', 'Esensi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-17'),
(442, 'Bicara Soal Cinta, Pacaran, dan S-E-K-S Kepada Remaja: Panduan Guru & Orang Tua', 'Miron, Amy G.', '978-979-033-289-8', 'Esensi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-18'),
(443, 'Buku Pintar Remaja Berbakat: Buku Pegangan untuk Remaja', 'Galbraith, Judy', '978-979-015-679-1', 'Esensi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-19'),
(444, 'Memori Inteligen : Rahasia untuk Meningkatkan Memori Anda', 'Gordon, Barry', '978-979-099-526-0', 'Esensi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-20'),
(445, 'Narkoba Sayonara: Sebuah Kesaksian', 'Poyk, Fanny Jonathans', '9789797816780', 'Esensi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-21'),
(446, '20 Ramuan Esensial Nusantara untuk Cantik dan Bugar', 'Oktovina, Dian Malini', '979-781-415-7', 'Esensi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-22'),
(447, 'Kamus Matematika Bergambar', 'Large, Tori', '978-979-075-882-7', 'Penerbit Erlangga', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-23'),
(448, 'SOLD! Bagaimana Memudahkan Konsumen Membeli dari Anda', 'Martin, Steve', '9789797812737', 'Penerbit Erlangga', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-24'),
(449, 'English Zone for High School Students Year X', 'Astuti, Eka Mulya', '978-979-075-575-8', 'Penerbit Erlangga', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-25'),
(450, 'Ensiklopedia Sains dan Teknologi 1', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-26'),
(451, 'Ensiklopedia Sains dan Teknologi 2', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-27'),
(452, 'Ensiklopedia Sains dan Teknologi 3', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-28'),
(453, 'Ensiklopedia Sains dan Teknologi 4', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-29'),
(454, 'Ensiklopedia Sains dan Teknologi 5', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-11-30'),
(455, 'Ensiklopedia Sains dan Teknologi 6', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-12-01'),
(456, 'Ensiklopedia Sains dan Teknologi 7', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'Indonesia', 0, 2, 0, 1, '2023-12-02'),
(457, 'Tentang Dia', 'Emka, Moammar', '979-3600-54-3', 'GagasMedia', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-03'),
(458, 'Kontinental Atlas Dunia', 'Satria, Iqbal', '978-979-3703-98-5', 'PT Karya Pembina Swajaya', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-04'),
(459, 'Kamus Lengkap Bahasa Indonesia', 'Novia, Windy', '979260615-7', 'Kashiko', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-05'),
(460, 'Intisari Ilmu: Cuaca', 'Nicholson, Sue', '979-741-919-3', 'Erlangga', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-06'),
(461, 'Kiat-Kiat Praktis Meraih Kerja: Peningkatan Daya Saing Diri (Competitiveness) Menghadapi Era Globalisasi', 'Mas, A. A. Gede Raka', '979-722-147-4', 'Paramita', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-07'),
(462, 'Tatanan Upakara lan Upacara Manusa Yajna', 'Wijayananda, Ida Pandhita Mpu Jaya', '979-9257-91-3', 'Paramita', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-08'),
(463, 'Konsepsi Monotheisme dalam Agama Hindu', 'Sastra, Gde Sara', '979-722-179-X', 'Paramita', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-09'),
(464, 'Hari Raya Hindu Bali-India', 'Wikarman, I Nyoman Singgin', '979-722-150-4', 'Paramita', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-10'),
(465, 'Menjadikan Rumah Surga Bermain: Aktivitas Seru untuk Semua Ruangan di Rumah Anda', 'Kelly, Nancy', '9789797814199', 'Penerbit Erlangga', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-11'),
(466, 'Dasar-Dasar Yoga', 'Lalvani, Vimla', '9789797810078', 'Penerbit Erlangga', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-12'),
(467, '50 Rahasia Alami Detoks', 'Kelly, Tracey', '979-781-088-7', 'Penerbit Erlangga', 2005, 'Indonesia', 0, 2, 0, 1, '2023-12-13'),
(468, 'Tetap Sehat dengan Produk Makanan Olahan', 'Astawan, Made', '979-668-444-6', 'Tiga Serangkai', 2004, 'Indonesia', 0, 2, 0, 1, '2023-12-14'),
(469, 'Kehidupan Berasal Dari Kehidupan', 'Prabhupada, Sri Simad A.C. Bhaktivedanta Swami', '9789799384058', 'Bhaktivedanta Book Trust', 2004, 'Indonesia', 0, 2, 0, 1, '2023-12-15'),
(470, 'Teman Curhat Remaja : Seberapa Setiakah si Doi?!', 'Wahyudi, Imam', '979-9636-109-7', 'Diva Press', 2004, 'Indonesia', 0, 2, 0, 1, '2023-12-16'),
(471, 'Kamus Lengkap Jepang-Indonesia, Indonesia-Inggris', 'Team Kashiko', '979260601-7', 'Kashiko', 2004, 'Indonesia', 0, 2, 0, 1, '2023-12-17'),
(472, 'Dharma Caruban : Tuntunan Membuat Olahan/Ebatan', 'Gautama, W Budha', '979-722-121-0', 'Paramita', 2004, 'Indonesia', 0, 2, 0, 1, '2023-12-18'),
(473, 'Lou !', 'Editions, Glenat', '978-979-015-943-3', 'Penerbit Erlangga', 2004, 'Indonesia', 0, 2, 0, 1, '2023-12-19'),
(474, 'Saudara Kandung', 'Woolfson, Richard C', '979-741-430-2', 'Penerbit Erlangga', 2004, 'Indonesia', 0, 2, 0, 1, '2023-12-20'),
(475, 'Atlas Sejarah Dunia : Memetakan Perjalanan Manusia', 'Black, Jeremy', '978-979-075-707-3', 'Penerbit Erlangga', 2004, 'Indonesia', 0, 2, 0, 1, '2023-12-21'),
(476, 'Teen Idol: Idola Remaja', 'Cabot, Meg', '979-22-1158-6', 'PT Gramedia Pustaka Utama', 2004, 'Indonesia', 0, 2, 0, 1, '2023-12-22'),
(477, 'Hantu-Hantu Politik dan Matinya Sosial', 'Piliang, Yasraf Amir', '979-668-522-1', 'Tiga Serangkai', 2003, 'Indonesia', 0, 2, 0, 1, '2023-12-23'),
(478, 'Di Balik Invasi AS ke Irak', 'Damhuri, Elba', '979-97241-5-5', 'Senayan Abadi Publishing', 2003, 'Indonesia', 0, 2, 0, 1, '2023-12-24'),
(479, 'Salah Pilih', 'Iskandar, N.', '979-407-178-1', 'Balai Pustaka', 2003, 'Indonesia', 0, 2, 0, 1, '2023-12-25'),
(480, 'Tutur Lebur Gangsa', 'Gautama, Wayan Budha', '979-722-054-0', 'Paramita', 2003, 'Indonesia', 0, 2, 0, 1, '2023-12-26'),
(481, 'Bhagawad Gita dalam Bahasa Sanskrta, Inggris dan Indonesia', 'Maswinara, I Wayan', '979-9044-18-9', 'Paramita', 2003, 'Indonesia', 0, 2, 0, 1, '2023-12-27'),
(482, 'Fisika Kuantum: Panduan Bagi Pemula ke Dunia Subatomik', 'Gribbin, John', '979-741-673-9', 'Penerbit Erlangga', 2003, 'Indonesia', 0, 2, 0, 1, '2023-12-28'),
(483, 'Andrew Grove', 'Heller, Robert', '978-979-741-0032', 'Penerbit Erlangga', 2003, 'Indonesia', 0, 2, 0, 1, '2023-12-29'),
(484, 'Adolescence Perkembangan Remaja', 'Santrock, John W.', '979-688-910-2', 'Penerbit Erlangga', 2003, 'Indonesia', 0, 2, 0, 1, '2023-12-30'),
(485, 'Latihan Toilet: Panduan melatih anak untuk mengatasi masalah toilet', 'Gilbert, Jane', '9789797415440', 'Penerbit Erlangga', 2003, 'Indonesia', 0, 2, 0, 1, '2023-12-31'),
(486, 'Tumbuhan', 'Burnie, David', '978-979-075-740-0', 'Penerbit Erlangga', 2003, 'Indonesia', 0, 2, 0, 1, '2024-01-01'),
(487, 'Atlas Dunia', 'Hynes, Margaret', '978-979-015-886-3', 'Penerbit Erlangga', 2003, 'Indonesia', 0, 2, 0, 1, '2024-01-02'),
(488, 'The Money Motivator: Tips Kilat Mengelola Keuangan Pribadi', 'Hanna, Paul', '9789796885220', 'Penerbit Erlangga', 2003, 'Indonesia', 0, 2, 0, 1, '2024-01-03'),
(489, 'Kamus Visual 4 Bahasa', 'Kindersley, Dorling', '978-979-075-054-8', 'Penerbit Erlangga', 2003, 'Indonesia', 0, 2, 0, 1, '2024-01-04'),
(490, 'Charles Handy', 'Heller, Robert', '979-688-968-4', 'Penerbit Erlangga', 2003, 'Indonesia', 0, 2, 0, 1, '2024-01-05'),
(491, 'Jagat Raya yang Mengembang : Panduan bagi Pemula ke Peristiwa Big Bang dan di Baliknya', 'Garlick, Mark A.', '979-781-574-9', 'Penerbit Erlangga', 2003, 'Indonesia', 0, 2, 0, 1, '2024-01-06'),
(492, 'Berjalan di Atas Air: Menemukan Tuhan di Dalam Hidup Kita', 'Mello, Anthony De', '979-688-282-5', 'Penerbit Erlangga', 2002, 'Indonesia', 0, 2, 0, 1, '2024-01-07'),
(493, '100 Rahasia Membuat Hidup Bahagia - Happy People: Hasil Penelitian Ilmuwan tentang Sikap Hidup yang Menciptakan Kebahagiaan', 'Niven, David', '979-688-474-7', 'Penerbit Erlangga', 2002, 'Indonesia', 0, 2, 0, 1, '2024-01-08'),
(494, '50 Rahasia Alami Penambah Tenaga', 'Kelly, Tracey', '979-781-091-7', 'Erlangga', 2001, 'Indonesia', 0, 2, 0, 1, '2024-01-09'),
(495, 'Dari Orde Baru ke Indonesia Baru lewat Reformasi Total', 'Pamungkas, Sri-Bintang', '979-688-176-4', 'Erlangga', 2001, 'Indonesia', 0, 2, 0, 1, '2024-01-10'),
(496, 'Aplikasi Elektromagnetik', 'Shen, Liang Chi', '979-688-083-0', 'Erlangga', 2001, 'Indonesia', 0, 2, 0, 1, '2024-01-11'),
(497, 'Alam Kehidupan Sesudah Mati', 'Kamajaya, Made', '979-9257-86-7', 'Paramita', 2001, 'Indonesia', 0, 2, 0, 1, '2024-01-12'),
(498, 'English Vocabulary in Use', 'Redman, Stuart', '979-699-111-4', 'Penerbit Erlangga', 2001, 'Indonesia', 0, 2, 0, 1, '2024-01-13'),
(499, 'Freud: Seri Siapa Dia?', 'Berry, Ruth', '979-688-216-7', 'Penerbit Erlangga', 2001, 'Indonesia', 0, 2, 0, 1, '2024-01-14'),
(500, 'True History of the Kelly Gang', 'Carey, Peter', '978-0-571-20987-3', 'Faber and Faber Limited', 2000, 'Indonesia', 0, 2, 0, 1, '2024-01-15'),
(501, 'Arti dan Fungsi Sarana Persembahyangan', 'Wiana, I Ketut', '979-9257-31-x', 'Paramita', 2000, 'Indonesia', 0, 2, 0, 1, '2024-01-16'),
(502, 'Merintis RI yang Manusiawi: Republik yang Adil dan Beradab', 'Mangunwijaya, Y.B.', '979-444-413-8', 'Penerbit Erlangga', 1999, 'Indonesia', 0, 2, 0, 1, '2024-01-17'),
(503, '50 Rahasia Alami Tidur yang Berkualitas', 'Kelly, Tracey', '978-781-489-0', 'Erlangga', 1999, 'Indonesia', 0, 2, 0, 1, '2024-01-18'),
(504, 'Wrhaspati Tattwa', 'Putra, I.G.A.G.', '979-9044-34-0', 'Paramita', 1998, 'Indonesia', 0, 2, 0, 1, '2024-01-19'),
(505, 'Titeuf', 'Editions, Glenat', '978-979-033-323-9', 'Penerbit Erlangga', 1994, 'Indonesia', 0, 2, 0, 1, '2024-01-20'),
(506, 'Bahasa Jepang Sehari-Hari: Bagaimana Berkomunikasi Secara Cepat Tanpa Keraguan dan Rasa Takut', 'Mente, Boye Lafayette De', '979-8295-86-2', 'Kesaint Blanc', 1992, 'Indonesia', 0, 2, 0, 1, '2024-01-21'),
(507, 'Penyakit Mulut (Clinical Oral Medicine)', 'Gayford, J. J.', '979-448-101-7', 'Penerbit Buku Kedokteran EGC', 1990, 'Indonesia', 0, 2, 0, 1, '2024-01-22'),
(508, 'Deteksi Kepribadian', 'Ghazali, H.A. Muin', '978-602-217-283-3', 'PT Bumi Aksara', 2016, 'Indonesia', 80000, 0, 0, 6, '2022-10-19'),
(511, 'Jokowi: Menuju Cahaya', 'Endah, Alberthiene', '978-602-320-680-3', 'PT Tiga Serangkai Pustaka Mandiri', 2019, 'Indonesia', 112000, 0, 0, 6, '2022-09-18'),
(513, 'Terapi Berpikir Positif', 'Elfiky, Ibrahim', '978-602-290-073-3', 'PT. Serambi Ilmu Semesta', 2018, 'Indonesia', 65000, 2, 130000, 3, '2022-09-21'),
(517, 'Kamus Budaya Bali', 'Sukayana, I Nengah', '978-979-069-158-2', 'Balai Bahasa Bali', 2016, 'Indonesia', 50000, 0, 0, 6, '2022-10-21'),
(519, 'Bunga Merah : Antologi Puisi', 'Suastini, Ni Putu Putri', '978-602-5529-32-0', 'PT Percetakan Bali', 2020, 'Indonesia', 150000, 0, 0, 2, '2022-09-09'),
(520, 'Satua Bali I Belog', 'Supatra, I N. K.', '978-979-617-044-9', 'CV. Kayumas Agung', 2018, 'Indonesia', 19000, 0, 0, 2, '2022-09-19'),
(521, 'Kamus Besar Bahasa Indonesia', 'Sunendar, Dadang', '978-602-437-171-5', 'CV Adi Perkasa', 2018, 'Indonesia', 425000, 0, 0, 6, '2022-09-22'),
(522, '4G Guru Gaul Guru Galau', 'Dedew', '978-602-366-112-1', 'Tiga Ananda', 2016, 'Indonesia', 15000, 0, 0, 6, '2022-10-22'),
(523, 'Membentang Fakta Dunia Sosial Sosiologi Kelas XII', 'Fritz H. S. Damanik', '978-602-217-740-1', 'Bumi Aksara ', 2016, 'Indonesia', 75000, 0, 0, 2, '2022-09-04'),
(524, 'Jelajah Dunia Geografi Kelas XII', 'Pabundu Tika', '978-602-217-748-7', 'Bumi Aksara', 2016, 'Indonesia', 147000, 0, 0, 2, '2022-09-04'),
(525, 'Buku Siswa : Bahasa Dan Sastra Inggris Kelas XII', 'Otong Setiawan', '978-602-277-623-9', 'Yrama Widya', 2015, 'Indonesia', 77000, 0, 0, 2, '2022-09-04'),
(527, 'Buku Pendidikan Pancasila dan Kewarganegaraan SMA/MA Kelas 10 K-Merdeka Sekolah Penggerak', 'Hatim Gazali', '978-602-244-321-6', 'KEMENDIKBUD', 2021, 'Indonesia', 36000, 3, 108000, 3, '2022-09-04'),
(528, 'AKUNTANSI UNTUK SMK/MAK & SMA/MA', 'Hery', '978-602-251-989-8', 'GRASINDO', 2018, 'Indonesia', 38000, 1, 38000, 3, '2022-09-04'),
(529, 'Buku Ajar Informatika Tingkat SMA/MA Kelas 10 (Edisi Revisi)', 'Tim Ikatan Guru TIK PGR', '979-623-01-1419-9', 'Andi', 2021, 'Indonesia', 111000, 2, 222000, 3, '2022-09-04'),
(530, 'NIHONGO KIRA KIRA BAHASA JEPANG UNTUK SMA/MA KELAS X', 'Evi Lusiana', '004-495-007-0', 'Erlangga', 2018, 'Indonesia', 119000, 3, 357000, 3, '2022-09-04'),
(531, 'PENDIDIKAN JASMANI OLAHRAGA DAN KESEHATAN UNTUK SMA KELAS 1 ', 'Muhajir', '978-602-298-983-7', ' Erlangga', 2016, 'Indonesia', 118000, 0, 0, 2, '2022-09-04'),
(532, 'Buku Seni Budaya Kelas XI SMA ', 'Sugiyanto', '978-602-434-171-8', 'Erlangga ', 2016, 'Indonesia', 112000, 0, 0, 6, '2022-09-04'),
(533, ' CERDAS MENJAWAB SOAL SEJARAH SMA MA SMK', 'Samsul Farid dan Muhamad husnu', ' 978-623-205-125-6', 'YRAMA WIDYA', 2018, 'Indonesia', 80000, 2, 160000, 3, '2022-09-06'),
(534, 'MASTER BOOK KIMIA X XI XII REVISI / OLIMPIADE SAINS NASIONAL KIMIA', 'Budiman Anwar', '978-602-374-952-2', 'YRAMA WIDYA', 2019, 'Indonesia', 179000, 0, 0, 2, '2022-09-06'),
(535, 'Big Book Fisika SMA Kelas X, XI, & XII', 'Supadi, R.Maas Shobirin,  Dewi Rossalia', '978-602-6992-70-3', 'Cmedia', 2017, 'Indonesia', 80000, 0, 0, 2, '2022-09-06'),
(536, 'BIOLOGI untuk SMA MA Kelas X Jilid 1', 'Irnaningtyas', '9786022417859', 'Erlangga', 2017, 'Indonesia', 172000, 0, 0, 2, '2022-09-06'),
(537, 'New Edition Big Book Matematika SMA Kelas X, XI, & XII', 'Sobirin', '978-602-6992-72-7', 'CMedia', 2017, 'Indonesia', 130000, 0, 0, 2, '2022-09-06'),
(538, 'All New Mega Bank Soal Fisika SMA Kelas X, XI, & XII', 'Tim Guru Eduka', '978-602-6992-50-5', 'CMedia', 2018, 'Indonesia', 155000, 3, 465000, 3, '2022-09-06'),
(539, 'Kreatif Pendidikan Agama Hindu dan Budi Pekerti Kls IV ', 'Dewa Artana', '978-602-295-824-6', ' Penerbit Duta', 2017, 'Indonesia', 80000, 0, 0, 2, '2022-09-06'),
(540, 'MASTER BOOK KIMIA X XI XII REVISI / OLIMPIADE SAINS NASIONAL KIMIA', 'Budiman Anwar', '978-602-374-952-2', 'YRAMA WIDYA', 2019, 'Indonesia', 0, 2, 0, 1, '2022-09-06'),
(541, 'Buku Seni Budaya Kelas XI SMA ', 'Sugiyanto', '978-602-434-171-8', 'Erlangga ', 2016, 'Indonesia', 0, 2, 0, 1, '2022-09-04'),
(542, 'Kepemimpinan Hindu', 'Ariasna, Ketut Gede', '979-9044-62-6', 'Paramita', 2019, 'Indonesia', 0, 2, 0, 1, '2023-08-08'),
(543, 'Coding Sakti Pemrograman Web HTML, CSS, PHP, MYSQL & JAVASCRIPT', 'Didik Setiawan', ' 978-602-6673-34-3', 'ANAK HEBAT INDONESIA', 2017, 'Indonesia', 84000, 0, 0, 2, '2022-09-06'),
(544, 'Microsoft Office Word, Excel, Powerpoint untuk Administrasi Perkantoran', 'Madcoms', '978-979-29-5223-0', ' Andi Publisher', 2017, 'Indonesia', 71000, 0, 0, 2, '2022-09-06'),
(545, 'Rusak Saja Buku Ini', 'sony adams', '978-623-7210-65-8', 'Pengembangan Diri', 2016, 'Indonesia', 50000, NULL, NULL, 2, '2022-09-06'),
(546, 'Siapa Aku? Apa Bakatku?', 'PRABU GANENDRA', ' 978-602-51994-3-1', 'Hikmah Publishing', 2018, 'Indonesia', 30000, 1, 30000, 3, '2022-09-06'),
(547, 'PANDUAN TERLENGKAP BELAJAR BAHASA KOREA', 'Yodi Indrayadi', '978-602-1201-82-4', 'Rene Book', 2020, 'Indonesia', 125000, 1, 125000, 3, '2022-09-06'),
(548, 'KAMUS PRAKTIS KANJI N5-N4', 'Irma Nirmala', '978-623-235-026-7', 'GENTA GROUP', 2020, 'Indonesia', 11000, 2, 22000, 3, '2022-09-06');

-- --------------------------------------------------------

--
-- Table structure for table `tb_curr_tahapan`
--

CREATE TABLE `tb_curr_tahapan` (
  `id` int(11) NOT NULL,
  `tahapan` int(11) NOT NULL,
  `periode` int(11) NOT NULL,
  `tgl_selesai_input` date NOT NULL,
  `anggaran` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_curr_tahapan`
--

INSERT INTO `tb_curr_tahapan` (`id`, `tahapan`, `periode`, `tgl_selesai_input`, `anggaran`) VALUES
(1, 1, 0, '2022-09-22', 80000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(12) NOT NULL,
  `Keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id_status`, `nama_status`, `Keterangan`) VALUES
(1, 'database', 'Buku yang terdapat di database Perpustakaan'),
(2, 'Katalog', 'Buku yang menjadi katalog'),
(3, 'Proses', 'Buku yang masih dalam proses seleksi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_bantu_pilih`
--
ALTER TABLE `tb_bantu_pilih`
  ADD PRIMARY KEY (`id_pilih`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tb_curr_tahapan`
--
ALTER TABLE `tb_curr_tahapan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`id_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_bantu_pilih`
--
ALTER TABLE `tb_bantu_pilih`
  MODIFY `id_pilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `tb_curr_tahapan`
--
ALTER TABLE `tb_curr_tahapan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
