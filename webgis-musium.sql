-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2021 pada 09.45
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webgis-musium`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_layer`
--

CREATE TABLE `m_layer` (
  `id_layer` int(11) NOT NULL,
  `kd_layer` varchar(10) NOT NULL,
  `nm_layer` varchar(30) NOT NULL,
  `geojson_layer` varchar(30) NOT NULL,
  `warna_layer` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_layer`
--

INSERT INTO `m_layer` (`id_layer`, `kd_layer`, `nm_layer`, `geojson_layer`, `warna_layer`) VALUES
(1, '1', 'kodya_surabaya', 'a.geojson', '#0000FF'),
(3, '2', 'kecamatan', 'kecamatan surabaya.geojson', '#FF7F50'),
(4, '3', 'indonesia', '42080121065058.geojson', '#ff93de'),
(5, 'indo', 'coba', '22090121094017.geojson', '#8000ff');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nm_pengguna` varchar(20) NOT NULL,
  `kt_sandi` varchar(150) NOT NULL,
  `level` enum('Admin','User') NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nm_pengguna`, `kt_sandi`, `level`) VALUES
(1, 'admin', '$2y$10$oNX.X8jgLhNclHBeI8ytT.1vODlml8.AN1Ieb.rSIChhCa1e7cS0S', 'Admin'),
(2, 'user', '$2y$10$oNX.X8jgLhNclHBeI8ytT.1vODlml8.AN1Ieb.rSIChhCa1e7cS0S', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_hotspot`
--

CREATE TABLE `t_hotspot` (
  `id_hotspot` int(11) NOT NULL,
  `id_layer` int(11) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `lat` float(9,6) NOT NULL,
  `lng` float(9,6) NOT NULL,
  `tanggal` date NOT NULL,
  `marker` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_hotspot`
--

INSERT INTO `t_hotspot` (`id_hotspot`, `id_layer`, `lokasi`, `keterangan`, `lat`, `lng`, `tanggal`, `marker`) VALUES
(18, 0, 'Museum TNI AL Loka Jala Crana', 'jl moro krembangan, bumimoro', -7.227189, 112.718964, '2021-01-08', ''),
(19, 0, 'house of sampoerna', 'taman sampoerna no.6, krembangan utara', -7.230859, 112.734222, '2021-01-08', ''),
(20, 0, 'Museum Kesehatan Dr. Adhyatma, MPH', ' jl indrapura no 17 kemayoran', -7.236806, 112.739372, '2021-01-08', ''),
(21, 0, 'museum sepuluh november', 'jalan pahlawan, alun-alun contong', -7.245490, 112.737877, '2021-01-08', ''),
(22, 0, 'monumen tugu pahlawan', 'jalan pahlawan, alun-alun contong', -7.246173, 112.737724, '2021-01-08', ''),
(23, 0, 'dr soutomo museum', 'jl bubutan no 85-87 bubutan', -7.250777, 112.735428, '2021-01-08', ''),
(24, 0, 'surabaya museum( gedung siola)', 'jl tunjungan no 1 genteng', -7.256283, 112.737953, '2021-01-08', ''),
(25, 0, 'museum pendidikan surabaya', 'jl genteng kali no 10 genteng', -7.256228, 112.742882, '2021-01-08', ''),
(26, 0, 'museum pers perjuangan surabaya', 'jl tunjungan no 100 genteng ', -7.258148, 112.740402, '2021-01-08', ''),
(27, 0, 'Museum 45', 'embong kaliasin kec genteng', 7.264243, 112.745567, '2021-01-08', ''),
(28, 0, 'indonesian cancer museum', 'jl kayoon no 16-18 embong kaliasin', -7.267507, 112.748917, '2021-01-08', ''),
(29, 0, 'museum dan pusat kajian etnografi unair', ' kampus B Universitas Airlangga jl. Airlangga No 4-6, Airlangga Gubeng', -7.272464, 112.759537, '2021-01-08', ''),
(30, 0, 'museum wr soepratman', ' jl mangga No. 21 Tambaksari', -7.250600, 112.753784, '2021-01-08', ''),
(31, 0, 'museum nadhatul ulama', 'jl Gayungsari Bar. X No.11, Menanggal', -7.338371, 112.723770, '2021-01-08', ''),
(32, 0, 'blockbuster museum surabaya', 'jl kenjeran No.463-465, Gading', -7.247778, 112.779503, '2021-01-08', ''),
(33, 0, 'museum skutter okassi', ' jl Dukuh Setro IXA No. 62, Gading', -7.241805, 112.774635, '2021-01-08', ''),
(34, 0, 'museum de javasche bank', 'jl Garuda No.1, Krembangan Sel', -7.235396, 112.736763, '2021-01-08', ''),
(35, 0, 'museum Hos Tjokroaminoto', 'jl Peneleh Gg. VII No.29-31, Peneleh', -7.252531, 112.737762, '2021-01-08', ''),
(36, 0, 'museum pendidikan kedokteran unair', 'jl Mayjen Prof. Dr. Moestopo No. 47 , Pacar Kembang', -7.265268, 112.758041, '2021-01-08', ''),
(37, 0, 'monumen kapal selam', 'jl Pemuda No 39 Embong Kaliasin', -7.265467, 112.750282, '2021-01-08', ''),
(38, 5, 'museum coba', 'jl coba coba', -7.098800, 112.456673, '2021-01-09', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `m_layer`
--
ALTER TABLE `m_layer`
  ADD PRIMARY KEY (`id_layer`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `t_hotspot`
--
ALTER TABLE `t_hotspot`
  ADD PRIMARY KEY (`id_hotspot`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_layer`
--
ALTER TABLE `m_layer`
  MODIFY `id_layer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_hotspot`
--
ALTER TABLE `t_hotspot`
  MODIFY `id_hotspot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
