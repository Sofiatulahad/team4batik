-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 09:57 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_kelas`
--

CREATE TABLE `data_kelas` (
  `id_kelas` int(11) NOT NULL,
  `kode_kelas` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_semester`
--

CREATE TABLE `data_semester` (
  `id_semester` int(11) NOT NULL,
  `kode_semester` varchar(255) NOT NULL,
  `nama_semester` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kode_tahun` varchar(255) NOT NULL,
  `nama_tahun` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_tahun`
--

CREATE TABLE `data_tahun` (
  `id_tahun` int(11) NOT NULL,
  `kode_tahun` varchar(255) NOT NULL,
  `nama_tahun` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_wali`
--

CREATE TABLE `data_wali` (
  `id_wali` int(11) NOT NULL,
  `kode_wali` varchar(255) NOT NULL,
  `nama_wali` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_kelas`
--

CREATE TABLE `pengaturan_kelas` (
  `id_pengaturan` int(11) NOT NULL,
  `kode_kelas` varchar(255) NOT NULL,
  `tahun_ajaran` varchar(255) NOT NULL,
  `kode_tahun` varchar(255) NOT NULL,
  `kode_wali` varchar(255) NOT NULL,
  `nama_wali` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id_presensi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `nis` int(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekap_bulan`
--

CREATE TABLE `rekap_bulan` (
  `id_rekap` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `nis` int(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kehadiran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekap_semester`
--

CREATE TABLE `rekap_semester` (
  `id_rekaps` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `nis` int(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kehadiran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekap_tahun`
--

CREATE TABLE `rekap_tahun` (
  `id_rekapt` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `nis` int(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kehadiran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_kelas`
--
ALTER TABLE `data_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `data_semester`
--
ALTER TABLE `data_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `data_tahun`
--
ALTER TABLE `data_tahun`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `data_wali`
--
ALTER TABLE `data_wali`
  ADD PRIMARY KEY (`id_wali`);

--
-- Indexes for table `pengaturan_kelas`
--
ALTER TABLE `pengaturan_kelas`
  ADD PRIMARY KEY (`id_pengaturan`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id_presensi`);

--
-- Indexes for table `rekap_bulan`
--
ALTER TABLE `rekap_bulan`
  ADD PRIMARY KEY (`id_rekap`);

--
-- Indexes for table `rekap_semester`
--
ALTER TABLE `rekap_semester`
  ADD PRIMARY KEY (`id_rekaps`);

--
-- Indexes for table `rekap_tahun`
--
ALTER TABLE `rekap_tahun`
  ADD PRIMARY KEY (`id_rekapt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_kelas`
--
ALTER TABLE `data_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_semester`
--
ALTER TABLE `data_semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_tahun`
--
ALTER TABLE `data_tahun`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_wali`
--
ALTER TABLE `data_wali`
  MODIFY `id_wali` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengaturan_kelas`
--
ALTER TABLE `pengaturan_kelas`
  MODIFY `id_pengaturan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekap_bulan`
--
ALTER TABLE `rekap_bulan`
  MODIFY `id_rekap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekap_semester`
--
ALTER TABLE `rekap_semester`
  MODIFY `id_rekaps` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekap_tahun`
--
ALTER TABLE `rekap_tahun`
  MODIFY `id_rekapt` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
