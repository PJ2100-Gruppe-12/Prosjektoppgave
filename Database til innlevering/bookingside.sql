-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19. Mar, 2015 15:59 
-- Server-versjon: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookingside`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
`id` int(10) unsigned NOT NULL,
  `userId` int(11) NOT NULL,
  `roomId` int(11) NOT NULL,
  `start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `stop` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `free` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `spots` int(4) NOT NULL,
  `projector` tinyint(1) NOT NULL,
  `floor` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `spots`, `projector`, `floor`) VALUES
(1, 'Rom 1', 4, 1, 1),
(2, 'Rom 2', 3, 0, 1),
(3, 'Rom 3', 4, 1, 1),
(4, 'Rom 4', 3, 0, 1),
(5, 'Rom 5', 3, 0, 1),
(6, 'Rom 6', 4, 1, 1),
(7, 'Rom 7', 4, 1, 1),
(8, 'Rom 8', 2, 0, 1),
(9, 'Rom 9', 3, 0, 1),
(10, 'Rom 10', 2, 0, 1),
(11, 'Rom 11', 4, 1, 1),
(12, 'Rom 12', 2, 0, 1),
(13, 'Rom 13', 4, 1, 2),
(14, 'Rom 14', 3, 0, 2),
(15, 'Rom 15', 2, 0, 2),
(16, 'Rom 16', 4, 1, 2),
(17, 'Rom 17', 4, 1, 2),
(18, 'Rom 18', 2, 0, 2),
(19, 'Rom 19', 3, 0, 2),
(20, 'Rom 20', 4, 1, 2),
(21, 'Rom 21', 3, 0, 2),
(22, 'Rom 22', 4, 1, 2),
(23, 'Rom 23', 2, 0, 2),
(24, 'Rom 24', 2, 0, 2),
(25, 'Rom 25', 2, 0, 3),
(26, 'Rom 26', 4, 1, 3),
(27, 'Rom 27', 4, 1, 3),
(28, 'Rom 28', 4, 1, 3),
(29, 'Rom 29', 3, 0, 3),
(30, 'Rom 30', 3, 0, 3),
(31, 'Rom 31', 4, 1, 3),
(32, 'Rom 32', 2, 0, 3),
(33, 'Rom 33', 3, 0, 3),
(34, 'Rom 34', 4, 1, 3),
(35, 'Rom 35', 4, 1, 3),
(36, 'Rom 36', 2, 0, 3),
(37, 'Rom 37', 2, 0, 4),
(38, 'Rom 38', 3, 0, 4),
(39, 'Rom 39', 4, 1, 4),
(40, 'Rom 40', 3, 0, 4),
(41, 'Rom 41', 3, 0, 4),
(42, 'Rom 42', 2, 0, 4),
(43, 'Rom 43', 4, 1, 4),
(44, 'Rom 44', 4, 1, 4),
(45, 'Rom 45', 4, 1, 4),
(46, 'Rom 46', 4, 1, 4),
(47, 'Rom 47', 2, 0, 4),
(48, 'Rom 48', 3, 0, 4),
(49, 'Rom 49', 3, 0, 5),
(50, 'Rom 50', 4, 1, 5),
(51, 'Rom 51', 4, 1, 5),
(52, 'Rom 52', 2, 0, 5),
(53, 'Rom 53', 4, 1, 5),
(54, 'Rom 54', 3, 0, 5),
(55, 'Rom 55', 2, 0, 5),
(56, 'Rom 56', 4, 1, 5),
(57, 'Rom 57', 4, 1, 5),
(58, 'Rom 58', 3, 0, 5),
(59, 'Rom 59', 4, 1, 5),
(60, 'Rom 60', 3, 1, 5),
(61, 'Rom 61', 2, 0, 6),
(62, 'Rom 62', 4, 1, 6),
(63, 'Rom 63', 4, 1, 6),
(64, 'Rom 64', 3, 0, 6),
(65, 'Rom 65', 2, 0, 6),
(66, 'Rom 66', 3, 0, 6),
(67, 'Rom 67', 3, 0, 6),
(68, 'Rom 68', 4, 1, 6),
(69, 'Rom 69', 4, 1, 6),
(70, 'Rom 70', 2, 0, 6),
(71, 'Rom 71', 4, 1, 6),
(72, 'Rom 72', 3, 0, 6);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `studentnr` int(6) NOT NULL,
  `TLF` varchar(11) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `studentnr`, `TLF`, `Email`) VALUES
(2, 'admin', 'admin', '2015-03-09 17:12:48', 222222, '+4765656565', 'james@bond.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `studentnr` (`studentnr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
