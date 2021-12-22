-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1

-- Waktu pembuatan: 22 Des 2021 pada 09.06
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

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
-- Struktur dari tabel `sayuran`
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
-- Dumping data untuk tabel `sayuran`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sayuran`
--
ALTER TABLE `sayuran`
  ADD PRIMARY KEY (`id_sayuran`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sayuran`
--
ALTER TABLE `sayuran`
  MODIFY `id_sayuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
