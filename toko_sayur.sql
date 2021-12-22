-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 07:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_sayur`
--

-- --------------------------------------------------------

--
-- Table structure for table `sayuran`
--

CREATE TABLE `sayuran` (
  `id_sayuran` int(11) NOT NULL,
  `nama_sayuran` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sayuran`
--

INSERT INTO `sayuran` (`id_sayuran`, `nama_sayuran`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, ' Bayam', 'harga/ikat', 'Sayuran', 1000, 15, 'bayam.jpg'),
(3, 'Sawi', 'harga/ikat', 'Sayuran', 2000, 10, 'Sawi.jpg'),
(4, 'Wortel', 'harga/kg', 'Sayuran', 18000, 10, 'Wortel.jpg'),
(7, 'Tomat', 'harga/kg', 'Buah', 10000, 12, 'tomat.jpg'),
(8, 'Cabai', 'harga/ons', 'Buah', 7500, 5, 'cabairawit.jpg'),
(11, 'Brokoli', 'harga/plastik(1 bongkah/plastik)', 'Sayuran', 5000, 10, 'brokoli.jpg'),
(12, 'Kangkung', 'harga/ikat', 'Sayuran', 2000, 10, 'kangkung.jpg'),
(14, 'Cabai besar', 'harga/ons', 'Buah', 6000, 5, 'Cabaibesar.jpg'),
(16, 'Jahe', 'harga/ons', 'Rempah - rempah', 3500, 10, 'jahe1.jpeg'),
(17, 'Kunyit', 'harga/ons', 'Rempah - rempah', 3000, 10, 'kunyit1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sayuran`
--
ALTER TABLE `sayuran`
  ADD PRIMARY KEY (`id_sayuran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sayuran`
--
ALTER TABLE `sayuran`
  MODIFY `id_sayuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
