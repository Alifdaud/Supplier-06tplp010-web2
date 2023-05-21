-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Bulan Mei 2023 pada 17.51
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uts_06tplp010_alifdaudf`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pesanan_06tplp010_alifdaudf`
--

CREATE TABLE `tbl_pesanan_06tplp010_alifdaudf` (
  `id` int(11) NOT NULL,
  `nama_alif` varchar(50) NOT NULL,
  `alamat_alif` varchar(50) NOT NULL,
  `no_hp_alif` varchar(30) NOT NULL,
  `email_alif` varchar(50) NOT NULL,
  `pesanan_alif` varchar(50) NOT NULL,
  `ukuran_alif` varchar(200) NOT NULL,
  `jumlah_alif` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_pesanan_06tplp010_alifdaudf`
--

INSERT INTO `tbl_pesanan_06tplp010_alifdaudf` (`id`, `nama_alif`, `alamat_alif`, `no_hp_alif`, `email_alif`, `pesanan_alif`, `ukuran_alif`, `jumlah_alif`) VALUES
(49, 'daud', 'ss', '33', 'ww@ee', 'Kaos, Kemeja, Hem', 'S, M', '3'),
(50, 'ss', 'ss', '33', 'ww@ee', 'Kaos, Kemeja, Hem', 'S, M', '3'),
(51, 'ss', 'ss', '33', 'ww@ee', 'Kaos, Kemeja, Hem', 'S, M,', '3'),
(52, 'ss', 'ss', '33', 'ww@ee', 'Kaos, Kemeja, Hem', 'S, M,', '3'),
(53, 'ss', 'ss', '33', 'ww@ee', 'Kaos, Kemeja, Hem', 'L, L', '3'),
(54, 'ss', 'ss', '33', 'ww@ee', 'Kaos, Kemeja, Hem', 'L, L', '3'),
(55, 'adya', 'jktra', '0898989', 'adya@ee', 'Kaos, Kemeja, Hem', 'S, M, XL', '3000'),
(64, 'alidf', 'ejoiq', '0909', 'da@gyudg', 'hem', 'L', '12'),
(65, 'alifdaud', 'pd aren', '089898', 'daud@gamail.com', 'kaos', 'M', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier_alif`
--

CREATE TABLE `tbl_supplier_alif` (
  `id` int(11) NOT NULL,
  `kd_supplier_alif` varchar(100) NOT NULL,
  `nama_supplier_alif` varchar(50) NOT NULL,
  `alamat_supplier_alif` varchar(100) NOT NULL,
  `notlp_supplier_alif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_supplier_alif`
--

INSERT INTO `tbl_supplier_alif` (`id`, `kd_supplier_alif`, `nama_supplier_alif`, `alamat_supplier_alif`, `notlp_supplier_alif`) VALUES
(1, '1120', 'alif daud', 'tangerang', '089754532');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_pesanan_06tplp010_alifdaudf`
--
ALTER TABLE `tbl_pesanan_06tplp010_alifdaudf`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_supplier_alif`
--
ALTER TABLE `tbl_supplier_alif`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_pesanan_06tplp010_alifdaudf`
--
ALTER TABLE `tbl_pesanan_06tplp010_alifdaudf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `tbl_supplier_alif`
--
ALTER TABLE `tbl_supplier_alif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
