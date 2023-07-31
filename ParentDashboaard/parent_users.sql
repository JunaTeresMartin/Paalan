-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 07:27 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paalan`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `parent_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `panchayath` varchar(50) DEFAULT NULL,
  `woman_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `panchayath`, `woman_id`) VALUES
(1, 'r@gmail.com', '123456', 'rithika', 'Muttom', NULL),
(2, 'h@gmail.com', '123', 'h', 'nedumkandam', NULL),
(3, 'jain@gmail.com', '1234567', 'jain', 'nedumkandam', NULL),
(4, 'sara@gmail.com', '1234567', 'Sara John', 'nedumkandam', '1'),
(5, 's@gmail.com', '5687889', 'sini', 'nedumkandam', ''),
(6, 'shyama@gmail.com', '5676887', 'shyama', 'nedumkandam', ''),
(7, 'sona@gmail.com', '789905', 'sona', 'muvatupuzha', ''),
(8, 'sony@gmail.com', '67888888889', 'sony', 'choondacherry', '5'),
(9, 'renu@gmail.com', '56785678', 'renu', 'muvatupuzha', '6'),
(10, 'rani@gmail.com', '3543656578', 'rani', 'manakad', '7'),
(11, 'juna@gmail.com', '08642135', 'juna', 'changanassery', '8'),
(12, 'roya@gmail.com', '234567', 'roya', 'muthalakodam', '9'),
(13, 'reema@gmail.com', '34567', 'reema', 'muthalakodam', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
