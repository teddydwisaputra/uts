-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 19 Okt 2020 pada 16.36
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15087082_putusan_mahkamah_agung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak`
--

CREATE TABLE `pajak` (
  `id_pjk` int(11) NOT NULL,
  `putusan_pjk` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
  `pilihan_pjk` varchar(355) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perdata_agama`
--

CREATE TABLE `perdata_agama` (
  `id_agama` int(11) NOT NULL,
  `putusan_ag` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
  `pilihan_ag` varchar(355) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perkara`
--

CREATE TABLE `perkara` (
  `id_perkara` int(11) NOT NULL,
  `Perdata Khusus` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `Perdata Agama` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `Pidana Umum` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `Pajak` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `Pidana militer` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `perkara`
--

INSERT INTO `perkara` (`id_perkara`, `Perdata Khusus`, `Perdata Agama`, `Pidana Umum`, `Pajak`, `Pidana militer`) VALUES
(1, 'putusan', 'putusan', 'putusan', 'putusan', 'putusan'),
(2, 'pilihan', 'pilihan', 'pilihan', 'pilihan', 'pilihan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pidana_khusus`
--

CREATE TABLE `pidana_khusus` (
  `id_khs` int(11) NOT NULL,
  `putusan_khs` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
  `pilihan_khs` varchar(355) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pidana_militer`
--

CREATE TABLE `pidana_militer` (
  `id_militer` int(11) NOT NULL,
  `putusan_pm` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
  `pilihan_pm` varchar(355) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `pidana_militer`
--

INSERT INTO `pidana_militer` (`id_militer`, `putusan_pm`, `pilihan_pm`) VALUES
(111, 'Putusan nomor 1753 B/PK/PJK/2020', 'Putusan nomor 498 K/Pdt/2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pidana_umum`
--

CREATE TABLE `pidana_umum` (
  `id_umum` int(11) NOT NULL,
  `putusan_um` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
  `pilihan_um` varchar(355) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pilihan_perkara`
--

CREATE TABLE `pilihan_perkara` (
  `id_pilihan` int(11) NOT NULL,
  `pilihan` varchar(355) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Putusan`
--

CREATE TABLE `Putusan` (
  `id_putusan` int(11) NOT NULL,
  `keputusan_perkara` varchar(355) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pajak`
--
ALTER TABLE `pajak`
  ADD PRIMARY KEY (`id_pjk`);

--
-- Indeks untuk tabel `perdata_agama`
--
ALTER TABLE `perdata_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indeks untuk tabel `perkara`
--
ALTER TABLE `perkara`
  ADD PRIMARY KEY (`id_perkara`);

--
-- Indeks untuk tabel `pidana_khusus`
--
ALTER TABLE `pidana_khusus`
  ADD PRIMARY KEY (`id_khs`);

--
-- Indeks untuk tabel `pidana_militer`
--
ALTER TABLE `pidana_militer`
  ADD PRIMARY KEY (`id_militer`);

--
-- Indeks untuk tabel `pidana_umum`
--
ALTER TABLE `pidana_umum`
  ADD PRIMARY KEY (`id_umum`);

--
-- Indeks untuk tabel `pilihan_perkara`
--
ALTER TABLE `pilihan_perkara`
  ADD PRIMARY KEY (`id_pilihan`);

--
-- Indeks untuk tabel `Putusan`
--
ALTER TABLE `Putusan`
  ADD PRIMARY KEY (`id_putusan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
