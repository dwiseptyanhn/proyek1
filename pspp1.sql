-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2019 at 04:09 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pspp`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen_member`
--

CREATE TABLE `absen_member` (
  `no_presensi` int(5) NOT NULL,
  `tanggal_latihan` varchar(30) NOT NULL,
  `id_admin` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen_member`
--

INSERT INTO `absen_member` (`no_presensi`, `tanggal_latihan`, `id_admin`) VALUES
(1, '2019-12-28', 2),
(2, '2019-12-31', 2),
(3, '2019-12-26', 2),
(5, '19 Januari 2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin2', 'admin2'),
(3, 'admin3', 'admin3');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tinggi_badan` int(5) NOT NULL,
  `berat_badan` int(5) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `status_keanggotaan` varchar(30) NOT NULL,
  `tgl_akhir` varchar(30) NOT NULL,
  `id_tingkat` int(5) NOT NULL,
  `tanggal_daftar` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `alamat`, `no_hp`, `email`, `tinggi_badan`, `berat_badan`, `jenis_kelamin`, `tanggal_lahir`, `kota`, `status_keanggotaan`, `tgl_akhir`, `id_tingkat`, `tanggal_daftar`, `password`) VALUES
(2, 'Dwi Septyan', 'Balongan', '08532104167787', 'putrifauziahr@gmail.com', 160, 55, 'Laki-Laki', '03 november 1999', 'Indramayu', 'Aktif', '23 Desember 2020', 3, '23 desember 2019', '123manis');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_detail`
--

CREATE TABLE `presensi_detail` (
  `no_presensi` int(5) NOT NULL,
  `id_member` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `id_admin` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi_detail`
--

INSERT INTO `presensi_detail` (`no_presensi`, `id_member`, `nama`, `status`, `id_admin`) VALUES
(1, 1, 'Kirana', 'Hadir', 2),
(1, 2, 'Karina', 'Hadir', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rekap_absensii`
--

CREATE TABLE `rekap_absensii` (
  `nomor` int(5) NOT NULL,
  `id_member` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `hadir` int(5) NOT NULL,
  `izin` int(5) NOT NULL,
  `sakit` int(5) NOT NULL,
  `alfa` int(5) NOT NULL,
  `total` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tingkatan`
--

CREATE TABLE `tingkatan` (
  `id_tingkat` int(5) NOT NULL,
  `jenis_tingkat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tingkatan`
--

INSERT INTO `tingkatan` (`id_tingkat`, `jenis_tingkat`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen_member`
--
ALTER TABLE `absen_member`
  ADD PRIMARY KEY (`no_presensi`) USING BTREE;

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `presensi_detail`
--
ALTER TABLE `presensi_detail`
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `rekap_absensii`
--
ALTER TABLE `rekap_absensii`
  ADD UNIQUE KEY `nomor` (`nomor`) USING BTREE;

--
-- Indexes for table `tingkatan`
--
ALTER TABLE `tingkatan`
  ADD PRIMARY KEY (`id_tingkat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen_member`
--
ALTER TABLE `absen_member`
  MODIFY `no_presensi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tingkatan`
--
ALTER TABLE `tingkatan`
  MODIFY `id_tingkat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
