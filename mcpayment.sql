-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2021 at 03:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcpayment`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `income` int(11) DEFAULT 0,
  `expenses` int(11) DEFAULT 0,
  `balance` int(11) DEFAULT 0,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `income`, `expenses`, `balance`, `created_at`, `updated_at`) VALUES
(2, 'banisholih', 'banisholih23@gmail.com', '$2a$10$rAwWIqjc6XEWXUc1QSDkFOuJB0Rgnl5op9Pxd5nYA9GRQttU5uV5S', 200000, 10000, 400000, 'Wednesday, March 3, 2021 12:53 PM', NULL),
(3, 'yono', 'yono@gmail.com', '$2a$10$eZ0TKhZRduOrXyZl3Edj7er.tRsIFaoCQicm06XxsnnTBmgYgV7va', 0, 0, 0, 'Wednesday, March 3, 2021 5:15 PM', NULL),
(4, 'jono', 'jono@gmail.com', '$2a$10$PqT3Q8wH5ecNVO2KiQE8/udd6Ac4eZTgE32uU6NlbeONCm610dZAS', 0, 0, 0, 'Wednesday, March 3, 2021 5:21 PM', NULL),
(5, 'borok', 'borok@gmail.com', '$2a$10$YSwfD3hnNtQp9qge/YtBZOhrphzcC8VOLX3dQL68NDkUHy4oQbre2', 0, 0, 0, 'Wednesday, March 3, 2021 5:55 PM', NULL),
(6, 'burhan', 'burhan@gmail.com', '$2a$10$w1K3u5J6wCJVEp8M1MjgoODB5LZmaMsJ6qpInA.RJVu0saBqM7uFW', 0, 0, 0, 'Wednesday, March 3, 2021 5:56 PM', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  `expenses` int(11) NOT NULL,
  `balance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
