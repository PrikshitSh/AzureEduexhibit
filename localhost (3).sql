-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2020 at 04:34 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eduexhibit`
--
CREATE DATABASE `eduexhibit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eduexhibit`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE IF NOT EXISTS `tbladmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `college` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `rdate` date NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `name`, `email`, `phone`, `college`, `address`, `department`, `password`, `rdate`, `image`) VALUES
(1, 'Mohan', 'admin@gmail.com', '9898989898', 'Amity', 'dsdfsd', 'cse', 'asdfgh', '2020-03-03', 'img_1583209610764.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomment`
--

CREATE TABLE IF NOT EXISTS `tblcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `rating` double NOT NULL,
  `rdate` date NOT NULL,
  `cid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblcomment`
--

INSERT INTO `tblcomment` (`id`, `userid`, `comment`, `rating`, `rdate`, `cid`) VALUES
(2, '1', 'nice project', 4, '2020-03-04', '2'),
(3, '1', 'nice project1', 3, '2020-03-04', '2'),
(4, '1', 'good project', 4, '2020-03-04', '3'),
(5, '1', 'very good project', 4, '2020-03-04', '3'),
(6, '1', 'awseome project', 4, '2020-03-04', '3'),
(7, '1', 'nice project1', 5, '2020-03-04', '4'),
(8, '1', 'give comment here', 4, '2020-03-06', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tblecomment`
--

CREATE TABLE IF NOT EXISTS `tblecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `rdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tblecomment`
--

INSERT INTO `tblecomment` (`id`, `userid`, `comment`, `rdate`) VALUES
(9, '2', 'very good project', '2020-03-06'),
(10, '2', 'very good project', '2020-03-06'),
(11, '2', 'very good project', '2020-03-06'),
(12, '2', 'hi', '2020-03-06'),
(13, '2', 'nice project', '2020-03-06'),
(14, '2', 'nice project', '2020-03-06'),
(15, '2', 'nice project1', '2020-03-06'),
(16, '2', 'nice project1', '2020-03-06'),
(17, '2', 'nice project1', '2020-03-06'),
(18, '2', 'nice project', '2020-03-06'),
(19, '2', 'nice project', '2020-03-06'),
(20, '2', 'nice project', '2020-03-06'),
(21, '2', 'nice project1', '2020-03-06'),
(22, '2', 'give comment here', '2020-03-06'),
(23, '2', 'awseome project', '2020-03-06'),
(24, '2', 'very good project', '2020-03-06'),
(25, '2', 'awseome project', '2020-03-06'),
(26, '2', 'very good project', '2020-03-06'),
(27, '2', 'nice project', '2020-03-06'),
(28, '2', 'give comment here', '2020-03-06'),
(29, '2', 'give comment here', '2020-03-06'),
(30, '2', 'very good project', '2020-03-06'),
(31, '2', 'give comment here', '2020-03-06'),
(32, '2', 'give comment here', '2020-03-06'),
(33, '2', 'give comment here', '2020-03-06'),
(34, '2', 'give comment here', '2020-03-06'),
(35, '2', 'hi hello', '2020-03-06');

-- --------------------------------------------------------

--
-- Table structure for table `tblprojects`
--

CREATE TABLE IF NOT EXISTS `tblprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `area` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL,
  `rdate` date NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tblprojects`
--

INSERT INTO `tblprojects` (`id`, `project_name`, `description`, `area`, `image`, `rdate`, `userid`) VALUES
(2, 'Karitk Kumar', 'java ka project', 'Java', 'img_360_1583129293291.jpg', '2020-03-02', 2),
(3, 'Hydro Power', 'hi hello', 'Java', 'img_360_1583294015097.jpg', '2020-03-04', 2),
(4, 'Test1', 'sdsdsdf', 'tess', 'img_360_1583298451556.jpg', '2020-03-04', 2),
(5, 'test2', 'sdsdsdf', 'dsdsd', 'img_360_1583298507050.jpg', '2020-03-04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE IF NOT EXISTS `tblstudents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `college` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `rdate` date NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `name`, `email`, `phone`, `college`, `address`, `department`, `password`, `rdate`, `image`) VALUES
(2, 'Rohit Kumar', 'rohit@gmail.com', '9898989898', 'Amity', 'dsdfsd', 'cse', 'asdfgh', '2020-02-26', 'img_1582720421564.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblteachers`
--

CREATE TABLE IF NOT EXISTS `tblteachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `college` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `rdate` date NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblteachers`
--

INSERT INTO `tblteachers` (`id`, `name`, `email`, `phone`, `college`, `address`, `department`, `password`, `rdate`, `image`) VALUES
(1, 'Mohan', 'mohan@gmail.com', '9898989898', 'Amity', 'dsdfsd', 'cse', 'asdfgh', '2020-03-03', 'img_1583209610764.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblviews`
--

CREATE TABLE IF NOT EXISTS `tblviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `rdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tblviews`
--

INSERT INTO `tblviews` (`id`, `userid`, `rdate`) VALUES
(1, 2, '2020-03-06'),
(2, 2, '2020-03-06'),
(3, 2, '2020-03-06'),
(4, 2, '2020-03-06'),
(5, 2, '2020-03-06'),
(6, 2, '2020-03-06'),
(7, 2, '2020-03-06'),
(8, 2, '2020-03-06'),
(9, 2, '2020-03-06'),
(10, 2, '2020-03-06'),
(11, 2, '2020-03-06'),
(12, 2, '2020-03-06'),
(13, 2, '2020-03-06'),
(14, 2, '2020-03-06'),
(15, 2, '2020-03-06'),
(16, 2, '2020-03-06'),
(17, 2, '2020-03-06'),
(18, 2, '2020-03-06'),
(19, 2, '2020-03-06'),
(20, 2, '2020-03-06');
