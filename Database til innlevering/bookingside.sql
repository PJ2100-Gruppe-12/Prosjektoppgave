-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18. Mar, 2015 14:24 
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `bookings`
--

INSERT INTO `bookings` (`id`, `userId`, `roomId`, `start`, `stop`, `free`) VALUES
(48, 2, 2, '2015-03-17 09:00:00', '2015-03-17 10:00:00', 1),
(49, 2, 2, '2015-03-17 09:00:00', '2015-03-17 10:00:00', 1),
(50, 2, 1, '2015-03-17 09:00:00', '2015-03-17 10:00:00', 1),
(51, 2, 1, '2015-03-17 09:00:00', '2015-03-17 10:00:00', 1),
(52, 2, 1, '2015-03-12 09:00:00', '2015-03-12 10:00:00', 0),
(54, 2, 1, '2015-03-18 09:00:00', '2015-03-18 10:00:00', 0);

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
(1, 'Rom1', 4, 1, 1),
(2, 'Rom2', 3, 0, 1),
(3, 'Rom3', 4, 1, 1),
(4, 'Rom4', 3, 0, 1),
(5, 'Rom5', 3, 0, 1),
(6, 'Rom6', 4, 1, 1),
(7, 'rom7', 4, 1, 1),
(8, 'rom8', 2, 0, 1),
(9, 'rom9', 3, 0, 1),
(10, 'rom10', 2, 0, 1),
(11, 'rom11', 4, 1, 1),
(12, 'rom12', 2, 0, 1),
(13, 'rom13', 4, 1, 2),
(14, 'rom14', 3, 0, 2),
(15, 'rom15', 2, 0, 2),
(16, 'rom16', 4, 1, 2),
(17, 'rom17', 4, 1, 2),
(18, 'rom18', 2, 0, 2),
(19, 'rom19', 3, 0, 2),
(20, 'rom20', 4, 1, 2),
(21, 'rom21', 3, 0, 2),
(22, 'rom22', 4, 1, 2),
(23, 'rom23', 2, 0, 2),
(24, 'rom24', 2, 0, 2),
(25, 'rom25', 2, 0, 3),
(26, 'rom26', 4, 1, 3),
(27, 'rom27', 4, 1, 3),
(28, 'rom28', 4, 1, 3),
(29, 'rom29', 3, 0, 3),
(30, 'rom30', 3, 0, 3),
(31, 'rom31', 4, 1, 3),
(32, 'rom32', 2, 0, 3),
(33, 'rom33', 3, 0, 3),
(34, 'rom34', 4, 1, 3),
(35, 'rom35', 4, 1, 3),
(36, 'rom36', 2, 0, 3),
(37, 'rom37', 2, 0, 4),
(38, 'rom38', 3, 0, 4),
(39, 'rom39', 4, 1, 4),
(40, 'rom40', 3, 0, 4),
(41, 'rom41', 3, 0, 4),
(42, 'rom42', 2, 0, 4),
(43, 'rom43', 4, 1, 4),
(44, 'rom44', 4, 1, 4),
(45, 'rom45', 4, 1, 4),
(46, 'rom46', 4, 1, 4),
(47, 'rom47', 2, 0, 4),
(48, 'rom48', 3, 0, 4),
(49, 'rom49', 3, 0, 5),
(50, 'rom50', 4, 1, 5),
(51, 'rom51', 4, 1, 5),
(52, 'rom52', 2, 0, 5),
(53, 'rom53', 4, 1, 5),
(54, 'rom54', 3, 0, 5),
(55, 'rom55', 2, 0, 5),
(56, 'rom56', 4, 1, 5),
(57, 'rom57', 4, 1, 5),
(58, 'rom58', 3, 0, 5),
(59, 'rom59', 4, 1, 5),
(60, 'rom60', 3, 1, 5),
(61, 'rom61', 2, 0, 6),
(62, 'rom62', 4, 1, 6),
(63, 'rom63', 4, 1, 6),
(64, 'rom64', 3, 0, 6),
(65, 'rom65', 2, 0, 6),
(66, 'rom66', 3, 0, 6),
(67, 'rom67', 3, 0, 6),
(68, 'rom68', 4, 1, 6),
(69, 'rom69', 4, 1, 6),
(70, 'rom70', 2, 0, 6),
(71, 'rom71', 4, 1, 6),
(72, 'rom72', 3, 0, 6);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `studentnr`, `TLF`, `Email`) VALUES
(1, 'test', 'test', '2015-03-09 16:13:47', 111111, '+4764646464', 'darth@wader.com'),
(2, 'admin', 'admin', '2015-03-09 17:12:48', 222222, '+4765656565', 'james@bond.com'),
(8, '1', '1', '2015-03-10 14:22:02', 555555, '+5555555555', 'olve.husby@gmail.com'),
(9, '', '', '2015-03-11 09:42:39', 123456, '', ''),
(12, 'olve', 'olve', '2015-03-11 13:57:15', 654321, '+4794949494', '123@123.com'),
(13, 'Donald', 'Potet', '2015-03-13 11:33:04', 702097, '93061368', 'Super_Chris007@hotmail.com'),
(14, 'asd', 'asd', '2015-03-13 12:41:03', 121313, '14341341', '132@hotmail.com');

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
