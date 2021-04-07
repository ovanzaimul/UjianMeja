-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 05:48 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
