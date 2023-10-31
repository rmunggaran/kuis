-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2023 pada 22.44
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kuis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_tiket`
--

CREATE TABLE `harga_tiket` (
  `id` int(11) NOT NULL,
  `kode_pesawat` varchar(5) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `harga_tiket`
--

INSERT INTO `harga_tiket` (`id`, `kode_pesawat`, `kelas`, `harga`) VALUES
(1, 'GRD', 'eksekutif', 1500000),
(2, 'GRD', 'bisnis', 900000),
(3, 'GRD', 'ekonomi', 500000),
(4, 'MPT', 'eksekutif', 1200000),
(5, 'MPT', 'bisnis', 800000),
(6, 'MPT', 'ekonomi', 400000),
(7, 'BTV', 'eksekutif', 1000000),
(8, 'BTV', 'bisnis', 700000),
(9, 'BTV', 'ekonomi', 300000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nama_pesawat` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `jumlah_tiket` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id`, `nama`, `nama_pesawat`, `kelas`, `harga_tiket`, `jumlah_tiket`, `total`) VALUES
(4, 'Azis Supriatna', 'Garuda', 'eksekutif', 1500000, 2, 3000000),
(5, 'jahroni', 'Merpati', 'ekonomi', 400000, 2, 800000),
(6, 'himawari', 'Batavia', 'bisnis', 700000, 1, 700000),
(7, 'RIKSA MUNGGARAN', 'Garuda', 'eksekutif', 1500000, 1, 1500000),
(8, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(9, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(10, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(11, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(12, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(13, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(14, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(15, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(16, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(17, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(18, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(19, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(20, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(21, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(22, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(23, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(24, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(25, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(26, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(27, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(28, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(29, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(30, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(31, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(32, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(33, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(34, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(35, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(36, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(37, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(38, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(39, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(40, 'jahroni hidayat', 'Batavia', 'eksekutif', 1000000, 2, 2000000),
(41, 'hussen', 'Batavia', 'eksekutif', 1000000, 2, 2000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesawat`
--

CREATE TABLE `pesawat` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesawat`
--

INSERT INTO `pesawat` (`id`, `kode`, `nama`) VALUES
(1, 'GRD', 'Garuda'),
(2, 'MPT', 'Merpati'),
(3, 'BTV', 'Batavia');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `harga_tiket`
--
ALTER TABLE `harga_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesawat`
--
ALTER TABLE `pesawat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `harga_tiket`
--
ALTER TABLE `harga_tiket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `pesawat`
--
ALTER TABLE `pesawat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
