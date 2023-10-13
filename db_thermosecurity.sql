-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 28, 2023 at 03:42 AM
-- Server version: 8.1.0
-- PHP Version: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thermosecurity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_colour`
--

DROP TABLE IF EXISTS `tbl_colour`;
CREATE TABLE IF NOT EXISTS `tbl_colour` (
  `colour_id` int NOT NULL AUTO_INCREMENT,
  `colour_name` varchar(50) NOT NULL,
  PRIMARY KEY (`colour_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_devices`
--

DROP TABLE IF EXISTS `tbl_devices`;
CREATE TABLE IF NOT EXISTS `tbl_devices` (
  `device_id` int NOT NULL AUTO_INCREMENT,
  `device_name` varchar(75) NOT NULL,
  `device_brand` varchar(75) NOT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_os`
--

DROP TABLE IF EXISTS `tbl_os`;
CREATE TABLE IF NOT EXISTS `tbl_os` (
  `os_id` int NOT NULL AUTO_INCREMENT,
  `os_name` varchar(75) NOT NULL,
  PRIMARY KEY (`os_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_price`
--

DROP TABLE IF EXISTS `tbl_price`;
CREATE TABLE IF NOT EXISTS `tbl_price` (
  `price_id` int NOT NULL AUTO_INCREMENT,
  `price_value` varchar(25) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(75) NOT NULL,
  `product_desc` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specs`
--

DROP TABLE IF EXISTS `tbl_specs`;
CREATE TABLE IF NOT EXISTS `tbl_specs` (
  `spec_id` int NOT NULL AUTO_INCREMENT,
  `spec_feature` varchar(75) NOT NULL,
  `spec_desc` text NOT NULL,
  PRIMARY KEY (`spec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(75) NOT NULL,
  `user_email` varchar(75) NOT NULL,
  `user_phone` varchar(75) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_zip` varchar(25) NOT NULL,
  `user_city` varchar(25) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
