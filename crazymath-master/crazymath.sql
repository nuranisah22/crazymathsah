-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2019 at 10:12 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crazymath`
--

-- --------------------------------------------------------

--
-- Table structure for table `crazymath`
--

CREATE TABLE `crazymath` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `playtime` datetime NOT NULL,
  `foto` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crazymath`
--

INSERT INTO `crazymath` (`ID`, `username`, `score`, `playtime`, `foto`) VALUES
(1, 'anisah', 5, '0000-00-00 00:00:00', 'anisah-20190421202458.JPG'),
(2, 'anisah', 0, '0000-00-00 00:00:00', 'anisah-20190421202458.JPG'),
(3, 'syifa', 5, '0000-00-00 00:00:00', 'syifa-20190421202606.JPG'),
(4, 'syifa', 0, '0000-00-00 00:00:00', 'syifa-20190421202606.JPG'),
(5, 'anisah', 55, '2019-04-21 21:22:06', 'anisah-20190421212013.JPG'),
(6, 'anisah', 20, '2019-04-21 21:22:40', 'anisah-20190421212013.JPG'),
(7, 'hiii', -5, '2019-04-21 21:23:21', 'hiii-20190421212311.JPG'),
(8, 'hiii', 20, '2019-04-21 21:34:13', 'hiii-20190421212311.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crazymath`
--
ALTER TABLE `crazymath`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crazymath`
--
ALTER TABLE `crazymath`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
