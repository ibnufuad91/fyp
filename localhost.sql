-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2013 at 02:41 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cake_fyp`
--
CREATE DATABASE `cake_fyp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cake_fyp`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `no_ic` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `image` varchar(100) NOT NULL,
  `role` enum('admin','mentor','user') NOT NULL DEFAULT 'user',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `no_ic`, `email`, `password`, `image`, `role`, `created`, `modified`) VALUES
(13, 'fahmi', '38489', 'fahmi@faiz.org', '4e183ba45e0da2aafd2c50eace7d9432dfa18772', '', 'user', '2013-02-03 01:54:27', '2013-02-03 01:54:27'),
(14, 'shai', '73865387', 'shai@yahoo.com', '$2a$10$NESS8h5nJsYyEozkSwpcQ.gvGLi0WsqoF1tWjwz7LbW6107Rampgq', '', 'admin', '2013-02-03 02:49:32', '2013-02-03 02:49:32'),
(15, 'khairi', '34546', 'khairi@gmail.com', '$2a$10$DUK8qlZ78ncuHoLFaFHV3.xge7Z9KQznClq6AIK/I57qUcAiHSNgG', '', 'user', '2013-02-03 07:16:26', '2013-02-03 07:16:26');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
