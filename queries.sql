-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2020 at 08:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pilihape`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bobot_kriteria`
--

CREATE TABLE `tb_bobot_kriteria` (
  `id` int(11) NOT NULL,
  `phone_id` varchar(10) NOT NULL,
  `merk_type` varchar(30) NOT NULL,
  `layar_ukuran` int(11) DEFAULT NULL,
  `layar_resolusi` int(11) DEFAULT NULL,
  `layar_model` int(11) DEFAULT NULL,
  `kapasitas_baterai` int(11) DEFAULT NULL,
  `kamera_jumlah` int(11) DEFAULT NULL,
  `kamera_res_depan` int(11) DEFAULT NULL,
  `kamera_res_belakang` int(11) DEFAULT NULL,
  `ranking_prosesor` int(11) DEFAULT NULL,
  `kapasitas_penyimpanan` int(11) DEFAULT NULL,
  `kapasitas_ram` int(11) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `software` int(11) DEFAULT NULL,
  `kondisi_fisik` int(11) DEFAULT NULL,
  `kelengkapan` int(11) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `store_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bobot_kriteria`
--

INSERT INTO `tb_bobot_kriteria` (`id`, `phone_id`, `merk_type`, `layar_ukuran`, `layar_resolusi`, `layar_model`, `kapasitas_baterai`, `kamera_jumlah`, `kamera_res_depan`, `kamera_res_belakang`, `ranking_prosesor`, `kapasitas_penyimpanan`, `kapasitas_ram`, `umur`, `software`, `kondisi_fisik`, `kelengkapan`, `harga`, `store_id`) VALUES
(1, '', 'Oppo A5 2020 3/64', 3, 1, 3, 4, 4, 1, 2, 4, 3, 2, 3, 5, 3, 3, 1, 1),
(2, '', 'Oppo A5 2020 3/64', 3, 1, 3, 4, 4, 1, 2, 4, 3, 2, 3, 5, 3, 3, 1, 1),
(3, '', 'Oppo A5 2020 3/64', 3, 1, 3, 4, 4, 1, 2, 4, 3, 2, 3, 5, 3, 3, 1, 1),
(4, '', 'Oppo A5 2020 3/64', 3, 1, 3, 4, 4, 1, 2, 4, 3, 2, 3, 5, 3, 3, 1, 1),
(5, '', 'Oppo A5 2020 3/64', 3, 1, 3, 4, 4, 1, 2, 4, 3, 2, 3, 5, 3, 3, 1, 1),
(6, '', 'Oppo A5 2020 3/64', 3, 1, 3, 4, 4, 1, 2, 4, 3, 2, 3, 5, 3, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_centurionmark`
--

CREATE TABLE `tb_centurionmark` (
  `rank` int(11) NOT NULL,
  `prosesor` varchar(30) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_centurionmark`
--

INSERT INTO `tb_centurionmark` (`rank`, `prosesor`, `score`) VALUES
(1, 'Apple A13 Bionic', 152),
(2, 'Snapdragon 865', 150),
(3, 'Exynos 990', 148),
(4, 'MediaTek Dimensity 1000', 147),
(5, 'Apple A12 Bionic', 146),
(6, 'Snapdragon 855+', 145),
(7, 'Snapdragon 855', 144),
(8, 'Kirin 990 5G', 144),
(9, 'Kirin 990 4G', 143),
(10, 'Exynos 9825', 142),
(11, 'Exynos 9820', 140),
(12, 'MediaTek Dimensity 1000L', 138),
(13, 'Kirin 980', 137),
(14, 'Exynos 980', 135),
(15, 'Snapdragon 765G', 134),
(16, 'Snapdragon 765', 133),
(17, 'Apple A11 Bionic', 130),
(18, 'Snapdragon 845', 127),
(19, 'Exynos 9810', 125),
(20, 'Snapdragon 730G', 124),
(21, 'Kirin 810', 124),
(22, 'Snapdragon 730', 123),
(23, 'Kirin 970', 121),
(24, 'Snapdragon 720G', 121),
(25, 'Helio G90T', 119),
(26, 'Apple A10 Fusion', 118),
(27, 'Helio G90', 118),
(28, 'Snapdragon 835', 117),
(29, 'Exynos 8895', 114),
(30, 'Snapdragon 712', 114),
(31, 'Snapdragon 710', 113),
(32, 'Snapdragon 675', 112),
(33, 'Snapdragon 670', 111),
(34, 'Helio P90', 110),
(35, 'Helio X30', 109),
(36, 'Apple A9', 109),
(37, 'Snapdragon 821', 108),
(38, 'Snapdragon 820', 107),
(39, 'Exynos 8890', 106),
(40, 'Helio G80', 104),
(41, 'Kirin 960', 103),
(42, 'Exynos 9611', 103),
(43, 'Helio G70', 103),
(44, 'Exynos 9610', 102),
(45, 'Helio P65', 102),
(46, 'Snapdragon 660', 101),
(47, 'Exynos 9609', 101),
(48, 'Snapdragon 665', 100),
(49, 'Snapdragon 662', 100),
(50, 'Helio P70', 99),
(51, 'Snapdragon 460', 99),
(52, 'Helio P60', 98),
(53, 'Exynos 7885', 98),
(54, 'Kirin 710', 98),
(55, 'Snapdragon 636', 97),
(56, 'Exynos 7904', 96),
(57, 'Snapdragon 632', 92),
(58, 'Kirin 955', 89),
(59, 'Snapdragon 630', 88),
(60, 'Kirin 950', 88),
(61, 'Exynos 7872', 87),
(62, 'Helio X27', 85),
(63, 'Exynos 7420', 81),
(64, 'Helio P35', 81),
(65, 'Snapdragon 810', 80),
(66, 'Helio P30', 80),
(67, 'Helio X23', 79),
(68, 'Helio P23', 79),
(69, 'Helio X25', 77),
(70, 'Exynos 7880', 77),
(71, 'Helio X20', 75),
(72, 'Helio P25', 75),
(73, 'Snapdragon 653', 74),
(74, 'Helio P20', 74),
(75, 'Apple A8', 74),
(76, 'Snapdragon 626', 72),
(77, 'Snapdragon 625', 71),
(78, 'Kirin 659', 71),
(79, 'Kirin 658', 71),
(80, 'Snapdragon 650', 70),
(81, 'Kirin 655', 70),
(82, 'Kirin 650', 70),
(83, 'Snapdragon 439', 69),
(84, 'Helio P22', 69),
(85, 'Snapdragon 652', 69),
(86, 'Snapdragon 450', 69),
(87, 'Snapdragon 808', 68),
(88, 'Exynos 7870', 67),
(89, 'Helio A22', 66),
(90, 'Kirin 935', 66),
(91, 'Kirin 930', 65),
(92, 'Apple A7', 65),
(93, 'Snapdragon 429', 65),
(94, 'Helio A20', 63),
(95, 'Exynos 5433', 61),
(96, 'Helio P18', 61),
(97, 'Helio P10', 59),
(98, 'Snapdragon 435', 59),
(99, 'Helio X10', 59),
(100, 'Exynos 7580', 58),
(101, 'Snapdragon 430', 57),
(102, 'Snapdragon 617', 55),
(103, 'Exynos 7570', 53),
(104, 'Snapdragon 616', 52),
(105, 'Snapdragon 615', 51),
(106, 'MT6750T', 51),
(107, 'Snapdragon 427', 50),
(108, 'MT6739', 50),
(109, 'Snapdragon 425', 49),
(110, 'MT6738', 49),
(111, 'MT6753', 49),
(112, 'MT6752', 48),
(113, 'MT6750', 48),
(114, 'Snapdragon 415', 47),
(115, 'Kirin 620', 47),
(116, 'Snapdragon 412', 46),
(117, 'MT6737T', 46),
(118, 'Snapdragon 410', 45),
(119, 'MT6737', 45),
(120, 'MT6735', 42),
(121, 'MT6732', 41);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ponsel`
--

CREATE TABLE `tb_ponsel` (
  `id` int(11) NOT NULL,
  `phone_id` varchar(10) NOT NULL,
  `merk_type` varchar(30) NOT NULL,
  `layar_ukuran` varchar(30) NOT NULL,
  `layar_resolusi` enum('540p','720p','1080p','1440p') DEFAULT NULL,
  `layar_model` enum('konvensional','full view','notch','punch hole','all screen') DEFAULT NULL,
  `kapasitas_baterai` int(5) NOT NULL,
  `kamera_jumlah` enum('single','dual','triple','quad') DEFAULT NULL,
  `kamera_res_depan` int(5) DEFAULT NULL,
  `kamera_res_belakang` int(5) DEFAULT NULL,
  `prosesor` varchar(30) NOT NULL,
  `ranking_prosesor` int(5) NOT NULL,
  `kapasitas_penyimpanan` enum('16','32','64','128') DEFAULT NULL,
  `kapasitas_ram` enum('2','3','4','6') DEFAULT NULL,
  `umur` enum('<12 bulan','12-24 bulan','>24 bulan') DEFAULT NULL,
  `software` varchar(30) NOT NULL,
  `kondisi_fisik` enum('lecet parah','lecet ringan','mulus') DEFAULT NULL,
  `kelengkapan` enum('hanya unit','unit dan charger','fullset') DEFAULT NULL,
  `harga` int(10) NOT NULL,
  `store_id` int(5) NOT NULL,
  `image_url` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ponsel`
--

INSERT INTO `tb_ponsel` (`id`, `phone_id`, `merk_type`, `layar_ukuran`, `layar_resolusi`, `layar_model`, `kapasitas_baterai`, `kamera_jumlah`, `kamera_res_depan`, `kamera_res_belakang`, `prosesor`, `ranking_prosesor`, `kapasitas_penyimpanan`, `kapasitas_ram`, `umur`, `software`, `kondisi_fisik`, `kelengkapan`, `harga`, `store_id`, `image_url`) VALUES
(1, '', 'Oppo A5 2020 3/64', '6.5', '720p', 'notch', 5000, 'quad', 5, 12, 'Snapdragon 665', 100, '64', '3', '<12 bulan', 'android 10', 'mulus', 'fullset', 1850000, 1, 'http://localhost/pilihape_api/products/20201005200130_1.jpg'),
(2, '', 'Oppo A5 2020 3/64', '6.5', '720p', 'notch', 5000, 'quad', 5, 12, 'Snapdragon 665', 100, '64', '3', '<12 bulan', 'android 10', 'mulus', 'fullset', 1850000, 1, 'http://localhost/pilihape_api/products/20201005200130_1.jpg'),
(3, '', 'Oppo A5 2020 3/64', '6.5', '720p', 'notch', 5000, 'quad', 5, 12, 'Snapdragon 665', 100, '64', '3', '<12 bulan', 'android 10', 'mulus', 'fullset', 1850000, 1, 'http://localhost/pilihape_api/products/20201005200130_1.jpg'),
(4, '', 'Oppo A5 2020 3/64', '6.5', '720p', 'notch', 5000, 'quad', 5, 12, 'Snapdragon 665', 100, '64', '3', '<12 bulan', 'android 10', 'mulus', 'fullset', 1850000, 1, 'http://localhost/pilihape_api/products/20201005200130_1.jpg'),
(5, '', 'Oppo A5 2020 3/64', '6.5', '720p', 'notch', 5000, 'quad', 5, 12, 'Snapdragon 665', 100, '64', '3', '<12 bulan', 'android 10', 'mulus', 'fullset', 1850000, 1, 'http://localhost/pilihape_api/products/20201005200130_1.jpg'),
(6, '', 'Oppo A5 2020 3/64', '6.5', '720p', 'notch', 5000, 'quad', 5, 12, 'Snapdragon 665', 100, '64', '3', '<12 bulan', 'android 10', 'mulus', 'fullset', 1850000, 1, 'http://localhost/pilihape_api/products/20201005200130_1.jpg'),
(7, '', 'Oppo A5 2020 3/64', '6.5', '720p', 'notch', 5000, 'quad', 5, 12, 'Snapdragon 665', 100, '64', '3', '<12 bulan', 'android 10', 'mulus', 'fullset', 1850000, 1, 'http://localhost/pilihape_api/products/20201005200130_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_seller_agent`
--

CREATE TABLE `tb_seller_agent` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `session` varchar(30) DEFAULT NULL,
  `store_name` varchar(30) DEFAULT NULL,
  `store_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_seller_agent`
--

INSERT INTO `tb_seller_agent` (`id`, `username`, `phone_no`, `password`, `session`, `store_name`, `store_id`) VALUES
(1, 'apry', '085728451774', 'Z2FudGVuZw==', '085728451774131311112020', 're computer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_wk`
--

CREATE TABLE `tb_wk` (
  `id` int(11) NOT NULL,
  `phone_id` varchar(10) NOT NULL,
  `merk_type` varchar(30) NOT NULL,
  `layar_ukuran` float NOT NULL,
  `layar_resolusi` float NOT NULL,
  `layar_model` float NOT NULL,
  `kapasitas_baterai` float NOT NULL,
  `kamera_jumlah` float NOT NULL,
  `kamera_res_depan` float NOT NULL,
  `kamera_res_belakang` float NOT NULL,
  `ranking_prosesor` float NOT NULL,
  `kapasitas_penyimpanan` float NOT NULL,
  `kapasitas_ram` float NOT NULL,
  `umur` float NOT NULL,
  `software` float NOT NULL,
  `kondisi_fisik` float NOT NULL,
  `kelengkapan` float NOT NULL,
  `harga` float NOT NULL,
  `store_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_wk`
--

INSERT INTO `tb_wk` (`id`, `phone_id`, `merk_type`, `layar_ukuran`, `layar_resolusi`, `layar_model`, `kapasitas_baterai`, `kamera_jumlah`, `kamera_res_depan`, `kamera_res_belakang`, `ranking_prosesor`, `kapasitas_penyimpanan`, `kapasitas_ram`, `umur`, `software`, `kondisi_fisik`, `kelengkapan`, `harga`, `store_id`) VALUES
(1, '', 'Oppo A5 2020 3/64', 0.75, 0.333333, 0.6, 0.8, 1, 0.142857, 0.333333, 0.8, 0.75, 0.5, 1, 1, 1, 1, 0.2, 1),
(2, '', 'Oppo A5 2020 3/64', 0.75, 0.333333, 0.6, 0.8, 1, 0.142857, 0.333333, 0.8, 0.75, 0.5, 1, 1, 1, 1, 0.2, 1),
(3, '', 'Oppo A5 2020 3/64', 0.75, 0.333333, 0.6, 0.8, 1, 0.142857, 0.333333, 0.8, 0.75, 0.5, 1, 1, 1, 1, 0.2, 1),
(4, '', 'Oppo A5 2020 3/64', 0.75, 0.333333, 0.6, 0.8, 1, 0.142857, 0.333333, 0.8, 0.75, 0.5, 1, 1, 1, 1, 0.2, 1),
(5, '', 'Oppo A5 2020 3/64', 0.75, 0.333333, 0.6, 0.8, 1, 0.142857, 0.333333, 0.8, 0.75, 0.5, 1, 1, 1, 1, 0.2, 1),
(6, '', 'Oppo A5 2020 3/64', 0.75, 0.333333, 0.6, 0.8, 1, 0.142857, 0.333333, 0.8, 0.75, 0.5, 1, 1, 1, 1, 0.2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bobot_kriteria`
--
ALTER TABLE `tb_bobot_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_centurionmark`
--
ALTER TABLE `tb_centurionmark`
  ADD PRIMARY KEY (`rank`);

--
-- Indexes for table `tb_ponsel`
--
ALTER TABLE `tb_ponsel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_seller_agent`
--
ALTER TABLE `tb_seller_agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_wk`
--
ALTER TABLE `tb_wk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bobot_kriteria`
--
ALTER TABLE `tb_bobot_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_ponsel`
--
ALTER TABLE `tb_ponsel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_seller_agent`
--
ALTER TABLE `tb_seller_agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_wk`
--
ALTER TABLE `tb_wk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
