-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2021 at 10:56 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nama` varchar(100) NOT NULL,
  `tgllahir` date NOT NULL,
  `npwp` varchar(100) NOT NULL,
  `ktp` varchar(100) NOT NULL,
  `id_karyawan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nama`, `tgllahir`, `npwp`, `ktp`, `id_karyawan`) VALUES
('Pieter Leony MP,S.Kom', '1986-08-13', '71.461.851.9-432.000', '3275051608860020', 29),
('Juricho Sattya Putra,SSn', '1990-01-25', '44.951.895.0-432.000', '3275052601900004', 30),
('Edward Roosdartono SL,ST', '1966-09-20', '26.394.869.7-517.000', '3374092109660000', 35),
('Sandi Ariyadi,S,Kom', '1986-03-03', '70.942.832.0-805.000', '7371123103880000', 36),
('Guntur Roosminto ML Am', '1972-05-11', '92.224.517.7-543.000', '3402121205720000', 37),
('Irvan SM.Am', '1974-01-27', '83.884.321.7-805.000', '7371132701740001', 38),
('Yussi Vegillia', '1996-06-02', '-', '9109014208980002', 50);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bobot` float(5,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode`, `nama`, `bobot`) VALUES
(1, 'C1', 'Kehadiran', 0.2000),
(2, 'C2', 'Inisiatif', 0.2000),
(3, 'C3', 'Kinerja', 0.2000),
(7, 'C5', 'Kerjasama', 0.2000),
(16, 'C4', 'kualitas kerja', 0.2000);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_kriteria`, `id_karyawan`, `id_subkriteria`) VALUES
(113, 1, 29, 16),
(114, 2, 29, 3),
(115, 3, 29, 20),
(116, 7, 29, 8),
(117, 16, 29, 19),
(118, 1, 30, 10),
(119, 2, 30, 3),
(120, 3, 30, 12),
(121, 7, 30, 9),
(122, 16, 30, 18),
(123, 1, 35, 10),
(124, 2, 35, 2),
(125, 3, 35, 12),
(126, 7, 35, 8),
(127, 16, 35, 19),
(128, 1, 36, 10),
(129, 2, 36, 4),
(130, 3, 36, 12),
(131, 7, 36, 8),
(132, 16, 36, 19),
(133, 1, 37, 13),
(134, 2, 37, 3),
(135, 3, 37, 12),
(136, 7, 37, 8),
(137, 16, 37, 19),
(138, 1, 38, 13),
(139, 2, 38, 2),
(140, 3, 38, 12),
(141, 7, 38, 7),
(142, 16, 38, 18),
(143, 1, 50, 10),
(144, 2, 50, 3),
(145, 3, 50, 12),
(146, 7, 50, 7),
(147, 16, 50, 18);

-- --------------------------------------------------------

--
-- Table structure for table `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bobot` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_kriteria`, `nama`, `bobot`) VALUES
(2, 2, 'sangat inisiatif', '4'),
(3, 2, 'Kurang inisiatif', '2'),
(4, 2, 'Tidak inisiatif', '1'),
(5, 2, 'cukup inisiatif', '3'),
(7, 7, 'Baik', '3'),
(8, 7, 'Sangat baik', '4'),
(9, 7, 'Kurang Baik', '2'),
(10, 1, 'Sering masuk', '4'),
(12, 3, 'kinerja bagus', '3'),
(13, 1, 'jarang masuk', '2'),
(15, 1, 'Biasa Masuk', '3'),
(16, 1, 'Tidak pernah masuk', '1'),
(18, 16, 'Sangat berkualitas', '4'),
(19, 16, 'Kurang berkualitas', '2'),
(20, 3, 'Kinerja Kurang bagus', '2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `fullname`, `password`) VALUES
(16, 'ovan', 'Ovan zaimul', '$2b$12$GxY1GvG9vK3V3WIW6LCI0Ot93qy7a6RScO2nxuujQX12TalIZLwia'),
(17, 'admin', 'adminullah', '$2b$12$qbtJS.5xl69dqJ7Cw0pMTeCga1dchEopcBd5cwAj2Ly72qE/3knmu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_subkriteria` (`id_subkriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`) ON DELETE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_subkriteria`) REFERENCES `subkriteria` (`id_subkriteria`) ON DELETE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE;

--
-- Constraints for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `subkriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
