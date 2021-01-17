-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2021 at 06:49 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `all`
--

-- --------------------------------------------------------

--
-- Table structure for table `logintrial`
--

CREATE TABLE `logintrial` (
  `id` int(11) NOT NULL,
  `email` varchar(55) NOT NULL,
  `usertype` varchar(55) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logintrial`
--

INSERT INTO `logintrial` (`id`, `email`, `usertype`, `created_at`) VALUES
(1, 'tkathiravan1976@gmail.com', 'admin', '2021-01-14 19:02:42.334098'),
(2, 'kniraimathy1978@gmail.com', 'admin', '2021-01-14 19:12:26.302820'),
(5, 'kniraimathy1978@gmail.com', 'admin', '2021-01-14 19:14:41.064923'),
(6, 'divaflashscript@gmail.com', 'admin', '2021-01-15 14:09:24.299504'),
(7, 'divaflashscript@gmail.com', 'admin', '2021-01-15 14:10:33.045818'),
(8, 'officialmailpondy@gmail.com', 'admin', '2021-01-15 14:11:50.452192');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logintrial`
--
ALTER TABLE `logintrial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logintrial`
--
ALTER TABLE `logintrial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
