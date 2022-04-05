-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 10:28 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

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
(1, ' Bayam', 'harga/ikat', 'Sayuran', 1000, 14, 'bayam.jpg'),
(3, 'Sawi', 'harga/ikat', 'Sayuran', 2000, 9, 'Sawi.jpg'),
(4, 'Wortel', 'harga/kg', 'Sayuran', 18000, 10, 'Wortel.jpg'),
(7, 'Tomat', 'harga/kg', 'Buah', 10000, 12, 'tomat.jpg'),
(8, 'Cabai', 'harga/ons', 'Buah', 7500, 5, 'cabairawit.jpg'),
(11, 'Brokoli', 'harga/plastik(1 bongkah/plastik)', 'Sayuran', 5000, 10, 'brokoli.jpg'),
(12, 'Kangkung', 'harga/ikat', 'Sayuran', 2000, 10, 'kangkung.jpg'),
(14, 'Cabai besar', 'harga/ons', 'Buah', 6000, 5, 'Cabaibesar.jpg'),
(16, 'Jahe', 'harga/ons', 'Rempah - rempah', 3500, 10, 'jahe1.jpeg'),
(17, 'Kunyit', 'harga/ons', 'Rempah - rempah', 3000, 10, 'kunyit1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, '', '', '2022-04-05 15:25:33', '2027-04-05 15:25:33'),
(2, 'Mutia', 'jl Bintar', '2022-04-05 15:26:16', '2027-04-05 15:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_sayuran` int(11) NOT NULL,
  `nama_sayuran` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_sayuran`, `nama_sayuran`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, ' Bayam', 1, 1000, ''),
(2, 2, 3, 'Sawi', 1, 2000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN 
	UPDATE sayuran SET stok = stok-NEW.jumlah
    WHERE id_sayuran = NEW.id_sayuran;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sayuran`
--
ALTER TABLE `sayuran`
  ADD PRIMARY KEY (`id_sayuran`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sayuran`
--
ALTER TABLE `sayuran`
  MODIFY `id_sayuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
