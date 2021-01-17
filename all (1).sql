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
-- Table structure for table `al_user`
--

CREATE TABLE `al_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `al_user`
--

INSERT INTO `al_user` (`id`, `name`, `email`, `created_at`) VALUES
(1, 'demo', 'demo@gmail.com', '2020-07-19 10:51:40');

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

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone_no` varchar(14) NOT NULL,
  `profile_pic` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `phone_no`, `profile_pic`, `password`, `created_at`) VALUES
(7, 'Mikky', 'mikki@gmail.com', '7800980067', '1596568227.png', '123456', '2020-08-04 19:10:27'),
(8, 'Remo', 'remo@gmail.com', '9800990909', '1596568261.png', '989898', '2020-08-04 19:11:01'),
(9, 'suru', 'suru@gmail.com', '6789098767', '1596568288.png', '1212', '2020-08-04 19:11:28'),
(10, 'DSSR', 'dssr@gmail.com', '7800098009', '1596568347.png', '0909', '2020-08-04 19:12:27'),
(11, 'noone', 'noone@gmail.com', '8000900099', NULL, '890890', '2020-08-04 19:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `student_id`, `name`, `created_at`) VALUES
(1, 1, 'Math', '2020-07-10 19:23:51'),
(2, 1, 'Science', '2020-07-10 19:23:51'),
(3, 2, 'Science', '2020-07-10 19:23:51'),
(4, 2, 'Hindi', '2020-07-10 19:23:51'),
(5, 2, 'SST', '2020-07-10 19:23:51'),
(6, 2, 'ECO', '2020-07-10 19:23:51'),
(7, 4, 'GK', '2020-07-10 19:23:51'),
(8, 4, 'ENGLISH', '2020-07-10 19:23:51'),
(9, 4, 'COM', '2020-07-10 19:23:51'),
(10, 4, 'Hindi', '2020-07-10 19:23:51'),
(11, 4, 'SST', '2020-07-10 19:23:51'),
(12, 1, 'Science', '2020-07-10 19:23:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `al_user`
--
ALTER TABLE `al_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logintrial`
--
ALTER TABLE `logintrial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `al_user`
--
ALTER TABLE `al_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logintrial`
--
ALTER TABLE `logintrial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
