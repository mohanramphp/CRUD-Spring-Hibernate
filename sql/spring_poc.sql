-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2014 at 05:59 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spring_poc`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text,
  `sex` enum('Male','Female') DEFAULT NULL,
  `ispermanent` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Table to store all the details of the employee.' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstname`, `lastname`, `email`, `phone`, `address`, `sex`, `ispermanent`) VALUES
(2, 'Rathinakumar', 'Mohan Ram', 'mohanramphp@gmail.com', '9578352644', 'Address', 'Male', 'F'),
(3, 'Gitesh', 'Pandy', 'gitesh@gmail.com', '9456723134', 'Address', 'Male', 'T'),
(4, 'Gitakshi', 'Batra', 'gitakshi@gmail.com', '9231256342', 'Delhi', 'Female', 'T'),
(5, 'Chinmay', 'Raval', 'chinmay@gmail.com', '8452341234', 'Pune', 'Male', 'T'),
(6, 'Prakash', 'Mohan', 'prakash@gmail.com', '9456721345', 'Kalpakkam', 'Male', 'T'),
(8, 'Gokul', 'Kalyanaraman', 'gokul@gmail.com', '9562345123', 'Chennai', 'Male', 'F'),
(10, 'Sam', 'James', 'sam@hotmail.com', '6734239834', 'Madurai', 'Male', 'T');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
