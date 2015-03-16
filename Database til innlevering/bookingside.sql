-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16. Mar, 2015 13:35 
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `bookings`
--

INSERT INTO `bookings` (`id`, `userId`, `roomId`, `start`, `stop`, `free`) VALUES
(1, 1, 1, '1993-03-25 16:00:00', '1993-03-25 17:00:00', 0),
(2, 2, 2, '2015-03-13 09:00:00', '2015-03-13 17:00:00', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `spots`, `projector`, `floor`) VALUES
(1, 'Rom1', 4, 1, 1),
(2, 'Rom2', 3, 1, 1),
(3, 'Rom3', 4, 1, 1),
(4, 'Rom4', 3, 0, 1),
(5, 'Rom5', 3, 0, 1),
(6, 'Rom6', 4, 1, 1),
(7, 'rom7', 4, 1, 1),
(8, 'rom8', 0, 0, 1),
(9, 'rom9', 0, 0, 1),
(10, 'rom10', 0, 0, 1),
(11, 'rom11', 0, 0, 1),
(12, 'rom12', 0, 0, 1),
(13, 'rom13', 0, 0, 2),
(14, 'rom14', 0, 0, 2),
(15, 'rom15', 0, 0, 2),
(16, 'rom16', 0, 0, 2),
(17, 'rom17', 0, 0, 2),
(18, 'rom18', 0, 0, 2),
(19, 'rom19', 0, 0, 2),
(20, 'rom20', 0, 0, 2),
(21, 'rom21', 0, 0, 2),
(22, 'rom22', 0, 0, 2),
(23, 'rom23', 0, 0, 2),
(24, 'rom24', 0, 0, 2),
(25, 'rom25', 0, 0, 3),
(26, 'rom26', 0, 0, 3),
(27, 'rom27', 0, 0, 3),
(28, 'rom28', 0, 0, 3),
(29, 'rom29', 0, 0, 3),
(30, 'rom30', 0, 0, 3),
(31, 'rom31', 0, 0, 3),
(32, 'rom32', 0, 0, 3),
(33, 'rom33', 0, 0, 3),
(34, 'rom34', 0, 0, 3),
(35, 'rom35', 0, 0, 3),
(36, 'rom36', 0, 0, 3),
(37, 'rom37', 0, 0, 4),
(38, 'rom38', 0, 0, 4),
(39, 'rom39', 0, 0, 4),
(40, 'rom40', 0, 0, 4),
(41, 'rom41', 0, 0, 4),
(42, 'rom42', 0, 0, 4),
(43, 'rom43', 0, 0, 4),
(44, 'rom44', 0, 0, 4),
(45, 'rom45', 0, 0, 4),
(46, 'rom46', 0, 0, 4),
(47, 'rom47', 0, 0, 4),
(48, 'rom48', 0, 0, 4),
(49, 'rom49', 0, 0, 5),
(50, 'rom50', 0, 0, 5),
(51, 'rom51', 0, 0, 5),
(52, 'rom52', 0, 0, 5),
(53, 'rom53', 0, 0, 5),
(54, 'rom54', 0, 0, 5),
(55, 'rom55', 0, 0, 5),
(56, 'rom56', 0, 0, 5),
(57, 'rom57', 0, 0, 5),
(58, 'rom58', 0, 0, 5),
(59, 'rom59', 0, 0, 5),
(60, 'rom60', 0, 0, 5),
(61, 'rom61', 0, 0, 6),
(62, 'rom62', 0, 0, 6),
(63, 'rom63', 0, 0, 6),
(64, 'rom64', 0, 0, 6),
(65, 'rom65', 0, 0, 6),
(66, 'rom66', 0, 0, 6),
(67, 'rom67', 0, 0, 6),
(68, 'rom68', 0, 0, 6),
(69, 'rom69', 0, 0, 6),
(70, 'rom70', 0, 0, 6),
(71, 'rom71', 0, 0, 6),
(72, 'rom72', 0, 0, 6);

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
  `pNr` bigint(11) NOT NULL,
  `TLF` varchar(11) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `studentnr`, `pNr`, `TLF`, `Email`) VALUES
(1, 'test', 'test', '2015-03-09 16:13:47', 111111, 99999999999, '+4764646464', 'darth@wader.com'),
(2, 'admin', 'admin', '2015-03-09 17:12:48', 222222, 88888888888, '+4765656565', 'james@bond.com'),
(8, '1', '1', '2015-03-10 14:22:02', 555555, 55555555555, '+5555555555', 'olve.husby@gmail.com'),
(9, '', '', '2015-03-11 09:42:39', 123456, 44444444444, '', ''),
(12, 'olve', 'olve', '2015-03-11 13:57:15', 654321, 12345678900, '+4794949494', '123@123.com'),
(13, 'Donald', 'Potet', '2015-03-13 11:33:04', 702097, 1104914179, '93061368', 'Super_Chris007@hotmail.com'),
(14, 'asd', 'asd', '2015-03-13 12:41:03', 121313, 111, '14341341', '132@hotmail.com');

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
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `pNr` (`pNr`), ADD UNIQUE KEY `studentnr` (`studentnr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
