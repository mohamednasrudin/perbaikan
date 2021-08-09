-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2021 at 09:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perbaikan`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_layanan`
--

CREATE TABLE `jenis_layanan` (
  `id_layanan` int(11) NOT NULL,
  `nama_layanan` varchar(120) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_layanan`
--

INSERT INTO `jenis_layanan` (`id_layanan`, `nama_layanan`, `keterangan`) VALUES
(25, 'PERBAIKAN', 'Perubahan Akta Kelahiran yang baru diterbitkan'),
(26, 'CATATAN PINGGIR', 'Perubahan Akta kelahiran Terbitan tahun lama'),
(27, 'KUTIPAN KEDUA', 'Permohonan Akta kelahiran Rusak atau Hilang');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`) VALUES
(1, 'KARAWANG BARAT'),
(2, 'PANGKALAN'),
(3, 'TELUKJAMBE TIMUR'),
(4, 'CIAMPEL'),
(5, 'KLARI'),
(6, 'RENGASDENGKLOK'),
(7, 'KUTAWALUYA'),
(8, 'BATUJAYA'),
(9, 'TIRTAJAYA'),
(10, 'PEDES'),
(11, 'CIBUAYA'),
(12, 'PAKISJAYA'),
(13, 'CIKAMPEK'),
(14, 'JATISARI'),
(15, 'CILAMAYA WETAN'),
(16, 'TIRTAMULYA'),
(17, 'TELAGASARI'),
(18, 'RAWAMERTA'),
(19, 'LEMAHABANG'),
(20, 'TEMPURAN'),
(21, 'MAJALAYA'),
(22, 'JAYAKERTA'),
(23, 'CILAMAYA KULON'),
(24, 'BANYUSARI'),
(25, 'KOTABARU'),
(26, 'KARAWANG TIMUR'),
(27, 'TELUKJAMBE BARAT'),
(28, 'TEGALWARU'),
(29, 'PURWASARI'),
(30, 'CILEBAR');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id`, `id_kecamatan`, `nama`) VALUES
(1, 1, 'ADIARSA BARAT'),
(2, 1, 'TANJUNG MEKAR'),
(3, 1, 'KARAWANG KULON'),
(4, 1, 'NAGASARI'),
(5, 1, 'KARANGPAWITAN'),
(6, 1, 'TANJUNGPURA'),
(7, 1, 'MEKARJATI'),
(8, 1, 'TUNGGAKJATI'),
(9, 2, 'CINTAASIH'),
(10, 2, 'MEDALSARI'),
(11, 2, 'KERTASARI'),
(12, 2, 'MULANGSARI'),
(13, 2, 'JATILAKSANA'),
(14, 2, 'CIPTASARI'),
(15, 2, 'TAMANSARI'),
(16, 2, 'TAMANMEKAR'),
(17, 3, 'SUKALUYU'),
(18, 3, 'PUSEURJAYA'),
(19, 3, 'SIRNABAYA'),
(20, 3, 'TELUKJAMBE'),
(21, 3, 'SUKAHARJA'),
(22, 3, 'WADAS'),
(23, 3, 'SUKAMAKMUR'),
(24, 3, 'PURWADANA'),
(25, 3, 'PINAYUNGAN'),
(26, 4, 'TEGALEGA'),
(27, 4, 'MULYASEJATI'),
(28, 4, 'MULYASARI'),
(29, 4, 'KUTANEGARA'),
(30, 4, 'KUTAPOHACI'),
(31, 4, 'KUTAMEKAR'),
(32, 4, 'PARUNGMULYA'),
(33, 5, 'KARANGANYAR'),
(34, 5, 'CURUG'),
(35, 5, 'CIMAHI'),
(36, 5, 'SUMURKONDANG'),
(37, 5, 'WALAHAR'),
(38, 5, 'KIARAPAYUNG'),
(39, 5, 'GINTUNGKERTA'),
(40, 6, 'ANGGADITA'),
(41, 5, 'KLARI'),
(42, 5, 'CIBALONGSARI'),
(43, 5, 'DUREN'),
(44, 5, 'PANCAWATI'),
(45, 5, 'BELENDUNG'),
(46, 6, 'KALANGSARI'),
(47, 6, 'KALANGSURIA'),
(48, 6, 'KARYASARI'),
(49, 6, 'DUKUHKARYA'),
(50, 6, 'AMANSARI'),
(51, 6, 'RENGASDENGKLOK SELATAN'),
(52, 6, 'RENGASDENGKLOK UTARA'),
(53, 6, 'KERTASARI'),
(54, 6, 'DEWISARI'),
(55, 7, 'SAMPALAN'),
(56, 7, 'SINDANGSARI'),
(57, 7, 'KUTARAJA'),
(58, 7, 'SINDANGKARYA'),
(59, 7, 'SINDANGMUKTI'),
(60, 7, 'SINDANGMULYA'),
(61, 7, 'MULYAJAYA'),
(62, 7, 'KUTAKARYA'),
(63, 7, 'KUTAGANDOK'),
(64, 7, 'WALUYA'),
(65, 7, 'KUTAMUKTI'),
(66, 7, 'KUTAJAYA'),
(67, 8, 'KARYAMAKMUR'),
(68, 8, 'KARYAMULYA'),
(69, 8, 'TELUKBANGO'),
(70, 8, 'TELUKAMBULU'),
(71, 8, 'KARYABAKTI'),
(72, 8, 'BATURADEN'),
(73, 8, 'BATUJAYA'),
(74, 8, 'SEGARAN'),
(75, 8, 'SEGARJAYA'),
(76, 8, 'KUTAAMPEL'),
(77, 9, 'MEDANKARYA'),
(78, 9, 'PISANGSAMBO'),
(79, 9, 'SABAJAYA'),
(80, 9, 'GEMPOLKARYA'),
(81, 9, 'SRIJAYA'),
(82, 9, 'KUTAMAKMUR'),
(83, 9, 'BOLANG'),
(84, 9, 'SRIKAMULYAN'),
(85, 9, 'SUMURLABAN'),
(86, 9, 'TAMBAKSUMUR'),
(87, 9, 'TAMBAKSARI'),
(88, 10, 'KENDALJAYA'),
(89, 10, 'DONGKAL'),
(90, 10, 'PUSPASARI'),
(91, 10, 'LABANJAYA'),
(92, 10, 'SUNGAIBUNTU'),
(93, 10, 'JATIMULYA'),
(94, 10, 'KERTARAHARJA'),
(95, 10, 'KARANGJAYA'),
(96, 10, 'MALANGSARI'),
(97, 10, 'KERTAMULYA'),
(98, 10, 'PAYUNGSARI'),
(99, 10, 'RANGDUMULYA'),
(100, 11, 'CEMARAJAYA'),
(101, 11, 'SEDARI'),
(102, 11, 'SUKASARI'),
(103, 11, 'KERTARAHAYU'),
(104, 11, 'CIBUAYA'),
(105, 11, 'PEJATEN'),
(106, 11, 'KEDUNGJERUK'),
(107, 11, 'KALIDUNGJAYA'),
(108, 11, 'KEDUNGJAYA'),
(109, 11, 'JAYAMULYA'),
(110, 11, 'GEBANGJAYA'),
(111, 12, 'TANJUNGPAKIS'),
(112, 12, 'TELUKJAYA'),
(113, 12, 'TALAGAJAYA'),
(114, 12, 'TELUKBUYUNG'),
(115, 12, 'TANAHBARU'),
(116, 12, 'SOLOKAN'),
(117, 12, 'TANJUNGBUNGIN'),
(118, 12, 'TANJUNGMEKAR'),
(119, 13, 'KALIHURIP'),
(120, 13, 'KAMOJING'),
(121, 13, 'CIKAMPEK TIMUR'),
(122, 13, 'CIKAMPEK PUSAKA'),
(123, 13, 'CIKAMPEK SELATAN'),
(124, 13, 'CIKAMPEK KOTA'),
(125, 13, 'CIKAMPEK BARAT'),
(126, 13, 'DAWUAN TIMUR'),
(127, 13, 'DAWUAN TENGAH'),
(128, 13, 'DAWUAN BARAT'),
(129, 14, 'BARUGBUG'),
(130, 14, 'SITUDAM'),
(131, 14, 'BALONGGANDU'),
(132, 14, 'KALIJATI'),
(133, 14, 'MEKARSARI'),
(134, 14, 'JATISARI'),
(135, 14, 'CIREJAG'),
(136, 14, 'CIKALONGSARI'),
(137, 14, 'JATIRAGAS'),
(138, 14, 'JATIWANGI'),
(139, 14, 'JATIBARU'),
(140, 14, 'TELARSARI'),
(141, 14, 'SUKAMEKAR'),
(142, 14, 'PACING'),
(143, 15, 'CIKARANG'),
(144, 15, 'CIKALONG'),
(145, 15, 'TEGALSARI'),
(146, 15, 'TEGALWARU'),
(147, 15, 'MEKARMAYA'),
(148, 15, 'CILAMAYA'),
(149, 15, 'SUKATANI'),
(150, 15, 'SUKAKERTA'),
(151, 15, 'RAWAGEMPOL KULON'),
(152, 15, 'RAWAGEMPOL WETAN'),
(153, 15, 'MUARABARU'),
(154, 15, 'MUARA'),
(155, 16, 'KARANGSINOM'),
(156, 16, 'KARANGJAYA'),
(157, 16, 'PARAKANMULYA'),
(158, 16, 'CITARIK'),
(159, 16, 'TIRTASARI'),
(160, 16, 'PARAKAN'),
(161, 16, 'KAMURANG'),
(162, 16, 'BOJONGSARI'),
(163, 16, 'CIPONDOH'),
(164, 16, 'KERTAWALUYA'),
(165, 17, 'PULOSARI'),
(166, 17, 'CADASKERTAJAYA'),
(167, 17, 'KALIBUAYA'),
(168, 17, 'PASIRTALAGA'),
(169, 17, 'TALAGAMULYA'),
(170, 17, 'CARIUMULYA'),
(171, 17, 'CILEWO'),
(172, 17, 'LINGGARSARI'),
(173, 17, 'CIWULAN'),
(174, 17, 'KALIJAYA'),
(175, 17, 'TALAGASARI'),
(176, 17, 'PASIRMUKTI'),
(177, 17, 'PASIRKAMUNING'),
(178, 17, 'KALISARI'),
(179, 18, 'PASIRKALIKI'),
(180, 18, 'KUTAWARGI'),
(181, 18, 'CIBADAK'),
(182, 18, 'SUKAMERTA'),
(183, 18, 'PASIRAWI'),
(184, 18, 'BALONGSARI'),
(185, 18, 'PURWAMEKAR'),
(186, 18, 'MEKARJAYA'),
(187, 18, 'SEKARWANGI'),
(188, 18, 'PANYINGKIRAN'),
(189, 18, 'SUKAPURA'),
(190, 18, 'GOMBONGSARI'),
(191, 18, 'SUKARAJA'),
(192, 19, 'CIWARINGIN'),
(193, 19, 'WARINGINKARYA'),
(194, 19, 'PASIRTANJUNG'),
(195, 19, 'KARANGTANJUNG'),
(196, 19, 'KEDAWUNG'),
(197, 19, 'LEMAHABANG'),
(198, 19, 'KARYAMUKTI'),
(199, 19, 'PULOJAYA'),
(200, 19, 'PULOKELAPA'),
(201, 19, 'LEMAHMUKTI'),
(202, 19, 'PULOMULYA'),
(203, 20, 'PURWAJAYA'),
(204, 20, 'JAYANAGARA'),
(205, 20, 'TEMPURAN'),
(206, 20, 'CIPARAGEJAYA'),
(207, 20, 'CIKUNTUL'),
(208, 20, 'SUMBERJAYA'),
(209, 20, 'PANCAKARYA'),
(210, 20, 'TANJUNGJAYA'),
(211, 20, 'DAYEUHLUHUR'),
(212, 20, 'LEMAHKARYA'),
(213, 20, 'LEMAHDUHUR'),
(214, 20, 'LEMAHSUBUR'),
(215, 20, 'LEMAHMAKMUR'),
(216, 20, 'PAGADUNGAN'),
(217, 21, 'PASIRJENGKOL'),
(218, 21, 'MAJALAYA'),
(219, 21, 'CIRANGGON'),
(220, 21, 'SARIJAYA'),
(221, 21, 'PASIRMULYA'),
(222, 21, 'LEMAHMULYA'),
(223, 21, 'BENGLE'),
(224, 22, 'KEMIRI'),
(225, 22, 'MAKMURJAYA'),
(226, 22, 'JAYAMAKMUR'),
(227, 22, 'JAYAKERTA'),
(228, 22, 'KERTAJAYA'),
(229, 22, 'CIPTAMARGA'),
(230, 22, 'MEDANGASEM'),
(231, 22, 'KAMPUNGSAWAH'),
(232, 23, 'KIARA'),
(233, 23, 'LANGENSARI'),
(234, 23, 'BAYUR KIDUL'),
(235, 23, 'BAYUR LOR'),
(236, 23, 'SUKAMULYA'),
(237, 23, 'PASIRUKEM'),
(238, 23, 'TEGALURUNG'),
(239, 23, 'MANGGUNGJAYA'),
(240, 23, 'SUMURGEDE'),
(241, 23, 'MUKTIJAYA'),
(242, 23, 'PASIRJAYA'),
(243, 23, 'SUKAJAYA'),
(244, 24, 'PAMEKARAN'),
(245, 24, 'CICINDE SELATAN'),
(246, 24, 'CICINDE UTARA'),
(247, 24, 'JAYAMUKTI'),
(248, 24, 'GEMPOL KOLOT'),
(249, 24, 'GEMPOL'),
(250, 24, 'GEMBONGAN'),
(251, 24, 'MEKARASIH'),
(252, 24, 'BANYUASIH'),
(253, 24, 'TALUNJAYA'),
(254, 24, 'TANJUNG '),
(255, 24, 'KUTARAHARJA'),
(256, 25, 'JOMIN TIMUR'),
(257, 25, 'JOMIN BARAT'),
(258, 25, 'SARIMULYA'),
(259, 25, 'CIKAMPEK UTARA'),
(260, 25, 'PUCUNG'),
(261, 25, 'WANCIMEKAR'),
(262, 25, 'PANGULAH SELATAN'),
(263, 25, 'PANGULAH UTARA'),
(264, 25, 'PANGULAH BARU'),
(265, 26, 'KONDANGJAYA'),
(266, 26, 'MARGASARI'),
(267, 26, 'WARUNGBAMBU'),
(268, 26, 'TEGALSAWAH'),
(269, 26, 'KARAWANG WETAN'),
(270, 26, 'ADIARSA TIMUR'),
(271, 26, 'PALUMBONSARI'),
(272, 26, 'PLAWAD'),
(273, 27, 'MARGAKAYA'),
(274, 27, 'MARGAMULYA'),
(275, 27, 'KARANGLIGAR'),
(276, 27, 'MEKARMULYA'),
(277, 27, 'PARUNGSARI'),
(278, 27, 'KARANGMULYA'),
(279, 27, 'WANASARI'),
(280, 27, 'WANAKERTA'),
(281, 27, 'WANAJAYA'),
(282, 27, 'MULYAJAYA'),
(283, 28, 'CIGUNUNGSARI'),
(284, 28, 'WARGASETRA'),
(285, 28, 'MEKARBUANA'),
(286, 28, 'CINTALAKSANA'),
(287, 28, 'CINTAWARGI'),
(288, 28, 'CINTALANGGENG'),
(289, 28, 'KUTALANGGENG'),
(290, 28, 'KUTAMANEUH'),
(291, 28, 'CIPURWASARI'),
(292, 29, 'TEGAL SARI'),
(293, 29, 'PURWASARI'),
(294, 29, 'MEKARJAYA'),
(295, 29, 'TAMELANG'),
(296, 29, 'CENGKONG'),
(297, 29, 'SUKASARI'),
(298, 29, 'KARANGSARI'),
(299, 29, 'DARAWOLONG'),
(300, 30, 'KERTAMUKTI'),
(301, 30, 'RAWASARI'),
(302, 30, 'PUSAKAJAYA SELATAN'),
(303, 30, 'CIKANDE'),
(304, 30, 'KOSAMBIBATU'),
(305, 30, 'PUSAKAJAYA UTARA'),
(306, 30, 'SUKARATU'),
(307, 30, 'CIPTAMARGI'),
(308, 30, 'MEKARPOHACI'),
(309, 30, 'TANJUNGSARI');

-- --------------------------------------------------------

--
-- Table structure for table `master_pemohon`
--

CREATE TABLE `master_pemohon` (
  `id_pemohon` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `no_akta` varchar(50) NOT NULL,
  `nama_pemohon` varchar(250) NOT NULL,
  `nama_ayah` varchar(250) NOT NULL,
  `nama_ibu` varchar(250) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `kecamatan` varchar(225) NOT NULL,
  `kelurahan` varchar(225) NOT NULL,
  `by_user` varchar(255) NOT NULL,
  `by_tgl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_pemohon`
--

INSERT INTO `master_pemohon` (`id_pemohon`, `nik`, `no_akta`, `nama_pemohon`, `nama_ayah`, `nama_ibu`, `alamat`, `kecamatan`, `kelurahan`, `by_user`, `by_tgl`) VALUES
(17, '7667788767667736', '3215.AL.2011.09877622', 'LUKMANSYAH', 'SAW', 'EVERYTIME', 'KALENDER', '18', '190', 'admin', '16-05-2021'),
(18, '8766337379937377', '1992/2001', 'TORETO', 'HAHIH', 'DEDE NAHANAHHHA', 'JAMBU 4', '1', '2', 'admin', '16-05-2021'),
(19, '8736365553363333', '2002/2003', 'JUFRIANTO', 'BETRANDO', 'SUKAESIH', 'SIDOARJO', '1', '2', 'USER', '18-05-2021'),
(24, '3215270706920001', '3215.AL.2005.000251', 'JERI MALHOTRA', 'TAKESHI KONDA', 'IYUMI BREW', 'BOJONGSOANG', '2', '11', 'admin', '14-06-2021');

-- --------------------------------------------------------

--
-- Table structure for table `pemohon`
--

CREATE TABLE `pemohon` (
  `id_pemohon` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `no_permohonan` varchar(15) NOT NULL,
  `no_akta` varchar(50) NOT NULL,
  `nama_pemohon` varchar(250) NOT NULL,
  `nama_ayah` varchar(250) NOT NULL,
  `nama_ibu` varchar(250) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `nama_layanan` varchar(120) NOT NULL,
  `tgl_ajuan` date NOT NULL,
  `tgl_ambil` date NOT NULL,
  `by_user` varchar(255) NOT NULL,
  `by_tgl` varchar(255) NOT NULL,
  `status_permohonan` varchar(255) NOT NULL,
  `qr_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemohon`
--

INSERT INTO `pemohon` (`id_pemohon`, `nik`, `no_permohonan`, `no_akta`, `nama_pemohon`, `nama_ayah`, `nama_ibu`, `no_hp`, `nama_layanan`, `tgl_ajuan`, `tgl_ambil`, `by_user`, `by_tgl`, `status_permohonan`, `qr_code`) VALUES
(131, '3215244706910034', '2504210001', '3215-LT-19012021-0024', 'YULIA RATNASARI SARUMPAET', 'HAHIH', 'DEDE NAHANAHHHA', '3456676', 'PERBAIKAN', '2021-05-27', '2021-05-27', 'NASRUDIN', '25-04-2021', 'SELESAI', '2504210001.png'),
(132, '321524470691075', '2504210002', '3215.AL.2010.00928', 'HERDIYANTO', 'DUDU', 'SALEHAH', '2211', 'CATATAN PINGGIR', '2021-04-25', '2021-04-26', 'NASRUDIN', '25-04-2021', 'PROSES', '2504210002.png'),
(138, '7667788767667736', '1805210001', '3215.AL.2011.09877622', 'LUKMANSYAH', 'SAW', 'EVERYTIME', '222333333333', 'CATATAN PINGGIR', '2021-05-18', '2021-05-18', 'USER', '18-05-2021', 'PENDING', '1805210001.png'),
(139, '7667788767667736', '1905210001', '3215.AL.2011.09877622', 'LUKMANSYAH', 'SAW', 'EVERYTIME', '2334445555', 'PERBAIKAN', '2021-05-19', '2021-05-26', 'admin', '19-05-2021', 'PROSES', '1905210001.png'),
(140, '8766337379937377', '1905210002', '1992/2001', 'TORETO', 'HAHIH', 'DEDE NAHANAHHHA', '3456676', 'CATATAN PINGGIR', '2021-05-27', '2021-05-20', 'USER', '19-05-2021', 'PROSES', '1905210002.png'),
(141, '8766337379937377', '2405210001', '1992/2001', 'TORETO', 'HAHIH', 'DEDE NAHANAHHHA', '44556677778', 'CATATAN PINGGIR', '2021-05-18', '2021-05-26', 'NASRUDIN', '24-05-2021', 'PROSES', '2405210001.png');

-- --------------------------------------------------------

--
-- Table structure for table `pengambilan`
--

CREATE TABLE `pengambilan` (
  `id_pengambilan` int(11) NOT NULL,
  `no_permohonan` varchar(15) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `no_akta` varchar(50) NOT NULL,
  `nama_pemohon` varchar(255) NOT NULL,
  `nama_layanan` varchar(255) NOT NULL,
  `status_permohonan` varchar(255) NOT NULL,
  `nama_pengambil` varchar(255) NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengambilan`
--

INSERT INTO `pengambilan` (`id_pengambilan`, `no_permohonan`, `nik`, `no_akta`, `nama_pemohon`, `nama_layanan`, `status_permohonan`, `nama_pengambil`, `tgl_ambil`) VALUES
(7, '2504210001', '3215244706910034', '3215-LT-19012021-0024', 'YULIA RATNASARI SARUMPAET', 'PERBAIKAN', 'SUDAH DI AMBIL', 'TEUKU JORDAN SALEH IBRAHIM MANGKUBUMI MARS PLUTO', '2021-05-24'),
(8, '1905210002', '8766337379937377', '1992/2001', 'TORETO', 'CATATAN PINGGIR', 'SUDAH DI AMBIL', 'SAYANG ENTOG', '2021-06-30'),
(9, '2504210002', '321524470691075', '3215.AL.2010.00928', 'HERDIYANTO', 'CATATAN PINGGIR', 'SUDAH DI AMBIL', 'KURUNG HAYAM', '2021-07-20'),
(10, '1805210001', '7667788767667736', '3215.AL.2011.09877622', 'LUKMANSYAH', 'CATATAN PINGGIR', 'SUDAH DI AMBIL', 'dasem', '2021-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status`) VALUES
(1, 'PROSES'),
(2, 'SELESAI'),
(3, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `table_log`
--

CREATE TABLE `table_log` (
  `log_id` int(11) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `log_user` varchar(255) NOT NULL,
  `log_tipe` int(11) NOT NULL,
  `log_desc` varchar(255) NOT NULL,
  `data_log` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_log`
--

INSERT INTO `table_log` (`log_id`, `log_time`, `log_user`, `log_tipe`, `log_desc`, `data_log`) VALUES
(383, '2021-05-24 16:04:44', 'admin', 1, 'logout', ''),
(384, '2021-05-24 16:27:02', 'NASRUDIN', 2, 'menambahkan data', '8766337379937377'),
(385, '2021-05-24 22:32:33', 'admin', 1, 'logout', ''),
(386, '2021-05-24 23:04:37', 'admin', 1, 'logout', ''),
(387, '2021-05-24 23:04:50', 'admin', 1, 'logout', ''),
(388, '2021-05-25 20:32:10', 'USER', 1, 'logout', ''),
(389, '2021-05-25 20:47:21', 'admin', 1, 'logout', ''),
(390, '2021-05-27 18:59:31', 'admin', 1, 'logout', ''),
(391, '2021-05-29 06:11:48', 'NASRUDIN', 1, 'logout', ''),
(392, '2021-05-29 15:18:14', 'admin', 1, 'logout', ''),
(393, '2021-06-02 17:37:10', 'USER', 2, 'menambahkan data pengambilan', '7667788767667736'),
(394, '2021-06-02 17:39:18', 'USER', 3, 'update Data', '7667788767667736'),
(395, '2021-06-02 17:51:46', 'admin', 2, 'menambahkan data pengambilan', '321524470691075'),
(396, '2021-06-02 17:52:01', 'admin', 4, 'Hapus data', ''),
(397, '2021-06-02 18:17:47', 'admin', 1, 'logout', ''),
(398, '2021-06-14 16:49:03', 'admin', 2, 'menambahkan data', '3215270706920001');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telepon`, `email`, `level`, `foto`) VALUES
(14, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'KARAWANG', '2018-06-26', 'WANAKERTA', '085770327861', 'catpil_disdukcatpil@karawangkab.go.id', 'admin', 'noah1.jpg'),
(16, 'NASRUDIN', '827ccb0eea8a706c4c34a16891f84e7b', 'NASRUDIN', 'KARAWANG', '1992-06-07', 'WANAKERTA', '085770327861', 'nasrudinlevine@gmail.com', 'admin', 'nasrudin.jpeg'),
(38, 'USER', 'ee11cbb19052e40b07aac0ca060c23ee', 'USER', 'KARAWANG', '2021-05-12', 'KARAWANG', '098765544433', 'userbaru@gmail.com', 'user', 'avatar-115.png'),
(39, 'USERSATU', '827ccb0eea8a706c4c34a16891f84e7b', 'BAHHAHA', 'MEDAN', '1990-02-01', 'KARAWANG RT 001/RW 002', '09877779888', 'gradi@gmail.com', 'user', 'man_thinking.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_pemohon`
--
ALTER TABLE `master_pemohon`
  ADD PRIMARY KEY (`id_pemohon`);

--
-- Indexes for table `pemohon`
--
ALTER TABLE `pemohon`
  ADD PRIMARY KEY (`id_pemohon`);

--
-- Indexes for table `pengambilan`
--
ALTER TABLE `pengambilan`
  ADD PRIMARY KEY (`id_pengambilan`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `table_log`
--
ALTER TABLE `table_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_user` (`log_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `master_pemohon`
--
ALTER TABLE `master_pemohon`
  MODIFY `id_pemohon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pemohon`
--
ALTER TABLE `pemohon`
  MODIFY `id_pemohon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `pengambilan`
--
ALTER TABLE `pengambilan`
  MODIFY `id_pengambilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_log`
--
ALTER TABLE `table_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
