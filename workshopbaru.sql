-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2018 at 04:40 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshopbaru`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `id_items` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_beli` int(11) NOT NULL,
  `discount` double NOT NULL,
  `sub_total` double NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`id_items`, `id_order`, `id_product`, `qty_beli`, `discount`, `sub_total`, `createdby`, `updatedby`, `createddate`, `updateddate`) VALUES
(1, 2, 8, 1, 0, 100000, 2, 2, '2018-01-02 14:47:19', '2018-01-02 14:47:19'),
(2, 4, 8, 1, 0, 100000, 2, 2, '2018-01-02 15:07:04', '2018-01-02 15:07:04'),
(3, 4, 13, 1, 0, 120000, 2, 2, '2018-01-02 15:07:04', '2018-01-02 15:07:04'),
(4, 5, 8, 2, 0.5, 200000, 2, 2, '2018-01-02 16:44:34', '2018-01-02 16:44:34'),
(5, 6, 8, 1, 0, 100000, 2, 2, '2018-01-02 16:50:48', '2018-01-02 16:50:48'),
(6, 7, 8, 1, 0, 100000, 2, 2, '2018-01-03 10:13:27', '2018-01-03 10:13:27'),
(7, 8, 16, 1, 0, 75000, 2, 2, '2018-01-03 10:14:01', '2018-01-03 10:14:01'),
(8, 8, 12, 1, 0, 150000, 2, 2, '2018-01-03 10:14:01', '2018-01-03 10:14:01'),
(9, 9, 8, 2, 0.5, 200000, 2, 2, '2018-01-03 13:58:31', '2018-01-03 13:58:31'),
(10, 10, 8, 1, 0, 100000, 2, 2, '2018-01-03 14:07:08', '2018-01-03 14:07:08'),
(11, 11, 8, 1, 0, 100000, 2, 2, '2018-01-03 14:10:26', '2018-01-03 14:10:26'),
(12, 12, 16, 7, 1, 498750, 2, 2, '2018-01-03 15:36:22', '2018-01-03 15:36:22'),
(13, 12, 21, 1, 0, 142500, 2, 2, '2018-01-03 15:36:22', '2018-01-03 15:36:22'),
(14, 12, 13, 1, 0, 114000, 2, 2, '2018-01-03 15:36:23', '2018-01-03 15:36:23'),
(15, 14, 8, 1, 0, 100000, 2, 2, '2018-01-03 16:13:48', '2018-01-03 16:13:48'),
(16, 14, 13, 1, 0, 120000, 2, 2, '2018-01-03 16:13:49', '2018-01-03 16:13:49'),
(17, 15, 12, 1, 0, 150000, 2, 2, '2018-01-03 16:33:36', '2018-01-03 16:33:36'),
(18, 16, 8, 1, 0, 100000, 2, 2, '2018-01-03 16:52:15', '2018-01-03 16:52:15'),
(19, 17, 8, 1, 0, 100000, 2, 2, '2018-01-03 17:07:53', '2018-01-03 17:07:53'),
(20, 18, 8, 1, 0, 100000, 2, 2, '2018-01-03 17:38:38', '2018-01-03 17:38:38'),
(21, 19, 8, 2, 0.5, 200000, 2, 2, '2018-01-03 17:50:06', '2018-01-03 17:50:06'),
(22, 19, 15, 1, 0, 154000, 2, 2, '2018-01-03 17:50:06', '2018-01-03 17:50:06'),
(23, 21, 100, 1, 0, 75000, 2, 2, '2018-01-04 08:37:09', '2018-01-04 08:37:09'),
(24, 22, 8, 1, 0, 100000, 2, 2, '2018-01-04 08:38:58', '2018-01-04 08:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_ketegori` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_ketegori`, `kategori`, `createdby`, `updatedby`, `createddate`, `updateddate`) VALUES
(1, 'Perlengkapan Bayi', 1, 1, '2017-12-13 15:19:19', '2017-12-13 15:19:19'),
(2, 'Elektronik', 1, 1, '2017-12-13 00:00:00', '2017-12-13 00:00:00'),
(3, 'Gaya Hidup', 1, 1, '2018-01-09 00:00:00', '2018-01-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ppn` double NOT NULL,
  `total` double NOT NULL,
  `isCredit` int(1) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_user`, `ppn`, `total`, `isCredit`, `createdby`, `updatedby`, `createddate`, `updateddate`) VALUES
(1, 2, 0.1, 0, 0, 2, 2, '2018-01-02 14:44:46', '2018-01-02 14:44:46'),
(2, 2, 0.1, 0, 0, 2, 2, '2018-01-02 14:47:19', '2018-01-02 14:47:19'),
(3, 2, 0.1, 0, 1, 2, 2, '2018-01-02 14:59:31', '2018-01-02 14:59:31'),
(4, 2, 0.1, 0, 0, 2, 2, '2018-01-02 15:07:04', '2018-01-02 15:07:04'),
(5, 2, 0.1, 100000, 0, 2, 2, '2018-01-02 16:44:34', '2018-01-02 16:44:34'),
(6, 2, 0.1, 100000, 0, 2, 2, '2018-01-02 16:50:47', '2018-01-02 16:50:47'),
(7, 2, 0.1, 100000, 0, 2, 2, '2018-01-03 10:13:27', '2018-01-03 10:13:27'),
(8, 2, 0.1, 225000, 0, 2, 2, '2018-01-03 10:14:01', '2018-01-03 10:14:01'),
(9, 2, 0.1, 100000, 1, 2, 2, '2018-01-03 13:58:30', '2018-01-03 13:58:30'),
(10, 2, 0.1, 100000, 1, 2, 2, '2018-01-03 14:07:08', '2018-01-03 14:07:08'),
(11, 2, 0.1, 100000, 1, 2, 2, '2018-01-03 14:10:26', '2018-01-03 14:10:26'),
(12, 2, 0.1, 795000, 0, 2, 2, '2018-01-03 15:36:22', '2018-01-03 15:36:22'),
(13, 2, 0.1, 0, 0, 2, 2, '2018-01-03 15:36:45', '2018-01-03 15:36:45'),
(14, 2, 0.1, 220000, 0, 2, 2, '2018-01-03 16:13:48', '2018-01-03 16:13:48'),
(15, 2, 0.1, 150000, 1, 2, 2, '2018-01-03 16:33:36', '2018-01-03 16:33:36'),
(16, 2, 0.1, 100000, 1, 2, 2, '2018-01-03 16:52:15', '2018-01-03 16:52:15'),
(17, 2, 0.1, 100000, 0, 2, 2, '2018-01-03 17:07:53', '2018-01-03 17:07:53'),
(18, 2, 0.1, 100000, 0, 2, 2, '2018-01-03 17:38:38', '2018-01-03 17:38:38'),
(19, 2, 0.1, 254000, 0, 2, 2, '2018-01-03 17:50:05', '2018-01-03 17:50:05'),
(20, 2, 0.1, 100000, 0, 2, 2, '2018-01-04 08:31:24', '2018-01-04 08:31:24'),
(21, 2, 0.1, 75000, 1, 2, 2, '2018-01-04 08:37:09', '2018-01-04 08:37:09'),
(22, 2, 0.1, 100000, 0, 2, 2, '2018-01-04 08:38:58', '2018-01-04 08:38:58'),
(23, 2, 0.1, 100000, 0, 2, 2, '2018-01-04 11:56:08', '2018-01-04 11:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id_payment` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `tujuan_pengiriman` text NOT NULL,
  `asuransi_pengiriman` char(1) NOT NULL,
  `jenis_pengiriman` text NOT NULL,
  `gaji_pokok` double NOT NULL,
  `tanggungan` int(11) NOT NULL,
  `penghasilan_tambahan` double NOT NULL,
  `uang_muka` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id_payment`, `id_order`, `tujuan_pengiriman`, `asuransi_pengiriman`, `jenis_pengiriman`, `gaji_pokok`, `tanggungan`, `penghasilan_tambahan`, `uang_muka`) VALUES
(1, 16, 'reguler', '', 'sds', 0, 0, 0, 0),
(2, 17, 'Surabaya', 'Y', 'sds', 0, 0, 0, 0),
(3, 18, 'reguler', 'Y', 'reguler', 0, 0, 0, 0),
(4, 19, 'reguler', 'Y', 'reguler', 0, 0, 0, 0),
(5, 21, 'Jakarta', 'Y', 'reguler', 0, 0, 0, 0),
(6, 22, 'Surabaya', 'Y', 'reguler', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(11) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `harga` double NOT NULL,
  `berat` int(11) NOT NULL,
  `nama_product` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `deskripsi`, `qty`, `id_kategori`, `harga`, `berat`, `nama_product`, `image`, `createdby`, `updatedby`, `createddate`, `updateddate`, `status`) VALUES
(8, 'Celana*\r\nUkuran 27,28,29,30,31,32\r\nWarna hitam\r\nMerk Blackhawk\r\n', 50, 3, 100000, 1, 'Greenhawk Jogger', '(1)celana jogger_pria.jpg', 1, 1, '2018-01-02 11:43:30', '2018-01-04 11:16:42', 'tidak aktif'),
(12, 'Celana*\r\nUkuran: 27-32\r\nWarna: Biru\r\nBahan: Jeans Strech\r\nModel: Slim/Pencil', 50, 3, 150000, 1, 'Lea Jeans', '(2)celana jeans_pria.jpg', 1, 1, '2018-01-02 13:31:14', '2018-01-02 13:31:14', 'aktif'),
(13, 'Celana*\r\nUkuran: 27-32\r\nWarna: Coklat\r\nBahan: Canvas', 50, 3, 120000, 1, 'PSD Cargo', '(3)celana cargo_pria.jpg', 1, 1, '2018-01-02 13:37:23', '2018-01-02 13:37:23', 'aktif'),
(15, 'Bantal* \r\n1 buah bantal \r\n2 buah guling \r\nBahan katun\r\nAdem, nyaman untuk bayi\r\n', 32, 1, 154000, 1, 'Baby Pillow', 'Bantal1.jpg', 3, 3, '2018-01-02 14:01:42', '2018-01-02 14:01:42', 'aktif'),
(16, 'Selimut*\r\nSelimut dengan bahan bulu yang halus dan hangat\r\nTerdapat bagian topi\r\nUkuran: 76 x 102 cm', 15, 1, 75000, 1, 'Hoodie Owl', 'selimut6.jpg', 3, 3, '2018-01-02 14:08:58', '2018-01-02 14:08:58', 'aktif'),
(21, 'Jaket*\r\nUkuran: M-XL\r\nWarna: Biru\r\nBahan: Denim', 50, 3, 150000, 1, 'Elhaus Jeans', '(1)jaket jeans_pria.jpg', 1, 1, '2018-01-02 14:19:11', '2018-01-02 14:19:11', 'aktif'),
(22, 'Bantal*\r\nBahan lembut\r\nTidak berbulu\r\nHalus', 50, 1, 225000, 2, 'Elephant Pillow', 'Bantal91.jpg', 3, 3, '2018-01-02 14:20:48', '2018-01-02 14:20:48', 'aktif'),
(27, 'Jaket*\r\nUkuran: M-XL\r\nWarna: Hijau Army\r\nBahan: Taslan', 50, 3, 120000, 1, 'Scoot Bomber', '(2)jaket bomber_pria.jpg', 1, 1, '2018-01-02 14:24:47', '2018-01-02 14:24:47', 'aktif'),
(30, 'Ranjang*\r\nKualitas eksport\r\nNon Toxic\r\nSafety Grade (tidak ada benda yg tajam)\r\nUk 125 x 67 x 100', 10, 1, 1250000, 30, 'Hakari Ranjang', 'kasur5.jpg', 3, 3, '2018-01-02 14:42:24', '2018-01-02 14:42:24', 'aktif'),
(31, 'Jaket*\r\nUkuran: M-XL\r\nWarna: Merah\r\nBahan:Canvas', 50, 3, 135000, 1, 'DC Parka', '(3)jaket parka_pria.jpg', 1, 1, '2018-01-02 14:43:07', '2018-01-02 14:43:07', 'aktif'),
(32, 'Pemanas Air*\r\n-Electric Heating Cup Q2 8012 / Pemanas Air Elektrik\r\n-Kapasitas 1 Liter', 25, 2, 95000, 1, 'Maspion', 'h1.jpg', 5, 5, '2018-01-02 14:45:38', '2018-01-02 14:45:38', 'aktif'),
(33, 'Pemanas Air*\r\nKapasitas Air max. 1,2 Liter', 25, 2, 250000, 1, 'Maspion', 'h2.jpg', 5, 5, '2018-01-02 14:48:51', '2018-01-02 14:48:51', 'aktif'),
(34, 'Ranjang*\r\nDapat dipakai untuk tidur, mengganti popok, dan tempat bermain\r\n', 40, 1, 1000000, 6, 'Summer Infant', 'kasur10.jpg', 3, 3, '2018-01-02 14:51:07', '2018-01-02 14:51:07', 'aktif'),
(35, 'Pemanas Air*\r\nUntuk Kapasitas Air 1 Liter ', 25, 2, 300000, 2, 'Miyako', 'h3.jpg', 5, 5, '2018-01-02 14:51:48', '2018-01-02 14:51:48', 'aktif'),
(36, 'Jam Tangan*\r\nTipe: Sporty', 20, 3, 250000, 1, 'Army Watch', '(1)jam tangan_pria.jpg', 1, 1, '2018-01-02 14:51:49', '2018-01-02 14:51:49', 'aktif'),
(41, 'Gendongan*\r\nPanjang tali 155 cm, lebar 80 cm', 20, 1, 120000, 1, 'Samping Snoby', 'gendong11.jpg', 3, 3, '2018-01-02 14:59:54', '2018-01-02 14:59:54', 'aktif'),
(42, 'Jam Tangan*\r\nTipe: Sporty', 20, 3, 250000, 1, 'Arloji Watch', '(2)jam tangan_pria.jpg', 1, 1, '2018-01-02 15:00:16', '2018-01-02 15:00:16', 'aktif'),
(43, 'Pemanas Air*\r\nKapasitas Air 1.5 Liter', 20, 2, 200000, 2, 'Miyako', 'h5.jpg', 5, 5, '2018-01-02 15:01:22', '2018-01-02 15:01:22', 'aktif'),
(44, 'Gendongan*\r\nDapat digunakan sejak bayi usia new born sampai toddler berat 23kg', 12, 1, 190000, 1, 'Ransel Dialogue', 'gendong3.jpg', 3, 3, '2018-01-02 15:03:41', '2018-01-02 15:03:41', 'aktif'),
(45, 'Kompor Listrik*\r\n600 W\r\nAnti Lengket', 35, 2, 195000, 3, 'Maspion', 'kom1.jpg', 5, 5, '2018-01-02 15:04:39', '2018-01-02 15:04:39', 'aktif'),
(46, 'Jam Tangan*\r\nTipe: Sporty', 20, 3, 120000, 1, 'D&Q Watch', '(6)jam tangan_wanita.jpg', 1, 1, '2018-01-02 15:05:08', '2018-01-02 15:05:08', 'aktif'),
(47, 'Kompor Listrik*\r\nDaya 300-600W\r\n220VAC 50Hz', 35, 2, 147000, 3, 'Maspion', 'kom2.jpg', 5, 5, '2018-01-02 15:07:02', '2018-01-02 15:07:02', 'aktif'),
(48, 'Kompor Listrik*\r\nBekerja dengan daya listrik 600 Watt\r\nAnti lengket', 35, 2, 148000, 3, 'Maspion', 'kom3.jpg', 5, 5, '2018-01-02 15:08:46', '2018-01-02 15:08:46', 'aktif'),
(49, 'Kacamata*\r\nTipe: Classic', 10, 3, 100000, 1, 'Raito Sunglasses', '(1)kacamata_pria.jpg', 1, 1, '2018-01-02 15:11:20', '2018-01-02 15:11:20', 'aktif'),
(50, 'Kulkas*\r\nDesain simple dan elegan', 20, 2, 2900000, 6, 'Polytron', 'Polytron2Pintu.jpg', 5, 5, '2018-01-02 15:12:18', '2018-01-02 15:12:18', 'aktif'),
(51, 'Kacamata*\r\nTipe: Classic', 10, 3, 100000, 1, 'Wakatobi Sunglasses', '(6)kacamata_wanita.jpg', 1, 1, '2018-01-02 15:12:37', '2018-01-02 15:12:37', 'aktif'),
(52, 'Kacamata*\r\nTipe: Classic', 10, 3, 100000, 1, 'Kabau Sunglasses', '(5)kacamata_pria.jpg', 1, 1, '2018-01-02 15:13:47', '2018-01-02 15:13:47', 'aktif'),
(53, 'Kulkas*\r\nLow Watt\r\nDesign Elegan dan Mewah', 20, 2, 1975000, 7, 'Polytron', 'PolytronMotifBunga.jpg', 5, 5, '2018-01-02 15:14:56', '2018-01-02 15:14:56', 'aktif'),
(54, 'Baju*\r\nBaju jumpsuit\r\nDidesain comfy\r\nFront facing bottom snap\r\nMaterial : Cotton', 25, 1, 250000, 1, 'Jummper Sweet', 'Kostum5.png', 3, 3, '2018-01-02 15:15:22', '2018-01-02 15:15:22', 'aktif'),
(55, 'Kaos Kaki*\r\nWarna: Hitam\r\nBahan: Polyster\r\n', 10, 3, 30000, 1, 'League Sock', '(1)athletic sock_pria.jpg', 1, 1, '2018-01-02 15:17:05', '2018-01-02 15:17:05', 'aktif'),
(56, 'Kulkas*\r\nType: Double Doors', 20, 2, 3535000, 7, 'Polytron', 'Kulkas.jpg', 5, 5, '2018-01-02 15:18:06', '2018-01-02 15:18:06', 'aktif'),
(57, 'Kaos Kaki*\r\nWarna: Putih\r\nBahan: Polyster', 10, 3, 20000, 1, 'Running Sock', '(4)running sock_pria.jpg', 1, 1, '2018-01-02 15:19:06', '2018-01-02 15:19:06', 'aktif'),
(58, 'Kaos Kaki*\r\nWarna: Pattern\r\nBahan: Polyster', 10, 3, 40000, 1, 'Casual Sock', '(7)casual sock_wanita.jpg', 1, 1, '2018-01-02 15:20:31', '2018-01-02 15:20:31', 'aktif'),
(59, 'Mainan*\r\nDigunakan bayi dari new born-berdiri\r\nMerangsang kemampuan motorik kasar dan halus bayi', 35, 1, 100000, 1, 'Baby Playgym', 'maenan1.jpg', 3, 3, '2018-01-02 15:20:58', '2018-01-02 15:20:58', 'aktif'),
(60, 'Megicom*\r\nmagic com cosmos 1.8 liter crj 8338', 40, 2, 280000, 4, 'Cosmos', 'magic1.jpg', 5, 5, '2018-01-02 15:21:22', '2018-01-02 15:21:22', 'aktif'),
(61, 'Pakaian*\r\nWarna: Hitam Putih\r\nUkuran: M-XL\r\nBahan: Cotton', 50, 3, 35000, 1, 'VG Shirt', '(2)kaos panjang_pria.jpg', 1, 1, '2018-01-02 15:23:10', '2018-01-02 15:23:10', 'aktif'),
(62, 'Megicom*\r\nKapasitas : 1.8 Liter', 30, 2, 451000, 3, 'Cosmos', 'magic6.jpg', 5, 5, '2018-01-02 15:23:52', '2018-01-02 15:23:52', 'aktif'),
(63, 'Dot*\r\nSebelum digunakan bersihkan dan cucilah gigitan Reliable ini dengan air bersih dan sabun', 100, 1, 20000, 1, 'Water Filled Teether', 'maenan8.jpg', 3, 3, '2018-01-02 15:25:13', '2018-01-02 15:25:13', 'aktif'),
(64, 'Pakaian*\r\nUkuran: M-XL\r\nWarna: Biru\r\nBahan: Cotton', 20, 3, 125000, 1, 'Naughty Dress', '(6)dress_wanita.jpg', 1, 1, '2018-01-02 15:25:37', '2018-01-02 15:25:37', 'aktif'),
(65, 'Megicom*\r\nTeknologi Harmond ( Anti Lengket )', 22, 2, 319000, 3, 'Miyako', 'Miyako1.jpg', 5, 5, '2018-01-02 15:26:08', '2018-01-02 15:26:08', 'aktif'),
(66, 'Pakaian*\r\nWarna: Biru\r\nUkuran: M-XL\r\nBahan: Cotton', 20, 3, 10000, 1, 'Alisan Shirt', '(4)kemeja_pria.jpg', 1, 1, '2018-01-02 15:29:48', '2018-01-02 15:29:48', 'aktif'),
(67, 'Pempers*\r\n100% lapisan luar berpori untuk sirkulasi udara', 20, 1, 60000, 1, 'Fitti Popok', 'pempers2.jpeg', 3, 3, '2018-01-02 15:30:40', '2018-01-02 15:30:40', 'aktif'),
(68, 'Pempers*\r\nEXPIRED DATE masih lama (kecuali disebutkan khusus)\r\nKondisi barang bagus', 50, 1, 87500, 2, 'Mamy poko', 'pempers8.jpg', 3, 3, '2018-01-02 15:34:19', '2018-01-02 15:34:19', 'aktif'),
(70, 'Mesin Cuci*\r\nDaya 245 Watt', 40, 2, 1750000, 7, 'Sanken', 'Sanken2Tabung.jpg', 5, 5, '2018-01-02 15:36:21', '2018-01-02 15:36:21', 'aktif'),
(75, 'Sepatu*\r\nUkuran: 39-45\r\nWarna: Biru\r\n', 20, 3, 250000, 1, 'New Era Shoes', '(1)sepatu running_pria.jpg', 1, 1, '2018-01-02 15:46:11', '2018-01-02 15:46:11', 'aktif'),
(76, 'Sepatu*\r\nUkuran: 37-42\r\nWarna: Hitam', 20, 3, 50000, 1, 'Flat Shoes', '(8)flat shoes_wanita.jpg', 1, 1, '2018-01-02 15:47:23', '2018-01-02 15:47:23', 'aktif'),
(77, 'Sepatu*\r\nUkuran: 37-42\r\nWarna: krem', 20, 3, 75000, 1, 'Wedges', '(10)wedges_wanita.jpg', 1, 1, '2018-01-02 15:48:39', '2018-01-02 15:48:39', 'aktif'),
(78, 'Pempers*\r\nMengurangi risiko kebocoran akibat gerakan aktif bayi dalam posisi apapun', 50, 1, 70000, 2, 'Sweety Silver Pants', 'pempers5.jpg', 3, 3, '2018-01-02 15:49:02', '2018-01-02 15:49:02', 'aktif'),
(79, 'Tas*\r\nWarna: Hitam', 10, 3, 250000, 1, 'Visval Bag', '(3)tas_pria.jpg', 1, 1, '2018-01-02 16:29:17', '2018-01-02 16:29:17', 'aktif'),
(80, 'Tas*\r\nWarna: Hitam', 10, 3, 100000, 1, 'Puroti Bag', '(6)tas_wanita.jpg', 1, 1, '2018-01-02 16:30:07', '2018-01-02 16:30:07', 'aktif'),
(81, 'Tas*\r\nWarna: Pink', 10, 3, 100000, 1, 'Doxology Bag', '(7)tas_wanita.jpg', 1, 1, '2018-01-02 16:31:06', '2018-01-02 16:31:06', 'aktif'),
(82, 'Warna: Abu-Abu', 5, 3, 30000, 1, '3Co Hat', '(3)topi_pria.jpg', 1, 1, '2018-01-02 16:36:43', '2018-01-02 16:36:43', 'aktif'),
(83, 'Warna: Hitam', 10, 3, 45000, 1, 'Bowler Hat', '(9)topi_wanita.jpg', 1, 1, '2018-01-02 16:37:46', '2018-01-02 16:37:46', 'aktif'),
(84, 'Warna: Coklat\r\n', 10, 3, 30000, 1, 'Adilo Hat', '(5)topi_pria.jpg', 1, 1, '2018-01-02 16:40:02', '2018-01-02 16:40:02', 'aktif'),
(85, 'KeretaDorong*\r\nMemiliki Roda 4, lapisan roda dari karet bukan plastik ', 10, 1, 899000, 7, 'Familly Stroller Baby', 'kereta12.jpg', 3, 3, '2018-01-02 16:44:24', '2018-01-02 16:44:24', 'aktif'),
(86, 'Mesin Cuci*\r\nKapasitas 9 kg', 20, 2, 1999000, 7, 'Polytron', 'cuci6.jpg', 5, 5, '2018-01-02 16:46:23', '2018-01-02 16:46:23', 'aktif'),
(87, 'KeretaBayi*\r\nMerk : Family\r\nSNI : YA\r\nMainan : Seri gantung\r\nMusik : YA(Melody)', 15, 1, 350000, 4, 'Family Baby Walker Rolex', 'kereta8.jpg', 3, 3, '2018-01-02 16:51:23', '2018-01-02 16:51:23', 'aktif'),
(88, 'Mesin Cuci*\r\nAir dry & tub clean\r\nAnti wrinkle', 10, 2, 2000000, 7, 'Polytron', 'PolytronZerometic.jpg', 5, 5, '2018-01-02 16:51:47', '2018-01-02 16:51:47', 'aktif'),
(89, 'KeretaBayi*\r\nSangat cocok dan Sangat nyaman buat bepergian\r\nTerdapat pengunci agar bayi tidak jatuh', 10, 1, 250000, 3, 'Baby Infant Seat', 'kereta16.jpg', 3, 3, '2018-01-02 16:57:05', '2018-01-02 16:57:05', 'aktif'),
(90, 'Pemanggang Elektric*\r\nMemiliki pengatur waktu', 15, 2, 425000, 2, 'Cosmos', 'mic5.jpg', 5, 5, '2018-01-02 16:59:45', '2018-01-04 11:33:50', 'aktif'),
(91, 'Tas*\r\nUkuran: T 23 x P 23 x L 10 cm', 60, 1, 75000, 1, 'Baby Scots', 'tas3.jpg', 3, 3, '2018-01-02 17:01:33', '2018-01-02 17:01:33', 'aktif'),
(92, 'Pemanggang Electric*\r\nPanas Max 250\r\nDaya 400 - 800 watt', 45, 2, 500000, 2, 'Cosmos', 'mic4.jpg', 5, 5, '2018-01-02 17:01:47', '2018-01-02 17:01:47', 'aktif'),
(93, 'Tas*\r\nUkuran: T 23 x P 23 x L 10 cm', 35, 1, 80000, 1, 'Baby Scots', 'tas6.jpg', 3, 3, '2018-01-02 17:02:31', '2018-01-02 17:02:31', 'aktif'),
(94, 'Tas*\r\nUkuran: T 23 x P 23 x L 10 cm', 40, 1, 85000, 1, 'Baby Scots', 'tas2.jpg', 3, 3, '2018-01-02 17:20:44', '2018-01-02 17:20:44', 'aktif'),
(95, 'Pekakas*\r\nPembersih telinga\r\nPembersih hidung\r\nHalus dan kecil', 100, 1, 20000, 1, 'Huki Cotton Bath', 'cottonBayi.jpg', 3, 3, '2018-01-02 17:39:08', '2018-01-02 17:39:08', 'aktif'),
(96, 'Dot*\r\nKapasitas 120 ml\r\nterbuat dari bahan Polypropylene yang tahan panas hingga 80 derajat Celcius', 25, 1, 25000, 1, 'Huki Dot', 'dot1.jpg', 3, 3, '2018-01-02 17:43:15', '2018-01-02 17:43:15', 'aktif'),
(97, 'Pemanggang Electric*\r\nKapasitas 19L', 45, 2, 500000, 2, 'Cosmos', 'mic2.jpg', 5, 5, '2018-01-02 17:45:44', '2018-01-02 17:45:44', 'aktif'),
(98, 'Sikat*\r\nSikat botol susu dan dot yang terbuat dari nylon lembut', 0, 1, 34500, 1, 'Bottle Brush', 'pembersih.jpg', 3, 3, '2018-01-02 17:46:39', '2018-01-02 17:46:39', 'aktif'),
(99, 'Ukuran: S-XL\r\nWarna: Abu-Abu\r\nBahan: Cotton', 10, 3, 75000, 1, 'Broomstick Skirt', '(3)broomstick skirt.jpg', 1, 1, '2018-01-03 09:51:40', '2018-01-03 09:51:40', 'aktif'),
(100, 'Ukuran: S-XL\r\nWarna: Pink\r\nBahan: Cotton', 10, 3, 75000, 1, 'Accordion Skirt', '(7)accordion skirt.jpg', 1, 1, '2018-01-03 09:53:07', '2018-01-03 09:53:07', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `level` int(1) NOT NULL,
  `telp` varchar(12) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama`, `password`, `jenis_kelamin`, `level`, `telp`, `alamat`, `tgl_lahir`, `email`, `username`, `image`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'L', 1, '085714029496', 'Jl.Dalang Rt 13 / Rw 005 Munjul Cipayung Jakarta Timur', '2017-04-11', 'admin@admin.com', 'admin', 'admin.jpg'),
(2, 'user', '', 'L', 2, '083872301567', 'Jl.Malaka no 5 Rt 10/ Rw 005', '2017-12-13', 'malaka@gmail.com', 'user', 'user.jpg'),
(3, 'admin2', '21232f297a57a5a743894a0e4a801fc3', 'L', 1, '0000', 'xxx', '2018-01-24', 'paspsdapsp@apdsasd', 'admin2', 'admin.jpg'),
(4, 'admin3', '21232f297a57a5a743894a0e4a801fc3', 'P', 1, '00000', 'pppp', '2018-01-17', 'ppp@ppp', 'admin3', 'admin.jpg'),
(5, 'admin4', '21232f297a57a5a743894a0e4a801fc3', 'P', 1, '085714029496', 'jakarta', '2018-01-18', 'paspsdapsp@apdsasd', 'admin4', 'admin.jpg'),
(6, 'jod', 'e29ed63f9027e188f724423cd630d5e5', 'L', 2, '089718257', 'medan', '1996-07-24', 'jod@gmail', 'jod', 'user.jpg'),
(7, 'khalem', '21232f297a57a5a743894a0e4a801fc3', 'P', 2, '081233332', 'Jakarta', '1995-12-12', 'kahlem@gmai.com', 'kahlem2', 'user.jpg'),
(8, 'febi', 'bd039fb0c1e7345572582b0cfde4c132', 'L', 2, '021', 'jakarta', '1996-10-06', 'febi@gmail.com', 'febi', 'user.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`id_items`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_ketegori`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id_payment`),
  ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `id_items` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_ketegori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD CONSTRAINT `tbl_items_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_items_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD CONSTRAINT `tbl_payment_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori` (`id_ketegori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
