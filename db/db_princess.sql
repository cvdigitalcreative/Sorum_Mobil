-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2018 at 09:14 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_princess`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(10, 'Home Header', '2018-04-25 03:59:09', 1, 'Administrator', 1, NULL),
(11, 'Home_gallery1', '2018-04-26 09:53:28', 1, 'Administrator', 1, 'PRINCESS_HOTEL_LOGO_BLACK3.png'),
(12, 'Home_gallery2', '2018-04-26 10:15:11', 1, 'Administrator', 1, 'PRINCESS_HOTEL_LOGO_BLACK6.png'),
(13, 'Home_gallery3', '2018-04-26 10:16:55', 1, 'Administrator', 1, 'PRINCESS_HOTEL_LOGO_BLACK4.png'),
(14, 'Home_gallery4', '2018-04-26 10:17:10', 1, 'Administrator', 1, 'PRINCESS_HOTEL_LOGO_BLACK5.png'),
(15, 'Home_gallery5', '2018-04-26 10:17:59', 1, 'Administrator', 1, 'PRINCESS_HOTEL_LOGO_BLACK7.png'),
(16, 'Home_gallery6', '2018-04-26 10:18:18', 1, 'Administrator', 1, 'PRINCESS_HOTEL_LOGO_BLACK8.png'),
(17, 'NeoPC header', '2018-04-27 03:29:54', 1, 'Administrator', 1, 'PRINCESS_HOTEL_LOGO_BLACK9.png'),
(19, 'Wing_Terrace', '2018-04-27 07:27:29', 1, 'Administrator', 7, 'PRINCESS_HOTEL_LOGO_BLACK11.png'),
(20, 'WT header', '2018-04-27 12:05:34', 1, 'Administrator', 1, 'PRINCESS_HOTEL_LOGO_BLACK10.png'),
(21, 'NeoPC', '2018-04-27 12:11:18', 1, 'Administrator', 6, 'PRINCESS_HOTEL_LOGO_BLACK12.png'),
(22, 'meeting', '2018-04-27 12:55:04', 1, 'Administrator', 6, 'DSC00172_(Large)1.jpeg'),
(23, 'Gathering', '2018-04-27 16:09:07', 1, 'Administrator', 6, 'DSC00132_(Large).jpeg'),
(24, 'Cafe_header', '2018-04-28 13:01:22', 1, 'Administrator', 1, 'DSC01124_(Large)1.jpeg'),
(25, 'cafe', '2018-04-28 13:04:39', 1, 'Administrator', 5, 'DSC01107_(Large).jpeg'),
(26, 'Superior', '2018-04-28 13:54:58', 1, 'Administrator', 10, 'DSC01025_(Large).jpeg'),
(27, 'room header', '2018-04-28 14:34:35', 1, 'Administrator', 1, 'PRINCESS_HOTEL_LOGO_BLACK13.png'),
(28, 'Deluxe A', '2018-04-28 16:24:27', 1, 'Administrator', 11, '1_edit_(Large)4.jpg'),
(29, 'Deluxe B', '2018-04-28 16:31:35', 1, 'Administrator', 5, 'DSC00857_(Large).jpeg'),
(30, 'Deluxe Twin', '2018-04-28 16:32:19', 1, 'Administrator', 4, 'DSC09957_(Large).jpeg'),
(31, 'Premiere', '2018-04-28 16:45:12', 1, 'Administrator', 10, 'DSC01015_(Large)2.jpeg'),
(32, 'Junior Suite', '2018-04-28 16:45:48', 1, 'Administrator', 6, 'DSC00063_(Large).jpeg'),
(33, 'Prince Suite', '2018-04-28 16:46:18', 1, 'Administrator', 9, 'DSC01049_(Large).jpeg'),
(34, 'Princess Suite', '2018-04-28 16:47:33', 1, 'Administrator', 16, 'DSC00944_(Large).jpeg'),
(35, 'Room Facility row 1', '2018-04-29 06:46:43', 1, 'Administrator', 8, 'PRINCESS_HOTEL_LOGO_BLACK15.png'),
(36, 'Room Facility row 2', '2018-04-29 07:06:42', 1, 'Administrator', 0, 'PRINCESS_HOTEL_LOGO_BLACK24.png'),
(37, 'Room Facility row 3', '2018-04-29 07:07:07', 1, 'Administrator', 0, 'PRINCESS_HOTEL_LOGO_BLACK25.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_deskripsi` text,
  `galeri_link` varchar(40) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_deskripsi`, `galeri_link`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(3, 'WELCOME TO PRINCESS HOTEL', '"We welcome you our valued  guests to our small but lively hotel. We will give the best to make you feel like home”\r\n\r\n - All Staff & Crew - ', NULL, '2018-04-25 05:47:00', 'DSC00112_(Large).jpeg', 10, 1, 'Administrator'),
(4, 'G1', '', NULL, '2018-04-26 10:11:09', 'DSC01072_(Large).jpeg', 11, 1, 'Administrator'),
(5, 'G2', '', NULL, '2018-04-26 10:11:31', 'DSC01124_(Large).jpeg', 16, 1, 'Administrator'),
(6, 'G3', '', NULL, '2018-04-26 10:11:58', 'DSC00119_(Large).jpeg', 15, 1, 'Administrator'),
(7, 'G4', '', NULL, '2018-04-26 10:12:24', 'DSC00172_(Large).jpeg', 14, 1, 'Administrator'),
(8, 'G5', '', NULL, '2018-04-26 10:13:23', 'DSC00093_(Large).jpeg', 13, 1, 'Administrator'),
(9, 'G6', '', NULL, '2018-04-26 10:13:46', 'DSC01117_(Large).jpeg', 12, 1, 'Administrator'),
(10, 'NeoPC', 'Enjoy Your Music', NULL, '2018-04-27 03:31:07', 'DSC01053_(Large)1.jpeg', 17, 1, 'Administrator'),
(12, 'W2', '', NULL, '2018-04-27 07:29:35', 'DSC01055_(Large).jpeg', 19, 1, 'Administrator'),
(13, 'W3', '', NULL, '2018-04-27 07:29:52', 'DSC01069_(Large).jpeg', 19, 1, 'Administrator'),
(14, 'W4', '', NULL, '2018-04-27 07:30:10', 'DSC01053_(Large)2.jpeg', 19, 1, 'Administrator'),
(15, 'W5', '', NULL, '2018-04-27 07:30:33', 'DSC01064_(Large).jpeg', 19, 1, 'Administrator'),
(16, 'W1', '', NULL, '2018-04-27 07:31:07', 'DSC01078_(Large).jpeg', 19, 1, 'Administrator'),
(17, 'W6', '', NULL, '2018-04-27 07:31:25', 'DSC01087_(Large).jpeg', 19, 1, 'Administrator'),
(18, 'W7', '', NULL, '2018-04-27 07:31:42', 'DSC01096_(Large).jpeg', 19, 1, 'Administrator'),
(19, 'Wings Terrace', 'Relaxing your mind', NULL, '2018-04-27 12:06:31', 'DSC01064_(Large)1.jpeg', 20, 1, 'Administrator'),
(20, 'N1', '', NULL, '2018-04-27 12:12:47', 'DSC01053_(Large)3.jpeg', 21, 1, 'Administrator'),
(21, 'N2', '', NULL, '2018-04-27 12:13:01', 'DSC01059_(Large)1.jpeg', 21, 1, 'Administrator'),
(22, 'N3', '', NULL, '2018-04-27 12:13:21', 'DSC01072_(Large)1.jpeg', 21, 1, 'Administrator'),
(23, 'N4', '', NULL, '2018-04-27 12:13:37', 'DSC01094_(Large).jpeg', 21, 1, 'Administrator'),
(24, 'N5', '', NULL, '2018-04-27 12:13:50', 'DSC01089_(Large).jpeg', 21, 1, 'Administrator'),
(25, 'N6', '', NULL, '2018-04-27 12:14:05', 'DSC01076_(Large).jpeg', 21, 1, 'Administrator'),
(26, 'M1', '', NULL, '2018-04-27 12:55:25', 'DSC00152_(Large).jpeg', 22, 1, 'Administrator'),
(27, 'M2', '', NULL, '2018-04-27 12:55:39', 'DSC00154_(Large).jpeg', 22, 1, 'Administrator'),
(28, 'M3', '', NULL, '2018-04-27 12:55:50', 'DSC00155_(Large).jpeg', 22, 1, 'Administrator'),
(29, 'M4', '', NULL, '2018-04-27 12:56:06', 'DSC00156_(Large).jpeg', 22, 1, 'Administrator'),
(30, 'M5', '', NULL, '2018-04-27 12:56:21', 'DSC00161_(Large).jpeg', 22, 1, 'Administrator'),
(31, 'M6', '', NULL, '2018-04-27 12:56:38', 'DSC00162_(Large)1.jpeg', 22, 1, 'Administrator'),
(32, 'R1', '', NULL, '2018-04-27 16:19:14', 'DSC00119_(Large)1.jpeg', 23, 1, 'Administrator'),
(33, 'R2', '', NULL, '2018-04-27 16:19:32', 'DSC00123_(Large).jpeg', 23, 1, 'Administrator'),
(34, 'R3', '', NULL, '2018-04-27 16:19:53', 'DSC00122_(Large).jpeg', 23, 1, 'Administrator'),
(35, 'R4', '', NULL, '2018-04-27 16:21:44', 'DSC00124_(Large).jpeg', 23, 1, 'Administrator'),
(36, 'R5', '', NULL, '2018-04-27 16:22:00', 'DSC00126_(Large)1.jpeg', 23, 1, 'Administrator'),
(37, 'R6', '', NULL, '2018-04-27 16:22:20', 'DSC00132_(Large)1.jpeg', 23, 1, 'Administrator'),
(38, 'Putri Selako', 'Make Your Stomach Happy!!!', NULL, '2018-04-28 13:02:05', 'DSC01124_(Large)2.jpeg', 24, 1, 'Administrator'),
(39, 'C1', '', NULL, '2018-04-28 13:04:56', 'DSC01106_(Large).jpeg', 25, 1, 'Administrator'),
(40, 'C2', '', NULL, '2018-04-28 13:05:10', 'DSC01104_(Large).jpeg', 25, 1, 'Administrator'),
(41, 'C3', '', NULL, '2018-04-28 13:05:26', 'DSC01106_(Large)1.jpeg', 25, 1, 'Administrator'),
(42, 'C4', '', NULL, '2018-04-28 13:05:39', 'DSC01107_(Large)1.jpeg', 25, 1, 'Administrator'),
(43, 'C5', '', NULL, '2018-04-28 13:05:51', 'DSC01124_(Large)3.jpeg', 25, 1, 'Administrator'),
(44, 'S1', '', NULL, '2018-04-28 14:23:20', 'DSC01027_(Large).jpeg', 26, 1, 'Administrator'),
(45, 'S2', '', NULL, '2018-04-28 14:23:35', 'DSC01029_(Large).jpeg', 26, 1, 'Administrator'),
(46, 'S3', '', NULL, '2018-04-28 14:23:51', 'DSC09934_(Large).jpeg', 26, 1, 'Administrator'),
(47, 'S4', '', NULL, '2018-04-28 14:24:15', 'DSC09936_(Large).jpeg', 26, 1, 'Administrator'),
(48, 'S5', '', NULL, '2018-04-28 14:24:32', 'DSC09939_(Large).jpeg', 26, 1, 'Administrator'),
(49, 'S6', '', NULL, '2018-04-28 14:25:28', 'DSC09940_(Large).jpeg', 26, 1, 'Administrator'),
(50, 'S7', '', NULL, '2018-04-28 14:25:43', 'DSC09942_(Large).jpeg', 26, 1, 'Administrator'),
(51, 'S8', '', NULL, '2018-04-28 14:26:31', 'DSC09946_(Large).jpeg', 26, 1, 'Administrator'),
(52, 'S9', '', NULL, '2018-04-28 14:26:59', 'DSC09947_(Large).jpeg', 26, 1, 'Administrator'),
(53, 'Room List', 'Deskripsi bisa diubah', NULL, '2018-04-28 14:35:22', 'PRINCESS_HOTEL_LOGO_BLACK14.png', 27, 1, 'Administrator'),
(54, 'DA1', '', NULL, '2018-04-28 16:25:01', '1_edit_(Large)5.jpg', 28, 1, 'Administrator'),
(55, 'DA2', '', NULL, '2018-04-28 16:25:25', 'DSC00895_(Large).jpeg', 28, 1, 'Administrator'),
(56, 'DA3', '', NULL, '2018-04-28 16:25:52', 'DSC00900_(Large).jpeg', 28, 1, 'Administrator'),
(57, 'DA4', '', NULL, '2018-04-28 16:26:14', 'DSC00901_(Large).jpeg', 28, 1, 'Administrator'),
(58, 'DA5', '', NULL, '2018-04-28 16:26:50', 'DSC00919_(Large).jpeg', 28, 1, 'Administrator'),
(59, 'DA6', '', NULL, '2018-04-28 16:27:25', 'DSC09736_(Large).jpeg', 28, 1, 'Administrator'),
(60, 'DA7', '', NULL, '2018-04-28 16:28:15', 'DSC09757_(Large).jpeg', 28, 1, 'Administrator'),
(61, 'DA8', '', NULL, '2018-04-28 16:28:41', 'DSC09776_(Large).jpeg', 28, 1, 'Administrator'),
(62, 'DA9', '', NULL, '2018-04-28 16:29:07', 'DSC09780_(Large).jpeg', 28, 1, 'Administrator'),
(63, 'DA10', '', NULL, '2018-04-28 16:29:41', 'DSC01145_(Large).jpeg', 28, 1, 'Administrator'),
(64, 'DA11', '', NULL, '2018-04-28 16:30:06', 'DSC01148_(Large).jpeg', 28, 1, 'Administrator'),
(65, 'S10', '', NULL, '2018-04-28 16:30:33', 'DSC01145_(Large)1.jpeg', 26, 1, 'Administrator'),
(66, 'DB1', '', NULL, '2018-04-28 16:33:01', 'DSC00882_(Large).jpeg', 29, 1, 'Administrator'),
(67, 'DB2', '', NULL, '2018-04-28 16:33:25', 'DSC00866_(Large).jpeg', 29, 1, 'Administrator'),
(68, 'DB3', '', NULL, '2018-04-28 16:33:55', 'DSC00857_(Large)1.jpeg', 29, 1, 'Administrator'),
(69, 'DB4', '', NULL, '2018-04-28 16:34:16', 'DSC00860_(Large).jpeg', 29, 1, 'Administrator'),
(70, 'DB5', '', NULL, '2018-04-28 16:34:46', 'DSC00861_(Large).jpeg', 29, 1, 'Administrator'),
(71, 'DT1', '', NULL, '2018-04-28 16:35:18', 'DSC09958_(Large).jpeg', 30, 1, 'Administrator'),
(72, 'DT2', '', NULL, '2018-04-28 16:35:35', 'DSC09976_(Large).jpeg', 30, 1, 'Administrator'),
(73, 'DT3', '', NULL, '2018-04-28 16:36:12', 'DSC09960_(Large).jpeg', 30, 1, 'Administrator'),
(74, 'DT4', '', NULL, '2018-04-28 16:36:35', 'DSC09954_(Large).jpeg', 30, 1, 'Administrator'),
(75, 'P1', '', NULL, '2018-04-28 16:48:16', 'DSC01015_(Large)3.jpeg', 31, 1, 'Administrator'),
(76, 'P2', '', NULL, '2018-04-28 16:48:36', 'DSC01020_(Large).jpeg', 31, 1, 'Administrator'),
(77, 'P3', '', NULL, '2018-04-28 16:48:56', 'DSC09853_(Large).jpeg', 31, 1, 'Administrator'),
(78, 'P4', '', NULL, '2018-04-28 16:49:24', 'DSC09857_(Large).jpeg', 31, 1, 'Administrator'),
(79, 'P5', '', NULL, '2018-04-28 16:49:59', 'DSC09882_(Large).jpeg', 31, 1, 'Administrator'),
(80, 'P6', '', NULL, '2018-04-28 16:50:23', 'DSC09890_(Large).jpeg', 31, 1, 'Administrator'),
(81, 'P7', '', NULL, '2018-04-28 16:50:58', 'DSC09900_(Large).jpeg', 31, 1, 'Administrator'),
(82, 'P8', '', NULL, '2018-04-28 16:51:18', 'DSC09899_(Large).jpeg', 31, 1, 'Administrator'),
(83, 'P9', '', NULL, '2018-04-28 16:51:47', 'DSC01145_(Large)2.jpeg', 31, 1, 'Administrator'),
(84, 'P10', '', NULL, '2018-04-28 16:52:00', 'DSC01150_(Large).jpeg', 31, 1, 'Administrator'),
(85, 'J1', '', NULL, '2018-04-28 16:52:25', 'DSC00054_(Large).jpeg', 32, 1, 'Administrator'),
(86, 'J2', '', NULL, '2018-04-28 16:53:08', 'DSC01131_(Large).jpeg', 32, 1, 'Administrator'),
(87, 'J3', '', NULL, '2018-04-28 16:53:47', 'DSC01137_(Large).jpeg', 32, 1, 'Administrator'),
(88, 'J4', '', NULL, '2018-04-28 16:54:33', 'DSC00065_(Large).jpeg', 32, 1, 'Administrator'),
(89, 'J5', '', NULL, '2018-04-28 16:54:51', 'DSC01145_(Large)3.jpeg', 32, 1, 'Administrator'),
(90, 'J6', '', NULL, '2018-04-28 16:55:48', 'DSC01150_(Large)1.jpeg', 32, 1, 'Administrator'),
(91, 'PR1', '', NULL, '2018-04-28 16:57:36', 'DSC00019_(Large)1.jpeg', 33, 1, 'Administrator'),
(92, 'PR2', '', NULL, '2018-04-28 16:57:52', 'DSC00013_(Large).jpeg', 33, 1, 'Administrator'),
(93, 'PR3', '', NULL, '2018-04-28 16:58:12', 'DSC00035_(Large).jpeg', 33, 1, 'Administrator'),
(94, 'PR4', '', NULL, '2018-04-28 16:58:29', 'DSC01034_(Large).jpeg', 33, 1, 'Administrator'),
(95, 'PR5', '', NULL, '2018-04-28 16:59:00', 'DSC01043_(Large).jpeg', 33, 1, 'Administrator'),
(96, 'PR6', '', NULL, '2018-04-28 16:59:22', 'DSC01045_(Large).jpeg', 33, 1, 'Administrator'),
(97, 'PR7', '', NULL, '2018-04-28 17:00:11', 'DSC09990_(Large).jpeg', 33, 1, 'Administrator'),
(98, 'PR8', '', NULL, '2018-04-28 17:00:56', 'DSC01145_(Large)4.jpeg', 33, 1, 'Administrator'),
(99, 'PR9', '', NULL, '2018-04-28 17:01:14', 'DSC01150_(Large)2.jpeg', 33, 1, 'Administrator'),
(100, 'PS1', '', NULL, '2018-04-28 17:02:30', 'DSC01145_(Large)5.jpeg', 34, 1, 'Administrator'),
(101, 'PS2', '', NULL, '2018-04-28 17:02:47', 'DSC01150_(Large)3.jpeg', 34, 1, 'Administrator'),
(102, 'PS3', '', NULL, '2018-04-28 17:03:37', 'DSC00930_(Large).jpeg', 34, 1, 'Administrator'),
(103, 'PS4', '', NULL, '2018-04-28 17:04:02', 'DSC00941_(Large).jpeg', 34, 1, 'Administrator'),
(104, 'PS5', '', NULL, '2018-04-28 17:04:24', 'DSC00944_(Large)1.jpeg', 34, 1, 'Administrator'),
(105, 'PS6', '', NULL, '2018-04-28 17:04:51', 'DSC00948_(Large).jpeg', 34, 1, 'Administrator'),
(106, 'PS7', '', NULL, '2018-04-28 17:05:24', 'DSC00967_(Large).jpeg', 34, 1, 'Administrator'),
(107, 'PS8', '', NULL, '2018-04-28 17:06:16', 'DSC00974_(Large).jpeg', 34, 1, 'Administrator'),
(108, 'PS9', '', NULL, '2018-04-28 17:07:36', 'DSC00985_(Large).jpeg', 34, 1, 'Administrator'),
(109, 'PS10', '', NULL, '2018-04-28 17:07:54', 'DSC01006_(Large).jpeg', 34, 1, 'Administrator'),
(110, 'PS11', '', NULL, '2018-04-28 17:08:16', 'DSC00996_(Large).jpeg', 34, 1, 'Administrator'),
(111, 'PS12', '', NULL, '2018-04-28 17:09:13', 'DSC09862_(Large).jpeg', 34, 1, 'Administrator'),
(112, 'PS13', '', NULL, '2018-04-28 17:10:06', 'DSC09894_(Large).jpeg', 34, 1, 'Administrator'),
(113, 'PS13', '', NULL, '2018-04-28 17:10:33', 'DSC09906_(Large).jpeg', 34, 1, 'Administrator'),
(114, 'PS15', '', NULL, '2018-04-28 17:11:04', 'DSC09907_(Large).jpeg', 34, 1, 'Administrator'),
(115, 'PS16', '', NULL, '2018-04-28 17:12:14', 'DSC09923_(Large).jpeg', 34, 1, 'Administrator'),
(116, 'Neo PC', '', NULL, '2018-04-29 06:48:16', 'PRINCESS_HOTEL_LOGO_BLACK16.png', 35, 1, 'Administrator'),
(117, 'Meeting Room', '', NULL, '2018-04-29 06:49:08', 'PRINCESS_HOTEL_LOGO_BLACK17.png', 35, 1, 'Administrator'),
(118, '24 Hours Cofee Shop', '', NULL, '2018-04-29 06:50:19', 'PRINCESS_HOTEL_LOGO_BLACK18.png', 35, 1, 'Administrator'),
(119, '24 Hours Room Service', '', NULL, '2018-04-29 06:50:58', 'PRINCESS_HOTEL_LOGO_BLACK19.png', 35, 1, 'Administrator'),
(120, 'Laundry', '', NULL, '2018-04-29 06:51:32', 'PRINCESS_HOTEL_LOGO_BLACK20.png', 36, 1, 'Administrator'),
(121, 'Wings @ Terrace', '', NULL, '2018-04-29 06:52:03', 'PRINCESS_HOTEL_LOGO_BLACK21.png', 36, 1, 'Administrator'),
(122, 'Taxi Service', '', NULL, '2018-04-29 06:52:20', 'PRINCESS_HOTEL_LOGO_BLACK22.png', 36, 1, 'Administrator'),
(123, 'Free Wi-Fi', '', NULL, '2018-04-29 06:52:53', 'PRINCESS_HOTEL_LOGO_BLACK23.png', 37, 1, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(14, 'Room_H', '2018-04-25 03:54:55'),
(15, 'Home_service_1', '2018-04-26 08:20:46'),
(16, 'Home_service_2', '2018-04-26 08:21:00'),
(17, 'Home_service_3', '2018-04-26 08:21:06'),
(18, 'Home_service_4', '2018-04-26 08:21:12'),
(19, 'Judul_service_Home', '2018-04-26 09:10:21'),
(20, 'Judul_Room_favorite_Home', '2018-04-26 09:10:38'),
(21, 'Judul_gallery_home', '2018-04-26 09:21:25'),
(22, 'wing_terrace', '2018-04-27 07:41:01'),
(23, 'MICE', '2018-04-27 12:22:58'),
(24, 'cafe deskripsi', '2018-04-28 12:54:11'),
(25, 'Rooms', '2018-04-28 14:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Administrator', 'Just do it', 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', 'fikrifiver97@gmail.com', '081277159401', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', '74eec6ad37550cc12fe8fa83d46878af.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(972, '2018-04-25 03:19:19', '::1', 'Chrome'),
(973, '2018-04-26 06:26:42', '::1', 'Chrome'),
(974, '2018-04-27 03:23:33', '::1', 'Chrome'),
(975, '2018-04-28 07:16:00', '::1', 'Chrome'),
(976, '2018-04-29 05:03:21', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_rating`
--

CREATE TABLE `tbl_post_rating` (
  `rate_id` int(11) NOT NULL,
  `rate_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rate_ip` varchar(40) DEFAULT NULL,
  `rate_point` int(11) DEFAULT NULL,
  `rate_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `views_id` int(11) NOT NULL,
  `views_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `views_ip` varchar(40) DEFAULT NULL,
  `views_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(200) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_harga` varchar(40) DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_album_id` int(11) DEFAULT NULL,
  `tulisan_album_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0',
  `tulisan_slug` varchar(250) DEFAULT NULL,
  `tulisan_rating` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_harga`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_album_id`, `tulisan_album_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`, `tulisan_rating`) VALUES
(48, 'Princess Suite', '<p>Princess Suites are one of our guests favourite rooms here. It has about 110 square meter area, separate living room, separate powder room and a 42&quot; plasma TV. &nbsp;Also we have a new favourite here, a Prince Suite, a cozy &nbsp;suite room with a view. Since these rooms are limited in quantity, please reserve your arrival ahead. We look forward to serve you here.</p>\r\n', 'Rp. 1.500.000,-', '2018-04-25 09:26:03', 14, 'Room_H', 0, '', 0, 'DSC00942_(Large).jpeg', 1, 'Administrator', 0, 'princess-suite', 0),
(49, 'Prince Suite', '<p>Prince&nbsp;Suites are one of our guests favourite rooms here. It has about 110 square meter area, separate living room, separate powder room and a 42&quot; plasma TV. &nbsp;Also we have a new favourite here, a Prince Suite, a cozy &nbsp;suite room with a view. Since these rooms are limited in quantity, please reserve your arrival ahead. We look forward to serve you here.</p>\r\n', 'Rp. 1.100.000,-', '2018-04-25 09:28:13', 14, 'Room_H', 0, '', 0, 'DSC00019_(Large).jpeg', 1, 'Administrator', 0, 'prince-suite', 0),
(50, 'Junior Suite', '<p>Junior Suites are perfect choice for our guests who valued their space in a comfortable room. The room averages at 28 sq m.</p>\r\n', 'Rp. 799.000,-', '2018-04-25 09:29:31', 14, 'Room_H', 0, '', 0, 'DSC00070_(Large).jpeg', 1, 'Administrator', 0, 'junior-suite', 0),
(53, 'Premiere Suite', '<p>Premiere&nbsp;Suite is dedicated for business traveler, it has a spacious 32 square meter, a work desk, and bright lighting for your work</p>\r\n', 'Rp. 755.000,-', '2018-04-25 09:45:26', 14, 'Room_H', 0, '', 0, 'DSC01015_(Large)1.jpeg', 1, 'Administrator', 0, 'premiere-suite', 0),
(54, 'NeoPC', '<p>NeoPC is the place to relax and enjoy Palembang&rsquo;s Clubbing scene. Currently one of the liveliest club in the city...</p>\r\n', '', '2018-04-26 08:46:51', 15, 'Home_service_1', 0, '', 0, 'DSC01059_(Large).jpeg', 1, 'Administrator', 0, 'neopc', 0),
(55, 'Putri Selako', '<p>All time favourites Nasi Goreng ikan Asin (Salted Fish Fried Rice), Sop Buntut (Oxtail Soup), Nasi Goreng Buntut (Oxtail Fried Rice) &amp; many menus are waiting for you...</p>\r\n', '', '2018-04-26 08:51:07', 16, 'Home_service_2', 0, '', 0, 'DSC01103_(Large)1.jpeg', 1, 'Administrator', 0, 'putri-selako', 0),
(56, 'Meeting', '<p>You can rent a place for a meeting...</p>\r\n', '', '2018-04-26 08:51:45', 17, 'Home_service_3', 0, '', 0, 'DSC00162_(Large).jpeg', 1, 'Administrator', 0, 'meeting', 0),
(57, 'Gathering & Banquets', '<p>You can rent a place for a Gathering &amp; Banquets...</p>\r\n', '', '2018-04-26 08:53:04', 18, 'Home_service_4', 0, '', 0, 'DSC00126_(Large).jpeg', 1, 'Administrator', 0, 'gathering-&-banquets', 0),
(58, 'Our Favorite Rooms', '<p>deskripsi bisa diubah</p>\r\n', '', '2018-04-26 09:14:59', 20, 'Judul_Room_favorite_Home', 0, '', 0, 'PRINCESS_HOTEL_LOGO_BLACK.png', 1, 'Administrator', 0, 'our-favorite-rooms', 0),
(59, 'Our Awesome Service', '<p>deskripsi bisa diubah</p>\r\n', '', '2018-04-26 09:16:39', 19, 'Judul_service_Home', 0, '', 0, 'PRINCESS_HOTEL_LOGO_BLACK1.png', 1, 'Administrator', 0, 'our-awesome-service', 0),
(60, 'Our Gallery', '<p>deskripsi bisa diubah</p>\r\n', '', '2018-04-26 09:22:45', 21, 'Judul_gallery_home', 0, '', 0, 'PRINCESS_HOTEL_LOGO_BLACK2.png', 1, 'Administrator', 0, 'our-gallery', 0),
(61, 'Description Of Wings Terrace', '<p>Lorem ipsum dolor sit amet, consectetur adipisi cing elit, sed do eius mod tempor incididunt ut labore et dolore magna aliqua. Ut the enim ad minim veniam, quis nostrud exer citation ullamco laboris nisi ut aliquip ex ea com modo conse quat. Duis aute irure dolor in reprehend erit in volupt ate velit esse cillum dolore eu fugiat nulla pari atur. Except eur sint occa ecat cupi datat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volup tatem accusantium the doloremque lauda ntium, totam rem aper iam, eaque ipsa quae</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia volu ptas sit asper natur aut odit aut fugit, sed quia consequ untur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolo rem ipsum quia dolor sit amet, conse ctetur, adipisci velit, sed quia a non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incidi dunt ut labore et dolore magna aliqua. Ut new newenim ad im veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\r\n', '', '2018-04-27 07:45:40', 22, 'wing_terrace', 0, '', 0, 'DSC01067_(Large).jpeg', 1, 'Administrator', 0, 'description-of-wings-terrace', 0),
(63, 'Meeting Room', '<p>Ini adalah ruang untuk mengadakan acara yang penting seperti meeting kantor dll</p>\r\n', '', '2018-04-27 13:04:58', 23, 'MICE', 22, 'meeting', 0, 'DSC00172_(Large)2.jpeg', 1, 'Administrator', 0, 'meeting-room', 0),
(64, 'Gathering & Banquets', '<p>Ini adalah ruangan Gathring dan banquets</p>\r\n', '', '2018-04-27 16:23:28', 23, 'MICE', 23, 'Gathering', 0, 'DSC00132_(Large)2.jpeg', 1, 'Administrator', 0, 'gathering-&-banquets', 0),
(65, 'NeoPC Event Space', '<p>Ruangan ini bisa dijadikan tempat unutk berkumpul dan sebagainya</p>\r\n', '', '2018-04-27 16:27:00', 23, 'MICE', 21, 'NeoPC', 0, 'DSC01053_(Large)4.jpeg', 1, 'Administrator', 0, 'neopc-event-space', 0),
(66, 'Description Of Putri Selako', '<p>Open At 24 Hours.</p>\r\n', '', '2018-04-28 12:56:18', 24, 'cafe_header', 0, '', 0, 'DSC01103_(Large)2.jpeg', 1, 'Administrator', 0, 'description-of-putri-selako', 0),
(67, 'Superior Room', '', 'Rp. 655.000,-', '2018-04-28 14:22:59', 25, 'Rooms', 26, 'Superior', 0, 'DSC01025_(Large)1.jpeg', 1, 'Administrator', 0, 'superior-room', 0),
(68, 'Deluxe A Room', '<p>Deskripsi bisa diubah</p>\r\n', 'Rp. 699.000,-', '2018-04-28 16:39:00', 25, 'Rooms', 28, 'Deluxe A', 0, 'DSC00926_(Large).jpeg', 1, 'Administrator', 0, 'deluxe-a-room', 0),
(69, 'Deluxe B Room', '<p>Deskripsi bisa diubah</p>\r\n', 'Rp. 699.000,-', '2018-04-28 16:40:58', 25, 'Rooms', 29, 'Deluxe B', 0, 'DSC00881_(Large).jpeg', 1, 'Administrator', 0, 'deluxe-b-room', 0),
(70, 'Deluxe Twin', '<p>Deskripsi Bisa diubah</p>\r\n', 'Rp. 699.000,-', '2018-04-28 16:41:42', 25, 'Rooms', 30, 'Deluxe Twin', 0, 'DSC09958_(Large)1.jpeg', 1, 'Administrator', 0, 'deluxe-twin', 0),
(71, 'Premiere', '<p>Deskripsi bisa diubah</p>\r\n', 'Rp. 755.000,-', '2018-04-28 17:13:24', 25, 'Rooms', 31, 'Premiere', 0, 'DSC01015_(Large)4.jpeg', 1, 'Administrator', 0, 'premiere', 0),
(72, 'Junior Suite Room', '<p>Deskripsi bisa di ubah</p>\r\n', 'Rp. 799.000,-', '2018-04-28 17:14:16', 25, 'Rooms', 32, 'Junior Suite', 0, 'DSC00063_(Large)1.jpeg', 1, 'Administrator', 0, 'junior-suite-room', 0),
(73, 'Prince Suite Room', '<p>Deskripsi bisa diubah</p>\r\n', 'Rp. 1.100.000,-', '2018-04-28 17:15:11', 25, 'Rooms', 33, 'Prince Suite', 0, 'DSC00035_(Large)1.jpeg', 1, 'Administrator', 0, 'prince-suite-room', 0),
(74, 'Princess Suite Room', '<p>Deskripsi bisa diubah</p>\r\n', 'Rp. 1.500.000,-', '2018-04-28 17:15:59', 25, 'Rooms', 34, 'Princess Suite', 0, 'DSC00944_(Large)2.jpeg', 1, 'Administrator', 0, 'princess-suite-room', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`views_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`),
  ADD KEY `tulisan_album_id` (`tulisan_album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=977;
--
-- AUTO_INCREMENT for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `views_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
