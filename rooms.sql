-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18. Mar, 2015 13:06 
-- Server-versjon: 5.6.21
-- PHP Version: 5.5.19

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
