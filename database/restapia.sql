-- phpMyAdmin SQL Dump
-- version 5.2.0-rc1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2022 at 02:24 PM
-- Server version: 8.0.28
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restapia`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_token`
--

CREATE TABLE `access_token` (
  `id_access` int NOT NULL,
  `uid` int NOT NULL,
  `acces_token` text,
  `ip_address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `access_token`
--

INSERT INTO `access_token` (`id_access`, `uid`, `acces_token`, `ip_address`) VALUES
(1, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJ1aWQiOjIsImVtYWlsIjoiMTIyMUBnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuZHJlIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjIsImRhdGVfU2lnbiI6IjIwMjItMDQtMTZUMTA6NTU6MDAuMDAwWiJ9XSwiaWF0IjoxNjUwMTA4MjY5LCJleHAiOjE2NTAxMDk3MDl9.Cd3V8VXg388Y0rhW96-w93ovq84R9W-bEDlxOd4ljEM', '192.168.1.2'),
(2, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJ1aWQiOjIsImVtYWlsIjoiMTIyMUBnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuZHJlIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjIsImRhdGVfU2lnbiI6IjIwMjItMDQtMTZUMTA6NTU6MDAuMDAwWiJ9XSwiaWF0IjoxNjUwMTA4MzA4LCJleHAiOjE2NTAxMDk3NDh9.-U46HKMajPRpdpgbYxEcIEHukckpK9bgO1aXdwAm6Wk', '192.168.1.2'),
(3, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJ1aWQiOjIsImVtYWlsIjoiMTIyMUBnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuZHJlIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjIsImRhdGVfU2lnbiI6IjIwMjItMDQtMTZUMTA6NTU6MDAuMDAwWiJ9XSwiaWF0IjoxNjUwMTEwMzU5LCJleHAiOjE2NTAxMTE3OTl9.uZebliXGuAW11W8fQadZQkwV3xPzOFfABRd1ItKXJf8', '192.168.1.2'),
(4, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJ1aWQiOjIsImVtYWlsIjoiMTIyMUBnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuZHJlIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjIsImRhdGVfU2lnbiI6IjIwMjItMDQtMTZUMTA6NTU6MDAuMDAwWiJ9XSwiaWF0IjoxNjUwMTEwMzgzLCJleHAiOjE2NTAxMTE4MjN9.pr-_FTjzp9CIx-Qjdpx9qkNM0yoIG6RXT3WYCtlySDQ', '192.168.1.2');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int NOT NULL,
  `tanggal_krs` date NOT NULL,
  `kd_mk` varchar(10) DEFAULT NULL,
  `nim` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `tanggal_krs`, `kd_mk`, `nim`) VALUES
(1, '2022-12-04', 'MT21', 162900032),
(2, '2022-12-04', 'DBA3', 162900032),
(3, '2022-12-04', 'TA03', 162900032),
(4, '2022-12-04', 'TA03', 12000343),
(5, '2022-12-04', 'SA40', 12000343),
(6, '2022-12-04', 'DBA3', 12000343);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_mk` int NOT NULL,
  `kd_mk` varchar(10) NOT NULL,
  `matakuliah` varchar(30) NOT NULL,
  `sks` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_mk`, `kd_mk`, `matakuliah`, `sks`) VALUES
(1, 'KB01', 'communication digital', 3),
(2, 'TA03', 'programing object oriented', 3),
(3, 'DBA3', 'kalkulus', 3),
(4, 'SA40', 'network comunication', 3),
(5, 'MT21', 'structure database', 3),
(6, 'ED71', 'enginering design', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id_mahasiswa` int NOT NULL,
  `nim` int DEFAULT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `jurusan`) VALUES
(1, 162900032, 'julia', 'science computer'),
(2, 12000001, 'farhan', 'teknik informatika'),
(4, 12000343, 'marinda', 'hukum'),
(5, 14900021, 'arwan fadila', 'sistem komunikasi'),
(7, 92211103, 'catrine youbi', 'teknik sipil'),
(8, 12009111, 'adelia renata', 'teknik jaringan'),
(9, 12009011, 'adelia renata', 'computer science');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text,
  `role` int NOT NULL,
  `date_Sign` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `email`, `username`, `password`, `role`, `date_Sign`) VALUES
(1, 'wijayabagusandre@gmail.com', 'andre', 'a01610228fe998f515a72dd730294d87', 2, '2022-04-16 17:31:45'),
(2, '1221@gmail.com', 'andre', '202cb962ac59075b964b07152d234b70', 2, '2022-04-16 17:55:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_token`
--
ALTER TABLE `access_token`
  ADD PRIMARY KEY (`id_access`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `kd_mk` (`kd_mk`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_mk`),
  ADD UNIQUE KEY `kd_mk` (`kd_mk`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD UNIQUE KEY `nim_2` (`nim`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_token`
--
ALTER TABLE `access_token`
  MODIFY `id_access` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_mk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id_mahasiswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_token`
--
ALTER TABLE `access_token`
  ADD CONSTRAINT `access_token_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`kd_mk`) REFERENCES `matakuliah` (`kd_mk`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `tb_mahasiswa` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
