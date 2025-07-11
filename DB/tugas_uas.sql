-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2025 at 03:49 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dat_pasien`
--

CREATE TABLE `dat_pasien` (
  `pasien_id` int NOT NULL,
  `rm_no` char(6) DEFAULT NULL,
  `pasien_nm` varchar(200) DEFAULT NULL,
  `nik` char(16) DEFAULT NULL,
  `lahir_tgl` date DEFAULT NULL,
  `jeniskelamin_id` int DEFAULT NULL,
  `alamat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `no_telp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `agama_id` int DEFAULT NULL,
  `pekerjaan_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dat_pasien`
--

INSERT INTO `dat_pasien` (`pasien_id`, `rm_no`, `pasien_nm`, `nik`, `lahir_tgl`, `jeniskelamin_id`, `alamat`, `no_telp`, `agama_id`, `pekerjaan_id`) VALUES
(6, '000001', 'Budi Danawuri', '3277012305980001', '1997-07-10', 1, 'Jogja', '085234765787', 1, 4),
(7, '000002', 'Sujiono', '3305061508970007', '2000-09-05', 2, 'Palembang', '085678453623', 2, 5),
(8, '000003', 'Ahmad Pratama', '3305061508970007', '1998-10-14', 1, 'Bantul', '08167582758234', 1, 2),
(9, '000004', 'Maria Siti Nurhaliza', '3273051411970025', '1997-02-04', 2, 'Jakarta', '089756746574', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mst_agama`
--

CREATE TABLE `mst_agama` (
  `agama_id` int NOT NULL,
  `agama_nm` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_agama`
--

INSERT INTO `mst_agama` (`agama_id`, `agama_nm`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katolik'),
(4, 'Hindu'),
(5, 'Budha');

-- --------------------------------------------------------

--
-- Table structure for table `mst_jenis_kelamin`
--

CREATE TABLE `mst_jenis_kelamin` (
  `jeniskelamin_id` int NOT NULL,
  `jeniskelamin_nm` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_jenis_kelamin`
--

INSERT INTO `mst_jenis_kelamin` (`jeniskelamin_id`, `jeniskelamin_nm`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `mst_pekerjaan`
--

CREATE TABLE `mst_pekerjaan` (
  `pekerjaan_id` int NOT NULL,
  `pekerjaan_nm` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mst_pekerjaan`
--

INSERT INTO `mst_pekerjaan` (`pekerjaan_id`, `pekerjaan_nm`) VALUES
(1, 'TNI'),
(2, 'PNS'),
(3, 'BELUM UMUR'),
(4, 'PELAJAR'),
(5, 'WIRASWASTA'),
(6, 'KARYAWAN SWASTA'),
(7, 'POLRI'),
(8, 'BURUH'),
(9, 'MAHASISWA'),
(10, 'IBU RUMAH TANGGA'),
(11, 'WIRAUSAHA'),
(12, 'GURU'),
(13, 'DOSEN'),
(14, 'PETANI/PEKEBUN'),
(15, 'PERANGKAT PAMONG DESA'),
(16, 'PENSIUNAN'),
(17, 'DAGANG'),
(18, 'BUMN/BUMD'),
(19, 'BIDAN'),
(20, 'KARYAWAN HONORER'),
(21, 'PENJAHIT'),
(22, 'DOKTER'),
(23, 'PERAWAT'),
(24, 'PSIKOLOG'),
(25, 'POLWAN'),
(26, 'SENIMAN'),
(27, 'RADIOGRAFER'),
(28, 'ATLET'),
(29, 'PENULIS'),
(30, 'SWASTA'),
(31, 'ARSITEK'),
(32, 'KONTRAKTOR'),
(33, 'APOTEKER'),
(34, 'P3K'),
(35, 'ADVOKAT'),
(36, 'PENGACARA'),
(37, 'KONTEN KREATOR'),
(38, 'FREELANCE'),
(39, 'DRIVER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dat_pasien`
--
ALTER TABLE `dat_pasien`
  ADD PRIMARY KEY (`pasien_id`),
  ADD KEY `agama_id` (`agama_id`),
  ADD KEY `pekerjaan_id` (`pekerjaan_id`),
  ADD KEY `jeniskelamin_id` (`jeniskelamin_id`);

--
-- Indexes for table `mst_agama`
--
ALTER TABLE `mst_agama`
  ADD PRIMARY KEY (`agama_id`);

--
-- Indexes for table `mst_jenis_kelamin`
--
ALTER TABLE `mst_jenis_kelamin`
  ADD PRIMARY KEY (`jeniskelamin_id`);

--
-- Indexes for table `mst_pekerjaan`
--
ALTER TABLE `mst_pekerjaan`
  ADD PRIMARY KEY (`pekerjaan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dat_pasien`
--
ALTER TABLE `dat_pasien`
  MODIFY `pasien_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mst_agama`
--
ALTER TABLE `mst_agama`
  MODIFY `agama_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mst_jenis_kelamin`
--
ALTER TABLE `mst_jenis_kelamin`
  MODIFY `jeniskelamin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_pekerjaan`
--
ALTER TABLE `mst_pekerjaan`
  MODIFY `pekerjaan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dat_pasien`
--
ALTER TABLE `dat_pasien`
  ADD CONSTRAINT `dat_pasien_ibfk_2` FOREIGN KEY (`agama_id`) REFERENCES `mst_agama` (`agama_id`),
  ADD CONSTRAINT `dat_pasien_ibfk_3` FOREIGN KEY (`pekerjaan_id`) REFERENCES `mst_pekerjaan` (`pekerjaan_id`),
  ADD CONSTRAINT `dat_pasien_ibfk_4` FOREIGN KEY (`jeniskelamin_id`) REFERENCES `mst_jenis_kelamin` (`jeniskelamin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
