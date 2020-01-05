-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2020 at 06:20 AM
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
(1, '2020-02-03', 3),
(2, '2020-03-05', 1),
(7, '2020-01-16', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `no_hp`, `email`, `password`) VALUES
(1, 'Agni Kurniawati', '08111111111119', 'agni1@gmail.com', 'admin1'),
(2, 'Dwi Septyan Hadi Nugraha', '082222222222', 'septyan2', 'admin2'),
(3, 'Putri Fauziah Rahman', '085321041904', 'putri3@gmail.com', 'admin3');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `sekolah` varchar(30) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `status_keanggotaan` varchar(30) NOT NULL,
  `tgl_akhir` varchar(30) NOT NULL,
  `id_tingkat` int(5) NOT NULL,
  `tanggal_daftar` varchar(30) NOT NULL,
  `id_admin` int(5) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `alamat`, `no_hp`, `email`, `tinggi_badan`, `berat_badan`, `jenis_kelamin`, `tanggal_lahir`, `kota`, `sekolah`, `kelas`, `status_keanggotaan`, `tgl_akhir`, `id_tingkat`, `tanggal_daftar`, `id_admin`, `password`) VALUES
(6, 'Putri Fauziah Rahman', 'Blok Welut, Desa Sukamelang', '085321041904', 'putrifauziahr@gmail.com', 190, 55, 'Perempuan', '1999-11-03', 'Jakarta', 'UGM', 'D3TI2B', 'Alumni', '2021-01-02', 2, '2020-01-02', 2, '123manis'),
(7, 'Agni Kurniawati', 'Cikarang, Jawa Barat', '081321056654', 'agni@gmail.com', 160, 45, 'Perempuan', '2000-03-04', 'Cikarang', 'ITB', 'D3TI2B', 'Aktif', '2021-01-05', 2, '2020-01-04', 1, '12345agni');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_detail`
--

CREATE TABLE `presensi_detail` (
  `no_presensi` int(5) NOT NULL,
  `no` int(10) NOT NULL,
  `id_member` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi_detail`
--

INSERT INTO `presensi_detail` (`no_presensi`, `no`, `id_member`, `nama`, `kelas`, `status`) VALUES
(1, 1, 6, 'Putri Fauziah Rahman', 'D3TI2B', 'hadir'),
(2, 2, 6, 'Putri Fauziah Rahman', 'D3TI2B', 'alfa'),
(1, 3, 7, 'Agni Kurniawati', 'D3TI2B', 'Izin');

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
(1, 'Calon Anggota'),
(2, 'Anggota'),
(3, 'Pesilat'),
(4, 'Pelatih'),
(5, 'Dewan Pelatih');

-- --------------------------------------------------------

--
-- Table structure for table `tiny`
--

CREATE TABLE `tiny` (
  `id_pengunjung` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen_member`
--
ALTER TABLE `absen_member`
  ADD PRIMARY KEY (`no_presensi`) USING BTREE,
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `presensi_detail`
--
ALTER TABLE `presensi_detail`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no_presensi` (`no_presensi`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tingkatan`
--
ALTER TABLE `tingkatan`
  ADD PRIMARY KEY (`id_tingkat`);

--
-- Indexes for table `tiny`
--
ALTER TABLE `tiny`
  ADD PRIMARY KEY (`id_pengunjung`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen_member`
--
ALTER TABLE `absen_member`
  MODIFY `no_presensi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `presensi_detail`
--
ALTER TABLE `presensi_detail`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tingkatan`
--
ALTER TABLE `tingkatan`
  MODIFY `id_tingkat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tiny`
--
ALTER TABLE `tiny`
  MODIFY `id_pengunjung` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen_member`
--
ALTER TABLE `absen_member`
  ADD CONSTRAINT `absen_member_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`id_tingkat`) REFERENCES `tingkatan` (`id_tingkat`),
  ADD CONSTRAINT `member_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `presensi_detail`
--
ALTER TABLE `presensi_detail`
  ADD CONSTRAINT `presensi_detail_ibfk_1` FOREIGN KEY (`no_presensi`) REFERENCES `absen_member` (`no_presensi`),
  ADD CONSTRAINT `presensi_detail_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
