-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 05:53 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dania_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `br_id` int(6) NOT NULL,
  `br_nm` varchar(50) NOT NULL,
  `br_item` int(4) NOT NULL,
  `br_hrg` int(11) NOT NULL,
  `br_stok` int(9) NOT NULL,
  `br_satuan` varchar(20) NOT NULL,
  `br_gbr` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `ket` varchar(250) NOT NULL,
  `br_sts` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`br_id`, `br_nm`, `br_item`, `br_hrg`, `br_stok`, `br_satuan`, `br_gbr`, `ket`, `br_sts`) VALUES
(1, 'Kaos Sudirman', 1, 60000, 12, 'Pcs', 'gambar/8.jpg', 'Bahan build up tanpa jahitan samping', 'Y'),
(2, 'Kaos Skaters', 1, 65000, 24, 'Pcs', 'gambar/9.jpg', 'Bahan Cotton Combed 24s built up', 'Y'),
(3, 'Kaos Emwe', 1, 80000, 30, 'Pcs', 'gambar/6.jpg', 'Bahan build up tanpa jahitan samping', 'Y'),
(5, 'Kaos Man City', 1, 60000, 30, 'Pcs', 'gambar/2.jpg', 'Bahan Cotton Combed 20s Jahitan samping', 'Y'),
(6, 'Kaos H & L', 1, 75000, 20, 'Pcs', 'gambar/5.jpg', 'Bahan Cotton Combed 24s built up', 'Y'),
(7, 'Kaos Cool Blue', 1, 70000, 20, 'Pcs', 'gambar/4.jpg', 'Bahan kardet dania store', 'Y'),
(8, 'Kaos Feed Me', 1, 65000, 12, 'Pcs', 'gambar/3.jpg', 'Bahan Cotton Combed 24s built up', 'Y'),
(9, 'Kaos Art Hitam', 1, 55000, 20, 'Pcs', 'gambar/1.jpg', 'Bahan build up tanpa jahitan samping', 'Y'),
(20, 'kaos batwing crop', 0, 40000, 12, 'pcs', 'gambar/11.png', 'kaos batwing crop', ''),
(28, 'kaos kaki', 0, 10000, 12, 'pcs', 'gambar/13.png', 'kecil', '');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id`, `nama_lengkap`, `email`, `username`, `password`) VALUES
(2, 'bryan', 'bryand@gmail.com', 'Bryand', '2121147'),
(5, 'defri123', 'defri@gmail.com', 'defri12', 'defri12');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama_lengkap`, `email`, `username`, `password`) VALUES
(6, 'Difta123', 'difta@gmail.com', 'Difta12', 'difta12'),
(7, 'rini01', 'rini@gmail.com', 'rini90', 'rini90');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`br_id`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `br_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
