-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 12:12 PM
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
-- Database: `bbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `balance`) VALUES
(1, 'John Smith', 'johnsmith@gmail.com', 3101),
(2, 'Emily Johnson', 'emilyjohnson@gmail.com', 5199),
(3, 'Michael Davis', 'michealdavis@gmail.com', 10000),
(4, 'Sarah Thompson', 'sarahthompson@gmail.com', 5000),
(5, 'David Wilson', 'davidwilson@gmail.com', 4000),
(6, 'Jessica Brown', 'jessicabrown@gmail.com', 15000),
(7, 'Matthew Lee', 'mathewlee@gmail.com', 2000),
(8, 'Olivia Moore', 'oliviamoore@gmail.com', 1500),
(9, 'Daniel Taylor', 'danieltaylor@gmail.com', 1200),
(10, 'Sophia Anderson', 'sophieanderson@gmail.com', 16700);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'John Smith', 'Emily Johnson', 1000, '2023-06-20 06:46:07'),
(2, 'John Smith', 'Emily Johnson', 1000, '2023-06-20 06:47:12'),
(3, 'John Smith', 'Emily Johnson', 199, '2023-06-20 06:56:12'),
(4, 'Sophia Anderson', 'John Smith', 300, '2023-06-20 07:26:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
