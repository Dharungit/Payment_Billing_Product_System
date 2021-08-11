-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 07:07 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbps`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant_info`
--

CREATE TABLE `accountant_info` (
  `branch` varchar(235) NOT NULL,
  `name` varchar(235) NOT NULL,
  `username` varchar(235) NOT NULL,
  `password` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `dob` date NOT NULL,
  `salary` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accountant_info`
--

INSERT INTO `accountant_info` (`branch`, `name`, `username`, `password`, `doj`, `dob`, `salary`) VALUES
('Coimbatore', 'Javahar A', 'java027', '12345', '2021-07-08', '2021-07-15', 50000),
('Erode', 'Dharun R', 'dharun033', '12345', '2021-07-02', '2021-08-05', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(235) NOT NULL,
  `username` varchar(235) NOT NULL,
  `password` varchar(235) NOT NULL,
  `notice` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `username`, `password`, `notice`) VALUES
('Ram', 'admin', '12345', '                Mao νιάου mi\'au. Meong miyav miau meogre. Meong muning muning meong νιάου muwaa\' myām̥ō ya-ong. Ngiyaw miauw mjau ya-ong mjau miyāʾūṉ mjau miáú. Miaŭ meogre myau miáú meow miau muning njäu. Mňau meo meow ngeung miav.');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `msg_timing` date NOT NULL,
  `name` varchar(235) NOT NULL,
  `username` varchar(235) NOT NULL,
  `msg` varchar(10000) NOT NULL,
  `rectify` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `msg_timing`, `name`, `username`, `msg`, `rectify`) VALUES
(1, '2021-07-27', 'Arun Ritthik', 'arun017', 'I have done the payment but the fee payment not get updated', 0),
(2, '2021-07-28', 'Anbu', 'anbu011', 'There is a problem in the payment section where I cannot able to pay the amount please check it.', 1),
(3, '2021-07-27', 'Arun Ritthik', 'arun017', 'server error while loading my page.', 0),
(4, '2021-07-27', 'Arun Ritthik', 'arun017', 'I\'m not able to pay the fee.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int(235) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` varchar(235) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Amount` int(20) NOT NULL,
  `Course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `DateTime`, `username`, `Name`, `Amount`, `Course`) VALUES
(1, '2021-08-01 12:55:47', 'arun017', 'Arun Ritthik', 20000, 'B.E.Computer Science And Engineering'),
(2, '2021-08-04 05:04:57', 'arun017', 'Arun Ritthik', 10000, 'B.E.Computer Science And Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `name` varchar(235) NOT NULL,
  `course` varchar(235) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `father_name` varchar(235) NOT NULL,
  `mother_name` varchar(235) NOT NULL,
  `blood_group` varchar(235) NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `fee` int(10) NOT NULL,
  `paid` int(10) NOT NULL,
  `balance` int(10) NOT NULL,
  `address` varchar(235) NOT NULL,
  `username` varchar(235) NOT NULL,
  `password` varchar(235) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`name`, `course`, `mobile`, `father_name`, `mother_name`, `blood_group`, `dob`, `doj`, `fee`, `paid`, `balance`, `address`, `username`, `password`) VALUES
('Anbu V', 'B.E.Computer Science And Engineering', '9859849695', 'Kumar sami', 'Valli', 'O-', '2001-03-15', '2021-07-08', 80000, 30000, 50000, 'xxxx,xxxxxx,Tirppur', 'anbu011', '12345'),
('Arun Ritthik', 'B.E.Computer Science And Engineering', '9965398433', 'raja', 'rathai', 'B+', '2021-07-15', '2021-07-29', 80000, 80000, 0, 'erode', 'arun017', '12345'),
('ram', 'cse', '9988767549', 'kannan', 'Vidhya K', 'B+', '2021-07-01', '2021-08-14', 80000, 40000, 40000, 'chennai', 'ram022', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(235) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
