-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2024 pada 03.28
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan nanda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama-buku`
--

CREATE TABLE `nama-buku` (
  `id` int(10) NOT NULL,
  `Nama-buku` text NOT NULL,
  `Nama-anggota` text NOT NULL,
  `Pekerjaan` varchar(20) NOT NULL,
  `no telppon` text NOT NULL,
  `alamat` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nama-buku`
--

INSERT INTO `nama-buku` (`id`, `Nama-buku`, `Nama-anggota`, `Pekerjaan`, `no telppon`, `alamat`) VALUES
(1, 'Si Kancil', 'santi', 'PNS', '085123456789', 'Kotagede'),
(2, 'Pendekar', 'Agus', 'ASN', '085157665412', 'Jambidan'),
(3, '100 cara agar sukses', 'Joko', 'Pelajar', '081738223742', 'Potorono'),
(4, 'The straight ', 'Susatyo', 'Mahasiswa', '085163882913', 'Sleman'),
(5, 'Cara sukses di usia muda', 'Sutrisno', 'Wiraswasta', '086628372828', 'Bantul'),
(6, 'Cara agar suami tetap puas', 'Rochmi', 'Ibu rumah tangga', '081638384738', 'Jagalan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama-petugas`
--

CREATE TABLE `nama-petugas` (
  `id` int(10) NOT NULL,
  `kode-petugas` varchar(5) NOT NULL,
  `Nama-petugas` text NOT NULL,
  `jabatan-petugas` varchar(20) NOT NULL,
  `no-telpon` text NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nama-petugas`
--

INSERT INTO `nama-petugas` (`id`, `kode-petugas`, `Nama-petugas`, `jabatan-petugas`, `no-telpon`, `alamat`) VALUES
(1, '0001A', 'Nanda', 'Kepala perpustakaan', '081241437631', 'godean'),
(2, '0002B', 'Rosyid', 'Asisten kepala', '084512677890', 'sleman'),
(3, '0003C', 'Jauza', 'Asisten kepala', '089876232139', 'kotagede'),
(4, '0004D', 'Lazuardi', 'administrasi', '082345567634', 'kotagede'),
(5, '0005E', 'Vito', 'administrasi', '083455673423', 'jogja'),
(6, '0006F', 'Ian', 'Tenaga bantuan', '083244565678', 'pakualaman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama-rak`
--

CREATE TABLE `nama-rak` (
  `id` int(10) NOT NULL,
  `kode-rak` varchar(5) NOT NULL,
  `Nama-rak` text NOT NULL,
  `lokasi-rak` text NOT NULL,
  `kode-buku` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nama-rak`
--

INSERT INTO `nama-rak` (`id`, `kode-rak`, `Nama-rak`, `lokasi-rak`, `kode-buku`) VALUES
(1, '1111A', 'merapi', 'Lantai1', 'A0321'),
(2, '2222B', 'bromo', 'Lantai1', 'A5344'),
(3, '3333C', 'salak', 'Lantai3', 'A4244'),
(4, '4444D', 'raung', 'Lantai2', 'A4334'),
(5, '5555E', 'sindoro', 'Lantai2', 'A3564'),
(6, '6666F', 'semeru', 'Lantai3', 'A5454');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_anggota`
--

CREATE TABLE `nama_anggota` (
  `id` int(10) NOT NULL,
  `Kode_anggota` char(5) NOT NULL,
  `Nama_anggota` varchar(50) NOT NULL,
  `Pekerjaan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_telpon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nama_anggota`
--

INSERT INTO `nama_anggota` (`id`, `Kode_anggota`, `Nama_anggota`, `Pekerjaan`, `alamat`, `no_telpon`) VALUES
(1, 'A0001', 'Santi', 'PNS', 'Kotagede', '085123456789'),
(2, 'A0002', 'Agus', 'ASN', 'Jambidan', '085157665412'),
(3, 'A0003', 'Joko', 'Pelajar', 'Potorono', '081738223742'),
(4, 'A0004', 'Susatyo', 'Mahasiswa', 'Sleman', '085163882913'),
(5, 'A0005', 'Sutrisno', 'Wiraswasta', 'Bantul', '086628372828');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status-buku`
--

CREATE TABLE `status-buku` (
  `id` int(10) NOT NULL,
  `Kode-buku` char(5) NOT NULL,
  `status` varchar(15) NOT NULL,
  `tanggal-pinjam` date NOT NULL,
  `tanggal-kembali` date NOT NULL,
  `peminjam` varchar(12) NOT NULL,
  `denda` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status-buku`
--

INSERT INTO `status-buku` (`id`, `Kode-buku`, `status`, `tanggal-pinjam`, `tanggal-kembali`, `peminjam`, `denda`) VALUES
(1, 'A0321', 'Dipinjam', '2012-03-22', '2014-03-22', 'Santi', '0'),
(2, 'A5344', 'Di pinjam', '2005-06-22', '2018-06-22', 'susatyo', '12000'),
(3, 'A4244', 'Di pinjam', '2010-03-22', '2020-03-22', 'Joko', '5000'),
(4, 'A4334', 'Di pinjam', '2003-07-21', '2006-07-21', 'Agus', '1000'),
(5, 'Ada', '-', '0000-00-00', '0000-00-00', '-', '0'),
(6, 'A5454', 'Di pinjam', '2001-08-21', '2006-08-21', 'sutrisno', '2000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `nama_anggota`
--
ALTER TABLE `nama_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status-buku`
--
ALTER TABLE `status-buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nama_anggota`
--
ALTER TABLE `nama_anggota`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `status-buku`
--
ALTER TABLE `status-buku`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
