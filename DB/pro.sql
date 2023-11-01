-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 08:18 AM
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
-- Database: `pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `id` int(5) NOT NULL,
  `name` varchar(17) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `cfmpassword` text NOT NULL,
  `date` date NOT NULL,
  `degree` text NOT NULL,
  `cofee` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doc`
--

INSERT INTO `doc` (`id`, `name`, `email`, `password`, `cfmpassword`, `date`, `degree`, `cofee`) VALUES
(1, 'Tejas Vispute', 'tejasvispute@gmail.com', '1234', '1234', '2023-10-03', 'ms', 200),
(2, 'Tejas Rajendra Vi', 'tejasvispute58@gmail.com', '$2y$10$LAqDS2/mEXwqm7qPwh63mOXMXZHWjzShQ0CMbsQCtZi91J9AjNB6W', '1234', '2002-02-12', 'myectj', 20),
(3, 'Rahul Sangamanere', 'tejasvispute58@gmail.com', '$2y$10$JlYoqMssRGXUU4akWCY/LuxQJFOXWOnrmpctF25d1d0Hby86qCHRK', '12345', '2002-12-12', 'mtech', 200),
(4, 'Tejas', 'tejasvispute58@gmail.com', '$2y$10$MzGHOXJdyq5HtTNlZQzMQ.nfrgh3X6M7wVZk7YLbysfmVGznKUGsa', '12345', '2002-12-12', 'ms', 100),
(5, 'Raj', 'tejasvispute58@gmail.com', '$2y$10$BKpDpNNmhYB5.eISbMUoAe9FyIg.uP7tjVkEyLsH9B3J/LyuK4uP6', '123456789', '2002-12-12', 'ms', 21),
(6, 'Tejas Vispute', 'tejasvispute58@gmail.com', '$2y$10$IFJZUz/MFoNYZjZKWnFlGe/doQ2m.bhw518PW9gkqAtgtFQVRY0L6', 'tejasbispute', '1221-12-12', 'ms', 100),
(7, 'Tejas Vispute', 'tejasvispute58@gmail.com', '$2y$10$eKzTu8T7CXwj/Uou2bV8D.EHsRh/9b4857Y7I1eQhVl2aJkU77tLa', 'tejasbispute', '1221-12-12', 'ms', 100),
(8, 'Tejas Vispute', 'tejasvispute58@gmail.com', '$2y$10$GyLut/8Q/IhC653GpBQaU.nlbtT2D//m8.uAO8Rn6vnjdjg.9vcWi', 'tejasbispute', '1221-12-12', 'ms mtech', 100),
(9, 'Tejas Vispute', 'tejasvispute58@gmail.com', '$2y$10$HRh4MOHOuYNl9ujGoSJ9BOJd8VMc64ll/2YetoI1tkOW7cjBP/STK', 'tejasbispute', '1221-12-12', 'ms mtech, nope', 100),
(10, 'Rahul Sangamanere', 'tejasvispute58@gmail.com', '$2y$10$B7bAn2Noom7RFsugDrAAnO8VhYhpV.gI7ZWoWRCWceLTJAKB3Gbba', '123456789', '2002-12-12', 'mw', 200),
(11, 'Rahul Sangamanere', 'tejasvispute58@gmail.com', '$2y$10$nN2rfbdXUzLssZRHKZdIy.O8OGyZ0hMZxQo/TD55qO6iMDmFjdReG', '123456789', '2002-12-02', 'ms', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doc`
--
ALTER TABLE `doc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
