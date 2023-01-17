-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jan 2023 pada 15.27
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `entry identitas`
--

CREATE TABLE `entry identitas` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis paket`
--

CREATE TABLE `jenis paket` (
  `no_paket` varchar(255) NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `jenis_paket` varchar(255) NOT NULL,
  `jumlah_hari` int(60) NOT NULL,
  `harga` int(255) NOT NULL,
  `satuan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nomor_karyawan` varchar(255) NOT NULL,
  `nama_karyawan` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` int(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsumen`
--

CREATE TABLE `konsumen` (
  `no_konsumen` varchar(255) NOT NULL,
  `nama_konsumen` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status laundry`
--

CREATE TABLE `status laundry` (
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe bayar`
--

CREATE TABLE `tipe bayar` (
  `tipe` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `nama_konsumen` varchar(255) NOT NULL,
  `kode_konsumen` varchar(255) NOT NULL,
  `telepon` int(15) NOT NULL,
  `kode_paket` varchar(155) NOT NULL,
  `jenis_paket` varchar(255) NOT NULL,
  `estimasi_hari` int(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `satuan` int(11) NOT NULL,
  `tanggal_masuk` int(11) NOT NULL,
  `tanggal_keluar` int(11) NOT NULL,
  `jenis_bayar` varchar(255) NOT NULL,
  `status_bayar` varchar(255) NOT NULL,
  `nomor_transaksi` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
