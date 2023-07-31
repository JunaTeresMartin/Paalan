-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2023 at 07:47 AM
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
-- Database: `Paalan`
--

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

CREATE TABLE `schemes` (
  `id` int(11) NOT NULL,
  `scheme_name` varchar(255) NOT NULL,
  `eligibility` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`id`, `scheme_name`, `eligibility`, `description`) VALUES
(1, 'Beti Bachao, Beti Padhao', ' The scheme is available to all Indian citizens and is primarily targeted at areas with low child sex ratios.', 'This initiative aims to address the declining child sex ratio in India and promote the value of the girl child. It focuses on preventing gender-biased sex selection, ensuring the survival and protection of the girl child, and promoting her education.'),
(2, 'Integrated Child Development Services ', 'ICDS services are available to children in the age group of 0-6 years and pregnant and lactating mothers. The scheme primarily targets children from marginalized and disadvantaged backgrounds.', ' ICDS is a comprehensive scheme that addresses the health, nutrition, and early childhood development needs of children under six years of age. It provides services such as supplementary nutrition, immunization, health check-ups, referral services, and non-formal pre-school education.'),
(3, 'Scheme 3', 'Eligibility criteria for Scheme 3', 'Description of Scheme 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schemes`
--
ALTER TABLE `schemes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schemes`
--
ALTER TABLE `schemes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
