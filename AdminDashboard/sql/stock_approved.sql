-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2023 at 05:39 AM
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
-- Database: `Stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `stock_approved`
--

CREATE TABLE `stock_approved` (
  `id` int(11) NOT NULL,
  `stock_item` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `defect_details` text DEFAULT NULL,
  `approval_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `consumption_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_approved`
--

INSERT INTO `stock_approved` (`id`, `stock_item`, `quantity`, `defect_details`, `approval_date`, `consumption_date`) VALUES
(1, 'Sharkara', 2, 'nil', '2023-06-12 14:34:11', NULL),
(2, 'payer', 23, 'nil', '2023-06-12 14:42:24', '2023-05-01'),
(3, 'payer', 9, 'nil', '2023-06-12 14:42:42', '2023-05-31'),
(4, 'Payer ', 123, 'nil', '2023-06-12 14:47:22', '2023-06-08'),
(5, 'Payer ', 4, 'nil', '2023-06-12 14:49:32', '2023-07-21'),
(6, 'Amrutham podi', 4, 'nil', '2023-06-12 14:49:36', '2023-07-29'),
(7, 'Payer', 17, 'nil', '2023-06-20 15:17:22', NULL),
(8, 'Sharkara', 17, 'nil', '2023-06-20 15:28:01', NULL),
(9, 'Sharkara', 17, 'nil', '2023-06-20 15:33:44', NULL),
(10, 'Sharkara', 8, 'nothing', '2023-06-20 15:34:35', NULL),
(11, 'Payer', -2, 'nil', '2023-06-22 13:09:32', NULL),
(12, 'Payer', 3, 'nil', '2023-06-22 13:09:37', NULL),
(13, 'ragi', 8, 'nothing', '2023-06-23 08:22:32', NULL),
(14, 'Payer', 3, 'bad thing no quality', '2023-06-25 04:55:59', NULL),
(15, 'payer', 5, 'bad packing', '2023-06-29 15:26:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stock_approved`
--
ALTER TABLE `stock_approved`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stock_approved`
--
ALTER TABLE `stock_approved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
