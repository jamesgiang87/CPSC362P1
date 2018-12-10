-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2018 at 11:07 AM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beyondshopper`
--

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `SSN` int(9) NOT NULL,
  `FNAME` text NOT NULL,
  `LNAME` text NOT NULL,
  `PHONE` int(10) NOT NULL,
  `EMAIL` text NOT NULL,
  `UNAME` text NOT NULL,
  `UPASS` text NOT NULL,
  `ADDR` text NOT NULL,
  `CITY` text NOT NULL,
  `STATE` text NOT NULL,
  `ZIP` varchar(6) NOT NULL,
  `APTNUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `SSN` int(9) NOT NULL,
  `FNAME` text NOT NULL,
  `LNAME` text NOT NULL,
  `PHONE` int(10) NOT NULL,
  `EMAIL` text NOT NULL,
  `DEPARTMENT` text NOT NULL,
  `TITLE` text NOT NULL,
  `HIRED` date NOT NULL,
  `TERM` date NOT NULL,
  `SALARY` float NOT NULL,
  `UNAME` text NOT NULL,
  `UPASS` text NOT NULL,
  `ADDR` text NOT NULL,
  `CITY` text NOT NULL,
  `STATE` text NOT NULL,
  `ZIP` varchar(6) NOT NULL,
  `APTNUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `INVENTORY`
--

CREATE TABLE `INVENTORY` (
  `BARC` int(20) NOT NULL,
  `NUM` varchar(45) NOT NULL,
  `NAME` text NOT NULL,
  `TYPE` varchar(45) NOT NULL,
  `INFO` text NOT NULL,
  `LOCATION` text NOT NULL,
  `BUYPRICE` float NOT NULL,
  `SELLPRICE` float NOT NULL,
  `MARKPRICE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LOCATION`
--

CREATE TABLE `LOCATION` (
  `AISLE` char(1) NOT NULL,
  `SIDE` int(1) NOT NULL,
  `SECTION` char(1) NOT NULL,
  `DRAWER` int(1) NOT NULL,
  `LOC` char(1) NOT NULL,
  `SIZE` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ORDERS`
--

CREATE TABLE `ORDERS` (
  `NUMBER` int(10) DEFAULT NULL,
  `ITNUM` varchar(32) NOT NULL,
  `QT` int(3) NOT NULL,
  `SHIPDATE` date NOT NULL,
  `STATUS` tinyint(4) NOT NULL,
  `CUSTOMER_ID` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
