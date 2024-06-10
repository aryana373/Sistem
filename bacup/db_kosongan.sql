-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2024 at 03:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slims`
--

-- --------------------------------------------------------

--
-- Table structure for table `backup_log`
--

CREATE TABLE `backup_log` (
  `backup_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `backup_time` datetime NOT NULL,
  `backup_file` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `gmd_id` int(3) DEFAULT NULL,
  `title` text NOT NULL,
  `sor` varchar(200) DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `isbn_issn` varchar(32) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) DEFAULT NULL,
  `collation` varchar(100) DEFAULT NULL,
  `series_title` varchar(200) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `language_id` char(5) DEFAULT 'en',
  `source` varchar(3) DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `file_att` varchar(255) DEFAULT NULL,
  `opac_hide` smallint(1) DEFAULT 0,
  `promoted` smallint(1) DEFAULT 0,
  `labels` text DEFAULT NULL,
  `frequency_id` int(11) NOT NULL DEFAULT 0,
  `spec_detail_info` text DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `media_type_id` int(11) DEFAULT NULL,
  `carrier_type_id` int(11) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_attachment`
--

CREATE TABLE `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `placement` enum('link','popup','embed') DEFAULT NULL,
  `access_type` enum('public','private') NOT NULL,
  `access_limit` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_author`
--

CREATE TABLE `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_custom`
--

CREATE TABLE `biblio_custom` (
  `biblio_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Table structure for table `biblio_log`
--

CREATE TABLE `biblio_log` (
  `biblio_log_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `realname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `affectedrow` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rawdata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_log`
--

INSERT INTO `biblio_log` (`biblio_log_id`, `biblio_id`, `user_id`, `realname`, `title`, `ip`, `action`, `affectedrow`, `rawdata`, `additional_information`, `date`) VALUES
(32, 40, 1, 'Kim', 'NIHONGO KIRA KIRA BAHASA JEPANG UNTUK SMA/MA KELAS X', '::1', 'delete', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2240%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2240%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2240%22%3Bs%3A5%3A%22title%22%3Bs%3A52%3A%22NIHONGO+KIRA+KIRA+BAHASA+JEPANG+UNTUK+SMA%2FMA+KELAS+X%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3BN%3Bs%3A7%3A%22edition%22%3BN%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%22004-495-007-0%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222018%22%3Bs%3A9%3A%22collation%22%3BN%3Bs%3A12%3A%22series_title%22%3BN%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3BN%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3BN%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Evi+Lusiana%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2278c094e7bd7f1ac4863485b8a53dc4dfe63f7778%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22814e6e786810f0ca5dad34932d5bfe0acc30d203%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+03%3A40%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+03%3A40%3A37%22%3B%7D', 'Data bibliografi dihapus.', '2024-06-10 20:43:02'),
(31, 19, 1, 'Kim', 'Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA', '::1', 'delete', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2219%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2219%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2219%22%3Bs%3A5%3A%22title%22%3Bs%3A81%3A%22Praktik+Kolaborasi+Internal+Sekolah+untuk+Meningkatkan+Kualitas+Belajar+Siswa+SMA%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-5616-23-5%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Tim+Penulis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22655025cc627564fd1c32c4999be4cf521048780b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223c327a6c229d15a7a1e0382248941e3b726b9950%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3B%7D', 'Data bibliografi dihapus.', '2024-06-10 20:43:02'),
(30, 41, 1, 'Kim', 'Siapa Aku? Apa Bakatku?', '::1', 'delete', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2241%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2241%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2241%22%3Bs%3A5%3A%22title%22%3Bs%3A23%3A%22Siapa+Aku%3F+Apa+Bakatku%3F%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3BN%3Bs%3A7%3A%22edition%22%3BN%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A18%3A%22+978-602-51994-3-1%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222018%22%3Bs%3A9%3A%22collation%22%3BN%3Bs%3A12%3A%22series_title%22%3BN%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3BN%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3BN%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22PRABU+GANENDRA%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22fda763e8ca49fb1351ad7976a6b25b992cb1bbe2%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22c6c1b80780f7cbd073bb7576207f247e56ed0949%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+03%3A40%3A37%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+03%3A40%3A37%22%3B%7D', 'Data bibliografi dihapus.', '2024-06-10 20:42:07'),
(29, 18, 1, 'Kim', 'Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2218%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2218%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2218%22%3Bs%3A5%3A%22title%22%3Bs%3A81%3A%22Praktik+Kolaborasi+Internal+Sekolah+untuk+Meningkatkan+Kualitas+Belajar+Siswa+SMA%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-5616-23-5%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A14%3A%22cahaya+pelangi%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Tim+Penulis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2206234faa0f730dbb7d9dfef9d7b64cce647b2191%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223c327a6c229d15a7a1e0382248941e3b726b9950%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+19%3A30%3A03%22%3B%7D', 'Updated data. Bibliography.', '2024-06-10 19:30:03'),
(28, 18, 1, 'Kim', 'Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA', '::1', 'update', 'publisher_name', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2218%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2218%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2218%22%3Bs%3A5%3A%22title%22%3Bs%3A81%3A%22Praktik+Kolaborasi+Internal+Sekolah+untuk+Meningkatkan+Kualitas+Belajar+Siswa+SMA%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-5616-23-5%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Tim+Penulis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%221745d5266bf95802087e32a073f46f4a12343f6b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223c327a6c229d15a7a1e0382248941e3b726b9950%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3B%7D', 'Change data from \"\" to \"cahaya pelangi\"', '2024-06-10 19:30:03'),
(27, 20, 1, 'Kim', 'Merah Putih : Antologi Puisi', '::1', 'delete', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2220%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2220%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2220%22%3Bs%3A5%3A%22title%22%3Bs%3A28%3A%22Merah+Putih+%3A+Antologi+Puisi%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Tim+Penulis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22292240f4351431258fd678f5505f41e2764baac1%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223c327a6c229d15a7a1e0382248941e3b726b9950%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+18%3A58%3A03%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+18%3A58%3A03%22%3B%7D', 'Data bibliografi dihapus.', '2024-06-10 18:58:35'),
(26, 20, 1, 'Kim', 'Merah Putih : Antologi Puisi', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2220%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2220%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2220%22%3Bs%3A5%3A%22title%22%3Bs%3A28%3A%22Merah+Putih+%3A+Antologi+Puisi%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Tim+Penulis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22292240f4351431258fd678f5505f41e2764baac1%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223c327a6c229d15a7a1e0382248941e3b726b9950%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+18%3A58%3A03%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+18%3A58%3A03%22%3B%7D', 'New data. Author. Names: Tim Penulis;', '2024-06-10 18:58:03'),
(25, 20, 1, 'Kim', 'Merah Putih : Antologi Puisi', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2220%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2220%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2220%22%3Bs%3A5%3A%22title%22%3Bs%3A28%3A%22Merah+Putih+%3A+Antologi+Puisi%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Tim+Penulis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22292240f4351431258fd678f5505f41e2764baac1%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223c327a6c229d15a7a1e0382248941e3b726b9950%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+18%3A58%3A03%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+18%3A58%3A03%22%3B%7D', 'New data. Bibliography.', '2024-06-10 18:58:03'),
(24, 19, 1, 'Kim', 'Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2218%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2218%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2218%22%3Bs%3A5%3A%22title%22%3Bs%3A81%3A%22Praktik+Kolaborasi+Internal+Sekolah+untuk+Meningkatkan+Kualitas+Belajar+Siswa+SMA%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-5616-23-5%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Tim+Penulis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%221745d5266bf95802087e32a073f46f4a12343f6b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223c327a6c229d15a7a1e0382248941e3b726b9950%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3B%7D', 'New data. Bibliography.', '2024-06-10 18:49:44'),
(23, 19, 1, 'Kim', 'Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2218%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2218%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2218%22%3Bs%3A5%3A%22title%22%3Bs%3A81%3A%22Praktik+Kolaborasi+Internal+Sekolah+untuk+Meningkatkan+Kualitas+Belajar+Siswa+SMA%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-5616-23-5%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Tim+Penulis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%221745d5266bf95802087e32a073f46f4a12343f6b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223c327a6c229d15a7a1e0382248941e3b726b9950%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3B%7D', 'New data. Author. Names: Tim Penulis;', '2024-06-10 18:49:44'),
(22, 18, 1, 'Kim', 'Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA', '::1', 'update', 'author', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2218%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2218%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2218%22%3Bs%3A5%3A%22title%22%3Bs%3A81%3A%22Praktik+Kolaborasi+Internal+Sekolah+untuk+Meningkatkan+Kualitas+Belajar+Siswa+SMA%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-5616-23-5%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Tim+Penulis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%221745d5266bf95802087e32a073f46f4a12343f6b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223c327a6c229d15a7a1e0382248941e3b726b9950%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3B%7D', 'New data. Author. Names: Tim Penulis;', '2024-06-10 18:49:44'),
(21, 18, 1, 'Kim', 'Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA', '::1', 'create', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2218%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2218%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2218%22%3Bs%3A5%3A%22title%22%3Bs%3A81%3A%22Praktik+Kolaborasi+Internal+Sekolah+untuk+Meningkatkan+Kualitas+Belajar+Siswa+SMA%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Text%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A17%3A%22978-602-5616-23-5%22%3Bs%3A14%3A%22publisher_name%22%3BN%3Bs%3A12%3A%22publish_year%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22collation%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22language_name%22%3Bs%3A9%3A%22Indonesia%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3BN%3Bs%3A14%3A%22classification%22%3Bs%3A4%3A%22NONE%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3BN%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A11%3A%22Tim+Penulis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%221745d5266bf95802087e32a073f46f4a12343f6b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22616812fb9175ff89175922ac26c496786c92b5e0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%223c327a6c229d15a7a1e0382248941e3b726b9950%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222024-06-10+18%3A49%3A44%22%3B%7D', 'New data. Bibliography.', '2024-06-10 18:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `biblio_mark`
--

CREATE TABLE `biblio_mark` (
  `id` varchar(32) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_relation`
--

CREATE TABLE `biblio_relation` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `rel_biblio_id` int(11) NOT NULL DEFAULT 0,
  `rel_type` int(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_topic`
--

CREATE TABLE `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `topic_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bp_history_surket`
--

CREATE TABLE `bp_history_surket` (
  `id_surket` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bp_history_surket`
--

INSERT INTO `bp_history_surket` (`id_surket`, `member_id`, `nama`, `tanggal_buat`) VALUES
(2, '10001', 'Kadek aryana', '2024-05-12'),
(3, '10002', 'Aryana', '2024-05-12');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `name` varchar(64) NOT NULL,
  `contents` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expired_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(255) NOT NULL,
  `content_desc` text NOT NULL,
  `content_path` varchar(20) NOT NULL,
  `is_news` smallint(1) DEFAULT NULL,
  `is_draft` smallint(1) DEFAULT 0,
  `publish_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `is_draft`, `publish_date`, `input_date`, `last_update`, `content_ownpage`) VALUES
(1, 'Library Information', '<h3>Contact Information</h3>\r\n<p><strong>Address :</strong> <br /> Jenderal Sudirman Road, Senayan, Jakarta, Indonesia - Postal Code : 10270 <br /> <strong>Phone Number :</strong> <br /> (021) 5711144 <br /> <strong>Fax Number :</strong> <br /> (021) 5711144</p>\r\n<h3>Opening Hours</h3>\r\n<p><strong>Monday - Friday :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 20.00 PM <br /> <strong>Saturday  :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 17.00 PM</p>\r\n<h3>Collections</h3>\r\n<p>We have many types of collections in our library, range from Fictions to Sciences Material, from printed material to digital collections such CD-ROM, CD, VCD and DVD. We also collect daily serials publications such as newspaper and also monthly serials such as magazines.</p>\r\n<h3>Library Membership</h3>\r\n<p>To be able to loan our library collections, you must first become library member. There is terms and conditions that you must obey.</p>', 'libinfo', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(2, 'Help On Usage', '<h3>Searching</h3>\r\n<p>There are 2 methods available on searching library catalog. The first one is <strong>SIMPLE SEARCH</strong>, which is the simplest method on searching catalog. You just enter any keyword, either it containes in titles, author(s) names or subjects. You can supply more than one keywords in Simple Search method and it will expanding your search results.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ADVANCED SEARCH</strong>, lets you define keywords in more specific fields. If you want your keywords only contained in title field, then type your keyword in Title field and the system will limit its search within <strong>Title</strong> fields only, not in other fields. Location field lets you narrowing search results by specific location, so only collection that exists in selected location get fetched by system.</p>', 'help', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(3, 'Welcome To Admin Page', '<div class=\"container admin_home\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Bibliography</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon biblioIcon notAJAX\" href=\"index.php?mod=bibliography\"></a></div>\r\n<div class=\"col-sm-8\">The Bibliography module lets you manage your library bibliographical data. It also include collection items management to manage a copies of your library collection so it can be used in library circulation.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Circulation</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon circulationIcon notAJAX\" href=\"index.php?mod=circulation\"></a></div>\r\n<div class=\"col-sm-8\">The Circulation module is used for doing library circulation transaction such as collection loans and return. In this module you can also create loan rules that will be used in loan transaction proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Membership</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon memberIcon notAJAX\" href=\"index.php?mod=membership\"></a></div>\r\n<div class=\"col-sm-8\">The Membership module lets you manage library members such adding, updating and also removing. You can also manage membership type in this module.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Stock Take</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon stockTakeIcon notAJAX\" href=\"index.php?mod=stock_take\"></a></div>\r\n<div class=\"col-sm-8\">The Stock Take module is the easy way to do Stock Opname for your library collections. Follow several steps that ease your pain in Stock Opname proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Serial Control</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon serialIcon notAJAX\" href=\"index.php?mod=serial_control\"></a></div>\r\n<div class=\"col-sm-8\">Serial Control module help you manage library\'s serial publication subscription. You can track issues for each subscription.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Reporting</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon reportIcon notAJAX\" href=\"index.php?mod=reporting\"></a></div>\r\n<div class=\"col-sm-8\">Reporting lets you view various type of reports regardings membership data, circulation data and bibliographic data. All compiled on-the-fly from current library database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Master File</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon masterFileIcon notAJAX\" href=\"index.php?mod=master_file\"></a></div>\r\n<div class=\"col-sm-8\">The Master File modules lets you manage referential data that will be used by another modules. It include Authority File management such as Authority, Subject/Topic List, GMD and other data.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>System</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon systemIcon notAJAX\" href=\"index.php?mod=system\"></a></div>\r\n<div class=\"col-sm-8\">The System module is used to configure application globally, manage index, manage librarian, and also backup database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'adminhome', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 22:02:11', '1'),
(4, 'Homepage Info', '<p>Welcome To <strong>SLiMS Library</strong> Online Public Access Catalog (OPAC). Use OPAC to search collection in our library.</p>', 'headerinfo', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(5, 'Tentang SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> adalah akronim dari Senayan Library Management System. Awalnya dikembangkan oleh Perpustakaan Kementerian Pendidikan Nasional untuk menggantikan Alice (http://www2.softlinkint.com). Tujuan utamanya agar Perpustakaan Kemdiknas mempunyai kebebasan untuk menggunakan, mempelajari, memodifikasi dan mendistribusikan perangkat lunak yang digunakan. SLiMS, maka dirilis dengan lisensi GPL dan sekarang pengembangan SLiMS dilakukan oleh komunitas penggunanya.<!--intro_akhir--></p>\r\n<p><strong>Asal Mula</strong></p>\r\n<p>Setelah beroperasi 50 tahun lebih, karena beberapa alasan Perpustakaan BC Indonesia yang telah selama bertahun-tahun menjadi andalan layanan BC di Indonesia harus ditutup. Pengelola BC Indonesia kemudian berinisiatif untuk menghibahkan pengelolaan aset perpustakaanya ke tangan institusi pemerintah. Dalam hal ini, institusi pemerintah yang dianggap sesuai bidangnya dan strategis tempatnya, adalah Departemen Pendidikan Nasional (Depdiknas). Yang dihibahkan tidak hanya koleksi, tetapi juga rak koleksi, hardware (server dan workstation) serta sistem termasuk untuk aplikasi manajemen administrasi perpustakaan (Alice).</p>\r\n<p>Seiring dengan berjalannya waktu, manajemen Perpustakaan Depdiknas mulai menghadapi beberapa kendala dalam penggunaan sistem Alice. Pertama, keterbatasan dalam menambahkan fitur-fitur baru. Antara lain: kebutuhan manajemen serial, meng-online-kan katalog di web dan kustomisasi report yang sering berubah-ubah kebutuhannya. Penambahan fitur jika harus meminta modul resmi dari developer Alice, berarti membutuhkan dana tambahan yang tidak kecil. Apalagi tidak ada distributor resminya di Indonesia sehingga harus mengharapkan support dari Inggris. Ditambah lagi beberapa persyaratan yang membutuhkan infrastruktur biaya mahal seperti dedicated public IP agar bisa meng-online-kan Alice di web.<br /><br />Saat itu untuk mengatasi sebagian kebutuhan (utamanya kustomisasi report), dilakukan dengan ujicoba mengakses langsung database yang disimpan dalam format DBase. Terkadang berhasil terkadang tidak karena struktur datanya proprietary dan kompleks serta jumlah rekodnya banyak. Untuk mempelajari struktur database, dicoba melakukan kontak via email ke developer Alice. Tetapi tidak ada respon sama sekali. Disini muncul masalah kedua. Sulitnya mempelajari lebih mendalam cara kerja perangkat lunak Alice. Karena Alice merupakan sistem proprietary yang serba tertutup, segala sesuatunya sangat tergantung vendor. Dibutuhkan sejumlah uang untuk mendapatkan layanan resmi untuk kustomisasi.<br /><br />Perpustakaan Depdiknas salah satu tupoksinya adalah melakukan koordinasi pengelolaan perpustakaan unit kerja dibawah lingkungan Depdiknas. Dalam implementasinya, seringkali muncul kebutuhan untuk bisa mendistribusikan perangkat lunak sistem perpustakaan ke berbagai unit kerja tersebut. Disini masalah ketiga: sulit (atau tidak mungkin) untuk melakukan redistribusi sistem Alice. Alice merupakan perangkat lunak yang secara lisensi tidak memungkinkan diredistribusi oleh pengelola Perpustakaan Depdiknas secara bebas. Semuanya harus ijin dan membutuhkan biaya.<br /><br />November 2006, perpustakaan dihadapkan oleh sebuah masalah mendasar. Sistem Alice tiba-tiba tidak bisa digunakan. Ternyata Alice yang digunakan selama ini diimplementasikan dengan sistem sewa. Pantas saja biayanya relatif murah. Tiap tahun pengguna harus membayar kembali untuk memperpanjang masa sewa pakainya. Tetapi yang mengkhawatirkan adalah fakta bahwa perpustakaan harus menyimpan semua informasi penting dan kritikal di sebuah sistem yang tidak pernah dimiliki. Yang kalau lupa atau tidak mau membayar sewa lagi, hilanglah akses terhadap data kita sendiri. Konyol sekali. Itu sama saja dengan bunuh diri kalau masih tergantung dengan sistem berlisensi seperti itu.<br /><br />Akhirnya pengelola Perpustakaan Depdiknas me-review kembali penggunaan sistem Alice di perpustakaan Depdiknas. Beberapa poin pentingnya antara lain:<br />&bull;&nbsp;&nbsp;&nbsp; Alice memang handal (reliable), tapi punya banyak keterbatasan. Biaya sewanya memang relatif murah, tetapi kalau membutuhkan support tambahan, baik sederhana ataupun kompleks, sangat tergantung dengan developer Alice yang berpusat di Inggris. Butuh biaya yang kalau di total juga tidak murah.<br />&bull;&nbsp;&nbsp;&nbsp; Model lisensi proprietary yang digunakan developer Alice tidak cocok dengan kondisi kebanyakan perpustakaan di Indonesia. Padahal pengelola Perpustakaan Depdiknas sebagai koordinator banyak perpustakaan di lingkungan Depdiknas, punya kepentingan untuk bisa dengan bebas melakukan banyak hal terhadap software yang digunakan.<br />&bull;&nbsp;&nbsp;&nbsp; Menyimpan data penting dan kritikal untuk operasional perpustakaan di suatu software yang proprietary dan menggunakan sistem sewa, dianggap sesuatu yang konyol dan mengancam independensi dan keberlangsungan perpustakaan itu sendiri.<br />&bull;&nbsp;&nbsp;&nbsp; Alice berjalan diatas sistem operasi Windows yang juga proprietary padahal pengelola Perpustakaan Depdiknas ingin beralih menggunakan Sistem Operasi open source (seperti GNU/Linux dan FreeBSD).<br />&bull;&nbsp;&nbsp;&nbsp; Masalah devisa negara yang terbuang untuk membayar software yang tidak pernah dimiliki.<br />&bull;&nbsp;&nbsp;&nbsp; Intinya: pengelola Perpustakaan Depdiknas ingin menggunakan software yang memberikan dan menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Lisensi Alice tidak memungkinkan untuk itu.<br /><br />Setelah memutuskan untuk hijrah menggunakan sistem yang lain, maka langkah berikutnya adalah mencari sistem yang ada untuk digunakan atau mengembangkan sendiri sistem yang dibutuhkan. Beberapa pertimbangan yang harus dipenuhi:<br />&bull;&nbsp;&nbsp;&nbsp; Dirilis dibawah lisensi yang menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Model lisensi open source (www.openosurce.org) dianggap sebagai model yang paling ideal dan sesuai.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan untuk membangun sistem juga harus berlisensi open source.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan haruslah teknologi yang relatif mudah dipelajari oleh pengelola perpustakaan Depdiknas yang berlatarbelakang pendidiknas pustakawan, seperti PHP (scripting language) dan MySQL (database). Jika tidak menguasai sisi teknis teknologi, maka akan terjebak kembali terhadap ketergantungan pada developer.<br /><br />Langkah berikutnya adalah melakukan banding software sistem perpustakaan open source yang bisa diperoleh di internet. Beberapa software yang dicoba antara lain: phpMyLibrary, OpenBiblio, KOHA, EverGreen. Pengelola perpustakaan Depdiknas merasa tidak cocok dengan software yang ada, dengan beberapa alasan:<br />&bull;&nbsp;&nbsp;&nbsp; Desain aplikasi dan database yang tidak baik atau kurang menerapkan secara serius prinsip-prinsip pengembangan aplikasi dan database yang baik sesuai dengan teori yang ada (PHPMyLibrary, OpenBiblio).<br />&bull;&nbsp;&nbsp;&nbsp; Menggunakan teknologi yang sulit dikuasai oleh pengelola perpustakaan Depdiknas (KOHA dan EverGreen dikembangkan menggunakan Perl dan C++ Language yang relatif lebih sulit dipelajari).<br />&bull;&nbsp;&nbsp;&nbsp; Beberapa sudah tidak aktif atau lama sekali tidak di rilis versi terbarunya (PHPMyLibrary dan OpenBiblio).<br /><br />Karena tidak menemukan sistem yang dibutuhkan, maka diputuskan untuk mengembangkan sendiri aplikasi sistem perpustakaan yang dibutuhkan. Dalam dunia pengembangan software, salah satu best practice-nya adalah memberikan nama kode (codename) pengembangan. Nama kode berbeda dengan nama aplikasinya itu sendiri. Nama kode biasanya berbeda-beda tiap versi. Misalnya kode nama &ldquo;Hardy Heron&rdquo; untuk Ubuntu Linux 8.04 dan &ldquo;Jaunty Jackalope&rdquo; untuk Ubuntu Linux 9.04. Pengelola perpustakaan Depdiknas Untuk versi awal (1.0) aplikasi yang akan dikembangkan, memberikan nama kode &ldquo;Senayan&rdquo;. Alasannya sederhana, karena awal dikembangkan di perpustakaan Depdiknas yang berlokasi di Senayan. Apalagi Perpustakaan Depdiknas mempunyai brand sebagai library@senayan. Belakangan karena dirasa nama &ldquo;Senayan&rdquo; dirasa cocok dan punya nilai marketing yang bagus, maka nama &ldquo;Senayan&rdquo; dijadikan nama resmi aplikasi sistem perpustakaan yang dikembangkan.<br /><br />Mengembangkan Senayan<br /><br />Sebelum mulai mengembangkan Senayan, ada beberapa keputusan desain aplikasi yang harus dibuat. Aspek desain ini penting diantaranya untuk pengambilankeputusan dari berbagai masukan yang datang dari komunitas. Antara lain:<br /><br />Pertama,&nbsp; Senayan adalah aplikasi untuk kebutuhan administrasi dan konten perpustakaan (Library Automation System). Senayan didesain untuk kebutuhan skala menengah maupun besar. Cocok untuk perpustakaan yang memiliki koleksi, anggota dan staf banyak di lingkungan jaringan, baik itu lokal (intranet) dan internet.<br /><br />Kedua, Senayan dibangun dengan memperhatikan best practice dalam pengembangan software seperti dalam hal penulisan source code, dokumentasi, dan desain database.<br /><br />Ketiga, Senayan dirancang untuk compliant dengan standar pengelolaan koleksi di perpustakaan. Untuk standar pengatalogan minimal memenuhi syarat AACR 2 level 2 (Anglo-American Cataloging Rules). Kebutuhan untuk kesesuaian dengan standar di perpustakaan terus berkembang dan pengelola perpustakaan Depdiknas dan developer Senayan berkomitmen untuk terus mengembangkan Senayan agar mengikuti standar-standar tersebut.<br /><br />Keempat, Senayan didesain agar bisa juga menjadi middleware bagi aplikasi lain untuk menggunakan data yang ada didalam Senayan. Untuk itu Senayan akan menyediakan API (application programming Interface) yang berbasis web service.<br /><br />Kelima, Senayan merupakan aplikasi yang cross-platform, baik dari sisi aplikasinya itu sendiri dan akses terhadap aplikasi. Untuk itu basis yang paling tepat ada basis web.<br /><br />Keenam, teknologi yang digunakan untuk membangun Senayan, haruslah terbukti bisa diinstall di banyak platform sistem operasi, berlisensi open source dan mudah dipelajari oleh pengelola perpustakaan Depdiknas. Diputuskan untuk menggunakan PHP (www.php.net) untuk web scripting languange dan MySQL (www.mysql.com) untuk server database.<br /><br />Ketujuh, diputuskan untuk mengembangkan library PHP sendiri yang didesain spesifik untuk kebutuhan membangun library automation system. Tidak menggunakan library PHP yang sudah terkenal seperti PEAR (pear.php.net) karena alasan penguasaan terhadap teknologi dan kesederhanaan. Library tersebut diberinama &ldquo;simbio&rdquo;.<br /><br />Kedelapan, untuk mempercepat proses pengembangan, beberapa modul atau fungsi yang dibutuhkan yang dirasa terlalu lama dan rumit untuk dikembangkan sendiri, akan menggunakan software open source yang berlisensi open source juga. Misalnya: flowplayer untuk dukungan multimedia, jQuery untuk dukungan AJAX (Asynchronous Javascript and XML), genbarcode untuk dukungan pembuatan barcode, PHPThumb untuk dukungan generate image on-the-fly, tinyMCE untuk web-based text editor, dan lain-lain.<br /><br />Kesembilan, untuk menjaga spirit open source, proses pengembangan Senayan dilakukan dengan infrastruktur yang berbasis open source. Misalnya: server web menggunakan Apache, server produksi menggunakan OS Linux Centos dan OpenSuse, para developer melakukan pengembangan dengan OS Ubuntu Linux, manajemen source code menggunakan software git, dan lain-lain.<br /><br />Kesepuluh, Senayan dirilis ke masyarakat umum dengan lisensi GNU/GPL versi 3 yang menjamin kebebasan penggunanya untuk mempelajari, menggunakan, memodifikasi dan redistribusi Senayan.<br /><br />Kesebelas, para developer dan pengelola perpustakaan Depdiknas berkomitmen untuk terus mengembangkan Senayan dan menjadikannya salah satu contoh software perpustakaan yang open source, berbasis di indonesia dan menjadi salah satu contoh bagi model pengembangan open source yang terbukti berjalan dengan baik.<br /><br />Keduabelas, model pengembangan Senayan adalah open source yang artinya setiap orang dipersilahkan memberikan kontribusinya. Baik dari sisi pemrogaman, template, dokumentasi, dan lain-lain. Tentu saja ada mekanisme mana kontribusi yang bagus untuk dimasukkan dalam rilis resmi, mana yang tidak. Mengacu ke dokumen &hellip; (TAMBAHKAN DENGAN TULISAN ERIC S RAYMOND)<br /><br />Model pengembangan senayan<br /><br />Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.<br />Fitur Senayan<br />Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN adalah sebagai berikut:<br />Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.<br /><br />Roadmap Pengembangan Senayan<br />SENAYAN akan terus dikembangkan oleh para pengembangnya beserta komunitas pengguna SENAYAN lainnya. Berikut adalah Roadmap pengembangan SENAYAN ke depannya:<br /><br />Pengembangan aplikasi:<br />1.&nbsp;&nbsp;&nbsp; Kompatibilitas dengan MARC dan standar pertukaran data yang komplit. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Memastikan bahwa format data bibliografi kompatibel dengan MARC secara lebih baik (minimal MARC light).<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap RFID.<br />&bull;&nbsp;&nbsp;&nbsp; Fitur untuk impor / ekspor rekod dari The Online Computer Library Centre (OCLC), Research Libraries Information Network (RLIN), vendor sistem lain yang compliant dengan MARC.<br />&bull;&nbsp;&nbsp;&nbsp; Validasi data ISBN menggunakan modulus seven.<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap standar di perpustakaan, seperti: Library of Congress Subject Headings, Library of Congress Classification, ALA filing rules, International Standard Bibliographic Description, ANSI Standard for Bibliographic Information Exchange on magnetic tape, Common communication format (ISO 2709).<br />2.&nbsp;&nbsp;&nbsp; Katalog induk/bersama (union catalog)<br />3.&nbsp;&nbsp;&nbsp; Implementasi Thesaurus. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pengatalogan.<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pencarian, misalnya memberikan advis pencarian menggunakan knowledge base yang dibangun dengan sistem tesaurus.<br />4.&nbsp;&nbsp;&nbsp; Implementasi Library 2.0. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; User bisa login dan mempunyai halaman personalisasi.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan reservasi koleksi dan memperpanjang peminjaman.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan komunikasi dengan pustakawan via messaging system.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan tagging, rekomendasi koleksi dan menyimpannya didalam daftar koleksi favoritnya.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa memberikan komentar terhadap koleksi.<br />&bull;&nbsp;&nbsp;&nbsp; Pustakawan bisa memasukkan preferensi pemakai didalam data keanggotaan. Preferensi tersebut bisa dimanfaatkan salah satunya untuk men-generate semacam daftar koleksi terpilih untuk dicetak atau ditampilkan ketika user login.<br />5.&nbsp;&nbsp;&nbsp; Peningkatan dukungan manajemen konten digital dan entri analitikal<br /><br />Pengembangan basis komunitas pengguna:<br />&bull;&nbsp;&nbsp;&nbsp; Membangun komunitas pengguna di berbagai kota <br />&bull;&nbsp;&nbsp;&nbsp; Mengadakan Senayan Developers Day untuk silaturahmi antar developer Senayan, update dokumentasi, penambahan fitur baru dan bug fixing dan mencari bibit pengembang yang baru.<br />&bull;&nbsp;&nbsp;&nbsp; Workshop/Seminar Nasional Tahunan<br />&bull;&nbsp;&nbsp;&nbsp; Jam Sessions rutin setiap 3 bulan</p>', 'about_slims', NULL, 0, NULL, '2010-08-28 23:29:55', '2010-11-12 18:21:01', '1'),
(6, 'Modul yang Tersedia', '<p><!--intro_awal-->Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN antara lain: pengatalogan/bibliografi, keanggotaan, sirkulasi, masterfile, stock opname (inventarisasi koleksi), pelaporan/reporting, manajemen kontrol serial, digital library, dan lain-lain.<!--intro_akhir--></p>\r\n<p>Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.</p>', 'modul_tersedia', NULL, 0, NULL, '2010-08-29 04:03:09', '2010-08-29 04:05:49', '1'),
(7, 'Lisensi SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> dilisensikan dibawah GNU/GPL (http://www.gnu.org/licenses/gpl.html) untuk menjamin kebebasan pengguna dalam menggunakannya. GNU General Public License (disingkat GNU GPL atau cukup GPL) merupakan suatu lisensi perangkat lunak bebas yang aslinya ditulis oleh Richard Stallman untuk proyek GNU. Lisensi GPL memberikan penerima salinan perangkat lunak hak dari perangkat lunak bebas dan menggunakan copyleft&nbsp; untuk memastikan kebebasan yang sama diterapkan pada versi berikutnya dari karya tersebut.<!--intro_akhir--></p>\r\n<p>&nbsp;GNU LESSER GENERAL PUBLIC LICENSE<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version 3, 29 June 2007<br /><br />&nbsp;Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;<br />&nbsp;Everyone is permitted to copy and distribute verbatim copies<br />&nbsp;of this license document, but changing it is not allowed.<br /><br /><br />&nbsp; This version of the GNU Lesser General Public License incorporates<br />the terms and conditions of version 3 of the GNU General Public<br />License, supplemented by the additional permissions listed below.<br /><br />&nbsp; 0. Additional Definitions.<br /><br />&nbsp; As used herein, \"this License\" refers to version 3 of the GNU Lesser<br />General Public License, and the \"GNU GPL\" refers to version 3 of the GNU<br />General Public License.<br /><br />&nbsp; \"The Library\" refers to a covered work governed by this License,<br />other than an Application or a Combined Work as defined below.<br /><br />&nbsp; An \"Application\" is any work that makes use of an interface provided<br />by the Library, but which is not otherwise based on the Library.<br />Defining a subclass of a class defined by the Library is deemed a mode<br />of using an interface provided by the Library.<br /><br />&nbsp; A \"Combined Work\" is a work produced by combining or linking an<br />Application with the Library.&nbsp; The particular version of the Library<br />with which the Combined Work was made is also called the \"Linked<br />Version\".<br /><br />&nbsp; The \"Minimal Corresponding Source\" for a Combined Work means the<br />Corresponding Source for the Combined Work, excluding any source code<br />for portions of the Combined Work that, considered in isolation, are<br />based on the Application, and not on the Linked Version.<br /><br />&nbsp; The \"Corresponding Application Code\" for a Combined Work means the<br />object code and/or source code for the Application, including any data<br />and utility programs needed for reproducing the Combined Work from the<br />Application, but excluding the System Libraries of the Combined Work.<br /><br />&nbsp; 1. Exception to Section 3 of the GNU GPL.<br /><br />&nbsp; You may convey a covered work under sections 3 and 4 of this License<br />without being bound by section 3 of the GNU GPL.<br /><br />&nbsp; 2. Conveying Modified Versions.<br /><br />&nbsp; If you modify a copy of the Library, and, in your modifications, a<br />facility refers to a function or data to be supplied by an Application<br />that uses the facility (other than as an argument passed when the<br />facility is invoked), then you may convey a copy of the modified<br />version:<br /><br />&nbsp;&nbsp; a) under this License, provided that you make a good faith effort to<br />&nbsp;&nbsp; ensure that, in the event an Application does not supply the<br />&nbsp;&nbsp; function or data, the facility still operates, and performs<br />&nbsp;&nbsp; whatever part of its purpose remains meaningful, or<br /><br />&nbsp;&nbsp; b) under the GNU GPL, with none of the additional permissions of<br />&nbsp;&nbsp; this License applicable to that copy.<br /><br />&nbsp; 3. Object Code Incorporating Material from Library Header Files.<br /><br />&nbsp; The object code form of an Application may incorporate material from<br />a header file that is part of the Library.&nbsp; You may convey such object<br />code under terms of your choice, provided that, if the incorporated<br />material is not limited to numerical parameters, data structure<br />layouts and accessors, or small macros, inline functions and templates<br />(ten or fewer lines in length), you do both of the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the object code that the<br />&nbsp;&nbsp; Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the object code with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp; 4. Combined Works.<br /><br />&nbsp; You may convey a Combined Work under terms of your choice that,<br />taken together, effectively do not restrict modification of the<br />portions of the Library contained in the Combined Work and reverse<br />engineering for debugging such modifications, if you also do each of<br />the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the Combined Work that<br />&nbsp;&nbsp; the Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the Combined Work with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp;&nbsp; c) For a Combined Work that displays copyright notices during<br />&nbsp;&nbsp; execution, include the copyright notice for the Library among<br />&nbsp;&nbsp; these notices, as well as a reference directing the user to the<br />&nbsp;&nbsp; copies of the GNU GPL and this license document.<br /><br />&nbsp;&nbsp; d) Do one of the following:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0) Convey the Minimal Corresponding Source under the terms of this<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License, and the Corresponding Application Code in a form<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suitable for, and under terms that permit, the user to<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recombine or relink the Application with a modified version of<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Linked Version to produce a modified Combined Work, in the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; manner specified by section 6 of the GNU GPL for conveying<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Corresponding Source.<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1) Use a suitable shared library mechanism for linking with the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Library.&nbsp; A suitable mechanism is one that (a) uses at run time<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a copy of the Library already present on the user\'s computer<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; system, and (b) will operate properly with a modified version<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the Library that is interface-compatible with the Linked<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version.<br /><br />&nbsp;&nbsp; e) Provide Installation Information, but only if you would otherwise<br />&nbsp;&nbsp; be required to provide such information under section 6 of the<br />&nbsp;&nbsp; GNU GPL, and only to the extent that such information is<br />&nbsp;&nbsp; necessary to install and execute a modified version of the<br />&nbsp;&nbsp; Combined Work produced by recombining or relinking the<br />&nbsp;&nbsp; Application with a modified version of the Linked Version. (If<br />&nbsp;&nbsp; you use option 4d0, the Installation Information must accompany<br />&nbsp;&nbsp; the Minimal Corresponding Source and Corresponding Application<br />&nbsp;&nbsp; Code. If you use option 4d1, you must provide the Installation<br />&nbsp;&nbsp; Information in the manner specified by section 6 of the GNU GPL<br />&nbsp;&nbsp; for conveying Corresponding Source.)<br /><br />&nbsp; 5. Combined Libraries.<br /><br />&nbsp; You may place library facilities that are a work based on the<br />Library side by side in a single library together with other library<br />facilities that are not Applications and are not covered by this<br />License, and convey such a combined library under terms of your<br />choice, if you do both of the following:<br /><br />&nbsp;&nbsp; a) Accompany the combined library with a copy of the same work based<br />&nbsp;&nbsp; on the Library, uncombined with any other library facilities,<br />&nbsp;&nbsp; conveyed under the terms of this License.<br /><br />&nbsp;&nbsp; b) Give prominent notice with the combined library that part of it<br />&nbsp;&nbsp; is a work based on the Library, and explaining where to find the<br />&nbsp;&nbsp; accompanying uncombined form of the same work.<br /><br />&nbsp; 6. Revised Versions of the GNU Lesser General Public License.<br /><br />&nbsp; The Free Software Foundation may publish revised and/or new versions<br />of the GNU Lesser General Public License from time to time. Such new<br />versions will be similar in spirit to the present version, but may<br />differ in detail to address new problems or concerns.<br /><br />&nbsp; Each version is given a distinguishing version number. If the<br />Library as you received it specifies that a certain numbered version<br />of the GNU Lesser General Public License \"or any later version\"<br />applies to it, you have the option of following the terms and<br />conditions either of that published version or of any later version<br />published by the Free Software Foundation. If the Library as you<br />received it does not specify a version number of the GNU Lesser<br />General Public License, you may choose any version of the GNU Lesser<br />General Public License ever published by the Free Software Foundation.<br /><br />&nbsp; If the Library as you received it specifies that a proxy can decide<br />whether future versions of the GNU Lesser General Public License shall<br />apply, that proxy\'s public statement of acceptance of any version is<br />permanent authorization for you to choose that version for the<br />Library.</p>', 'lisensi_slims', NULL, 0, NULL, '2010-08-29 04:04:33', '2010-11-12 22:15:43', '1');
INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `is_draft`, `publish_date`, `input_date`, `last_update`, `content_ownpage`) VALUES
(8, 'Model Pengembangan Open Source', '<p><!--intro_awal-->Sumber terbuka (Inggris: open source) adalah sistem pengembangan yang tidak dikoordinasi oleh suatu individu / lembaga pusat, tetapi oleh para pelaku yang bekerja sama dengan memanfaatkan kode sumber (source-code) yang tersebar dan tersedia bebas (biasanya menggunakan fasilitas komunikasi internet). Pola pengembangan ini mengambil model ala bazaar, sehingga pola Open Source ini memiliki ciri bagi komunitasnya yaitu adanya dorongan yang bersumber dari budaya memberi.<!--intro_akhir--><br /><br />Pola Open Source lahir karena kebebasan berkarya, tanpa intervensi berpikir dan mengungkapkan apa yang diinginkan dengan menggunakan pengetahuan dan produk yang cocok. Kebebasan menjadi pertimbangan utama ketika dilepas ke publik. Komunitas yang lain mendapat kebebasan untuk belajar, mengutak-ngatik, merevisi ulang, membenarkan ataupun bahkan menyalahkan, tetapi kebebasan ini juga datang bersama dengan tanggung jawab, bukan bebas tanpa tanggung jawab.<br /><br />Pada intinya konsep sumber terbuka adalah membuka \"kode sumber\" dari sebuah perangkat lunak. Konsep ini terasa aneh pada awalnya dikarenakan kode sumber merupakan kunci dari sebuah perangkat lunak. Dengan diketahui logika yang ada di kode sumber, maka orang lain semestinya dapat membuat perangkat lunak yang sama fungsinya. Sumber terbuka hanya sebatas itu. Artinya, dia tidak harus gratis. Definisi sumber terbuka yang asli adalah seperti tertuang dalam OSD (Open Source Definition)/Definisi sumber terbuka.</p>\r\n<p>Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.</p>', 'opensource', NULL, 0, NULL, '2010-08-29 04:05:16', '2010-08-29 04:34:04', '1');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_title` text NOT NULL,
  `file_name` text NOT NULL,
  `file_url` text DEFAULT NULL,
  `file_dir` text DEFAULT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `file_desc` text DEFAULT NULL,
  `file_key` text DEFAULT NULL,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `file_title`, `file_name`, `file_url`, `file_dir`, `mime_type`, `file_desc`, `file_key`, `uploader_id`, `input_date`, `last_update`) VALUES
(1, 'text', 'f0b0fc5a321ca7257d0ce7c6d92d6211.pdf', '', '', 'application/pdf', '', NULL, 1, '2023-12-24 12:14:21', '2023-12-24 12:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `files_read`
--

CREATE TABLE `files_read` (
  `filelog_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `date_read` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `member_id` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files_read`
--

INSERT INTO `files_read` (`filelog_id`, `file_id`, `date_read`, `member_id`, `user_id`, `client_ip`) VALUES
(1, 1, '2023-12-24 04:14:50', '0', 0, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `fines_id` int(11) NOT NULL,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `debet` int(11) DEFAULT 0,
  `credit` int(11) DEFAULT 0,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_access`
--

CREATE TABLE `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `menus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`menus`)),
  `r` int(1) NOT NULL DEFAULT 0,
  `w` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `menus`, `r`, `w`) VALUES
(1, 1, NULL, 1, 1),
(1, 2, NULL, 1, 1),
(1, 3, NULL, 1, 1),
(1, 4, NULL, 1, 1),
(1, 5, NULL, 1, 1),
(1, 6, NULL, 1, 1),
(1, 7, NULL, 1, 1),
(1, 8, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dayname` varchar(20) NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Table structure for table `index_documents`
--

CREATE TABLE `index_documents` (
  `document_id` int(11) NOT NULL,
  `word_id` bigint(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `hit_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `index_documents`
--

INSERT INTO `index_documents` (`document_id`, `word_id`, `location`, `hit_count`) VALUES
(1, 1, 'biblio', 1),
(18, 23, 'biblio', 1),
(18, 24, 'biblio', 1),
(18, 21, 'biblio', 1),
(18, 20, 'biblio', 1),
(18, 19, 'biblio', 1),
(18, 18, 'biblio', 1),
(18, 17, 'biblio', 1),
(18, 16, 'biblio', 1),
(18, 15, 'biblio', 1),
(18, 14, 'biblio', 1),
(18, 22, 'biblio', 1),
(11, 5, 'biblio', 1),
(11, 6, 'biblio', 1),
(11, 7, 'biblio', 1),
(11, 8, 'biblio', 1),
(11, 9, 'biblio', 1),
(11, 10, 'biblio', 1),
(10, 5, 'biblio', 1),
(10, 6, 'biblio', 1),
(10, 7, 'biblio', 1),
(10, 8, 'biblio', 1),
(10, 9, 'biblio', 1),
(10, 10, 'biblio', 1),
(10, 11, 'biblio', 1),
(10, 12, 'biblio', 1),
(9, 3, 'biblio', 1),
(9, 4, 'biblio', 1),
(9, 2, 'biblio', 1),
(9, 11, 'biblio', 1),
(9, 12, 'biblio', 1),
(18, 25, 'biblio', 1),
(17, 5, 'biblio', 1),
(17, 6, 'biblio', 1),
(17, 7, 'biblio', 1),
(17, 8, 'biblio', 1),
(17, 9, 'biblio', 1),
(17, 10, 'biblio', 1),
(16, 5, 'biblio', 1),
(16, 6, 'biblio', 1),
(16, 7, 'biblio', 1),
(16, 8, 'biblio', 1),
(16, 9, 'biblio', 1),
(16, 10, 'biblio', 1),
(16, 11, 'biblio', 1),
(16, 12, 'biblio', 1),
(15, 3, 'biblio', 1),
(15, 4, 'biblio', 1),
(15, 2, 'biblio', 1),
(15, 11, 'biblio', 1),
(15, 12, 'biblio', 1),
(14, 13, 'biblio', 1),
(40, 23, 'biblio', 1),
(19, 25, 'biblio', 1),
(40, 36, 'biblio', 1),
(40, 37, 'biblio', 1),
(40, 38, 'biblio', 1),
(40, 39, 'biblio', 1),
(40, 18, 'biblio', 1),
(41, 35, 'biblio', 1),
(41, 34, 'biblio', 1),
(41, 33, 'biblio', 1),
(41, 32, 'biblio', 1),
(41, 31, 'biblio', 1),
(41, 30, 'biblio', 1),
(40, 40, 'biblio', 1),
(40, 41, 'biblio', 1),
(40, 42, 'biblio', 1),
(40, 43, 'biblio', 1),
(40, 44, 'biblio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `index_words`
--

CREATE TABLE `index_words` (
  `id` bigint(20) NOT NULL,
  `word` varchar(50) NOT NULL,
  `num_hits` int(11) NOT NULL,
  `doc_hits` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `index_words`
--

INSERT INTO `index_words` (`id`, `word`, `num_hits`, `doc_hits`) VALUES
(23, 'sma', 0, 0),
(22, 'siswa', 1, 1),
(21, 'belajar', 1, 1),
(20, 'kualitas', 1, 1),
(19, 'meningkatkan', 1, 1),
(18, 'untuk', 0, 0),
(17, 'sekolah', 1, 1),
(16, 'internal', 1, 1),
(15, 'kolaborasi', 1, 1),
(14, 'praktik', 1, 1),
(24, 'tim', 1, 1),
(25, 'penulis', 1, 1),
(26, 'merah', 0, 0),
(27, 'putih', 0, 0),
(28, 'antologi', 0, 0),
(29, 'puisi', 0, 0),
(30, 'siapa', 1, 1),
(31, 'aku', 1, 1),
(32, 'apa', 1, 1),
(33, 'bakatku', 1, 1),
(34, 'prabu', 1, 1),
(35, 'ganendra', 1, 1),
(36, 'nihongo', 1, 1),
(37, 'kira', 1, 1),
(38, 'bahasa', 1, 1),
(39, 'jepang', 1, 1),
(40, 'ma', 1, 1),
(41, 'kelas', 1, 1),
(42, 'x', 1, 1),
(43, 'evi', 1, 1),
(44, 'lusiana', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `inventory_code` varchar(200) DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) DEFAULT NULL,
  `order_no` varchar(20) DEFAULT NULL,
  `location_id` varchar(3) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT 0,
  `invoice` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT 0,
  `loan_rules_id` int(11) NOT NULL DEFAULT 0,
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT 0,
  `is_return` int(11) NOT NULL DEFAULT 0,
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Triggers `loan`
--
DELIMITER $$
CREATE TRIGGER `delete_loan_history` AFTER DELETE ON `loan` FOR EACH ROW DELETE FROM `loan_history` WHERE loan_id=OLD.loan_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_loan_history` AFTER INSERT ON `loan` FOR EACH ROW INSERT INTO loan_history
     SET loan_id=NEW.loan_id,
     item_code=NEW.item_code,
     member_id=NEW.member_id,
     loan_date=NEW.loan_date,
     due_date=NEW.due_date,
     renewed=NEW.renewed,
     is_lent=NEW.is_lent,
     is_return=NEW.is_return,
     return_date=NEW.return_date,
     input_date=NEW.input_date,
     last_update=NEW.last_update,
     title=(SELECT b.title FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     biblio_id=(SELECT b.biblio_id FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     call_number=(SELECT IF(i.call_number IS NULL, b.call_number,i.call_number) FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     classification=(SELECT b.classification FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     gmd_name=(SELECT g.gmd_name FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id LEFT JOIN mst_gmd g ON g.gmd_id=b.gmd_id WHERE i.item_code=NEW.item_code),
     language_name=(SELECT l.language_name FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id LEFT JOIN mst_language l ON b.language_id=l.language_id WHERE i.item_code=NEW.item_code),
     location_name=(SELECT ml.location_name FROM item i LEFT JOIN mst_location ml ON i.location_id=ml.location_id WHERE i.item_code=NEW.item_code),
     collection_type_name=(SELECT mct.coll_type_name FROM mst_coll_type mct LEFT JOIN item i ON i.coll_type_id=mct.coll_type_id WHERE i.item_code=NEW.item_code),
     member_name=(SELECT m.member_name FROM member m WHERE m.member_id=NEW.member_id),
     member_type_name=(SELECT mmt.member_type_name FROM mst_member_type mmt LEFT JOIN member m ON m.member_type_id=mmt.member_type_id WHERE m.member_id=NEW.member_id)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_loan_history` AFTER UPDATE ON `loan` FOR EACH ROW UPDATE loan_history 
    SET is_lent=NEW.is_lent,
    is_return=NEW.is_return,
    renewed=NEW.renewed,
    return_date=NEW.return_date
    WHERE loan_id=NEW.loan_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `loan_history`
--

CREATE TABLE `loan_history` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `biblio_id` int(11) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `classification` varchar(40) DEFAULT NULL,
  `gmd_name` varchar(30) DEFAULT NULL,
  `language_name` varchar(20) DEFAULT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `collection_type_name` varchar(100) DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  `member_type_name` varchar(64) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `renewed` int(11) NOT NULL DEFAULT 0,
  `is_lent` int(11) NOT NULL DEFAULT 0,
  `is_return` int(11) NOT NULL DEFAULT 0,
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` varchar(20) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) DEFAULT NULL,
  `member_mail_address` varchar(255) DEFAULT NULL,
  `member_email` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `inst_name` varchar(100) DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `member_phone` varchar(50) DEFAULT NULL,
  `member_fax` varchar(50) DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text DEFAULT NULL,
  `is_pending` smallint(1) NOT NULL DEFAULT 0,
  `mpasswd` varchar(64) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(20) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `gender`, `birth_date`, `member_type_id`, `member_address`, `member_mail_address`, `member_email`, `postal_code`, `inst_name`, `is_new`, `member_image`, `pin`, `member_phone`, `member_fax`, `member_since_date`, `register_date`, `expire_date`, `member_notes`, `is_pending`, `mpasswd`, `last_login`, `last_login_ip`, `input_date`, `last_update`) VALUES
('10001', 'Kadek aryana', 1, '2024-05-06', 1, 'aan', '', '', '', 'Udayana', NULL, 'member_10001.png', '', '', '', '2024-05-06', '2024-05-06', '2025-05-06', '', 0, NULL, NULL, NULL, '2024-05-06', '2024-05-06'),
('10002', 'Aryana', 0, '2024-02-01', 1, '', '', '', '', 'Udayana', NULL, NULL, '', '', '', '2024-05-06', '2024-05-06', '2025-05-06', '', 0, NULL, NULL, NULL, '2024-05-06', '2024-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `member_custom`
--

CREATE TABLE `member_custom` (
  `member_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Table structure for table `mst_author`
--

CREATE TABLE `mst_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `author_year` varchar(20) DEFAULT NULL,
  `authority_type` enum('p','o','c') DEFAULT 'p',
  `auth_list` varchar(20) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_carrier_type`
--

CREATE TABLE `mst_carrier_type` (
  `id` int(11) NOT NULL,
  `carrier_type` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `code2` char(1) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_carrier_type`
--

INSERT INTO `mst_carrier_type` (`id`, `carrier_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio cartridge', 'sg', 'g', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(2, 'audio cylinder', 'se', 'e', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(3, 'audio disc', 'sd', 'd', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(4, 'sound track reel', 'si', 'i', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(5, 'audio roll', 'sq', 'q', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(6, 'audiocassette', 'ss', 's', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(7, 'audiotape reel', 'st', 't', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(8, 'other (audio)', 'sz', 'z', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(9, 'computer card', 'ck', 'k', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(10, 'computer chip cartridge', 'cb', 'b', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(11, 'computer disc', 'cd', 'd', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(12, 'computer disc cartridge', 'ce', 'e', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(13, 'computer tape cartridge', 'ca', 'a', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(14, 'computer tape cassette', 'cf', 'f', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(15, 'computer tape reel', 'ch', 'h', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(16, 'online resource', 'cr', 'r', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(17, 'other (computer)', 'cz', 'z', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(18, 'aperture card', 'ha', 'a', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(19, 'microfiche', 'he', 'e', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(20, 'microfiche cassette', 'hf', 'f', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(21, 'microfilm cartridge', 'hb', 'b', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(22, 'microfilm cassette', 'hc', 'c', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(23, 'microfilm reel', 'hd', 'd', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(24, 'microfilm roll', 'hj', 'j', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(25, 'microfilm slip', 'hh', 'h', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(26, 'microopaque', 'hg', 'g', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(27, 'other (microform)', 'hz', 'z', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(28, 'microscope slide', 'pp', 'p', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(29, 'other (microscope)', 'pz', 'z', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(30, 'film cartridge', 'mc', 'c', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(31, 'film cassette', 'mf', 'f', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(32, 'film reel', 'mr', 'r', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(33, 'film roll', 'mo', 'o', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(34, 'filmslip', 'gd', 'd', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(35, 'filmstrip', 'gf', 'f', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(36, 'filmstrip cartridge', 'gc', 'c', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(37, 'overhead transparency', 'gt', 't', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(38, 'slide', 'gs', 's', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(39, 'other (projected image)', 'mz', 'z', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(40, 'stereograph card', 'eh', 'h', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(41, 'stereograph disc', 'es', 's', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(42, 'other (stereographic)', 'ez', 'z', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(43, 'card', 'no', 'o', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(44, 'flipchart', 'nn', 'n', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(45, 'roll', 'na', 'a', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(46, 'sheet', 'nb', 'b', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(47, 'volume', 'nc', 'c', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(48, 'object', 'nr', 'r', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(49, 'other (unmediated)', 'nz', '', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(50, 'video cartridge', 'vc', '', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(51, 'videocassette', 'vf', '', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(52, 'videodisc', 'vd', '', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(53, 'videotape reel', 'vr', '', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(54, 'other (video)', 'vz', '', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(55, 'unspecified', 'zu', 'u', '2023-12-24 13:08:41', '2023-12-24 13:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `mst_coll_type`
--

CREATE TABLE `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL,
  `coll_type_name` varchar(30) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Reference', '2007-11-29', '2007-11-29'),
(2, 'Textbook', '2007-11-29', '2007-11-29'),
(3, 'Fiction', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_content_type`
--

CREATE TABLE `mst_content_type` (
  `id` int(11) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `code2` char(1) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_content_type`
--

INSERT INTO `mst_content_type` (`id`, `content_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'cartographic dataset', 'crd', 'e', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(2, 'cartographic image', 'cri', 'e', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(3, 'cartographic moving image', 'crm', 'e', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(4, 'cartographic tactile image', 'crt', 'e', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(5, 'cartographic tactile three-dimensional form', 'crn', 'e', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(6, 'cartographic three-dimensional form', 'crf', 'e', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(7, 'computer dataset', 'cod', 'm', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(8, 'computer program', 'cop', 'm', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(9, 'notated movement', 'ntv', 'a', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(10, 'notated music', 'ntm', 'c', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(11, 'performed music', 'prm', 'j', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(12, 'sounds', 'snd', 'i', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(13, 'spoken word', 'spw', 'i', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(14, 'still image', 'sti', 'k', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(15, 'tactile image', 'tci', 'k', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(16, 'tactile notated music', 'tcm', 'c', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(17, 'tactile notated movement', 'tcn', 'a', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(18, 'tactile text', 'tct', 'a', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(19, 'tactile three-dimensional form', 'tcf', 'r', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(20, 'text', 'txt', 'a', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(21, 'three-dimensional form', 'tdf', 'r', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(22, 'three-dimensional moving image', 'tdm', 'g', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(23, 'two-dimensional moving image', 'tdi', 'g', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(24, 'other', 'xxx', 'o', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(25, 'unspecified', 'zzz', '', '2023-12-24 13:08:41', '2023-12-24 13:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `mst_custom_field`
--

CREATE TABLE `mst_custom_field` (
  `field_id` int(11) NOT NULL,
  `primary_table` varchar(100) DEFAULT NULL,
  `dbfield` varchar(50) NOT NULL,
  `label` varchar(80) NOT NULL,
  `type` enum('text','checklist','numeric','dropdown','longtext','choice','date') NOT NULL,
  `default` varchar(80) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `indexed` tinyint(1) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `width` int(5) DEFAULT 100,
  `note` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_frequency`
--

CREATE TABLE `mst_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency` varchar(25) NOT NULL,
  `language_prefix` varchar(5) DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'Weekly', 'en', 1, 'week', '2009-05-23', '2009-05-23'),
(2, 'Bi-weekly', 'en', 2, 'week', '2009-05-23', '2009-05-23'),
(3, 'Fourth-Nightly', 'en', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'Monthly', 'en', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'Bi-Monthly', 'en', 2, 'month', '2009-05-23', '2009-05-23'),
(6, 'Quarterly', 'en', 3, 'month', '2009-05-23', '2009-05-23'),
(7, '3 Times a Year', 'en', 4, 'month', '2009-05-23', '2009-05-23'),
(8, 'Annualy', 'en', 1, 'year', '2009-05-23', '2009-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `mst_gmd`
--

CREATE TABLE `mst_gmd` (
  `gmd_id` int(11) NOT NULL,
  `gmd_code` varchar(3) DEFAULT NULL,
  `gmd_name` varchar(30) NOT NULL,
  `icon_image` varchar(100) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'Text', NULL, '2023-12-24', '2023-12-24'),
(2, 'AR', 'Art Original', NULL, '2023-12-24', '2023-12-24'),
(3, 'CH', 'Chart', NULL, '2023-12-24', '2023-12-24'),
(4, 'CO', 'Computer Software', NULL, '2023-12-24', '2023-12-24'),
(5, 'DI', 'Diorama', NULL, '2023-12-24', '2023-12-24'),
(6, 'FI', 'Filmstrip', NULL, '2023-12-24', '2023-12-24'),
(7, 'FL', 'Flash Card', NULL, '2023-12-24', '2023-12-24'),
(8, 'GA', 'Game', NULL, '2023-12-24', '2023-12-24'),
(9, 'GL', 'Globe', NULL, '2023-12-24', '2023-12-24'),
(10, 'KI', 'Kit', NULL, '2023-12-24', '2023-12-24'),
(11, 'MA', 'Map', NULL, '2023-12-24', '2023-12-24'),
(12, 'MI', 'Microform', NULL, '2023-12-24', '2023-12-24'),
(13, 'MN', 'Manuscript', NULL, '2023-12-24', '2023-12-24'),
(14, 'MO', 'Model', NULL, '2023-12-24', '2023-12-24'),
(15, 'MP', 'Motion Picture', NULL, '2023-12-24', '2023-12-24'),
(16, 'MS', 'Microscope Slide', NULL, '2023-12-24', '2023-12-24'),
(17, 'MU', 'Music', NULL, '2023-12-24', '2023-12-24'),
(18, 'PI', 'Picture', NULL, '2023-12-24', '2023-12-24'),
(19, 'RE', 'Realia', NULL, '2023-12-24', '2023-12-24'),
(20, 'SL', 'Slide', NULL, '2023-12-24', '2023-12-24'),
(21, 'SO', 'Sound Recording', NULL, '2023-12-24', '2023-12-24'),
(22, 'TD', 'Technical Drawing', NULL, '2023-12-24', '2023-12-24'),
(23, 'TR', 'Transparency', NULL, '2023-12-24', '2023-12-24'),
(24, 'VI', 'Video Recording', NULL, '2023-12-24', '2023-12-24'),
(25, 'EQ', 'Equipment', NULL, '2023-12-24', '2023-12-24'),
(26, 'CF', 'Computer File', NULL, '2023-12-24', '2023-12-24'),
(27, 'CA', 'Cartographic Material', NULL, '2023-12-24', '2023-12-24'),
(28, 'CD', 'CD-ROM', NULL, '2023-12-24', '2023-12-24'),
(29, 'MV', 'Multimedia', NULL, '2023-12-24', '2023-12-24'),
(30, 'ER', 'Electronic Resource', NULL, '2023-12-24', '2023-12-24'),
(31, 'DVD', 'Digital Versatile Disc', NULL, '2023-12-24', '2023-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `mst_item_status`
--

CREATE TABLE `mst_item_status` (
  `item_status_id` char(3) NOT NULL,
  `item_status_name` varchar(30) NOT NULL,
  `rules` varchar(255) DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT 0,
  `skip_stock_take` smallint(1) NOT NULL DEFAULT 0,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'Repair', 'a:1:{i:0;s:1:\"1\";}', 1, 1, '2023-12-24', '2023-12-24'),
('NL', 'No Loan', 'a:1:{i:0;s:1:\"1\";}', 1, 1, '2023-12-24', '2023-12-24'),
('MIS', 'Missing', NULL, 1, 1, '2023-12-24', '2023-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `mst_label`
--

CREATE TABLE `mst_label` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(20) NOT NULL,
  `label_desc` varchar(50) DEFAULT NULL,
  `label_image` varchar(200) NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2023-12-24', '2023-12-24'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2023-12-24', '2023-12-24'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2023-12-24', '2023-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `mst_language`
--

CREATE TABLE `mst_language` (
  `language_id` char(5) NOT NULL,
  `language_name` varchar(20) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('id', 'Indonesia', '2023-12-24', '2023-12-24'),
('en', 'English', '2023-12-24', '2023-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `mst_loan_rules`
--

CREATE TABLE `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL DEFAULT 0,
  `coll_type_id` int(11) DEFAULT 0,
  `gmd_id` int(11) DEFAULT 0,
  `loan_limit` int(3) DEFAULT 0,
  `loan_periode` int(3) DEFAULT 0,
  `reborrow_limit` int(3) DEFAULT 0,
  `fine_each_day` int(3) DEFAULT 0,
  `grace_periode` int(2) DEFAULT 0,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(3) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('SL', 'My Library', '2023-12-24', '2023-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `mst_media_type`
--

CREATE TABLE `mst_media_type` (
  `id` int(11) NOT NULL,
  `media_type` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `code2` char(1) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_media_type`
--

INSERT INTO `mst_media_type` (`id`, `media_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio', 's', 's', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(2, 'computer', 'c', 'c', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(3, 'microform', 'h', 'h', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(4, 'microscopic', 'p', '', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(5, 'projected', 'g', 'g', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(6, 'stereographic', 'e', '', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(7, 'unmediated', 'n', 't', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(8, 'video', 'v', 'v', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(9, 'other', 'x', 'z', '2023-12-24 13:08:41', '2023-12-24 13:08:41'),
(10, 'unspecified', 'z', 'z', '2023-12-24 13:08:41', '2023-12-24 13:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `mst_member_type`
--

CREATE TABLE `mst_member_type` (
  `member_type_id` int(11) NOT NULL,
  `member_type_name` varchar(50) NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT 0,
  `reserve_limit` int(11) NOT NULL DEFAULT 0,
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT 0,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'Standard', 2, 7, 1, 2, 365, 1, 0, 0, '2023-12-24', '2023-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `mst_module`
--

CREATE TABLE `mst_module` (
  `module_id` int(3) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_path` varchar(200) DEFAULT NULL,
  `module_desc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'bibliography', 'bibliography', 'Manage your bibliographic/catalog and items/copies database'),
(2, 'circulation', 'circulation', 'Module for doing library items circulation such as loan and return'),
(3, 'membership', 'membership', 'Manage your library membership and membership type'),
(4, 'master_file', 'master_file', 'Manage your referential data that will be used by other modules'),
(5, 'stock_take', 'stock_take', 'Ease your pain in doing library stock opname process'),
(6, 'system', 'system', 'Configure system behaviour, user and backups'),
(7, 'reporting', 'reporting', 'Real time and dynamic report about library collections and circulation'),
(8, 'serial_control', 'serial_control', 'Serial publication management');

-- --------------------------------------------------------

--
-- Table structure for table `mst_place`
--

CREATE TABLE `mst_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_publisher`
--

CREATE TABLE `mst_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(1, 'Metagraf', '2024-05-27', '2024-05-27'),
(2, 'cahaya pelangi', '2024-06-10', '2024-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `mst_relation_term`
--

CREATE TABLE `mst_relation_term` (
  `ID` int(11) NOT NULL,
  `rt_id` varchar(11) NOT NULL,
  `rt_desc` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_relation_term`
--

INSERT INTO `mst_relation_term` (`ID`, `rt_id`, `rt_desc`) VALUES
(1, 'U', 'Use'),
(2, 'UF', 'Use For'),
(3, 'BT', 'Broader Term'),
(4, 'NT', 'Narrower Term'),
(5, 'RT', 'Related Term'),
(6, 'SA', 'See Also');

-- --------------------------------------------------------

--
-- Table structure for table `mst_servers`
--

CREATE TABLE `mst_servers` (
  `server_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` text NOT NULL,
  `server_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - p2p server; 2 - z3950; 3 - z3950  SRU',
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_supplier`
--

CREATE TABLE `mst_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postal_code` char(10) DEFAULT NULL,
  `phone` char(14) DEFAULT NULL,
  `contact` char(30) DEFAULT NULL,
  `fax` char(14) DEFAULT NULL,
  `account` char(12) DEFAULT NULL,
  `e_mail` char(80) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_topic`
--

CREATE TABLE `mst_topic` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') NOT NULL,
  `auth_list` varchar(20) DEFAULT NULL,
  `classification` varchar(50) NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_topic`
--

INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(1, 'Programming', 't', NULL, '', '2007-11-29', '2007-11-29'),
(2, 'Website', 't', NULL, '', '2007-11-29', '2007-11-29'),
(3, 'Operating System', 't', NULL, '', '2007-11-29', '2007-11-29'),
(4, 'Linux', 't', NULL, '', '2007-11-29', '2007-11-29'),
(5, 'Computer', 't', NULL, '', '2007-11-29', '2007-11-29'),
(6, 'Database', 't', NULL, '', '2007-11-29', '2007-11-29'),
(7, 'RDBMS', 't', NULL, '', '2007-11-29', '2007-11-29'),
(8, 'Open Source', 't', NULL, '', '2007-11-29', '2007-11-29'),
(9, 'Project', 't', NULL, '', '2007-11-29', '2007-11-29'),
(10, 'Design', 't', NULL, '', '2007-11-29', '2007-11-29'),
(11, 'Information', 't', NULL, '', '2007-11-29', '2007-11-29'),
(12, 'Organization', 't', NULL, '', '2007-11-29', '2007-11-29'),
(13, 'Metadata', 't', NULL, '', '2007-11-29', '2007-11-29'),
(14, 'Library', 't', NULL, '', '2007-11-29', '2007-11-29'),
(15, 'Corruption', 't', NULL, '', '2007-11-29', '2007-11-29'),
(16, 'Development', 't', NULL, '', '2007-11-29', '2007-11-29'),
(17, 'Poverty', 't', NULL, '', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_visitor_room`
--

CREATE TABLE `mst_visitor_room` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unique_code` varchar(5) NOT NULL COMMENT 'Code for identification each room',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_voc_ctrl`
--

CREATE TABLE `mst_voc_ctrl` (
  `vocabolary_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `rt_id` varchar(11) NOT NULL,
  `related_topic_id` varchar(250) NOT NULL,
  `scope` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` varchar(32) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `path` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `options`, `path`, `created_at`, `updated_at`, `deleted_at`, `uid`) VALUES
('44609d9bd4c9da72512181ee1078a537', NULL, '/Applications/XAMPP/xamppfiles/htdocs/slims/plugins/biblio_adv_log.plugin.php', '2023-12-24 12:22:18', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `reserve_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_biblio`
--

CREATE TABLE `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `isbn_issn` varchar(32) DEFAULT NULL,
  `author` text DEFAULT NULL,
  `topic` text DEFAULT NULL,
  `gmd` varchar(30) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `publish_place` varchar(30) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `classification` varchar(40) DEFAULT NULL,
  `spec_detail_info` text DEFAULT NULL,
  `carrier_type` varchar(100) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `media_type` varchar(100) NOT NULL,
  `location` text DEFAULT NULL,
  `publish_year` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `series_title` text DEFAULT NULL,
  `items` text DEFAULT NULL,
  `collection_types` text DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT 0,
  `promoted` smallint(1) NOT NULL DEFAULT 0,
  `labels` text DEFAULT NULL,
  `collation` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

-- --------------------------------------------------------

--
-- Table structure for table `serial`
--

CREATE TABLE `serial` (
  `serial_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(3) NOT NULL,
  `setting_name` varchar(30) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:7:\"Senayan\";'),
(2, 'library_subname', 's:37:\"Open Source Library Management System\";'),
(3, 'template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:26:\"template/default/style.css\";}'),
(4, 'admin_template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";}'),
(5, 'default_lang', 's:5:\"en_US\";'),
(6, 'opac_result_num', 's:2:\"10\";'),
(7, 'enable_promote_titles', 'N;'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:0;'),
(10, 'loan_limit_override', 'b:0;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:\"7200\";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:7:\"code128\";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:\"barcode_page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:21:\"barcode_items_per_row\";i:3;s:20:\"barcode_items_margin\";d:0.1000000000000000055511151231257827021181583404541015625;s:17:\"barcode_box_width\";i:7;s:18:\"barcode_box_height\";i:5;s:27:\"barcode_include_header_text\";i:1;s:17:\"barcode_cut_title\";i:50;s:19:\"barcode_header_text\";s:0:\"\";s:13:\"barcode_fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:17:\"barcode_font_size\";i:11;s:13:\"barcode_scale\";i:70;s:19:\"barcode_border_size\";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:\"page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:13:\"items_per_row\";i:3;s:12:\"items_margin\";d:0.05000000000000000277555756156289135105907917022705078125;s:9:\"box_width\";i:8;s:10:\"box_height\";d:3.29999999999999982236431605997495353221893310546875;s:19:\"include_header_text\";i:1;s:11:\"header_text\";s:0:\"\";s:5:\"fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:9:\"font_size\";i:11;s:11:\"border_size\";i:1;}'),
(20, 'membercard_print_settings', 'a:1:{s:5:\"print\";a:1:{s:10:\"membercard\";a:61:{s:11:\"card_factor\";s:12:\"37.795275591\";s:21:\"card_include_id_label\";i:1;s:23:\"card_include_name_label\";i:1;s:22:\"card_include_pin_label\";i:1;s:23:\"card_include_inst_label\";i:0;s:24:\"card_include_email_label\";i:0;s:26:\"card_include_address_label\";i:1;s:26:\"card_include_barcode_label\";i:1;s:26:\"card_include_expired_label\";i:1;s:14:\"card_box_width\";d:8.5999999999999996447286321199499070644378662109375;s:15:\"card_box_height\";d:5.4000000000000003552713678800500929355621337890625;s:9:\"card_logo\";s:8:\"logo.png\";s:21:\"card_front_logo_width\";s:0:\"\";s:22:\"card_front_logo_height\";s:0:\"\";s:20:\"card_front_logo_left\";s:0:\"\";s:19:\"card_front_logo_top\";s:0:\"\";s:20:\"card_back_logo_width\";s:0:\"\";s:21:\"card_back_logo_height\";s:0:\"\";s:19:\"card_back_logo_left\";s:0:\"\";s:18:\"card_back_logo_top\";s:0:\"\";s:15:\"card_photo_left\";s:0:\"\";s:14:\"card_photo_top\";s:0:\"\";s:16:\"card_photo_width\";d:1.5;s:17:\"card_photo_height\";d:1.8000000000000000444089209850062616169452667236328125;s:23:\"card_front_header1_text\";s:19:\"Library Member Card\";s:28:\"card_front_header1_font_size\";s:2:\"12\";s:23:\"card_front_header2_text\";s:10:\"My Library\";s:28:\"card_front_header2_font_size\";s:2:\"12\";s:22:\"card_back_header1_text\";s:10:\"My Library\";s:27:\"card_back_header1_font_size\";s:2:\"12\";s:22:\"card_back_header2_text\";s:35:\"My Library Full Address and Website\";s:27:\"card_back_header2_font_size\";s:1:\"5\";s:17:\"card_header_color\";s:7:\"#0066FF\";s:18:\"card_bio_font_size\";s:2:\"11\";s:20:\"card_bio_font_weight\";s:4:\"bold\";s:20:\"card_bio_label_width\";s:3:\"100\";s:9:\"card_city\";s:9:\"City Name\";s:10:\"card_title\";s:15:\"Library Manager\";s:14:\"card_officials\";s:14:\"Librarian Name\";s:17:\"card_officials_id\";s:12:\"Librarian ID\";s:15:\"card_stamp_file\";s:9:\"stamp.png\";s:19:\"card_signature_file\";s:13:\"signature.png\";s:15:\"card_stamp_left\";s:0:\"\";s:14:\"card_stamp_top\";s:0:\"\";s:16:\"card_stamp_width\";s:0:\"\";s:17:\"card_stamp_height\";s:0:\"\";s:13:\"card_exp_left\";s:0:\"\";s:12:\"card_exp_top\";s:0:\"\";s:14:\"card_exp_width\";s:0:\"\";s:15:\"card_exp_height\";s:0:\"\";s:18:\"card_barcode_scale\";i:100;s:17:\"card_barcode_left\";s:0:\"\";s:16:\"card_barcode_top\";s:0:\"\";s:18:\"card_barcode_width\";s:0:\"\";s:19:\"card_barcode_height\";s:0:\"\";s:10:\"card_rules\";s:120:\"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>\";s:20:\"card_rules_font_size\";s:1:\"8\";s:12:\"card_address\";s:76:\"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id\";s:22:\"card_address_font_size\";s:1:\"7\";s:17:\"card_address_left\";s:0:\"\";s:16:\"card_address_top\";s:0:\"\";}}}'),
(21, 'enable_visitor_limitation', 's:1:\"0\";'),
(22, 'time_visitor_limitation', 's:2:\"60\";'),
(23, 'logo_image', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_take`
--

CREATE TABLE `stock_take` (
  `stock_take_id` int(11) NOT NULL,
  `stock_take_name` varchar(200) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT 0,
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `report_file` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_take_item`
--

CREATE TABLE `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gmd_name` varchar(30) DEFAULT NULL,
  `classification` varchar(30) DEFAULT NULL,
  `coll_type_name` varchar(30) DEFAULT NULL,
  `call_number` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `status` enum('e','m','u','l') NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `log_id` int(11) NOT NULL,
  `log_type` enum('staff','member','system') NOT NULL DEFAULT 'staff',
  `id` varchar(50) DEFAULT NULL,
  `log_location` varchar(50) NOT NULL,
  `sub_module` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `log_msg` text NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `sub_module`, `action`, `log_msg`, `log_date`) VALUES
(45, 'staff', '1', 'bibliography', '', '', 'Kim DELETE bibliographic data (NIHONGO KIRA KIRA BAHASA JEPANG UNTUK SMA/MA KELAS X) with biblio_id (40)', '2024-06-10 20:43:02'),
(44, 'staff', '1', 'bibliography', '', '', 'Kim DELETE bibliographic data (Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA) with biblio_id (19)', '2024-06-10 20:43:02'),
(43, 'staff', '1', 'bibliography', '', '', 'Kim DELETE bibliographic data (Siapa Aku? Apa Bakatku?) with biblio_id (41)', '2024-06-10 20:42:07'),
(42, 'staff', 'kim', 'Login', '', '', 'Login success for user kim from address ::1', '2024-06-10 20:41:46'),
(41, 'staff', '1', 'bibliography', '', '', 'Kim update bibliographic data (Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA) with biblio_id (18)', '2024-06-10 19:30:03'),
(39, 'staff', '1', 'system', '', '', 'Kim Log Out from application from address ::1', '2024-06-10 18:59:50'),
(40, 'staff', 'kim', 'Login', '', '', 'Login success for user kim from address ::1', '2024-06-10 18:59:52'),
(38, 'staff', '1', 'bibliography', '', '', 'Kim DELETE bibliographic data (Merah Putih : Antologi Puisi) with biblio_id (20)', '2024-06-10 18:58:35'),
(37, 'staff', '1', 'bibliography', '', '', 'Kim insert bibliographic data (Merah Putih : Antologi Puisi) with biblio_id (20)', '2024-06-10 18:58:03'),
(36, 'staff', '1', 'bibliography', '', '', 'Kim insert bibliographic data (Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA) with biblio_id (18)', '2024-06-10 18:49:44');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pengarang` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isbn` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `penerbit` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `bahasa` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `pengarang`, `isbn`, `penerbit`, `tahun`, `bahasa`, `harga`, `jumlah`, `total_harga`, `status`, `tgl_input`) VALUES
(8, 'Merah Putih : Antologi Puisi', 'Suastini, Ni Putu Putri', '978-602-5529-34-4', 'PT Percetakan Bali', 2020, 'id', 0, 2, 0, 1, '2022-09-10'),
(9, 'Suara Hati Guru di Masa Pandemi', 'Suastini, Ni Putu Putri', '978-602-5529-35-1', 'PT Percetakan Bali', 2020, 'id', 0, 2, 0, 1, '2022-09-11'),
(10, 'Praktik Kolaborasi Internal Sekolah untuk Meningkatkan Kualitas Belajar Siswa SMA', 'Tim Penulis', '978-602-5616-23-5', 'Direktorat Sekolah Menengah Atas', 2020, 'id', 0, 2, 0, 1, '2022-09-12'),
(11, 'Pola Baru Manajemen Sekolah Menengah Atas', 'Tim Penulis', '978-602-5616-25-9', 'Direktorat Sekolah Menengah Atas', 2020, 'id', 0, 2, 0, 1, '2022-09-13'),
(12, 'Kepemimpinan Kepala SMA yang Berorientasi pada Peningkatan Kualitas Hasil Belajar Siswa', 'Tim Penulis', '978-602-5616-24-2', 'Direktorat Sekolah Menengah Atas', 2020, 'id', 0, 2, 0, 1, '2022-09-14'),
(13, 'Paradigma Belajar dan Mengajar yang Berkesan : Kunci Kolaborasi Keluarga dengan Sekolah', 'Tim Penyusun', '978-602-5616-27-3', 'Direktorat Sekolah Menengah Atas', 2020, 'id', 0, 2, 0, 1, '2022-09-15'),
(14, 'Cara Ampuh Berpikir Kreatif: Kiat-Kiat Berpikir Kreatif Kaum Muda Milenial', 'Ningrum, Restia', '978-623-7115-49-6', 'Psikologi Corner', 2019, 'id', 50000, 0, 0, 2, '2022-09-16'),
(15, 'Alice\'s Adventures in Wonderland', 'Carroll, Lewis', '9786020387871', 'PT Gramedia Pustaka Utama', 2019, 'id', 0, 2, 0, 1, '2022-09-17'),
(16, 'Jokowi: Menuju Cahaya', 'Endah, Alberthiene', '978-602-320-680-3', 'PT Tiga Serangkai Pustaka Mandiri', 2019, 'id', 0, 2, 0, 1, '2022-09-18'),
(18, 'Jejak Dalem Tamblingan di Bali Utara (Desa Pancasari dan Desa Munduk)', 'Tim Penyusun Buku Kersos', '9786021424728', 'Universitas Mahendradatta', 2018, 'id', 0, 2, 0, 1, '2022-09-20'),
(20, 'Kamus Besar Bahasa Indonesia', 'Sunendar, Dadang', '978-602-437-171-5', 'CV Adi Perkasa', 2018, 'id', 0, 2, 0, 1, '2022-09-22'),
(21, 'Wirausaha Saja! Menjadi Pribadi Mandiri Dimulai Dari Usaha Sendiri', 'Askandar, Noor Shodiq', '978-602-6847-61-4', 'Esensi', 2018, 'id', 0, 2, 0, 1, '2022-09-23'),
(22, 'Peter Pan', 'Barrie, J. M.', '9786020303475', 'PT Gramedia Pustaka Utama', 2018, 'id', 60000, 0, 0, 2, '2022-09-24'),
(23, 'Ensiklopedia Napza: Zat Adiktif Jenis-Jenis dan Kandungannya', 'Ratriningsih, Dwi Pajar', '978-602-60520-2-5', 'Ardin Karya Bersama', 2017, 'id', 0, 2, 0, 1, '2022-09-25'),
(24, 'Ensiklopedia Napza: Psikotropika Jenis-Jenis dan Kandungannya', 'Wulan, Suryaning', '978-602-60520-1-8', 'Ardin Karya Bersama', 2017, 'id', 0, 2, 0, 1, '2022-09-26'),
(25, 'Ensiklopedia Napza : Narkotika, Jenis-Jenis dan Kandungan Jilid 1', 'Abdurahman, Dede', '978-602-60520-0-1', 'Ardin Karya Bersama', 2017, 'id', 0, 2, 0, 1, '2022-09-27'),
(26, 'Ensiklopedia Napza : Pemberantasan Narkoba di Lingkungan Sekolah dan Masyarakat Jilid 5', 'Nurhakim, Syerif', '978-602-60520-4-9', 'Ardin Karya Bersama', 2017, 'id', 0, 2, 0, 1, '2022-09-28'),
(27, 'Ensiklopedia Napza : Metode Penyuluhan, Pencegahan, dan Pemberantasan Narkoba', 'Wulan, Suryaning', '978-602-60520-5-6', 'Ardin Karya Bersama', 2017, 'id', 0, 2, 0, 1, '2022-09-29'),
(28, 'Someday', 'Efendi, Winna', '978-979-780-887-7', 'GagasMedia', 2017, 'id', 0, 2, 0, 1, '2022-09-30'),
(29, 'Kisah Sri Krsna dan Balarama', 'Adnyana, Gede Agus Budi', '978-979-617-141-5', 'CV. Kayumas Agung', 2017, 'id', 0, 2, 0, 1, '2022-10-01'),
(30, 'Aku Cinta Lovina: Sebuah Novel', 'Basuki, Sunaryono', '978-602-70355-8-4', 'Balai Bahasa Bali', 2017, 'id', 0, 2, 0, 1, '2022-10-02'),
(31, 'Bali Mandara, Estafeta untuk Generasi Muda : Manajemen Transformasi Pembangunan Bali', 'Suharja, Arya', '978-979-700-036-3', 'Bappeda Litbang Provinsi bali', 2017, 'id', 0, 2, 0, 1, '2022-10-03'),
(32, 'Sujud Kepada Krisna Perwujudan Keindahan', 'Anandamurti, Shrii Shrii', '978-062-72426-5-4', 'Yayasan Ananda Marga Yoga', 2017, 'id', 0, 2, 0, 1, '2022-10-04'),
(33, 'Ensiklopedia Napza : Bahaya Narkoba Dampak Kesehatan dan Hukum', 'Lacanda, Jayusman', '978-602-605-20-3', 'Ardit Karya Bersama', 2017, 'id', 0, 2, 0, 1, '2022-10-05'),
(34, 'Kelas Skenario: Wujudkan Ide Menjadi Naskah Film', 'Aristo, Salman', '978-602-6847-58-4', 'Esensi', 2017, 'id', 0, 2, 0, 1, '2022-10-06'),
(35, 'Instant Marketing For Busy People: Rangkuman Intisari Pemasaran', 'Ridwansyah, Ardhi', '978-602-6847-32-4', 'Esensi', 2017, 'id', 0, 2, 0, 1, '2022-10-07'),
(36, 'Koperasi dan UMKM sebagai Fondasi Perekonomian Indonesia', 'Tanjung, M Azrul', '978-602-434-231-9', 'Penerbit Erlangga', 2017, 'id', 0, 2, 0, 1, '2022-10-08'),
(37, 'Buku Seri Pendidikan Anti Korupsi : Sejarah Korupsi', 'Tim Penyusun', '978-602-71957-8-3', 'PT Tirta Asih Jaya', 2017, 'id', 0, 2, 0, 1, '2022-10-09'),
(38, 'Buku Seri Pendidikan Anti Korupsi : Pemberantasan Tindak Korupsi', 'Tim Penyusun', '978-602-61807-2-8', 'PT Tirta Asih Jaya', 2017, 'id', 0, 2, 0, 1, '2022-10-10'),
(39, 'Buku Seri Pendidikan Anti Korupsi : Upaya Pencegahan Tindak Korupsi', 'Tim Penyusun', '978-602-61807-1-1', 'PT Tirta Asih Jaya', 2017, 'id', 0, 2, 0, 1, '2022-10-11'),
(40, 'Buku Seri Pendidikan Anti Korupsi : Dampak Korupsi', 'Tim Penyusun', '978-602-61807-0-4', 'PT Tirta Asih Jaya', 2017, 'id', 0, 2, 0, 1, '2022-10-12'),
(41, 'Buku Seri Pendidikan Anti Korupsi : Bentuk-Bentuk Korupsi', 'Tim Penyusun', '978-602-71957-9-0', 'PT Tirta Asih Jaya', 2017, 'id', 0, 2, 0, 1, '2022-10-13'),
(42, 'Buku Seri Pancasila dalam Kehidupan Berbangsa dan Bernegara : Pancasila Sebagai Solusi Permasalahan Bangsa Indonesia', 'Tim Penyusun', '978-602-61807-8-0', 'PT Tirta Asih Jaya', 2017, 'id', 0, 2, 0, 1, '2022-10-14'),
(43, 'Buku Seri Pancasila dalam Kehidupan Berbangsa dan Bernegara : Pengamalan Nilai-Nilai Pancasila', 'Tim Penyusun', '978-602-61807-4-2', 'PT Tirta Asih Jaya', 2017, 'id', 0, 2, 0, 1, '2022-10-15'),
(44, 'Buku Seri Pancasila dalam Kehidupan Berbangsa dan Bernegara : Pancasila dalam UUD Negara Republik Indonesia Tahun 1945', 'Tim Penyusun', '978-602-61807-6-6', 'PT Tirta Asih Jaya', 2017, 'id', 0, 2, 0, 1, '2022-10-16'),
(45, 'Buku Seri Pancasila dalam Kehidupan Berbangsa dan Bernegara : Sejarah Lahirnya Pancasila', 'Tim Penyusun', '978-602-61807-4-2', 'PT Tirta Asih Jaya', 2017, 'id', 0, 2, 0, 1, '2022-10-17'),
(46, 'Buku Seri Pancasila dalam Kehidupan Berbangsa dan Bernegara : Hakikat Pancasila', 'Tim Penyusun', '978-602-61807-4-2', 'PT Tirta Asih Jaya', 2017, 'id', 0, 2, 0, 1, '2022-10-18'),
(47, 'Deteksi Kepribadian', 'Ghazali, H.A. Muin', '978-602-217-283-3', 'PT Bumi Aksara', 2016, 'id', 0, 2, 0, 1, '2022-10-19'),
(48, 'Harry Potter Et L\'enfant Maudit: Parties Un Et Deux', 'Rowling, J. K.', '978-2-07-507420-9', 'Gallimard', 2016, 'id', 0, 2, 0, 1, '2022-10-20'),
(49, 'Kamus Budaya Bali', 'Sukayana, I Nengah', '978-979-069-158-2', 'Balai Bahasa Bali', 2016, 'id', 0, 2, 0, 1, '2022-10-21'),
(50, '4G Guru Gaul Guru Galau', 'Dedew', '978-602-366-112-1', 'Tiga Ananda', 2016, 'id', 0, 2, 0, 1, '2022-10-22'),
(51, 'Kisah-Kisah Ajaran Panca-Sradha untuk Anak-Anak', 'Adnyana, Gede Agus Budi', '978-979-617-140-8', 'CV Kayumas Agung', 2016, 'id', 0, 2, 0, 1, '2022-10-23'),
(52, 'Memberi Jarak Pada Cinta', 'Falafu', '978-979-794-518-3', 'Medkita', 2016, 'id', 0, 2, 0, 1, '2022-10-24'),
(53, 'Seri Literasi Remaja: Kisah Ramayana', 'Suryosubroto, B.', '978-602-6847-05-8', 'Esensi', 2016, 'id', 0, 2, 0, 1, '2022-10-25'),
(54, '100 Golden Tips for Creativepreneur', 'Wirawan, Steve', '978-602-6328-23-6', 'Metagraf', 2016, 'id', 0, 2, 0, 1, '2022-10-26'),
(55, '120 Koleksi Lagu Wajib Nasional Indonesia', 'Kirana, Dilla Candra', '979-0-9013887-0-3', 'Kunci Aksara', 2016, 'id', 0, 2, 0, 1, '2022-10-27'),
(56, 'Gugur Bunga Kedaton: Sebuah Novel Kolosal', 'Wahyu, H.R.', '978-602-72097-2-5', 'Metamind', 2015, 'id', 0, 2, 0, 1, '2022-10-28'),
(57, 'Kubah di Atas Pasir', 'Fanani, Zhaenal', '978-602-72834-1-1', 'Metamind', 2015, 'id', 0, 2, 0, 1, '2022-10-29'),
(58, 'Ramayana', 'Lal, P.', '978-602-7521-18-6', 'MediaHindu', 2015, 'id', 0, 2, 0, 1, '2022-10-30'),
(59, 'Mahir Bercerita', 'Wahyudi, Johan', '978-602-9124-05-7', 'PT Pustaka Sunda', 2015, 'id', 0, 2, 0, 1, '2022-10-31'),
(60, 'Atlas Sejarah Indonesia dan Dunia', 'Jamil, Achmad', '979369746-6', 'Mascot Nusantara', 2015, 'id', 0, 2, 0, 1, '2022-11-01'),
(61, '99,9% Langsung Nangkap Soal-soal Latihan Sejarah SMA', 'Tim Tutor', '978-602-98535-7-5', 'Cahaya Atma Pustaka', 2015, 'id', 0, 2, 0, 1, '2022-11-02'),
(62, 'Ilmu Bumi', 'Tarbuck, Edward J.', '978-602-434-434-4', 'Erlangga', 2015, 'id', 0, 2, 0, 1, '2022-11-03'),
(63, 'Arief Rachman: Guru', 'Komarudin, Ukim', '978-602-7596-99-3', 'Esensi', 2015, 'id', 0, 2, 0, 1, '2022-11-04'),
(64, 'Bidadari Pemeluk Subuh', 'Rosadi, Nicky', '978-602-02-6868-2', 'Gramedia', 2015, 'id', 0, 2, 0, 1, '2022-11-05'),
(65, 'Nasihat Diri Menyelami Hidup dari Makna ke Makna', 'Yuliawan, Teddy Prasetya', '978-602-257-383-8', 'Metagraf', 2015, 'id', 0, 2, 0, 1, '2022-11-06'),
(66, 'Panrestyan Pandawa Korawa', 'Mardika, Jro Made M.', '978-602-204-497-0', 'Paramita', 2015, 'id', 0, 2, 0, 1, '2022-11-07'),
(67, 'Brahmavaivarta Purana', 'Maswinara, I Wayan', '979-9257-72-7', 'Paramita', 2015, 'id', 0, 2, 0, 1, '2022-11-08'),
(68, 'Pengawasan Pemilu Partisipatif: Gerakan Masyarakat Sipil untuk Demokrasi Indonesia', 'Suswantoro, Gunawan', '978-602-298-570-9', 'Penerbit Erlangga', 2015, 'id', 0, 2, 0, 1, '2022-11-09'),
(69, 'Intisari Biologi', 'Simon, Eric J.', '978-602-434-432-0', 'Penerbit Erlangga', 2015, 'id', 0, 2, 0, 1, '2022-11-10'),
(70, 'Berpikir Matematis : Matematika untuk Semua', 'Budhi, Wono Setya', '978-602-298-279-1', 'Penerbit Erlangga', 2015, 'id', 0, 2, 0, 1, '2022-11-11'),
(71, 'Buku Seri Bahaya Narkoba : Kamus Narkoba', 'Tim Penyusun', '978-602-71957-6-9', 'PT Tirta Asih Jaya', 2015, 'id', 0, 2, 0, 1, '2022-11-12'),
(72, 'Buku Seri Bahaya Narkoba ; Tata Cara Merehabilitasi Pecandu Narkoba', 'Tim Penyusun', '978-602-71957-5-2', 'PT Tirta Asih Jaya', 2015, 'id', 0, 2, 0, 1, '2022-11-13'),
(73, 'Buku Seri Bahaya Narkoba : Upaya Pencegahan dan Penanggulangan Penyalahgunaan Narkoba', 'Tim Penyusun', '978-602-71957-4-5', 'PT Tirta Asih Jaya', 2015, 'id', 0, 2, 0, 1, '2022-11-14'),
(74, 'Buku Bahaya Narkoba : Dampak dan Bahaya Narkoba', 'Tim Penyusun', '978-602-71957-3-8', 'PT Tirta Asih Jaya', 2015, 'id', 0, 2, 0, 1, '2022-11-15'),
(75, 'Buku Seri Bahaya Narkoba : Penyalahgunaan Narkoba', 'Tim Penyusun', '978-602-71957-2-1', 'PT Tirta Asih Jaya', 2015, 'id', 0, 2, 0, 1, '2022-11-16'),
(76, 'Buku Seri Bahaya Narkoba : Sejarah Narkoba', 'Tim Penyusun', '978-602-71957-1-4', 'PT Tirta Asih Jaya', 2015, 'id', 0, 2, 0, 1, '2022-11-17'),
(77, 'Rangkuman Pengetahuan Umum Lengkap (RPUL)', 'Tim Penyusun RPUL Buana Raya', '9789799451231', 'CV. Buana Raya', 2014, 'id', 0, 2, 0, 1, '2022-11-18'),
(78, 'Amurwabhumi: Cleret Taun', 'Hariadi, Langit Kresna', '978-602-9251-25-8', 'Metamind', 2014, 'id', 0, 2, 0, 1, '2022-11-19'),
(79, 'Mahabharata Asta Dasa Parwa (1): Adi Parwa', 'Gun, Gun', '978-602-9138-47-4', 'ESBE', 2014, 'id', 0, 2, 0, 1, '2022-11-20'),
(80, 'Mahabharata Asta Dasa Parwa (2): Sabha Parwa', 'Gun, Gun', '978-602-9138-48-1', 'ESBE', 2014, 'id', 0, 2, 0, 1, '2022-11-21'),
(81, 'Mahabharata Asta Dasa Parwa (3): Wana Parwa', 'Gun, Gun', '978-602-9138-49-8', 'ESBE', 2014, 'id', 0, 2, 0, 1, '2022-11-22'),
(82, 'Mahabharata Asta Dasa Parwa (4): Wirata Parwa', 'Gun, Gun', '978-602-9138-50-4', 'ESBE', 2014, 'id', 0, 2, 0, 1, '2022-11-23'),
(83, 'Mahabharata Asta Dasa Parwa (5): Udyoga Parwa', 'Gun, Gun', '978-602-9138-51-1', 'ESBE', 2014, 'id', 0, 2, 0, 1, '2022-11-24'),
(84, 'Satua Bali Kambing Takutin Macan', 'Supatra, I N. K.', '978-979-617-033-3', 'CV. Kayumas Agung', 2014, 'id', 0, 2, 0, 1, '2022-11-25'),
(85, 'Ayo Mengenal Kereta Api Indonesia', 'Muryanti', '978-602-9354-15-7', 'Pustaka Purwonegaran', 2014, 'id', 0, 2, 0, 1, '2022-11-26'),
(86, 'Pilihan Cinta Jo: Love Affair', 'Mathilda, Wike', '978-602-17533-0-9', 'Penerbit Mandiri Pustaka', 2014, 'id', 0, 2, 0, 1, '2022-11-27'),
(87, 'Sebuah Usaha Menulis Surat Cinta', 'Puthut EA', '978-602-1318-04-1', 'EA Books', 2014, 'id', 0, 2, 0, 1, '2022-11-28'),
(88, 'Menolak Kekuasaan Raja Gelgel: Masyarakat Desa Wangaya Gede Lakukan Upacara Pitra Yadnya dengan Cara Berbeda', 'Aryanatha, I Nengah', '978-602-98996-7-2', 'Ashram Gandhi Puri', 2014, 'id', 0, 2, 0, 1, '2022-11-29'),
(89, 'Ginanti Tanah Bali : Antologi Puisi', 'Adityarini, Putri', '978-602-1510-16-2', 'Penerbit Kendi Aksara', 2014, 'id', 0, 2, 0, 1, '2022-11-30'),
(90, 'Semua Indah, pada Waktunya', 'Hartono, Eko', '978-602-1588-57-4', 'Rumah Oranye', 2014, 'id', 0, 2, 0, 1, '2022-12-01'),
(91, 'Otonomi Daerah Menuju Era Baru Pembangunan Daerah 3', 'Kuncoro, Mudrajat', '978-602-298-187-9', 'Erlangga', 2014, 'id', 0, 2, 0, 1, '2022-12-02'),
(92, 'Minna no Nihongo 1', 'Indonesian Edition', '979-3303-018', 'International Multicultural (I\\\'Mc) Center Press', 2014, 'id', 0, 2, 0, 1, '2022-12-03'),
(93, 'Pintar IPA Sains', 'Ikranegara, Yudistira', '978-602-365-007-1', 'Lingkar Media', 2014, 'id', 0, 2, 0, 1, '2022-12-04'),
(94, 'How to Become A Great Supervisor: 67+ Saran Ahli untuk Sukses dalam Dunia Kerja Profesional', 'Andiyasari, Andin', '978-602-9212-21-1', 'Metagraf', 2014, 'id', 0, 2, 0, 1, '2022-12-05'),
(95, 'Politik Hukum: Hak Asasi Manusia', 'Marzuki, Suparman', '007-340-007-0', 'Penerbit Erlangga', 2014, 'id', 0, 2, 0, 1, '2022-12-06'),
(96, 'Penyakit Kardiovaskular pada Wanita: Buku Saku Klinis', 'Bybee, Kevin A.', '978-602-241-653-1', 'Penerbit Erlangga', 2014, 'id', 0, 2, 0, 1, '2022-12-07'),
(97, 'Desain instruksional Modern: Panduan Para Pengajar dan Inovator Pendidikan', 'Suparman, M. Atwi', '978-602-298-011-7', 'Penerbit Erlangga', 2014, 'id', 0, 2, 0, 1, '2022-12-08'),
(98, 'Balas Dendam yang Sangat Manis', 'A.K', '978-602-03-0365-9', 'PT Gramedia Pustaka Utama', 2014, 'id', 0, 2, 0, 1, '2022-12-09'),
(99, 'Perjalanan Konstitusi Menuju Indonesia Jaya', 'Erlangga, Ruri', '978-602-14035-1-8', 'CV Gemilang Sukses Bersama', 2013, 'id', 0, 2, 0, 1, '2022-12-10'),
(100, 'Kamus Lengkap Bahasa Indonesia', 'Sulistyowati', '9789799451101', 'CV. Buana Raya', 2013, 'id', 0, 2, 0, 1, '2022-12-11'),
(101, 'Aku Diramu dalam Pasukan', 'Nurhayati, Bety', '978-979-041-318-4', 'Ganeca Exact', 2013, 'id', 0, 2, 0, 1, '2022-12-12'),
(102, 'Origami Hati', 'Candra, Boy', '979-795-778-0', 'Wahyumedia', 2013, 'id', 0, 2, 0, 1, '2022-12-13'),
(103, 'Melihat Indonesia dalam Angka', 'Fitri, Khalida', '978-602-14035-0-1', 'CV. Gemilang Sukses Bersama', 2013, 'id', 0, 2, 0, 1, '2022-12-14'),
(104, 'Ergonomi Desain Produk Kriya', 'Utomo, Agus Mulyadi', '978-602-9164-11-4', 'UPT. Penerbitan ISI Denpasar', 2013, 'id', 0, 2, 0, 1, '2022-12-15'),
(105, 'Memihak Bumi Sasak', 'Suryani, Tri Vivi', '978-602-9350-05-0', 'Pustaka Wijaya Kusuma', 2013, 'id', 0, 2, 0, 1, '2022-12-16'),
(106, 'Aku Dirakit Dalam Pasukan', 'Nurbesti, Indri', '978-979-041-319-1', 'Geneca Exact', 2013, 'id', 0, 2, 0, 1, '2022-12-17'),
(107, 'Kamus Lengkap Inggris-Indonesia Indonesia-Inggris', 'Goenawan MA. Adi', '9786003572879', 'Cahaya Agency Suabaya', 2013, 'id', 0, 2, 0, 1, '2022-12-18'),
(108, 'Menjadi Guru Profesional: Strategi Meningkatkan Kualifikasi dan Kualitas Guru di Era Global', 'Suyanto', '978-602-7596-50-4', 'Esensi', 2013, 'id', 0, 2, 0, 1, '2022-12-19'),
(109, 'Mau Kemana Setelah SMA', 'Ayodya, Wulan', '978-602-7596-60-3', 'Esensi', 2013, 'id', 0, 2, 0, 1, '2022-12-20'),
(110, 'Padang Tuh', 'Tudekamantra', '978-602-204-322-5', 'Paramita', 2013, 'id', 0, 2, 0, 1, '2022-12-21'),
(111, 'Ensiklopedia Tubuh Manusia', 'Parker, Steve', '978-602-252-295-0', 'Penerbit Erlangga', 2013, 'id', 0, 2, 0, 1, '2022-12-22'),
(112, 'Ensiklopedia Kimia 1', 'Tim Penulis', '978-602-9083-84-2', 'PT Lentera Abadi', 2013, 'id', 0, 2, 0, 1, '2022-12-23'),
(113, 'Ensiklopedia Kimia 2', 'Tim Penulis', '978-602-9083-85-9', 'PT Lentera Abadi', 2013, 'id', 0, 2, 0, 1, '2022-12-24'),
(114, 'Ensiklopedia Kimia 3', 'Tim Penulis', '978-602-9083-86-6', 'PT Lentera Abadi', 2013, 'id', 0, 2, 0, 1, '2022-12-25'),
(115, 'Ensiklopedia Kimia 4', 'Tim Penulis', '978-602-9083-87-3', 'PT Lentera Abadi', 2013, 'id', 0, 2, 0, 1, '2022-12-26'),
(116, 'Daftar Alamat dan Telepon Penting Untuk Pelajar', 'Khumairoh, Putri', '978-602-1593-35-6', 'PT Menteri Utama Unggul', 2013, 'id', 0, 2, 0, 1, '2022-12-27'),
(117, 'Kamus 4 Bahasa Seri 2', 'Suyadi', '978-979-084-844-3', 'PT Tiga Serangkai Pustaka Mandiri', 2013, 'id', 0, 2, 0, 1, '2022-12-28'),
(118, 'Belajar Komputer dan Internet Tanpa Kursus untuk Orang Biasa Versi Update!', 'Kautsar, Fathya', '978-979-877-277-1', 'MediaKom', 2012, 'id', 0, 2, 0, 1, '2022-12-29'),
(119, 'Blak-Blakan Bahas Mapel Kimia SMA', 'Haryanto, Untung Tri', '978-979-610-678-3', 'Cabe Rawit', 2012, 'id', 0, 2, 0, 1, '2022-12-30'),
(120, 'Blak-Blakan Bahas Mapel Ekonomi', 'Rosardi, Raras Gistha', '978-979-610-686-8', 'Cabe Rawit', 2012, 'id', 0, 2, 0, 1, '2022-12-31'),
(121, 'Blak-Blakan Bahas Mapel Sosiologi SMA', 'Ruchayati, Siti', '978-979-610-688-2', 'Cabe Rawit', 2012, 'id', 0, 2, 0, 1, '2023-01-01'),
(122, 'Psikologi Pendidikan & Pengajaran: Teori dan Praktik', 'Ambarjaya, Beni S.', '978-602-9324-11-2', 'CAPS', 2012, 'id', 0, 2, 0, 1, '2023-01-02'),
(123, 'Filsafat Ilmu', 'Endraswara, Suwardi', '978-602-9324-06-8', 'CAPS', 2012, 'id', 0, 2, 0, 1, '2023-01-03'),
(124, '30 Menit Panduan Senam Hamil di Rumah Anda', 'Agnesti, Renvilla', '978-979-911-138-8', 'Media Pressindo', 2012, 'id', 0, 2, 0, 1, '2023-01-04'),
(125, 'My Only : Jika benar itu cinta. Aku takkan lagi mengingkarinya', 'Sintriana, Irin', '978-979-911-107-4', 'Media Pressindo', 2012, 'id', 0, 2, 0, 1, '2023-01-05'),
(126, 'Pedoman Tata Ruang Perpustakaan Sekolah/Madrasah', 'Atmodiwiryo, Paramita', '978-979-008-180-2', 'Bee Media Indonesia', 2012, 'id', 0, 2, 0, 1, '2023-01-06'),
(127, 'Tips Membuat Anak Rajin Sekolah + Hobi Belajar', 'Fakhruddin, Asep Umar', '978-602-7665-00-2', 'Flashbooks', 2012, 'id', 0, 2, 0, 1, '2023-01-07'),
(128, 'Jurus Kilat Mahir Internet Dari Nol Hingga Jago Dalam Hitungan Menit', 'Soetejo, John', '978-602-9146-24-0', 'Dunia Komputer', 2012, 'id', 0, 2, 0, 1, '2023-01-08'),
(129, 'Kekuatan Pena: Kiat, Kekuatan dan Alasan Harus Menulis', 'Prasetyo, Eko', '978-979-062-328-6', 'PT INDEKS', 2012, 'id', 0, 2, 0, 1, '2023-01-09'),
(130, 'Menjadi Guru Tangguh Berhati Cahaya', 'Kusumah, Wijaya', '978-979-062-340-8', 'PT INDEKS', 2012, 'id', 0, 2, 0, 1, '2023-01-10'),
(131, 'Kiat Nyaman Mengajar di Dalam Kelas', 'Partin, Ronald L.', '979-683-987-3', 'PT INDEKS', 2012, 'id', 0, 2, 0, 1, '2023-01-11'),
(132, 'Tes Psikologi : Panduan Esensial unutuk Penggunaan dan Keberhasilan Tes-tes Terpopuler dalam Rekrutmen dan Pengembangan Karier', 'Jones, Stephanie', '978-979-062-361-3', 'PT INDEKS', 2012, 'id', 0, 2, 0, 1, '2023-01-12'),
(133, 'Ingin Sukses? Anda Harus Gila: Rahasia Sukses dari Orang-Orang Super Sukses', 'Sutikno, M. Sobry', '978-602-18045-1-3', 'Holistica', 2012, 'id', 0, 2, 0, 1, '2023-01-13'),
(134, 'Manajemen Pendidikan: Langkah Praktis Mewujudkan Lembaga Pendidikan yang Unggul (Tinjauan Umum dan Islami)', 'Sutikno, M. Sobry', '978-602-18045-0-6', 'Holistica', 2012, 'id', 0, 2, 0, 1, '2023-01-14'),
(135, 'Awas, Jangan Jadi Guru Karbitan!: Kesalahan-Kesalahan Guru dalam Pendidikan dan Pembelajaran', 'Subini, Nini', '978-602-98182-5-3', 'PT. Buku Kita', 2012, 'id', 0, 2, 0, 1, '2023-01-15'),
(136, 'Seni Berkomunikasi: \"Komunikasi Dua Arah\"', 'Narda, Bustami', '978-602-95327-3-9', 'Debe Mustika', 2012, 'id', 0, 2, 0, 1, '2023-01-16'),
(137, 'Hafal Ala Native Speakers 16 Tenses', 'Fanani, Achmad', '978-602-98183-4-5', 'PT Buku Kita', 2012, 'id', 0, 2, 0, 1, '2023-01-17'),
(138, '123 Anti Bego', 'Ashshiddiq, Arief', '978-602-9481-07-5', 'PlotPoint Publishing', 2012, 'id', 0, 2, 0, 1, '2023-01-18'),
(139, 'Sundarigama', 'Suarka, I Nyoman', '978-602-9138-24-5', 'ESBE', 2012, 'id', 0, 2, 0, 1, '2023-01-19'),
(140, 'Yang Tercecer dalam Memahami Hinduisme', 'Purwa, I Ketut', '978-602-9138-25-2', 'ESBE', 2012, 'id', 0, 2, 0, 1, '2023-01-20'),
(141, 'Sanghyang Kemahayanikan', 'Tim Penyusun', '978-602-9138-26-9', 'ESBE', 2012, 'id', 0, 2, 0, 1, '2023-01-21'),
(142, 'Kamus Inggris-Indonesia, Indonesia-Inggris 900 Triliun', 'Alexander, Billy Berlian', '978-602-233-099-8', 'Serba Jaya', 2012, 'id', 0, 2, 0, 1, '2023-01-22'),
(143, 'Kisah Emas yang Menjadi Pasir: 75 Cerita Anak Islami yang Menginspirasi Jiwa', 'Maksum, Muhammad Syukron', '979-878-182-1', 'Mutiara Media', 2012, 'id', 0, 2, 0, 1, '2023-01-23'),
(144, 'Kisah Menarik Einstein dan Kawan-Kawan', 'Subini, Nini', '978-602-98183-5-2', 'Javalitera', 2012, 'id', 0, 2, 0, 1, '2023-01-24'),
(145, 'Exstream 1500an Bahas Soal, Gak Pake Lelet ! KIMIA SMA', 'Rahadian, Titah Dewi', '978-602-950171-2/1', 'Pelangi Ilmu', 2012, 'id', 0, 2, 0, 1, '2023-01-25'),
(146, 'Exstream 1500an Bahas Soal, Gak Pake Lelet ! Matematika SMA', 'Supriyana, Sunu', '978-602-950170-4', 'Pelangi Ilmu', 2012, 'id', 0, 2, 0, 1, '2023-01-26'),
(147, 'Belajar Merawat Indonesia', 'Nugroho, M. Adi', '978-602-19578-1-3', 'Dompet Dhuafa', 2012, 'id', 0, 2, 0, 1, '2023-01-27'),
(148, 'SPM Seri Pendalaman Materi Bahasa Inggris', 'Tim Penyusun', '978-602-254-001-4', 'Esis', 2012, 'id', 0, 2, 0, 1, '2023-01-28'),
(149, 'SPM Seri Pendalaman Materi Matematika Program IPA', 'Sulistiyono', '978-979-099-664-9', 'Esis', 2012, 'id', 0, 2, 0, 1, '2023-01-29'),
(150, 'Buku Pegangan Kimia Siswa SMA Kelas XI', 'Sugiarti, Afrida Era', '978-602-9393-42-2', 'Jalur Mas Media', 2012, 'id', 0, 2, 0, 1, '2023-01-30'),
(151, 'Pendidikan Karakter dalam Metode Aktif, Inovatif & Kreatif', 'Listyarti, Retno', '978-602-7596-31-3', 'Erlangga', 2012, 'id', 0, 2, 0, 1, '2023-01-31'),
(152, 'Bagaimana  SIswa Belajar', 'Holt, John', '978-602-241-040-9', 'Erlangga', 2012, 'id', 0, 2, 0, 1, '2023-02-01'),
(153, 'Si Peramal Cinta', 'Diepen, Allison van', '978-602-7596-18-4', 'Esensi', 2012, 'id', 0, 2, 0, 1, '2023-02-02'),
(154, 'Cara AMPUH Merebut Hati Murid', 'Wahyono, Joko', '978-602-241-096-6', 'Esensi', 2012, 'id', 0, 2, 0, 1, '2023-02-03'),
(155, 'Garuda Selalu di Dadaku', 'Simorangkir, Lee', '978-979-3896-05-2', 'Grafindo Litera Media', 2012, 'id', 0, 2, 0, 1, '2023-02-04'),
(156, 'Inovasi Tanpa Batas Bahasa Inggris SMA/MA', 'Tim Penyusun', '602-939-367-7', 'Kendi Mas Media', 2012, 'id', 0, 2, 0, 1, '2023-02-05'),
(157, 'Membangun Karakter dengan Hati Nurani: Pendidikan Karakter untuk Generasi Bangsa', 'Saleh, Akh. Muwafik', '978-602-241-030-0', 'Penerbit Erlangga', 2012, 'id', 0, 2, 0, 1, '2023-02-06'),
(158, 'Olimpiade Fisilka SMA', 'Tim SSCIntersolusi', '978-979-099-998-5', 'Penerbit Erlangga', 2012, 'id', 0, 2, 0, 1, '2023-02-07'),
(159, 'Manajemen Sumber Daya Manusia', 'Bangun, Wilson', '978-602-241-056-0', 'Penerbit Erlangga', 2012, 'id', 0, 2, 0, 1, '2023-02-08'),
(160, 'Tokoh Kontroversial Dunia : Mereka yang Menggores Sejarah Kemanusiaan Dunia', 'Montefiore, Simon Sebag', '978-979-25-5569-2', 'Penerbit Erlangga', 2012, 'id', 0, 2, 0, 1, '2023-02-09'),
(161, 'Olimpiade Kimia SMA', 'Tim SSCIntersolusi', '978-979-099-999-2', 'Penerbit Erlangga', 2012, 'id', 0, 2, 0, 1, '2023-02-10'),
(162, 'Biologi', 'Campbell, Neil A.', '978-979-075-777-6', 'Penerbit Erlangga', 2012, 'id', 0, 2, 0, 1, '2023-02-11'),
(163, 'Kimia Dasar : Prinsip-Prinsip dan Aplikasi Modern Jilid 3', 'Petrucci, Ralph H.', '978-602-241-162-8', 'Penerbit Erlangga', 2012, 'id', 0, 2, 0, 1, '2023-02-12'),
(164, 'Kupas Tuntas 1001 Soal Geografi', 'Ika, Femilia', '978-979-610-654-7', 'Penerbit Pustaka Widyatama', 2012, 'id', 0, 2, 0, 1, '2023-02-13'),
(165, 'Aku Ini Binatang Jalang: Koleksi Sajak 1942-1949', 'Anwar, Chairil', '978-979-22-8493-5', 'PT Gramedia Pustaka Utama', 2012, 'id', 0, 2, 0, 1, '2023-02-14'),
(166, 'Kamus Besar Bahasa Indonesia Pusat Bahasa', 'Pusat Bahasa', '978-979-22-3841-9', 'PT Gramedia Pustaka Utama', 2012, 'id', 0, 2, 0, 1, '2023-02-15'),
(167, 'Geografi: untuk Kelas IX SMA dan MA', 'Mulyo, Bambang Nianto', '978-979-084-706-4', 'PT Tiga Serangkai Pustaka Mandiri', 2012, 'id', 0, 2, 0, 1, '2023-02-16'),
(168, 'Kimia 2 untuk Kelas XI SMA/MA', 'Susilowati, Endang', '978-979-084-776-7', 'PT Tiga Serangkai Pustaka Mandiri', 2012, 'id', 0, 2, 0, 1, '2023-02-17'),
(169, 'Kamus 4 Bahasa Seri 1', 'Suyadi', '978-979-084-843-6', 'PT Tiga Serangkai Pustaka Mandiri', 2012, 'id', 0, 2, 0, 1, '2023-02-18'),
(170, 'Akuntansi 2 untuk Kelas XII SMA dan MA', 'Tim Penulis', '978-979-084-780-4', 'PT Tiga Serangkai Pustaka Mandiri', 2012, 'id', 0, 2, 0, 1, '2023-02-19'),
(171, 'Akuntansi 1 untuk Kelas XI SMA dan MA', 'Tim Penulis', '978-979-084-779-8', 'PT Tiga Serangkai Pustaka Mandiri', 2012, 'id', 0, 2, 0, 1, '2023-02-20'),
(172, 'Seri Kursus di Rumah Tata Bahasa Perancis Pour les Debutants', 'Paryatun', '978-979-610-691-2', 'Pustaka Widyatama', 2012, 'id', 0, 2, 0, 1, '2023-02-21'),
(173, 'Ulangan yang Sering Keluar: Sukses Nilai 100 Kelas 10 SMA', 'Forum Jogja Teacher Club', '978-979610-683-7', 'Pustaka Widyatama', 2012, 'id', 0, 2, 0, 1, '2023-02-22'),
(174, 'Cara Baru Hafalan Percakapan Bahasa Perancis Metode Paris', 'Nuryadin, A.', '978-979-610-727-8', 'Pustaka Widyatama', 2012, 'id', 0, 2, 0, 1, '2023-02-23'),
(175, 'Kupas Tuntas 1001 Soal Ekonomi SMA', 'Purwanti', '978-979-610-669-1', 'Pustaka Widyatama', 2012, 'id', 0, 2, 0, 1, '2023-02-24'),
(176, 'Kupas Tuntas 1001 Soal Sosiologi SMA', 'Aryani, Nugraheni Eri', '978-979-610-681-3', 'Pustaka Widyatama', 2012, 'id', 0, 2, 0, 1, '2023-02-25'),
(177, 'Super Trik! Kimia SMA Kelas X, XI, dan XII', 'Zulviana, Aficha', '978-979-610-718-6', 'Pustaka Widyatama', 2012, 'id', 0, 2, 0, 1, '2023-02-26'),
(178, '99,99% Jawab Soal Kimia dengan Benar untuk SMA Kelas X, XI, dan XII', 'Dwiwahyu, Essye', '978-979-610-728-5', 'Pustaka Widyatama', 2012, 'id', 0, 2, 0, 1, '2023-02-27'),
(179, '101 Manipulasi Photoshop untuk Pemula', 'Effendhy, A. Asep', '978-979-877-181-1', 'MediaKom', 2011, 'id', 0, 2, 0, 1, '2023-02-28'),
(180, 'Buku Pintar EYD, Bahasa dan Sastra Indonesia', 'Cisca', '978-979-610-553-3', 'Cabe Rawit', 2011, 'id', 0, 2, 0, 1, '2023-03-01'),
(181, 'Bintang Kelas Kuasai Rumus Matematika SMA IPA', 'Santosa, Dono', '978-979-610-631-8', 'Cabe Rawit', 2011, 'id', 0, 2, 0, 1, '2023-03-02'),
(182, 'Bintang Kelas Kuasai Rumus Matematika SMA IPS', 'Santosa, Dono', '979-610-632-9', 'Cabe Rawit', 2011, 'id', 0, 2, 0, 1, '2023-03-03'),
(183, 'Himpunan PP 2010 tentang Pengelolaan dan Penyelenggaraan Pendidikan', 'Tim Redaksi Pustaka Yustisia', '978-979-341-084-5', 'Pustaka Yustisia', 2011, 'id', 0, 2, 0, 1, '2023-03-04'),
(184, 'Memahami Berbagai Etika Profesi dan Pekerjaan', 'Yuwono, Ismantoro Dwi', '978-979-341-094-4', 'Pustaka Yustisia', 2011, 'id', 0, 2, 0, 1, '2023-03-05'),
(185, 'Dasar-Dasar Akuntansi', 'Sadeli, H. Lili M.', '979-526-543-1', 'PT Bumi Aksara', 2011, 'id', 0, 2, 0, 1, '2023-03-06'),
(186, 'Rahasia Orang-Orang Kaya', 'Sher, Brian', '979-911-028-9', 'Media Pressindo', 2011, 'id', 0, 2, 0, 1, '2023-03-07'),
(187, 'Politik Bahasa: Risalah Seminar Politik Bahasa', 'Indonesia', '979-685-098-2', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'id', 0, 2, 0, 1, '2023-03-08'),
(188, 'Buku Praktis Bahasa Indonesia 1', 'Sugono, Dendy', '979-685-305-1', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'id', 0, 2, 0, 1, '2023-03-09'),
(189, 'Pemberdayaan Bahasa Indonesia Memperkukuh Budaya Bangsa Dalam Era Globalisasi : Risalah Kongres Bahasa Indonesia VIII', 'Badan Pengembangan Bahasa', '978-979-069-079-0', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'id', 0, 2, 0, 1, '2023-03-10'),
(190, 'Kamus Bahasa Indonesia untuk Pelajar', 'Kepala Badan Pengembangan dan Pembinaan Bahasa', '978-979-069-074-5', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'id', 0, 2, 0, 1, '2023-03-11'),
(191, 'Perencanaan Bahasa Pada Abad ke-21 Kendala dan Tantangan', 'Badan Pengembangan dan Pembinaan Bahasa', '978-979-069-078-3', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'id', 0, 2, 0, 1, '2023-03-12'),
(192, 'Buku Praktis Bahasa Indonesia 2', 'Sugono, Dendy', '979-685-304-3', 'Kementerian Pendidikan dan Kebudayaan', 2011, 'id', 0, 2, 0, 1, '2023-03-13'),
(193, 'Desain Grafis dan Layout dengan Corel Draw X5 Adobe Photoshop CS5 Adobe InDesign CS5', 'Hidayatullah, A. Taufiq', '978-979-16501-8-2', 'Buana Pustaka', 2011, 'id', 0, 2, 0, 1, '2023-03-14'),
(194, 'Bentuk Muka Bumi', 'Endarto, Danang', '978-979-091-030-0', 'PT Pustaka Tiga Kelana', 2011, 'id', 0, 2, 0, 1, '2023-03-15'),
(195, 'Perpustakaan Ajaib Bibbi Bokken', 'Gaarder, Jostein', '978-979-433-595-6', 'Mizan Pustaka', 2011, 'id', 0, 2, 0, 1, '2023-03-16'),
(196, 'Rumah Bersih dan Sehat', 'Onggo, Ira Tri', '978-602-98039-5-2', 'New Diglossia', 2011, 'id', 0, 2, 0, 1, '2023-03-17'),
(197, 'Lovable English Grammar', 'Sutrisno', '978-602-98039-9-0', 'New Diglossia', 2011, 'id', 0, 2, 0, 1, '2023-03-18'),
(198, 'Highly Effective Inventory Management: Mengubah Sediaan Menjadi Laba', 'Arwani, Ahmad', '979-442-355-6', 'Penerbit PPM', 2011, 'id', 0, 2, 0, 1, '2023-03-19'),
(199, 'Mengembangkan, Mengimplementasikan dan Menggunakan Key Performance Indicators', 'Parmenter, David', '979-442-325-4', 'Penerbit PPM', 2011, 'id', 0, 2, 0, 1, '2023-03-20'),
(200, 'Rahasia Penyembuhan Diabetes Secara Alami', 'Wijoyo, Padmiarso M.', '978-602-98702-6-8', 'Bee Media AGRO', 2011, 'id', 0, 2, 0, 1, '2023-03-21'),
(201, 'Ensiklopedi Manusia (2) Sistem Kerja Tubuh: Apa yang Harus Kita Ketahui dari Kerja Tubuh Manusia?', 'Tim Medium', '978-602-8144-08-7', 'Penerbit Medium', 2011, 'id', 0, 2, 0, 1, '2023-03-22'),
(202, 'Pajang Sebuah Novel Epos', 'Susetya, Wawan', '9786029785463', 'Flashbooks', 2011, 'id', 0, 2, 0, 1, '2023-03-23'),
(203, 'Get Smart & Get Fun With SmartMath: Pintar Matematika Dengan Rumus Cepat & Praktis', 'Team, Optima', '987-979-15894-0-7', 'Al-Hikmah', 2011, 'id', 0, 2, 0, 1, '2023-03-24'),
(204, 'Bidang Datar', 'Salamah, Umi', '978-979-040-263-8', 'PT Wangsa Jatra Lestari', 2011, 'id', 0, 2, 0, 1, '2023-03-25'),
(205, 'Bilangan dan Operasinya', 'Suwarni', '978-979-040-318-5', 'PT Wangsa Jatra Lestari', 2011, 'id', 0, 2, 0, 1, '2023-03-26'),
(206, 'Mahir Pidato', 'Wahyudi, Johan', '978-602-9124-01-9', 'Pustaka Sunda', 2011, 'id', 0, 2, 0, 1, '2023-03-27'),
(207, 'Ayo Berani Pidato : Tips dan Trik Menjadi Singa Podium', 'Putranto, Adi', '978-602-9124-35-4', 'Pustaka Sunda', 2011, 'id', 0, 2, 0, 1, '2023-03-28'),
(208, 'Teori dan Teknik Konseling', 'Komalasari, Gantina', '978-979-062-239-5', 'PT INDEKS', 2011, 'id', 0, 2, 0, 1, '2023-03-29'),
(209, 'Panembahan Senapati Sang Penguasa Tanah Jawa', 'Daryanto', '978-602-98549-3-0', 'Metamind', 2011, 'id', 0, 2, 0, 1, '2023-03-30'),
(210, 'Penangsang: Kidung Takhta Asmara', 'PurwOkartun, NasSirun', '978-602-9251-01-2', 'Metamind', 2011, 'id', 0, 2, 0, 1, '2023-03-31'),
(211, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar dalam Ujian Sosiologi SMA', 'Prasetyo, Andi', '978-979-877-222-1', 'Planet Ilmu', 2011, 'id', 0, 2, 0, 1, '2023-04-01'),
(212, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar dalam Ujian Matematika SMA IPA', 'Variani, Dian Ika', '978-979-877-217-7', 'Planet Ilmu', 2011, 'id', 0, 2, 0, 1, '2023-04-02'),
(213, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar Dalam Ujian Bahasa Inggris SMA', 'Prawesthi, Arviandri Dias', '979-877-218-0', 'Planet Ilmu', 2011, 'id', 0, 2, 0, 1, '2023-04-03'),
(214, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar Dalam Ujian Bahasa Indonesia SMA', 'Atmaja, Jati Fitria', '979-877-221-0', 'Planet Ilmu', 2011, 'id', 0, 2, 0, 1, '2023-04-04'),
(215, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar Dalam Ujian FISIKA SMA', 'Nugroho, Asep', '979-877-225-3', 'Planet Ilmu', 2011, 'id', 0, 2, 0, 1, '2023-04-05'),
(216, 'Kisi-Kisi 1001 Soal-Soal yang Sering Keluar Dalam Ujian Geografi SMA', 'Wulandari, Sri', '979-877-231-8', 'Planet Ilmu', 2011, 'id', 0, 2, 0, 1, '2023-04-06'),
(217, 'Super Sakti Matematika Dasar Sekolah Menengah Atas', 'Dwinanto', '978-979-788-308-9', 'Cerdas Interaktif', 2011, 'id', 0, 2, 0, 1, '2023-04-07'),
(218, '96 Penemuan Teknologi Terbaru', 'Setiawan, Yusuf', '978-602-96795-9-5', 'Penerbit KartaMedia', 2011, 'id', 0, 2, 0, 1, '2023-04-08'),
(219, 'Pendidikan Kewarganegaraan SMA Kelas x', 'Rochmadi, Nur Wahyu', '978-979-092-473-4', 'Yudhistira', 2011, 'id', 0, 2, 0, 1, '2023-04-09'),
(220, '25 Kreasi Antaran Pernikahan', 'Daud, Ocha', '9786028677066', 'Rumah Kreasi', 2011, 'id', 0, 2, 0, 1, '2023-04-10'),
(221, 'Aneka Kreasi Sulaman Bayangan', 'Nurjanah, Lilis', '9786028677073', 'Rumah Kreasi', 2011, 'id', 0, 2, 0, 1, '2023-04-11'),
(222, 'Kamus 800 Triliun Inggris - Indonesia Indonesia - Inggris', 'Alexander, Billy Berlian', '978-602-233-099-8', 'Serba Jaya', 2011, 'id', 0, 2, 0, 1, '2023-04-12'),
(223, 'Kompas Matematika Dasar dan IPA SNM-PTN (Kompilasi Soal dan Pembahasan)', 'Sobie, Ka', '978-602-96405-8-8', 'Quantum Media', 2011, 'id', 0, 2, 0, 1, '2023-04-13'),
(224, 'Kitab Tanaman Obat Nusantara', 'Widyaningrum, Herlina', '978-979-911-031-2', 'MedPress', 2011, 'id', 0, 2, 0, 1, '2023-04-14'),
(225, 'Pedoman Uger-Uger: Pasang Aksara Latin Basa Bali dan Pasang Aksara Bali Basa Bali', 'Gautama, Guru Gede Pasek Budha', '978-979-617-075-3', 'CV. Kayumas Agung', 2011, 'id', 0, 2, 0, 1, '2023-04-15'),
(226, 'Segala Hal Tentang Tanah, Rumah & Perizinannya', 'Manulang, Rinto', '978-602-8931-38-0', 'Buku Pintar', 2011, 'id', 0, 2, 0, 1, '2023-04-16'),
(227, 'Atlas Pahlawan Indonesia: 160 Pahlawan dan Pejuang Nusantara + Terkini', 'Komandoko, Gamal', '978-979-911-083-1', 'Penerbit Quantum Ilmu', 2011, 'id', 0, 2, 0, 1, '2023-04-17'),
(228, 'Teknik Menulis Surat Bisnis yang Efisien dan Menarik : Techniques of Writing Efficient and Attractive Business Letters', 'Zuhdi, Umar Farouk', '978-602-95016-9-0', 'Wahana Totalita', 2011, 'id', 0, 2, 0, 1, '2023-04-18'),
(229, 'Sehat Tanpa Dokter: Panduan Lengkap Memahami Tubuh agar Tetap Sehat dan Awet Muda', 'Mehmet', '978-602-8579-11-7', 'Qanita', 2011, 'id', 0, 2, 0, 1, '2023-04-19'),
(230, 'Buku Pintar Laptop: Menjawab Segala Pertanyaan & Permasalahan Seputar Hardware, Software, Penggunaan Laptop & Perawatannya', 'Prakoso, Kukuh', '978-979-29-1790-1', 'CV. Andi Offset', 2011, 'id', 0, 2, 0, 1, '2023-04-20'),
(231, 'Penjelajahan dan Perkemahan', 'Bawa, Achmad Andang Wahyu', '978-602-9139-05-1', 'PT Pantja Simpati', 2011, 'id', 0, 2, 0, 1, '2023-04-21'),
(232, 'Sekolah Masa penjajahan Belanda', 'Dwiyantara, Heru', '978-602-99446-4-8', 'Edu Pustaka', 2011, 'id', 0, 2, 0, 1, '2023-04-22'),
(233, 'Rajutan untuk Pemula', 'Pang, Tatha', '978-979-1481-47-2', 'Puspa Swara', 2011, 'id', 0, 2, 0, 1, '2023-04-23'),
(234, 'Kreasi Aksesori dari Kain Perca', 'Daud, Ocha', '9786027517035', 'Rumah Ide', 2011, 'id', 0, 2, 0, 1, '2023-04-24'),
(235, 'Percakapan Sehari-Hari Bahasa Korea : Korea-Inggris-Indonesia', 'Pratiwi, Asti P.', '9786021922361', 'Rumah Ide', 2011, 'id', 0, 2, 0, 1, '2023-04-25'),
(236, 'Si Pitung : Jawara Betawi Asli!', 'Garjon', '978-979-877-175-0', 'Penerbit MediaKom', 2011, 'id', 0, 2, 0, 1, '2023-04-26'),
(237, 'Membuat Laporan Sederhana dengan Microsoft Excel 2007', 'Huning, Sri', '978-602-9352-07-8', 'Tiga Media Prima', 2011, 'id', 0, 2, 0, 1, '2023-04-27'),
(238, 'Mengenal Kehidupan Serangga', 'Artiyono', '978-602-99432-0-7', 'Media Kertagama', 2011, 'id', 0, 2, 0, 1, '2023-04-28'),
(239, 'Habibie : Kecil tapi  Otak Semua', 'Makka, A. Makmur', '978-602-8672-20-7', 'Penerbit Edelweiss', 2011, 'id', 0, 2, 0, 1, '2023-04-29'),
(240, 'Pendidikan Global : Menggunakan Teknologi untuk Memperkenalkan Dunia Global kepada Para Siswa', 'Peters, Laurence', '978-979-062-246-3', 'Indeks', 2011, 'id', 0, 2, 0, 1, '2023-04-30'),
(241, 'Sumber Energi Alternatif', 'Artiyono', '978-602-99441-5-0', 'Pusta Batavia', 2011, 'id', 0, 2, 0, 1, '2023-05-01'),
(242, 'Fenomena Perairan Darat', 'Rahmawati, Atik', '978-602-99435-4-2', 'PT Pustaka Purwonegaran', 2011, 'id', 0, 2, 0, 1, '2023-05-02'),
(243, 'Zona Siswa Juara SMA XII IPS', 'Tim Bimbel', '979-26-1856-2', 'Citra Media', 2011, 'id', 0, 2, 0, 1, '2023-05-03'),
(244, 'Zona Siswa Juara SMA XII IPA', 'Tim Bimbel', '979-26-1857-0', 'Citra Media', 2011, 'id', 0, 2, 0, 1, '2023-05-04'),
(245, 'Mengenal Hutan Mangrove', 'Tjandra, Ellen', '978-602-97501-3-3', 'Pakar Media', 2011, 'id', 0, 2, 0, 1, '2023-05-05'),
(246, '99,9% Langsung Nangkap Soal-Soal Latihan PKn SMA', 'Tim Tutor', '978-602-98535-8-2', 'Cahaya Atma Pustaka', 2011, 'id', 0, 2, 0, 1, '2023-05-06'),
(247, 'Panduan Budi Daya dan 19 Ragam Olahan Mangga', 'Rukmana, Rahmat', '978-602-9319-18-7', 'Cahaya Atma Pustaka', 2011, 'id', 0, 2, 0, 1, '2023-05-07'),
(248, 'Menentukan Hati', 'Zettira, Zara', '978-979-099-372-3', 'Esensi', 2011, 'id', 0, 2, 0, 1, '2023-05-08'),
(249, 'Strategi Belajar: Seri Strategi Belajar', 'Barwood, Tom', '978-979-099-187-3', 'Esensi', 2011, 'id', 0, 2, 0, 1, '2023-05-09'),
(250, 'Apa yang Berbeda dari Guru Hebat: 12 Kisah Inspiratif Bagi Para Pendidik', 'Prasetyo, Eko', '978-979-099-296-2', 'Esensi', 2011, 'id', 0, 2, 0, 1, '2023-05-10'),
(251, 'Winning with Passion', 'Gani, Jimmy', '978-979-099-248-1', 'Esensi', 2011, 'id', 0, 2, 0, 1, '2023-05-11'),
(252, 'Powerful UKM: Produksi Mi', 'Rustandi, Deddy', '978-602-9212-24-2', 'Metagraf', 2011, 'id', 0, 2, 0, 1, '2023-05-12'),
(253, '10 Biang Untung UKM', 'Ardiyanto, Gunawan', '978-602-9212-11-2', 'Metagraf', 2011, 'id', 0, 2, 0, 1, '2023-05-13'),
(254, '7 Steps to Reach Your Dream', 'Isman, Budi', '978-602-98553-0-2', 'Metagraf', 2011, 'id', 0, 2, 0, 1, '2023-05-14'),
(255, 'The Art of Stimulating Idea: Jurus Mendulang Ide dan Insaf agar Kaya di Jalan Menulis', 'Trim, Bambang', '978-602-9212-25-9', 'Metagraf', 2011, 'id', 0, 2, 0, 1, '2023-05-15'),
(256, 'How to Clean Absolutely Everything', 'Worth Yvonne', '978-602-98553-2-6', 'Metagraf', 2011, 'id', 0, 2, 0, 1, '2023-05-16'),
(257, '10 Biang Bangkrut Usaha Kecil Menengah', 'Ardiyanto, Gunawan', '978-602-9212-03-7', 'Metagraf', 2011, 'id', 0, 2, 0, 1, '2023-05-17'),
(258, 'Senopati Terakhir', 'Wardoyo, Setyo', '978-979-168-262-6', 'Narasi', 2011, 'id', 0, 2, 0, 1, '2023-05-18'),
(259, 'Arti Mimpi Menurut Hindu: Pengetahuan Lengkap tentang Mimpi berdasarkan Sastra Hindu', 'Rini, Ayu', '978-602204-110-8', 'Paramita', 2011, 'id', 0, 2, 0, 1, '2023-05-19'),
(260, 'Kepemimpinan Hindu', 'Ariasna, Ketut Gede', '979-9044-62-6', 'Paramita', 2011, 'id', 0, 2, 0, 1, '2023-05-20'),
(261, 'Tri Sandhya Sembahyang dan Berdoa', 'Titib, I Made', '9769799044138', 'Paramita', 2011, 'id', 0, 2, 0, 1, '2023-05-21'),
(262, 'Pemikiran-Pemikiran yang Membentuk Dunia Modern: Dari Machiavelli Sampai Nietzsche)', 'Hardiman, F. Budi', '978-979-099-168-2', 'Penerbit Erlangga', 2011, 'id', 0, 2, 0, 1, '2023-05-22'),
(263, 'Belajar dengan Hati Nurani', 'Saleh, Akh. Muwafik', '978-979-099-105-7', 'Penerbit Erlangga', 2011, 'id', 0, 2, 0, 1, '2023-05-23'),
(264, 'Olimpiade Matematika SMA', 'SSCIntersolusi, Tim', '978-979-099-934-3', 'Penerbit Erlangga', 2011, 'id', 0, 2, 0, 1, '2023-05-24'),
(265, 'Cara Mengajar agar Siswa Tetap Ingat', 'Sprenger, Marilee', '978-979-099-476-8', 'Penerbit Erlangga', 2011, 'id', 0, 2, 0, 1, '2023-05-25'),
(266, 'Dasar-Dasar Kewirausahaan: Panduan Bagi Mahasiswa untuk Mengenal, Memahami, dan Memasuki Dunia Bisnis', 'Hendro, M.M.', '978-979-075-851-3', 'Penerbit Erlangga', 2011, 'id', 0, 2, 0, 1, '2023-05-26'),
(267, 'Panduan Bagi Guru Bahasa Inggris', 'Ceranic, Helena', '978-602-241-147-5', 'Penerbit Erlangga', 2011, 'id', 0, 2, 0, 1, '2023-05-27'),
(268, 'Menguasai 250 Karakter Mandarin Dasar Jilid 2', 'Lee, Philip Yungkin', '978-979-075-896-4', 'Penerbit Erlangga', 2011, 'id', 0, 2, 0, 1, '2023-05-28'),
(269, 'Kimia Dasar : Prinsip-Prinsip dan Aplikasi Modern Jilid 1', 'Petrucci, Ralph H.', '978-979-075-889-6', 'Penerbit Erlangga', 2011, 'id', 0, 2, 0, 1, '2023-05-29'),
(270, 'Akuntansi Dasar (untuk Pemula)', 'Manurung, Elvy Maria', '978-979-075-975-6', 'Penerbit Erlangga', 2011, 'id', 0, 2, 0, 1, '2023-05-30'),
(271, '1500 Resep Minuman Laku Dijual', 'Indriani', '978-979-22-7048-8', 'PT Gramedia Pustaka Utama', 2011, 'id', 0, 2, 0, 1, '2023-05-31'),
(272, 'Poison', 'Poole, Sara', '978-602-9251-07-4', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'id', 0, 2, 0, 1, '2023-06-01'),
(273, 'Terampil Mengolah Limbah Menjadi Wadah dan Mainan', 'Daryanto', '978-979-084-512-1', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'id', 0, 2, 0, 1, '2023-06-02'),
(274, 'Kamus Kesehatan Bergambar', 'Sutarmin', '978-979-084-429-2', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'id', 0, 2, 0, 1, '2023-06-03'),
(275, 'Pencemaran Udara dan Suara', 'Arinto, Nugroho', '978-979-084-401-8', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'id', 0, 2, 0, 1, '2023-06-04'),
(276, 'Sistem Gerak Pada Manusia', 'Setyo M. Ria', '978-979-084-402-5', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'id', 0, 2, 0, 1, '2023-06-05'),
(277, 'Perkembangbiakan Vegetatif', 'Nugroho, Arinto', '978-979-084-4032-2', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'id', 0, 2, 0, 1, '2023-06-06'),
(278, 'Kamus olahraga Bergambar untuk SMP, SMA, dan Umum', 'Sutarmin', '978-979-084-500-8', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'id', 0, 2, 0, 1, '2023-06-07'),
(279, 'Pencemaran Tanah dan Air', 'Nugroho, Arinto', '978-979-084-408-7', 'PT Tiga Serangkai Pustaka Mandiri', 2011, 'id', 0, 2, 0, 1, '2023-06-08'),
(280, 'Metode Cling: Semua Rumus Matematika Gak Pake Mikir', 'Tentor, Forum', '978-979-610-463-5', 'Pustaka Widyatama', 2011, 'id', 0, 2, 0, 1, '2023-06-09'),
(281, 'Strategi Meraih Medali Emas Olimpiade Matematika SMA', 'Binatari, Nikenasih', '978-979-610-536-6', 'Pustaka Widyatama', 2011, 'id', 0, 2, 0, 1, '2023-06-10'),
(282, 'Otodidak Belajar Mandarin', 'Semita, Muryani J.', '978-979-610-543-4', 'Pustaka Widyatama', 2011, 'id', 0, 2, 0, 1, '2023-06-11'),
(283, 'The Textbook of English Grammar', 'Riyanto, Slamet', '978-979-610-556-4', 'Pustaka Widyatama', 2011, 'id', 0, 2, 0, 1, '2023-06-12'),
(284, 'Strategi Meraih Medali Emas Olimpiade Fisika SMA', 'Forum Fisikawan Filosofis dan Fundamental', '978-979-610-481-9', 'Pustaka Widyatama', 2011, 'id', 0, 2, 0, 1, '2023-06-13'),
(285, 'Kupas Tuntas 1001 Soal Kimia SMA Kelas X, XI, dan XII', 'Rahayu, S. Si, Agustina Dwi', '979-610-616-7', 'Pustaka Widyatama', 2011, 'id', 0, 2, 0, 1, '2023-06-14'),
(286, 'Sepak Bola', 'Luxbacher, Joseph A.', '978-979-18189-0-2', 'Rajawali Pers', 2011, 'id', 0, 2, 0, 1, '2023-06-15'),
(287, 'Sosiologi Pendidikan : Individu, Masyarakat, dan pendidikan', 'Idi, H. Abdulah', '978-979-769-350-3', 'Rajawali Pers', 2011, 'id', 0, 2, 0, 1, '2023-06-16'),
(288, 'NIBIRU dan Kesatria Atlantis', 'Tasaro GK', '978-979-084-346-2', 'Tiga Serangkai', 2010, 'id', 0, 2, 0, 1, '2023-06-17'),
(289, 'Hukum Pornografi: Kumpulan Perundangan tentang Pornografi', 'Tim Redaksi Pustaka Yustisia', '978-979-341-071-5', 'Pustaka Yustisia', 2010, 'id', 0, 2, 0, 1, '2023-06-18'),
(290, 'Kompilasi Hukum Ketenagakerjaan dan Jamsostek', 'Tim Redaksi Pustaka Yustisia', '978-979-341-054-8', 'Pustaka Yustisia', 2010, 'id', 0, 2, 0, 1, '2023-06-19'),
(291, 'Having Fun with CorelDRAW X4', 'Puspitosari, Heni A.', '978-602-95880-5-7', 'Skripta', 2010, 'id', 0, 2, 0, 1, '2023-06-20'),
(292, 'Berani Memulai & Menjalankan Bisnis dari Rumah', 'Power, Paul', '978-602-8535-98-4', 'Penerbit Tiga Kelana', 2010, 'id', 0, 2, 0, 1, '2023-06-21'),
(293, 'Berani Memulai & Menjalankan Bisnis Cleaning Service', 'Gordon, Robert', '978-602-8535-90-8', 'Penerbit Tiga Kelana', 2010, 'id', 0, 2, 0, 1, '2023-06-22'),
(294, 'Front of the Class: Kisah Sukses Seorang Guru Penderita Sindrom Tourett', 'Cohen, Brad', '978-602-8535-87-8', 'Penerbit Tiga Kelana', 2010, 'id', 0, 2, 0, 1, '2023-06-23'),
(295, 'Yes, I Know Everything about Kanker Serviks! Mengenali, Mencegahnya, & Bagaimana Anda Menjalani Pengobatannya', 'Samadi, Heru Priyanto', '978-979-091-013-3', 'Penerbit Tiga Kelana', 2010, 'id', 0, 2, 0, 1, '2023-06-24'),
(296, 'Terampil Berbahasa Inggris: Beberapa Tips Mengajar Bahasa Inggris', 'Rusmajadi, Jodih', '978-979-062-112-1', 'PT INDEKS', 2010, 'id', 0, 2, 0, 1, '2023-06-25'),
(297, 'Bali, Benteng Terbuka 1995-2005: Otonomi Daerah, Demokrasi Elektoral, dan Identitas-Identitas Defensif', 'Nordholt, Henk Schulte', '978-979-3790-48-0', 'Pustaka Larasan', 2010, 'id', 0, 2, 0, 1, '2023-06-26'),
(298, 'Pertarungan Ideologis Barat-Timur Tentang Penyu di Bali', 'Sudiana, I Gusti Ngurah', '978-979-17499-1-6', 'IHDN Press', 2010, 'id', 0, 2, 0, 1, '2023-06-27'),
(299, 'Super Pintar Soal untuk SMA/MA IPA', 'Guru Indonesia Cerdas', '978-602-8276-44-3', 'Penerbit Indonesia Cerdas', 2010, 'id', 0, 2, 0, 1, '2023-06-28'),
(300, 'Rangkuman Tuntas Bahasa Inggris untuk SMA/MA Kelas XI', 'Sukur, Silvester Goridus', '978-602-8276-09-2', 'Penerbit Indonesia Cerdas', 2010, 'id', 0, 2, 0, 1, '2023-06-29'),
(301, 'Fisika 1 SMA Kelas X', 'Purwoko', '978-979-019-339-0', 'Yudhistira', 2010, 'id', 0, 2, 0, 1, '2023-06-30'),
(302, 'Membumikan Matematika: Dari Kampus ke Kampung', 'Manfaat, Budi', '978-602-97578-0-4', 'Eduvision Publishing', 2010, 'id', 0, 2, 0, 1, '2023-07-01'),
(303, 'Metode \"Nyleneh\" 20 Menit [Dijamin] Hafal 16 Tenses', 'Sutrisno, Hani', '978-979-610-427-7', 'PT Buku Kita', 2010, 'id', 0, 2, 0, 1, '2023-07-02'),
(304, 'Karma Keadilan Tertinggi', 'Prabhupada, Sri Simad A.C. Bhaktivedanta Swami', '978-979-9384-53-9', 'Hanuman Sakti', 2010, 'id', 0, 2, 0, 1, '2023-07-03'),
(305, 'Ngomongin Hal-Hal Sulit dengan Orang-Orang Sulit', 'Yektiningsih, Deti', '978-979-788-187-0', 'MedPress', 2010, 'id', 0, 2, 0, 1, '2023-07-04'),
(306, 'Hilangnya Benua Atlantis: Benarkah Indonesia adalah Atlantis?', 'Vidia, Aprilia', '978-979-25-4722-1', 'STARBOOKS', 2010, 'id', 0, 2, 0, 1, '2023-07-05'),
(307, 'Step by Step Jadi Dokter', 'Fiershanty, Sabreena', '978-979-25-4766-5', 'STARBOOKS', 2010, 'id', 0, 2, 0, 1, '2023-07-06'),
(308, 'Mendidik Anak Menjadi Unggulan: Membaca Dinamika yang Mengelilingi Dunia Anak', 'Fakhruddin, Asep Umar', '978-602-90062-1-0', 'Penerbit Manika Books', 2010, 'id', 0, 2, 0, 1, '2023-07-07'),
(309, '1 Jam Mahir Desain Logo Untuk Pemula', 'Team Cyber', '978-602-95935-7-0', 'HP Cyber Community', 2010, 'id', 0, 2, 0, 1, '2023-07-08'),
(310, 'Bahas Tuntas 1001 Soal Bahasa Inggris SMA', 'Arifa, Muftia Arum', '978-979-610-391-1', 'Pustakawa Widyatama', 2010, 'id', 0, 2, 0, 1, '2023-07-09'),
(311, 'Teknologi Informasi dan Komunikasi untuk SMP dan MTs Kelas IX', 'Buono, Agus', '978-979-078-100-9', 'PT. Dian Rakyat', 2010, 'id', 0, 2, 0, 1, '2023-07-10'),
(312, 'Obat-Obat Penting : Khasiat Penggunaan dan Efek-Efek Sampingnya', 'Tjay, Tan Hoan', '978-979-27-19130', 'PT Elex Media Komputindo', 2010, 'id', 0, 2, 0, 1, '2023-07-11'),
(313, 'Pengkayaan Percakapan Harian Jepang', 'Kamiya, Taeko', '978-602-955-643-8', 'Garailmu', 2010, 'id', 0, 2, 0, 1, '2023-07-12'),
(314, 'Oxford Advanced Learner\'s Dictionary', 'Hornby, A S', '978-0-19-479914-0', 'Oxford University Press', 2010, 'id', 0, 2, 0, 1, '2023-07-13'),
(315, 'Kreasi Rajutan Cantik', 'Pang, Tatha', '978-979-1477-67-3', 'Kriya Pustaka', 2010, 'id', 0, 2, 0, 1, '2023-07-14'),
(316, 'Fisika Dasar Jilid I', 'Halliday, David', '9789790993273', 'Erlangga', 2010, 'id', 0, 2, 0, 1, '2023-07-15'),
(317, 'Fisika Dasar Jilid 2', 'Halliday, David', '978-602-241-595-4', 'Erlangga', 2010, 'id', 0, 2, 0, 1, '2023-07-16'),
(318, 'Fisika Dasar Jilid 3', 'Halliday, David', '9786022417361', 'Erlangga', 2010, 'id', 0, 2, 0, 1, '2023-07-17'),
(319, 'Peramal Cinta is Back', 'Diepen, Allison van', '978-602-7596-23-8', 'Erlangga', 2010, 'id', 0, 2, 0, 1, '2023-07-18'),
(320, 'Kenali Narkoba dan Musuhi Penyalahgunaannya', 'Partodiharjo, Subagyo', '978-979-075-435-5', 'Esensi', 2010, 'id', 0, 2, 0, 1, '2023-07-19'),
(321, 'Change Your Thoughts - Change Your Life: Kearifan Tao untuk Hidup Anda', 'Dyer, Wayne W.', '978-979-075-556-7', 'Esensi', 2010, 'id', 0, 2, 0, 1, '2023-07-20'),
(322, 'Cukup Dengan Satu Buku : Buku Sakti Materi + Rumus Lengkap SMA/MA Kelas XI IPA', 'Tim Tentor Ahli', '978-602-8362-66-5', 'Kendi Mas Media', 2010, 'id', 0, 2, 0, 1, '2023-07-21'),
(323, 'Cukup dengan Satu Buku : Buku Sakti materi + Rumus Lengkap SMA/MA Kelas X', 'Tim Tentor Ahli', '978-602-8362-65-8', 'Kendi Mas Media', 2010, 'id', 0, 2, 0, 1, '2023-07-22'),
(324, 'Sejarah Revolusi Indonesia 1945-1950', 'Maeswara, Garda', '978-979-168-231-2', 'Narasi', 2010, 'id', 0, 2, 0, 1, '2023-07-23'),
(325, 'Bhagavad Gita : Pedoman Mengenai Tugas Kehidupan Manusia di Dunia', 'Prabhupada, A.C Bhaktivedanta Swami', '978-979-168-219-0', 'Narasi', 2010, 'id', 0, 2, 0, 1, '2023-07-24'),
(326, 'Kepemimpinan (Leadership) dalam Agama Hindu', 'Subagiasta, I Ketut', '978-979-722', 'Paramita', 2010, 'id', 0, 2, 0, 1, '2023-07-25'),
(327, 'Deva Ganesa: Kisah Kemuliaan Deva Ganesa, Sang Penghalau Rintangan Putra Deva Siva dan Devi Parvati', 'Wirawan, I Made Adi', '978-979-722-918-4', 'Paramita', 2010, 'id', 0, 2, 0, 1, '2023-07-26'),
(328, 'Hari Raya Saraswati : Ditinjau Dari Segi Tattwa, Susila, dan Upacara', 'Suratmini, Ni Wayan', '978-979-722-988-7', 'Paramita', 2010, 'id', 0, 2, 0, 1, '2023-07-27'),
(329, 'Kepemimpinan Hindu', 'Ariasna, Ketut Gede', '979-9044-62-6', 'Paramita', 2019, 'id', 38000, 0, 0, 2, '2023-07-28'),
(330, 'Rekor Sepak Bola Dunia 2010', 'Radnedge, Keir', '978-979-075-558-1', 'Penerbit Erlangga', 2010, 'id', 0, 2, 0, 1, '2023-07-29'),
(331, 'Mengapa Siswa Gagal', 'Holt, John', '978-979-099-294-8', 'Penerbit Erlangga', 2010, 'id', 0, 2, 0, 1, '2023-07-30'),
(332, 'Biologi Edisi 8 Jilid 1', 'Campbell, Neil A.', '978-979-075-688-5', 'Penerbit Erlangga', 2010, 'id', 0, 2, 0, 1, '2023-07-31'),
(333, 'Seri Pendalaman Materi Plus : Siap Tuntas Menghadapi Ujian Nasional SMA/MA 2010 Program IPS', 'Kurnianingsih, Sri', '979-734-998-5', 'Penerbit Erlangga', 2010, 'id', 0, 2, 0, 1, '2023-08-01'),
(334, '99,99% Sukses TOEFL : Metode Terbaik Melejitkan Skor TOEFL Pastikan Skor TOEFL Anda 500, 550, atau bahkan 650!', 'Tumijo', '978-979-610-411-6', 'Penerbit Pustaka Widyatama', 2010, 'id', 0, 2, 0, 1, '2023-08-02'),
(335, 'Bahas Tuntas 1001 Soal Sejarah SMA', 'Wibowo, Fajar Satrio', '978-979-610-392-8', 'Penerbit Pustaka Widyatama', 2010, 'id', 0, 2, 0, 1, '2023-08-03'),
(336, 'Berani Memulai & Menjalankan Bisnis Kedai Sandwich dan Kopi', 'Sutherland, Jill', '978-602-8535-93-9', 'PT Tiga Serangkai Pustaka Mandiri', 2010, 'id', 0, 2, 0, 1, '2023-08-04'),
(337, 'Mengenal Bangunan Bersejarah Di Indonesia', 'Herimanto', '978-979-018-119-9', 'PT Tiga Serangkai Pustaka Mandiri', 2010, 'id', 0, 2, 0, 1, '2023-08-05'),
(338, 'Sehari Mahir Merajut', 'Sitoresmi, Ajeng Galih', '978-602-8607-18-8', 'Pustaka Grhtama', 2010, 'id', 0, 2, 0, 1, '2023-08-06');
INSERT INTO `tb_buku` (`id_buku`, `judul`, `pengarang`, `isbn`, `penerbit`, `tahun`, `bahasa`, `harga`, `jumlah`, `total_harga`, `status`, `tgl_input`) VALUES
(339, 'Trik Cepat Menyelesaikan Soal Listening & Reading SMA', 'Astuti, Indarti Puji', '978-979-610-394-2', 'Pustaka Widyatama', 2010, 'id', 0, 2, 0, 1, '2023-08-07'),
(340, 'Cepat Bisa! Bahasa Belanda', 'Irawan, Ayu', '978-979-610-384-3', 'Pustaka Widyatama', 2010, 'id', 0, 2, 0, 1, '2023-08-08'),
(341, '99,99% Sukses Toeic : Succesfull, Strategies for Toeic', 'Riyanto, Slamet', '978-979-610-445-1', 'Pustaka Widyatama', 2010, 'id', 0, 2, 0, 1, '2023-08-09'),
(342, 'Paling Mudah Membuat Website Profesional dengan Joomla', 'Wakhida, Ikhsan', '978-979-877-080-7', 'MediaKom', 2009, 'id', 0, 2, 0, 1, '2023-08-10'),
(343, 'Lebih Cerdas dengan Wikipedia', 'Hapiddin, Asep', '978-979-045-845-1', 'Tiga Serangkai', 2009, 'id', 0, 2, 0, 1, '2023-08-11'),
(344, 'Bencana Alam Geologi', 'Susila, P. Heru', '978-602-8535-45-8', 'PT Pustaka Tiga Kelana', 2009, 'id', 0, 2, 0, 1, '2023-08-12'),
(345, 'Bencana Alam Hidrologi', 'Susila, P. Heru', '978-602-8535-46-5', 'PT Pustaka Tiga Kelana', 2009, 'id', 0, 2, 0, 1, '2023-08-13'),
(346, 'Leadership with NLP (Neuro-Linguistic Programming)', 'Salim, Gendro', '979-1036-5-0', 'Sinergi Media', 2009, 'id', 0, 2, 0, 1, '2023-08-14'),
(347, 'Rumus Jitu Matematika', 'Gustanti, Dwi', '979-18625-7-5', 'Three Publishing', 2009, 'id', 0, 2, 0, 1, '2023-08-15'),
(348, 'Pengajaran Matematika Sesuai Cara Kerja Otak', 'Ronis, Diane', '978-979-062-049-0', 'PT INDEKS', 2009, 'id', 0, 2, 0, 1, '2023-08-16'),
(349, 'Cepat Tuntas Kuasai Bahasa Inggris SMA/MA Kelas XII', 'Sukur, Silvester Goridus', '978-602-8276-10-8', 'Penerbit Indonesia Cerdas', 2009, 'id', 0, 2, 0, 1, '2023-08-17'),
(350, 'Di Luar Kelahiran dan Kematian', 'Prabhupada, A.C Bhaktivedanta Swami', '979-9384-02-8', 'Hanuman Sakti', 2009, 'id', 0, 2, 0, 1, '2023-08-18'),
(351, 'Buku Bacaan Sosial Demokrasi: Negara Kesejahteraan dan Sosial Demokrasi', 'Petring, Alexander', '978-602-8866-09-5', 'Friedrich-Ebert-Stiftung', 2009, 'id', 0, 2, 0, 1, '2023-08-19'),
(352, 'Proses Belajar Mengajar di Sekolah', 'Suryosubroto, B.', '978-979-518-904-6', 'Rineka Cipta', 2009, 'id', 0, 2, 0, 1, '2023-08-20'),
(353, 'The Girl\'s Guide to Being a Boss: (without being a bitch) : pelajaran berharga, kiat sukses, dan kisah inspiratif para wanita pemimpin', 'Friedman, Caitlin', '978-602-95079-7-3', 'Publishing One', 2009, 'id', 0, 2, 0, 1, '2023-08-21'),
(354, 'KRSNA Personalitas Tuhan Yang Maha Esa', 'Prabhupada, Sri Simad A.C. Bhaktivedanta Swami', '9789799384423', 'Bhaktivedanta Book Trust', 2009, 'id', 0, 2, 0, 1, '2023-08-22'),
(355, 'Memotivasi Siswa di Kelas : Gagasan dan Strategi', 'Reid, Gavin', '978-979-683-909-4', 'Indeks', 2009, 'id', 0, 2, 0, 1, '2023-08-23'),
(356, 'Ramah Terhadap Sampah', 'Dwi. M. W', '978-979-8178-05-4', 'Percada', 2009, 'id', 0, 2, 0, 1, '2023-08-24'),
(357, 'Atlas Eksplorasi : Telusuri Jejak Para Penjelajah Hebat Dunia', 'Ganeri, Anita', '978-979-075-897-1', 'Erlangga for Kids', 2009, 'id', 0, 2, 0, 1, '2023-08-25'),
(358, 'The Life Plan: 700 Cara Sederhana Untuk Hidup Lebih Baik', 'Ashton, Robert', '978-979-033-816-6', 'Esensi', 2009, 'id', 0, 2, 0, 1, '2023-08-26'),
(359, 'Panduan Menikah Wanita Modern', 'Ivens, Sarah', '978-979-075-522-2', 'Esensi', 2009, 'id', 0, 2, 0, 1, '2023-08-27'),
(360, 'Ensiklopedia Kehamilan Hari Demi Hari', 'Blott, Maggie', '978-602-7596-37-5', 'Esensi', 2009, 'id', 0, 2, 0, 1, '2023-08-28'),
(361, 'Buku Sakti Matematika SMA IPS', 'Setyaningtyas, Yualind', '602-8362-19-0', 'Kendi Mas Media', 2009, 'id', 0, 2, 0, 1, '2023-08-29'),
(362, 'Kamus Bahasa Bali', 'Gautama, W Budha', '978-979-722-576-6', 'Paramita', 2009, 'id', 0, 2, 0, 1, '2023-08-30'),
(363, 'Katuturaning Barong Swari Lan Dalang', 'Gautama, Wayan Budha', '978-979-722-666-4', 'Paramita', 2009, 'id', 0, 2, 0, 1, '2023-08-31'),
(364, 'Kanda Empat Dewa : Manusia Setengah Dewa Sakti Manderaguna', 'Yendra, I Wayan', '978-979-722-714-2', 'Paramita', 2009, 'id', 0, 2, 0, 1, '2023-09-01'),
(365, 'Tuntunan Nganteb Upakara Dewa Yadnya', NULL, '978-979-722-696-1', 'Paramita', 2009, 'id', 0, 2, 0, 1, '2023-09-02'),
(366, 'Mandiri Matematika Jilid 2 untuk SMA/MA Kelas XI Program Ilmu Alam', 'Suryani, Enung', '978-979-033-772-5', 'Penerbit Erlangga', 2009, 'id', 0, 2, 0, 1, '2023-09-03'),
(367, 'Eyewitness Travel Top 10 Sydney', 'Womersley, Steve', '978-979-075-286-3', 'Penerbit Erlangga', 2009, 'id', 0, 2, 0, 1, '2023-09-04'),
(368, 'Eyewitness Travel Top 10 New York', 'Bramblett, Reid', '978-979-075-053-1', 'Penerbit Erlangga', 2009, 'id', 0, 2, 0, 1, '2023-09-05'),
(369, 'Eyewitness Travel Top 10 Los Angeles', 'Gerber, Catherine', '978-979-075-854-4', 'Penerbit Erlangga', 2009, 'id', 0, 2, 0, 1, '2023-09-06'),
(370, 'Mandiri Fisika untuk SMA/MA Kelas X', 'Nugroho, Djoko', '978-979-033-857-9', 'Penerbit Erlangga', 2009, 'id', 0, 2, 0, 1, '2023-09-07'),
(371, 'SeribuPena Geografi', 'Winarno', '978-979-015-847-4', 'Penerbit Erlangga', 2009, 'id', 0, 2, 0, 1, '2023-09-08'),
(372, 'Mandiri Mengasah Kemampuan Diri FISIKA untuk SMA/MA Kelas XI', 'Nugroho, Djoko', '978-979-033-585-6', 'Penerbit Erlangga', 2009, 'id', 0, 2, 0, 1, '2023-09-09'),
(373, 'Ensiklopedia Sejarah dan Budaya 1', 'Tim Proyek', '978-979-3535-41-8', 'PT Lentera Abadi', 2009, 'id', 0, 2, 0, 1, '2023-09-10'),
(374, 'Ensiklopedia Sejarah dan Budaya 2', 'Tim Proyek', '978-979-3535-41-8', 'PT Lentera Abadi', 2009, 'id', 0, 2, 0, 1, '2023-09-11'),
(375, 'Ensiklopedia Sejarah dan Budaya 3', 'Tim Proyek', '978-979-3535-41-8', 'PT Lentera Abadi', 2009, 'id', 0, 2, 0, 1, '2023-09-12'),
(376, 'Ensiklopedia Sejarah dan Budaya 4', 'Tim Proyek', '978-979-3535-41-8', 'PT Lentera Abadi', 2009, 'id', 0, 2, 0, 1, '2023-09-13'),
(377, 'Ensiklopedia Sejarah dan Budaya 5', 'Tim Proyek', '978-979-3535-41-8', 'PT Lentera Abadi', 2009, 'id', 0, 2, 0, 1, '2023-09-14'),
(378, 'Ensiklopedia Sejarah dan Budaya 6', 'Tim Proyek', '978-979-3535-47-0', 'PT Lentera Abadi', 2009, 'id', 0, 2, 0, 1, '2023-09-15'),
(379, 'Ensiklopedia Sejarah dan Budaya 7', 'Tim Proyek', '978-979-3535-47-0', 'PT Lentera Abadi', 2009, 'id', 0, 2, 0, 1, '2023-09-16'),
(380, 'Ensiklopedia Sejarah dan Budaya 8', 'Tim Proyek', '978-979-3535-47-0', 'PT Lentera Abadi', 2009, 'id', 0, 2, 0, 1, '2023-09-17'),
(381, 'Mengenal Perserikatan Bangsa-Bangsa', 'Tim Penulis', '978-979-045-462-0', 'PT Tiga Serangkai Pustaka Mandiri', 2009, 'id', 0, 2, 0, 1, '2023-09-18'),
(382, 'Successful strategies for toefl : cara mudah sukses toefl, kuasai strateginya dan dongkrak skor toefl anda', 'Tumijo', '979-610-396-6', 'Pustaka Widyatama', 2009, 'id', 0, 2, 0, 1, '2023-09-19'),
(383, 'Menikah Yes or No', 'Ninghadiyanti, Utari', '978-979-033-667-4', 'Esensi', 2009, 'id', 0, 2, 0, 1, '2023-09-20'),
(384, 'Simple Tips: Fun di Kantor (Belajar dari Orang Sukses)', 'Dennis, Fitryan', '978-979-033-815-9', 'Esensi', 2009, 'id', 0, 2, 0, 1, '2023-09-21'),
(385, 'Gajah Mada, Madakaripura Hamukti Moksa', 'Hariadi, Langit Kresna', '979-33-0712-9', 'Tiga Serangkai', 2008, 'id', 0, 2, 0, 1, '2023-09-22'),
(386, 'Kamus Kimia', 'HAM Mulyono', '979-526-060-x', 'PT Bumi Aksara', 2008, 'id', 0, 2, 0, 1, '2023-09-23'),
(387, '101++ Ide Jitu Peluang Usaha', 'Writer, Gemini', '978-979-1481-55-7', 'PT Pustaka Tiga Kelana', 2008, 'id', 0, 2, 0, 1, '2023-09-24'),
(388, 'Wahai Para Guru, Ubahlah Cara Mengajarmu - Perintah Pengajaran yang Berbeda-Beda dan Sesuai Dengan Otak', 'Kaufeldt, Martha', '9781904424611', 'PT INDEKS', 2008, 'id', 0, 2, 0, 1, '2023-09-25'),
(389, 'Efektivitas Kebijakan Pendidikan: Konsep, Strategi, dan Aplikasi Kebijakan Menuju Organisasi Sekolah Efektif', 'Syafaruddin', '978-979-518-902-2', 'Rineka Cipta', 2008, 'id', 0, 2, 0, 1, '2023-09-26'),
(390, 'Babad Bali baru : Sejarah Kependudukan Bali 1912-2000', 'Putrawan N.', '978-979-8506-20-8', 'Pustaka Manikgeni', 2008, 'id', 0, 2, 0, 1, '2023-09-27'),
(391, 'Pandangan Hindu atas Kristen dan Islam', 'Swarup, Ram', '978-979-18591-0-3', 'Semeton Temesi', 2008, 'id', 0, 2, 0, 1, '2023-09-28'),
(392, 'Oxford Learner\'s Pocket Grammar', 'Eastwood, John', '978-0-19-433684-0', 'Oxford University Press', 2008, 'id', 0, 2, 0, 1, '2023-09-29'),
(393, 'Mengenal dan Merawat Begonia', 'Hartutiningsih', '979-006-173-0', 'PT AgroMed Pustaka', 2008, 'id', 0, 2, 0, 1, '2023-09-30'),
(394, 'Seri Pendalaman Materi Matematika SMA dan MA Program IPS', 'Kurnianingsih, Sri', '979-734-907-1', 'Esis', 2008, 'id', 0, 2, 0, 1, '2023-10-01'),
(395, 'Istri-Istri Orang Seberang: Kisah Hidup Pasangan Kawin Campur', 'Poyk, Fanny J.', '978-979-015-678-4', 'Esensi', 2008, 'id', 0, 2, 0, 1, '2023-10-02'),
(396, 'Leak Meyoga Dikala Purnama', 'Yudhiantara, K', '978-979-722-657-2', 'Paramita', 2008, 'id', 0, 2, 0, 1, '2023-10-03'),
(397, 'Bunga Rampai ; Babad dan Rerajahan Kajang di Bali', 'Tim Penyusun Bunga Rampai', '978-979-722-539-1', 'Paramita', 2008, 'id', 0, 2, 0, 1, '2023-10-04'),
(398, 'Shraddha dan Bhakti', 'Subagiasta, I Ketut', '978-979-722-535-3', 'Paramita', 2008, 'id', 0, 2, 0, 1, '2023-10-05'),
(399, 'Eyewitness Travel Top 10 Hong Kong', 'Fitzpatrick, Liam', '978-979-075-052-4', 'Penerbit Erlangga', 2008, 'id', 0, 2, 0, 1, '2023-10-06'),
(400, '50 Terobosan Manajemen yang Perlu Anda Ketahui', 'Russell, Edward', '978-979-033-809-8', 'Penerbit Erlangga', 2008, 'id', 0, 2, 0, 1, '2023-10-07'),
(401, 'Biologi Edisi Kedelapan Jilid 3', 'Campbell, Neil A.', '978-979-099-153-8', 'Penerbit Erlangga', 2008, 'id', 0, 2, 0, 1, '2023-10-08'),
(402, 'Kimia Dasar : Prinsip-Prinsip & Aplikasi Modern Jilid 2', 'Petrucci, Ralph H.', '978-979-099-198-9', 'Penerbit Erlangga', 2008, 'id', 0, 2, 0, 1, '2023-10-09'),
(403, 'SeribuPena Kimia untuk SMA/MA Kelas X', 'Retnowati, Priscilla', '978-979-033-416-8', 'Penerbit Erlangga', 2008, 'id', 0, 2, 0, 1, '2023-10-10'),
(404, 'Menguasai 250 Karakter Mandarin Dasar Jilid 1', 'Lee, Philip Yungkin', '978-979-075-900-8', 'Penerbit Erlangga', 2008, 'id', 0, 2, 0, 1, '2023-10-11'),
(405, 'Bisnis & Budidaya Lele Dumbo & Lokal', 'Tim Agriminakultura', '978-979-22-4182-2', 'PT Gramedia Pustaka Utama', 2008, 'id', 0, 2, 0, 1, '2023-10-12'),
(406, 'Kamus Indonesia-Inggris', 'Echols, John M.', '978-979-403-755-3', 'PT Gramedia Pustaka Utama', 2008, 'id', 0, 2, 0, 1, '2023-10-13'),
(407, 'Kamus Indonesia-Inggris', 'Echols, John M.', '978-979-403-755-3', 'PT Gramedia Pustaka Utama', 2008, 'id', 0, 2, 0, 1, '2023-10-14'),
(408, 'Kamus Istilah Ilmu Pengetahuan Alam untuk SD/MI, SMP/MTs. dan SMA/MA', 'Tim Penulis', '978-979-018-121-2', 'PT Tiga Serangkai Pustaka Mandiri', 2008, 'id', 0, 2, 0, 1, '2023-10-15'),
(409, 'Belajar Praktis Kewarganegaraan', 'Amar, Abu', '978-979-018-114-1', 'PT Tiga Serangkai Pustaka Mandiri', 2008, 'id', 0, 2, 0, 1, '2023-10-16'),
(410, 'Selayang Pandang Indonesiaku : Sekilas tentang Sejarah, Geografi, Penduduk, dan Kebudayan', 'Tim Penulis Mandiri', '978-979-018-143-4', 'Tiga Serangkai', 2007, 'id', 0, 2, 0, 1, '2023-10-17'),
(411, 'Mahir dan Terampil Berkomputer TIK untuk Kelas XII Sekolah Menengah Atas', 'Kuswayatno, Lia', '979-758-383-x', 'Grafindo Media Pratama', 2007, 'id', 0, 2, 0, 1, '2023-10-18'),
(412, 'Kamus Umum Bahasa Indonesia', 'Poerwadarminta, W.J.S.', '979-666-291-4', 'Balai Pustaka', 2007, 'id', 0, 2, 0, 1, '2023-10-19'),
(413, 'Mari Mengenal Internet', 'Rozi, Zaenal A.', '978-979-29-0315-7', 'CV. Andi Offset', 2007, 'id', 0, 2, 0, 1, '2023-10-20'),
(414, 'Rangkuman Pengetahuan Pendidikan Jasmani, Olahraga, & Kesehatan (Penjas-Orkes)', 'Erlangga, Tony', '978-602-8644-26-6', 'CV. Bringin 55', 2007, 'id', 0, 2, 0, 1, '2023-10-21'),
(415, 'Special Assignments : The Further Adventures of Erast Fandorin', 'Akunin, Boris', '978-0-7538-2348-4', 'Phoenix Fiction', 2007, 'id', 0, 2, 0, 1, '2023-10-22'),
(416, 'Remaja Jilid 1', 'Santrock, John W.', '9789790750371', 'Erlangga', 2007, 'id', 0, 2, 0, 1, '2023-10-23'),
(417, 'Remaja Jilid 2', 'Santrock, John W.', '978-979-075-686-1', 'Erlangga', 2007, 'id', 0, 2, 0, 1, '2023-10-24'),
(418, 'Momoye Mereka Memanggilku: Biografi Sejarah Jugun Ianfu Indonesia', 'EkaHindra', '978-979-015-219-9', 'Esensi', 2007, 'id', 0, 2, 0, 1, '2023-10-25'),
(419, 'Wawasan & Tinjauan Seni Keramik', 'Utomo, Agus Mulyadi', '978-979-722-416-5', 'Paramita', 2007, 'id', 0, 2, 0, 1, '2023-10-26'),
(420, 'Perkembangan Anak', 'Santrock, John W.', '978-979-033-134-1', 'Penerbit Erlangga', 2007, 'id', 0, 2, 0, 1, '2023-10-27'),
(421, 'Pendidikan Jasmani Olahraga dan Kesehatan', 'Muhajir', '978-979-015-186-4', 'Penerbit Erlangga', 2007, 'id', 0, 2, 0, 1, '2023-10-28'),
(422, 'Lou! Buku Harian', 'Editions, Glenat', '978-979-015-881-8', 'Penerbit Erlangga', 2007, 'id', 0, 2, 0, 1, '2023-10-29'),
(423, 'Kompeten Berbahasa Indonesia untuk SMA Kelas XII', 'Tim Edukatif', '978-979-015-172-7', 'Penerbit Erlangga', 2007, 'id', 0, 2, 0, 1, '2023-10-30'),
(424, 'Guru Sebagai Pelatih Kelas', 'Stix, Andi', '978-602-241-146-8', 'Penerbit Erlangga', 2007, 'id', 0, 2, 0, 1, '2023-10-31'),
(425, 'Big Brother Complex', 'Angela, Primadonna', '978-979-22-2585-3', 'PT Gramedia Pustaka Utama', 2007, 'id', 0, 2, 0, 1, '2023-11-01'),
(426, 'Ensiklopedia Geografi 1', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'id', 0, 2, 0, 1, '2023-11-02'),
(427, 'Ensiklopedia Geografi 2', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'id', 0, 2, 0, 1, '2023-11-03'),
(428, 'Ensiklopedia Geografi 3', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'id', 0, 2, 0, 1, '2023-11-04'),
(429, 'Ensiklopedia Geografi 4', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'id', 0, 2, 0, 1, '2023-11-05'),
(430, 'Ensiklopedia Geografi 5', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'id', 0, 2, 0, 1, '2023-11-06'),
(431, 'Ensiklopedia Geografi 6', 'Tim Penyusun', '979-3535-10-5', 'PT Lentera Abadi', 2007, 'id', 0, 2, 0, 1, '2023-11-07'),
(432, 'Kamus Geografi Bergambar', 'Endarto, Danang', '978-979-018-101-4', 'PT Tiga Serangkai Pustaka Mandiri', 2007, 'id', 0, 2, 0, 1, '2023-11-08'),
(433, 'Atlas Duniaku', 'Adnan, Warsito', '978-979-018-153-3', 'PT Tiga Serangkai Pustaka Mandiri', 2007, 'id', 0, 2, 0, 1, '2023-11-09'),
(434, 'Pelajaran Seni Budaya 1 : Seni Tari dan Seni Musik', 'Astono, Sigit', '979-746-154-8', 'Yudhistira', 2006, 'id', 0, 2, 0, 1, '2023-11-10'),
(435, 'Krsna : Sumber Kebahagiaan', 'Prabhupada, A.C Bhaktivedanta Swami', '979-9384-13-3', 'Hanuman Sakti', 2006, 'id', 0, 2, 0, 1, '2023-11-11'),
(436, 'Arok Dedes', 'Toer, Pramoedya Ananta', '978-979-3820-14-9', 'Lentera Dipantara', 2006, 'id', 0, 2, 0, 1, '2023-11-12'),
(437, 'Antologi Puisi : Rumah Merah', 'Suastini, Ni Putu Putri', '978-602-5529-33-7', 'PT Percetakan Bali', 2006, 'id', 0, 2, 0, 1, '2023-11-13'),
(438, 'Berani Menggali Lebih Dalam', 'Tim Fokus Pada Keluarga', '979763290-3', 'Penerbit ANDI', 2006, 'id', 0, 2, 0, 1, '2023-11-14'),
(439, 'Memuja Tuhan dengan Puja Tri Sandhya, Kramaning Sembah, Ista Dewata Puja, Kidung Dewa Yadnya dan Doa Metirtha, Mesekar, Mebija', 'Dananjaya, S.', '979-8496-57-4', 'Pustaka Bali Post', 2006, 'id', 0, 2, 0, 1, '2023-11-15'),
(440, 'Tapak-Tapak Pejuang: Dari Reformis ke Revisionis', 'Sudrajat, A. Suryana', '979-781-610-9', 'Erlangga', 2006, 'id', 0, 2, 0, 1, '2023-11-16'),
(441, 'Leadership and Self-Deception: Berpikir di Luar Kotak', 'Institute, The Arbinger', '978-979-015-538-1', 'Esensi', 2006, 'id', 0, 2, 0, 1, '2023-11-17'),
(442, 'Bicara Soal Cinta, Pacaran, dan S-E-K-S Kepada Remaja: Panduan Guru & Orang Tua', 'Miron, Amy G.', '978-979-033-289-8', 'Esensi', 2006, 'id', 0, 2, 0, 1, '2023-11-18'),
(443, 'Buku Pintar Remaja Berbakat: Buku Pegangan untuk Remaja', 'Galbraith, Judy', '978-979-015-679-1', 'Esensi', 2006, 'id', 0, 2, 0, 1, '2023-11-19'),
(444, 'Memori Inteligen : Rahasia untuk Meningkatkan Memori Anda', 'Gordon, Barry', '978-979-099-526-0', 'Esensi', 2006, 'id', 0, 2, 0, 1, '2023-11-20'),
(445, 'Narkoba Sayonara: Sebuah Kesaksian', 'Poyk, Fanny Jonathans', '9789797816780', 'Esensi', 2006, 'id', 0, 2, 0, 1, '2023-11-21'),
(446, '20 Ramuan Esensial Nusantara untuk Cantik dan Bugar', 'Oktovina, Dian Malini', '979-781-415-7', 'Esensi', 2006, 'id', 0, 2, 0, 1, '2023-11-22'),
(447, 'Kamus Matematika Bergambar', 'Large, Tori', '978-979-075-882-7', 'Penerbit Erlangga', 2006, 'id', 0, 2, 0, 1, '2023-11-23'),
(448, 'SOLD! Bagaimana Memudahkan Konsumen Membeli dari Anda', 'Martin, Steve', '9789797812737', 'Penerbit Erlangga', 2006, 'id', 0, 2, 0, 1, '2023-11-24'),
(449, 'English Zone for High School Students Year X', 'Astuti, Eka Mulya', '978-979-075-575-8', 'Penerbit Erlangga', 2006, 'id', 0, 2, 0, 1, '2023-11-25'),
(450, 'Ensiklopedia Sains dan Teknologi 1', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'id', 0, 2, 0, 1, '2023-11-26'),
(451, 'Ensiklopedia Sains dan Teknologi 2', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'id', 0, 2, 0, 1, '2023-11-27'),
(452, 'Ensiklopedia Sains dan Teknologi 3', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'id', 0, 2, 0, 1, '2023-11-28'),
(453, 'Ensiklopedia Sains dan Teknologi 4', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'id', 0, 2, 0, 1, '2023-11-29'),
(454, 'Ensiklopedia Sains dan Teknologi 5', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'id', 0, 2, 0, 1, '2023-11-30'),
(455, 'Ensiklopedia Sains dan Teknologi 6', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'id', 0, 2, 0, 1, '2023-12-01'),
(456, 'Ensiklopedia Sains dan Teknologi 7', 'Tim Penyusun', '978-979-3535-33-3', 'PT Lentera Abadi', 2006, 'id', 0, 2, 0, 1, '2023-12-02'),
(457, 'Tentang Dia', 'Emka, Moammar', '979-3600-54-3', 'GagasMedia', 2005, 'id', 0, 2, 0, 1, '2023-12-03'),
(458, 'Kontinental Atlas Dunia', 'Satria, Iqbal', '978-979-3703-98-5', 'PT Karya Pembina Swajaya', 2005, 'id', 0, 2, 0, 1, '2023-12-04'),
(459, 'Kamus Lengkap Bahasa Indonesia', 'Novia, Windy', '979260615-7', 'Kashiko', 2005, 'id', 0, 2, 0, 1, '2023-12-05'),
(460, 'Intisari Ilmu: Cuaca', 'Nicholson, Sue', '979-741-919-3', 'Erlangga', 2005, 'id', 0, 2, 0, 1, '2023-12-06'),
(461, 'Kiat-Kiat Praktis Meraih Kerja: Peningkatan Daya Saing Diri (Competitiveness) Menghadapi Era Globalisasi', 'Mas, A. A. Gede Raka', '979-722-147-4', 'Paramita', 2005, 'id', 0, 2, 0, 1, '2023-12-07'),
(462, 'Tatanan Upakara lan Upacara Manusa Yajna', 'Wijayananda, Ida Pandhita Mpu Jaya', '979-9257-91-3', 'Paramita', 2005, 'id', 0, 2, 0, 1, '2023-12-08'),
(463, 'Konsepsi Monotheisme dalam Agama Hindu', 'Sastra, Gde Sara', '979-722-179-X', 'Paramita', 2005, 'id', 0, 2, 0, 1, '2023-12-09'),
(464, 'Hari Raya Hindu Bali-India', 'Wikarman, I Nyoman Singgin', '979-722-150-4', 'Paramita', 2005, 'id', 0, 2, 0, 1, '2023-12-10'),
(465, 'Menjadikan Rumah Surga Bermain: Aktivitas Seru untuk Semua Ruangan di Rumah Anda', 'Kelly, Nancy', '9789797814199', 'Penerbit Erlangga', 2005, 'id', 0, 2, 0, 1, '2023-12-11'),
(466, 'Dasar-Dasar Yoga', 'Lalvani, Vimla', '9789797810078', 'Penerbit Erlangga', 2005, 'id', 0, 2, 0, 1, '2023-12-12'),
(467, '50 Rahasia Alami Detoks', 'Kelly, Tracey', '979-781-088-7', 'Penerbit Erlangga', 2005, 'id', 0, 2, 0, 1, '2023-12-13'),
(468, 'Tetap Sehat dengan Produk Makanan Olahan', 'Astawan, Made', '979-668-444-6', 'Tiga Serangkai', 2004, 'id', 0, 2, 0, 1, '2023-12-14'),
(469, 'Kehidupan Berasal Dari Kehidupan', 'Prabhupada, Sri Simad A.C. Bhaktivedanta Swami', '9789799384058', 'Bhaktivedanta Book Trust', 2004, 'id', 0, 2, 0, 1, '2023-12-15'),
(470, 'Teman Curhat Remaja : Seberapa Setiakah si Doi?!', 'Wahyudi, Imam', '979-9636-109-7', 'Diva Press', 2004, 'id', 0, 2, 0, 1, '2023-12-16'),
(471, 'Kamus Lengkap Jepang-Indonesia, Indonesia-Inggris', 'Team Kashiko', '979260601-7', 'Kashiko', 2004, 'id', 0, 2, 0, 1, '2023-12-17'),
(472, 'Dharma Caruban : Tuntunan Membuat Olahan/Ebatan', 'Gautama, W Budha', '979-722-121-0', 'Paramita', 2004, 'id', 0, 2, 0, 1, '2023-12-18'),
(473, 'Lou !', 'Editions, Glenat', '978-979-015-943-3', 'Penerbit Erlangga', 2004, 'id', 0, 2, 0, 1, '2023-12-19'),
(474, 'Saudara Kandung', 'Woolfson, Richard C', '979-741-430-2', 'Penerbit Erlangga', 2004, 'id', 0, 2, 0, 1, '2023-12-20'),
(475, 'Atlas Sejarah Dunia : Memetakan Perjalanan Manusia', 'Black, Jeremy', '978-979-075-707-3', 'Penerbit Erlangga', 2004, 'id', 0, 2, 0, 1, '2023-12-21'),
(476, 'Teen Idol: Idola Remaja', 'Cabot, Meg', '979-22-1158-6', 'PT Gramedia Pustaka Utama', 2004, 'id', 0, 2, 0, 1, '2023-12-22'),
(477, 'Hantu-Hantu Politik dan Matinya Sosial', 'Piliang, Yasraf Amir', '979-668-522-1', 'Tiga Serangkai', 2003, 'id', 0, 2, 0, 1, '2023-12-23'),
(478, 'Di Balik Invasi AS ke Irak', 'Damhuri, Elba', '979-97241-5-5', 'Senayan Abadi Publishing', 2003, 'id', 0, 2, 0, 1, '2023-12-24'),
(479, 'Salah Pilih', 'Iskandar, N.', '979-407-178-1', 'Balai Pustaka', 2003, 'id', 0, 2, 0, 1, '2023-12-25'),
(480, 'Tutur Lebur Gangsa', 'Gautama, Wayan Budha', '979-722-054-0', 'Paramita', 2003, 'id', 0, 2, 0, 1, '2023-12-26'),
(481, 'Bhagawad Gita dalam Bahasa Sanskrta, Inggris dan Indonesia', 'Maswinara, I Wayan', '979-9044-18-9', 'Paramita', 2003, 'id', 0, 2, 0, 1, '2023-12-27'),
(482, 'Fisika Kuantum: Panduan Bagi Pemula ke Dunia Subatomik', 'Gribbin, John', '979-741-673-9', 'Penerbit Erlangga', 2003, 'id', 0, 2, 0, 1, '2023-12-28'),
(483, 'Andrew Grove', 'Heller, Robert', '978-979-741-0032', 'Penerbit Erlangga', 2003, 'id', 0, 2, 0, 1, '2023-12-29'),
(484, 'Adolescence Perkembangan Remaja', 'Santrock, John W.', '979-688-910-2', 'Penerbit Erlangga', 2003, 'id', 0, 2, 0, 1, '2023-12-30'),
(485, 'Latihan Toilet: Panduan melatih anak untuk mengatasi masalah toilet', 'Gilbert, Jane', '9789797415440', 'Penerbit Erlangga', 2003, 'id', 0, 2, 0, 1, '2023-12-31'),
(486, 'Tumbuhan', 'Burnie, David', '978-979-075-740-0', 'Penerbit Erlangga', 2003, 'id', 0, 2, 0, 1, '2024-01-01'),
(487, 'Atlas Dunia', 'Hynes, Margaret', '978-979-015-886-3', 'Penerbit Erlangga', 2003, 'id', 0, 2, 0, 1, '2024-01-02'),
(488, 'The Money Motivator: Tips Kilat Mengelola Keuangan Pribadi', 'Hanna, Paul', '9789796885220', 'Penerbit Erlangga', 2003, 'id', 0, 2, 0, 1, '2024-01-03'),
(489, 'Kamus Visual 4 Bahasa', 'Kindersley, Dorling', '978-979-075-054-8', 'Penerbit Erlangga', 2003, 'id', 0, 2, 0, 1, '2024-01-04'),
(490, 'Charles Handy', 'Heller, Robert', '979-688-968-4', 'Penerbit Erlangga', 2003, 'id', 0, 2, 0, 1, '2024-01-05'),
(491, 'Jagat Raya yang Mengembang : Panduan bagi Pemula ke Peristiwa Big Bang dan di Baliknya', 'Garlick, Mark A.', '979-781-574-9', 'Penerbit Erlangga', 2003, 'id', 0, 2, 0, 1, '2024-01-06'),
(492, 'Berjalan di Atas Air: Menemukan Tuhan di Dalam Hidup Kita', 'Mello, Anthony De', '979-688-282-5', 'Penerbit Erlangga', 2002, 'id', 0, 2, 0, 1, '2024-01-07'),
(493, '100 Rahasia Membuat Hidup Bahagia - Happy People: Hasil Penelitian Ilmuwan tentang Sikap Hidup yang Menciptakan Kebahagiaan', 'Niven, David', '979-688-474-7', 'Penerbit Erlangga', 2002, 'id', 0, 2, 0, 1, '2024-01-08'),
(494, '50 Rahasia Alami Penambah Tenaga', 'Kelly, Tracey', '979-781-091-7', 'Erlangga', 2001, 'id', 0, 2, 0, 1, '2024-01-09'),
(495, 'Dari Orde Baru ke Indonesia Baru lewat Reformasi Total', 'Pamungkas, Sri-Bintang', '979-688-176-4', 'Erlangga', 2001, 'id', 0, 2, 0, 1, '2024-01-10'),
(496, 'Aplikasi Elektromagnetik', 'Shen, Liang Chi', '979-688-083-0', 'Erlangga', 2001, 'id', 0, 2, 0, 1, '2024-01-11'),
(497, 'Alam Kehidupan Sesudah Mati', 'Kamajaya, Made', '979-9257-86-7', 'Paramita', 2001, 'id', 0, 2, 0, 1, '2024-01-12'),
(498, 'English Vocabulary in Use', 'Redman, Stuart', '979-699-111-4', 'Penerbit Erlangga', 2001, 'id', 0, 2, 0, 1, '2024-01-13'),
(499, 'Freud: Seri Siapa Dia?', 'Berry, Ruth', '979-688-216-7', 'Penerbit Erlangga', 2001, 'id', 0, 2, 0, 1, '2024-01-14'),
(500, 'True History of the Kelly Gang', 'Carey, Peter', '978-0-571-20987-3', 'Faber and Faber Limited', 2000, 'id', 0, 2, 0, 1, '2024-01-15'),
(501, 'Arti dan Fungsi Sarana Persembahyangan', 'Wiana, I Ketut', '979-9257-31-x', 'Paramita', 2000, 'id', 0, 2, 0, 1, '2024-01-16'),
(502, 'Merintis RI yang Manusiawi: Republik yang Adil dan Beradab', 'Mangunwijaya, Y.B.', '979-444-413-8', 'Penerbit Erlangga', 1999, 'id', 0, 2, 0, 1, '2024-01-17'),
(503, '50 Rahasia Alami Tidur yang Berkualitas', 'Kelly, Tracey', '978-781-489-0', 'Erlangga', 1999, 'id', 0, 2, 0, 1, '2024-01-18'),
(504, 'Wrhaspati Tattwa', 'Putra, I.G.A.G.', '979-9044-34-0', 'Paramita', 1998, 'id', 0, 2, 0, 1, '2024-01-19'),
(505, 'Titeuf', 'Editions, Glenat', '978-979-033-323-9', 'Penerbit Erlangga', 1994, 'id', 0, 2, 0, 1, '2024-01-20'),
(506, 'Bahasa Jepang Sehari-Hari: Bagaimana Berkomunikasi Secara Cepat Tanpa Keraguan dan Rasa Takut', 'Mente, Boye Lafayette De', '979-8295-86-2', 'Kesaint Blanc', 1992, 'id', 0, 2, 0, 1, '2024-01-21'),
(507, 'Penyakit Mulut (Clinical Oral Medicine)', 'Gayford, J. J.', '979-448-101-7', 'Penerbit Buku Kedokteran EGC', 1990, 'id', 0, 2, 0, 1, '2024-01-22'),
(508, 'Deteksi Kepribadian', 'Ghazali, H.A. Muin', '978-602-217-283-3', 'PT Bumi Aksara', 2016, 'id', 80000, 0, 0, 2, '2022-10-19'),
(511, 'Jokowi: Menuju Cahaya', 'Endah, Alberthiene', '978-602-320-680-3', 'PT Tiga Serangkai Pustaka Mandiri', 2019, 'id', 112000, 0, 0, 2, '2022-09-18'),
(513, 'Terapi Berpikir Positif', 'Elfiky, Ibrahim', '978-602-290-073-3', 'PT. Serambi Ilmu Semesta', 2018, 'id', 65000, 0, 0, 2, '2022-09-21'),
(517, 'Kamus Budaya Bali', 'Sukayana, I Nengah', '978-979-069-158-2', 'Balai Bahasa Bali', 2016, 'id', 50000, 0, 0, 2, '2022-10-21'),
(519, 'Bunga Merah : Antologi Puisi', 'Suastini, Ni Putu Putri', '978-602-5529-32-0', 'PT Percetakan Bali', 2020, 'id', 150000, 0, 0, 2, '2022-09-09'),
(520, 'Satua Bali I Belog', 'Supatra, I N. K.', '978-979-617-044-9', 'CV. Kayumas Agung', 2018, 'id', 19000, 0, 0, 2, '2022-09-19'),
(521, 'Kamus Besar Bahasa Indonesia', 'Sunendar, Dadang', '978-602-437-171-5', 'CV Adi Perkasa', 2018, 'id', 425000, 0, 0, 2, '2022-09-22'),
(522, '4G Guru Gaul Guru Galau', 'Dedew', '978-602-366-112-1', 'Tiga Ananda', 2016, 'id', 15000, 0, 0, 2, '2022-10-22'),
(523, 'Membentang Fakta Dunia Sosial Sosiologi Kelas XII', 'Fritz H. S. Damanik', '978-602-217-740-1', 'Bumi Aksara ', 2016, 'id', 75000, 0, 0, 2, '2022-09-04'),
(524, 'Jelajah Dunia Geografi Kelas XII', 'Pabundu Tika', '978-602-217-748-7', 'Bumi Aksara', 2016, 'id', 147000, 0, 0, 2, '2022-09-04'),
(525, 'Buku Siswa : Bahasa Dan Sastra Inggris Kelas XII', 'Otong Setiawan', '978-602-277-623-9', 'Yrama Widya', 2015, 'id', 77000, 0, 0, 2, '2022-09-04'),
(527, 'Buku Pendidikan Pancasila dan Kewarganegaraan SMA/MA Kelas 10 K-Merdeka Sekolah Penggerak', 'Hatim Gazali', '978-602-244-321-6', 'KEMENDIKBUD', 2021, 'id', 36000, 0, 0, 2, '2022-09-04'),
(528, 'AKUNTANSI UNTUK SMK/MAK & SMA/MA', 'Hery', '978-602-251-989-8', 'GRASINDO', 2018, 'id', 38000, 0, 0, 2, '2022-09-04'),
(529, 'Buku Ajar Informatika Tingkat SMA/MA Kelas 10 (Edisi Revisi)', 'Tim Ikatan Guru TIK PGR', '979-623-01-1419-9', 'Andi', 2021, 'id', 111000, 0, 0, 2, '2022-09-04'),
(530, 'NIHONGO KIRA KIRA BAHASA JEPANG UNTUK SMA/MA KELAS X', 'Evi Lusiana', '004-495-007-0', 'Erlangga', 2018, 'id', 119000, 0, 0, 2, '2022-09-04'),
(531, 'PENDIDIKAN JASMANI OLAHRAGA DAN KESEHATAN UNTUK SMA KELAS 1 ', 'Muhajir', '978-602-298-983-7', ' Erlangga', 2016, 'id', 118000, 0, 0, 2, '2022-09-04'),
(532, 'Buku Seni Budaya Kelas XI SMA ', 'Sugiyanto', '978-602-434-171-8', 'Erlangga ', 2016, 'id', 112000, 0, 0, 2, '2022-09-04'),
(533, ' CERDAS MENJAWAB SOAL SEJARAH SMA MA SMK', 'Samsul Farid dan Muhamad husnu', ' 978-623-205-125-6', 'YRAMA WIDYA', 2018, 'id', 80000, 0, 0, 2, '2022-09-06'),
(534, 'MASTER BOOK KIMIA X XI XII REVISI / OLIMPIADE SAINS NASIONAL KIMIA', 'Budiman Anwar', '978-602-374-952-2', 'YRAMA WIDYA', 2019, 'id', 179000, 0, 0, 2, '2022-09-06'),
(535, 'Big Book Fisika SMA Kelas X, XI, & XII', 'Supadi, R.Maas Shobirin,  Dewi Rossalia', '978-602-6992-70-3', 'Cmedia', 2017, 'id', 80000, 0, 0, 2, '2022-09-06'),
(536, 'BIOLOGI untuk SMA MA Kelas X Jilid 1', 'Irnaningtyas', '9786022417859', 'Erlangga', 2017, 'id', 172000, 0, 0, 2, '2022-09-06'),
(537, 'New Edition Big Book Matematika SMA Kelas X, XI, & XII', 'Sobirin', '978-602-6992-72-7', 'CMedia', 2017, 'id', 130000, 0, 0, 2, '2022-09-06'),
(538, 'All New Mega Bank Soal Fisika SMA Kelas X, XI, & XII', 'Tim Guru Eduka', '978-602-6992-50-5', 'CMedia', 2018, 'id', 155000, 0, 0, 2, '2022-09-06'),
(539, 'Kreatif Pendidikan Agama Hindu dan Budi Pekerti Kls IV ', 'Dewa Artana', '978-602-295-824-6', ' Penerbit Duta', 2017, 'id', 80000, 0, 0, 2, '2022-09-06'),
(540, 'MASTER BOOK KIMIA X XI XII REVISI / OLIMPIADE SAINS NASIONAL KIMIA', 'Budiman Anwar', '978-602-374-952-2', 'YRAMA WIDYA', 2019, 'id', 0, 2, 0, 1, '2022-09-06'),
(541, 'Buku Seni Budaya Kelas XI SMA ', 'Sugiyanto', '978-602-434-171-8', 'Erlangga ', 2016, 'id', 0, 2, 0, 1, '2022-09-04'),
(542, 'Kepemimpinan Hindu', 'Ariasna, Ketut Gede', '979-9044-62-6', 'Paramita', 2019, 'id', 0, 2, 0, 1, '2023-08-08'),
(543, 'Coding Sakti Pemrograman Web HTML, CSS, PHP, MYSQL & JAVASCRIPT', 'Didik Setiawan', ' 978-602-6673-34-3', 'ANAK HEBAT INDONESIA', 2017, 'id', 84000, 0, 0, 2, '2022-09-06'),
(544, 'Microsoft Office Word, Excel, Powerpoint untuk Administrasi Perkantoran', 'Madcoms', '978-979-29-5223-0', ' Andi Publisher', 2017, 'id', 71000, 0, 0, 2, '2022-09-06'),
(545, 'Rusak Saja Buku Ini', 'sony adams', '978-623-7210-65-8', 'Pengembangan Diri', 2016, 'id', 50000, 0, 0, 2, '2022-09-06'),
(546, 'Siapa Aku? Apa Bakatku?', 'PRABU GANENDRA', ' 978-602-51994-3-1', 'Hikmah Publishing', 2018, 'id', 30000, 0, 0, 2, '2022-09-06'),
(547, 'PANDUAN TERLENGKAP BELAJAR BAHASA KOREA', 'Yodi Indrayadi', '978-602-1201-82-4', 'Rene Book', 2020, 'id', 125000, 0, 0, 2, '2022-09-06'),
(548, 'KAMUS PRAKTIS KANJI N5-N4', 'Irma Nirmala', '978-623-235-026-7', 'GENTA GROUP', 2020, 'id', 11000, 0, 0, 2, '2022-09-06');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_curr_tahapan`
--

INSERT INTO `tb_curr_tahapan` (`id`, `tahapan`, `periode`, `tgl_selesai_input`, `anggaran`) VALUES
(1, 2, 0, '2024-09-01', 80000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_operator`
--

CREATE TABLE `tb_operator` (
  `id_user` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `nama` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `jenis_user` varchar(15) NOT NULL,
  `unit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_operator`
--

INSERT INTO `tb_operator` (`id_user`, `username`, `nama`, `password`, `jenis_user`, `unit`) VALUES
(1, 'kim', 'Kadek Aryana Dwi Putra,S.Kom.,M.A', 'fb1eaf2bd9f2a7013602be235c305e7a', 'admin', 'Admin '),
(2, 'fisip', 'Admin FISIP', '6ce566b74c3d4a9320ea15804dbb6e87', 'user', 'FISIP UNUD'),
(3, 'fmipa', 'Admin FMIPA', '640a10b73e5d19e72f5589be18d642f2', 'user', 'FMIPA UNUD'),
(4, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Admin ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(12) NOT NULL,
  `Keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id_status`, `nama_status`, `Keterangan`) VALUES
(1, 'database', 'Buku yang terdapat di database Perpustakaan'),
(2, 'Katalog', 'Buku yang menjadi katalog'),
(3, 'Proses', 'Buku yang masih dalam proses seleksi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `realname` varchar(100) NOT NULL,
  `passwd` varchar(64) NOT NULL,
  `2fa` text DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) DEFAULT NULL,
  `social_media` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` char(15) DEFAULT NULL,
  `groups` varchar(200) DEFAULT NULL,
  `admin_template` text DEFAULT NULL,
  `forgot` varchar(80) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `2fa`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `admin_template`, `forgot`, `input_date`, `last_update`) VALUES
(1, 'kim', 'Kim', '$2y$10$9RUgC4YL8kW5zkGRtQg06utPIjTPLtyGiUGVi8KaJgjO5CfI4Lj7W', NULL, NULL, NULL, NULL, NULL, '2024-06-10 20:41:46', '::1', 'a:1:{i:0;s:1:\"1\";}', NULL, NULL, '2023-12-24', '2023-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2023-12-24', '2023-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_count`
--

CREATE TABLE `visitor_count` (
  `visitor_id` int(11) NOT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `member_name` varchar(255) NOT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `room_code` varchar(5) DEFAULT NULL,
  `checkin_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitor_count`
--

INSERT INTO `visitor_count` (`visitor_id`, `member_id`, `member_name`, `institution`, `room_code`, `checkin_date`) VALUES
(1, '10001', 'Kadek aryana', 'Udayana', NULL, '2024-05-27 11:56:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup_log`
--
ALTER TABLE `backup_log`
  ADD PRIMARY KEY (`backup_log_id`);

--
-- Indexes for table `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`),
  ADD KEY `biblio_flag_idx` (`opac_hide`,`promoted`),
  ADD KEY `rda_idx` (`content_type_id`,`media_type_id`,`carrier_type_id`),
  ADD KEY `uid` (`uid`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `biblio_attachment`
--
ALTER TABLE `biblio_attachment`
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `biblio_id_2` (`biblio_id`,`file_id`);

--
-- Indexes for table `biblio_author`
--
ALTER TABLE `biblio_author`
  ADD PRIMARY KEY (`biblio_id`,`author_id`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `biblio_custom`
--
ALTER TABLE `biblio_custom`
  ADD PRIMARY KEY (`biblio_id`);

--
-- Indexes for table `biblio_log`
--
ALTER TABLE `biblio_log`
  ADD PRIMARY KEY (`biblio_log_id`),
  ADD KEY `realname` (`realname`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `action` (`action`),
  ADD KEY `affectedrow` (`affectedrow`),
  ADD KEY `date` (`date`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `rawdata` (`rawdata`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `additional_information` (`additional_information`);

--
-- Indexes for table `biblio_mark`
--
ALTER TABLE `biblio_mark`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `member_id_idx` (`member_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indexes for table `biblio_relation`
--
ALTER TABLE `biblio_relation`
  ADD PRIMARY KEY (`biblio_id`,`rel_biblio_id`);

--
-- Indexes for table `biblio_topic`
--
ALTER TABLE `biblio_topic`
  ADD PRIMARY KEY (`biblio_id`,`topic_id`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `bp_history_surket`
--
ALTER TABLE `bp_history_surket`
  ADD PRIMARY KEY (`id_surket`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_path` (`content_path`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_title` (`content_title`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_desc` (`content_desc`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_name` (`file_name`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_dir` (`file_dir`);

--
-- Indexes for table `files_read`
--
ALTER TABLE `files_read`
  ADD PRIMARY KEY (`filelog_id`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fines_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`),
  ADD UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`);

--
-- Indexes for table `index_documents`
--
ALTER TABLE `index_documents`
  ADD PRIMARY KEY (`document_id`,`word_id`,`location`),
  ADD KEY `document_id` (`document_id`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `index_words`
--
ALTER TABLE `index_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `uid` (`uid`),
  ADD KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indexes for table `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`),
  ADD KEY `fk_serial` (`serial_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `input_date` (`input_date`,`last_update`,`uid`);

--
-- Indexes for table `loan_history`
--
ALTER TABLE `loan_history`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `member_name` (`member_name`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `member_type_id` (`member_type_id`);

--
-- Indexes for table `member_custom`
--
ALTER TABLE `member_custom`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `mst_author`
--
ALTER TABLE `mst_author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_name` (`author_name`,`authority_type`);

--
-- Indexes for table `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`carrier_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  ADD PRIMARY KEY (`coll_type_id`),
  ADD UNIQUE KEY `coll_type_name` (`coll_type_name`);

--
-- Indexes for table `mst_content_type`
--
ALTER TABLE `mst_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type` (`content_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_custom_field`
--
ALTER TABLE `mst_custom_field`
  ADD PRIMARY KEY (`dbfield`),
  ADD UNIQUE KEY `field_id` (`field_id`);

--
-- Indexes for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Indexes for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  ADD PRIMARY KEY (`gmd_id`),
  ADD UNIQUE KEY `gmd_name` (`gmd_name`),
  ADD UNIQUE KEY `gmd_code` (`gmd_code`);

--
-- Indexes for table `mst_item_status`
--
ALTER TABLE `mst_item_status`
  ADD PRIMARY KEY (`item_status_id`),
  ADD UNIQUE KEY `item_status_name` (`item_status_name`);

--
-- Indexes for table `mst_label`
--
ALTER TABLE `mst_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_name` (`label_name`);

--
-- Indexes for table `mst_language`
--
ALTER TABLE `mst_language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Indexes for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  ADD PRIMARY KEY (`loan_rules_id`);

--
-- Indexes for table `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Indexes for table `mst_media_type`
--
ALTER TABLE `mst_media_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`media_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  ADD PRIMARY KEY (`member_type_id`),
  ADD UNIQUE KEY `member_type_name` (`member_type_name`);

--
-- Indexes for table `mst_module`
--
ALTER TABLE `mst_module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_name` (`module_name`,`module_path`);

--
-- Indexes for table `mst_place`
--
ALTER TABLE `mst_place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Indexes for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Indexes for table `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mst_servers`
--
ALTER TABLE `mst_servers`
  ADD PRIMARY KEY (`server_id`);

--
-- Indexes for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Indexes for table `mst_topic`
--
ALTER TABLE `mst_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_type`);

--
-- Indexes for table `mst_visitor_room`
--
ALTER TABLE `mst_visitor_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_code_unq` (`unique_code`),
  ADD KEY `unique_code_idx` (`unique_code`);

--
-- Indexes for table `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  ADD PRIMARY KEY (`vocabolary_id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `references_idx` (`member_id`,`biblio_id`),
  ADD KEY `item_code_idx` (`item_code`);

--
-- Indexes for table `search_biblio`
--
ALTER TABLE `search_biblio`
  ADD UNIQUE KEY `biblio_id` (`biblio_id`),
  ADD KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  ADD KEY `add_indexes2` (`opac_hide`,`promoted`),
  ADD KEY `rda_indexes` (`carrier_type`,`media_type`,`content_type`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `title` (`title`,`series_title`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `author` (`author`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `topic` (`topic`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `location` (`location`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `items` (`items`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `collection_types` (`collection_types`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `fk_serial_biblio` (`biblio_id`),
  ADD KEY `fk_serial_gmd` (`gmd_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `stock_take`
--
ALTER TABLE `stock_take`
  ADD PRIMARY KEY (`stock_take_id`);

--
-- Indexes for table `stock_take_item`
--
ALTER TABLE `stock_take_item`
  ADD PRIMARY KEY (`stock_take_id`,`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `status` (`status`),
  ADD KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `id` (`id`);

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
-- Indexes for table `tb_operator`
--
ALTER TABLE `tb_operator`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `realname` (`realname`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `room_code` (`room_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup_log`
--
ALTER TABLE `backup_log`
  MODIFY `backup_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `biblio_log`
--
ALTER TABLE `biblio_log`
  MODIFY `biblio_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `bp_history_surket`
--
ALTER TABLE `bp_history_surket`
  MODIFY `id_surket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `files_read`
--
ALTER TABLE `files_read`
  MODIFY `filelog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `fines_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `index_words`
--
ALTER TABLE `index_words`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_author`
--
ALTER TABLE `mst_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  MODIFY `coll_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_content_type`
--
ALTER TABLE `mst_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mst_custom_field`
--
ALTER TABLE `mst_custom_field`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  MODIFY `gmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `mst_label`
--
ALTER TABLE `mst_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  MODIFY `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_media_type`
--
ALTER TABLE `mst_media_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  MODIFY `member_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_module`
--
ALTER TABLE `mst_module`
  MODIFY `module_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_place`
--
ALTER TABLE `mst_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mst_servers`
--
ALTER TABLE `mst_servers`
  MODIFY `server_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_topic`
--
ALTER TABLE `mst_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mst_visitor_room`
--
ALTER TABLE `mst_visitor_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  MODIFY `vocabolary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serial`
--
ALTER TABLE `serial`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `stock_take`
--
ALTER TABLE `stock_take`
  MODIFY `stock_take_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_bantu_pilih`
--
ALTER TABLE `tb_bantu_pilih`
  MODIFY `id_pilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

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
-- AUTO_INCREMENT for table `tb_operator`
--
ALTER TABLE `tb_operator`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
