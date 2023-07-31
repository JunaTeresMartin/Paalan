-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2023 at 05:42 AM
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
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `stock_availability`
--

CREATE TABLE `stock_availability` (
  `id` int(11) UNSIGNED NOT NULL,
  `stock_available` enum('yes','no') NOT NULL,
  `panchayath` varchar(255) NOT NULL,
  `stock_item` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_availability`
--

INSERT INTO `stock_availability` (`id`, `stock_available`, `panchayath`, `stock_item`) VALUES
(1, 'yes', 'Nedumkandam', 'payar'),
(2, 'yes', 'Nedumkandam', 'payar'),
(3, 'no', '', 'payer'),
(4, 'yes', '', 'sharkara'),
(5, 'yes', 'pandipara', 'sharkara'),
(6, 'yes', 'pandipara', 'sharkara'),
(7, 'no', 'Muttom', 'ladu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stock_availability`
--
ALTER TABLE `stock_availability`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stock_availability`
--
ALTER TABLE `stock_availability`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
