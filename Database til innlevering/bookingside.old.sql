-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13. Mar, 2015 12:10 
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
  `projector` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `spots`, `projector`) VALUES
(1, 'Rom1', 4, 1),
(2, 'Rom2', 3, 1),
(3, 'Rom3', 4, 1),
(4, 'Rom4', 3, 0),
(5, 'Rom5', 3, 0),
(6, 'Rom6', 4, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `studentnr`, `pNr`, `TLF`, `Email`) VALUES
(1, 'test', 'test', '2015-03-09 16:13:47', 111111, 99999999999, '+4764646464', 'darth@wader.com'),
(2, 'admin', 'admin', '2015-03-09 17:12:48', 222222, 88888888888, '+4765656565', 'james@bond.com'),
(8, '1', '1', '2015-03-10 14:22:02', 555555, 55555555555, '+5555555555', 'olve.husby@gmail.com'),
(9, '', '', '2015-03-11 09:42:39', 123456, 44444444444, '', ''),
(12, 'olve', 'olve', '2015-03-11 13:57:15', 654321, 12345678900, '+4794949494', '123@123.com');

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
