-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 05:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` varchar(5) NOT NULL,
  `gejala` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `gejala`) VALUES
('G01', 'Kucing mulai lemah atau lesu'),
('G02 ', 'Kucing muntah-muntah.'),
('G03', 'Kucing sering buang air besar setiap waktu.'),
('G04', 'Perubahan sikap pada kucing dan sering menyerang t'),
('G05', 'Tubuh kucing terasa dingin.'),
('G06', 'Kucing terlihat kesakitan ketika buang air besar.'),
('G09', 'Naféu makan kucing menurun.'),
('G10', 'Kotoran atau feses kucing bau dan terkadang ada da'),
('G11', 'Kucing kesakitan ketika perutnya disentuh.'),
('G12', 'Nafas kucing bau busuk.'),
('G13', 'Pupil mata kucing melebar walaupun berada di tempa'),
('G14', 'Kucing menyerang siapa saja'),
('G15', 'Bulu kucing rontok.'),
('G16', 'Kucing selalu menggaruk tubuh atau gatal-gatal'),
('G17', 'Kulit kucing memerah'),
('G18', 'Kulit kucing bersisik.'),
('G19', 'Kulit kucing terdapat bercak luka'),
('GO7', 'Air liur kucing keluar.'),
('GO8', 'Kucing terlihat menjilati anus sendiri');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `hasil` text NOT NULL,
  `analisa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `nama`, `tanggal`, `hasil`, `analisa`) VALUES
(1, 'Meow', '12/29/2022', 'P04 Cacingan', 'Nafas kucing bau busuk, Pupil mata kucing melebar walaupun berada di tempat yang terang, Kucing menyerang siapa saja\r\n'),
(2, 'AGUS', '12/30/2022', 'P01 Rabies', 'Kucing mulai lemah atau lesu, Nafas kucing bau busuk, Pupil mata kucing melebar walaupun berada di tempat yang terang, Kucing menyerang siapa saja');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` varchar(5) NOT NULL,
  `penyakit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `penyakit`) VALUES
('P01', 'Rabies'),
('P02', 'Tuberkolusis'),
('P03', 'Kurap'),
('P04', 'Cacingan'),
('P05', 'Kutu'),
('P06', 'Diare'),
('P07', 'Muntah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
