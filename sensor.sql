-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 01:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sensor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `ppm` int(11) DEFAULT NULL,
  `tds` float DEFAULT NULL,
  `kekeruhan` varchar(50) DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `tanggal`, `jam`, `ppm`, `tds`, `kekeruhan`, `status`) VALUES
(0, '2024-05-16', '11:53:54', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:53:59', 2783, 3091.91, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:05', 2797, 3107.47, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:10', 2791, 3100.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:15', 2803, 3114.13, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:20', 2795, 3105.24, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:25', 2799, 3109.69, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:30', 2802, 3113.02, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:36', 2802, 3113.02, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:41', 2802, 3113.02, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:46', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:51', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:54:56', 2801, 3111.91, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:01', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:06', 2799, 3109.69, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:11', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:17', 2802, 3113.02, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:22', 2806, 3117.47, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:27', 2795, 3105.24, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:32', 2803, 3114.13, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:37', 2804, 3115.24, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:42', 2795, 3105.24, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:47', 2803, 3114.13, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:52', 2806, 3117.47, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:55:58', 2801, 3111.91, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:03', 2830, 3144.13, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:08', 2799, 3109.69, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:13', 2794, 3104.13, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:19', 2791, 3100.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:24', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:29', 2797, 3107.47, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:34', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:39', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:45', 2801, 3111.91, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:50', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:56:55', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:57:00', 2798, 3108.58, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:57:05', 2803, 3114.13, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:57:10', 2798, 3108.58, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:57:15', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:57:21', 2800, 3110.8, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:57:26', 2802, 3113.02, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:57:31', 2801, 3111.91, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:57:40', 2802, 3113.02, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:57:45', 2801, 3111.91, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan'),
(0, '2024-05-16', '11:57:50', 2787, 3096.36, 'BAHAYA WOIII CEPAT GANTI', 'Kondisi tambak ikan dapat mengganggu pertumbuhan dan kesehatan ikan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
