-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 09:07 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

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
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `BARC` int(20) NOT NULL,
  `NUM` varchar(45) NOT NULL,
  `NAME` text NOT NULL,
  `TYPE` varchar(45) NOT NULL,
  `INFO` text NOT NULL,
  `BUYPRICE` float NOT NULL,
  `SELLPRICE` float NOT NULL,
  `MARKPRICE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`BARC`, `NUM`, `NAME`, `TYPE`, `INFO`, `BUYPRICE`, `SELLPRICE`, `MARKPRICE`) VALUES
(2, '2', '2', '2', '2', 2, 2, 2),
(5, '5', '5', '5', '5', 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `loc` char(5) NOT NULL,
  `oc` tinyint(1) NOT NULL,
  `itnum` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`loc`, `oc`, `itnum`) VALUES
('A1X11', 1, '242'),
('A1X12', 1, '8'),
('A1X13', 1, '8'),
('A1X21', 1, '1555'),
('A1X22', 1, '3'),
('A1X23', 1, '4'),
('A1X31', 1, '8'),
('A1X32', 1, '1555'),
('A1X33', 1, '5'),
('A1X41', 0, 'null'),
('A1X42', 0, 'null'),
('A1X43', 0, 'null'),
('A1Y11', 0, 'null'),
('A1Y12', 0, 'null'),
('A1Y13', 0, 'null'),
('A1Y21', 0, 'null'),
('A1Y22', 0, 'null'),
('A1Y23', 0, 'null'),
('A1Y31', 0, 'null'),
('A1Y32', 0, 'null'),
('A1Y33', 0, 'null'),
('A1Y41', 0, 'null'),
('A1Y42', 0, 'null'),
('A1Y43', 0, 'null'),
('A1Z11', 0, 'null'),
('A1Z12', 0, 'null'),
('A1Z13', 0, 'null'),
('A1Z21', 0, 'null'),
('A1Z22', 0, 'null'),
('A1Z23', 0, 'null'),
('A1Z31', 0, 'null'),
('A1Z32', 0, 'null'),
('A1Z33', 0, 'null'),
('A1Z41', 0, 'null'),
('A1Z42', 0, 'null'),
('A1Z43', 0, 'null'),
('A2X11', 0, 'null'),
('A2X12', 0, 'null'),
('A2X13', 0, 'null'),
('A2X21', 0, 'null'),
('A2X22', 0, 'null'),
('A2X23', 0, 'null'),
('A2X31', 0, 'null'),
('A2X32', 0, 'null'),
('A2X33', 0, 'null'),
('A2X41', 0, 'null'),
('A2X42', 0, 'null'),
('A2X43', 0, 'null'),
('A2Y11', 0, 'null'),
('A2Y12', 0, 'null'),
('A2Y13', 0, 'null'),
('A2Y21', 0, 'null'),
('A2Y22', 0, 'null'),
('A2Y23', 0, 'null'),
('A2Y31', 0, 'null'),
('A2Y32', 0, 'null'),
('A2Y33', 0, 'null'),
('A2Y41', 0, 'null'),
('A2Y42', 0, 'null'),
('A2Y43', 0, 'null'),
('A2Z11', 0, 'null'),
('A2Z12', 0, 'null'),
('A2Z13', 0, 'null'),
('A2Z21', 0, 'null'),
('A2Z22', 0, 'null'),
('A2Z23', 0, 'null'),
('A2Z31', 0, 'null'),
('A2Z32', 0, 'null'),
('A2Z33', 0, 'null'),
('A2Z41', 0, 'null'),
('A2Z42', 0, 'null'),
('A2Z43', 0, 'null'),
('B1X11', 0, 'null'),
('B1X12', 0, 'null'),
('B1X13', 0, 'null'),
('B1X21', 0, 'null'),
('B1X22', 0, 'null'),
('B1X23', 0, 'null'),
('B1X31', 0, 'null'),
('B1X32', 0, 'null'),
('B1X33', 0, 'null'),
('B1X41', 0, 'null'),
('B1X42', 0, 'null'),
('B1X43', 0, 'null'),
('B1Y11', 0, 'null'),
('B1Y12', 0, 'null'),
('B1Y13', 0, 'null'),
('B1Y21', 0, 'null'),
('B1Y22', 0, 'null'),
('B1Y23', 0, 'null'),
('B1Y31', 0, 'null'),
('B1Y32', 0, 'null'),
('B1Y33', 0, 'null'),
('B1Y41', 0, 'null'),
('B1Y42', 0, 'null'),
('B1Y43', 0, 'null'),
('B1Z11', 0, 'null'),
('B1Z12', 0, 'null'),
('B1Z13', 0, 'null'),
('B1Z21', 0, 'null'),
('B1Z22', 0, 'null'),
('B1Z23', 0, 'null'),
('B1Z31', 0, 'null'),
('B1Z32', 0, 'null'),
('B1Z33', 0, 'null'),
('B1Z41', 0, 'null'),
('B1Z42', 0, 'null'),
('B1Z43', 0, 'null'),
('B2X11', 0, 'null'),
('B2X12', 0, 'null'),
('B2X13', 0, 'null'),
('B2X21', 0, 'null'),
('B2X22', 0, 'null'),
('B2X23', 0, 'null'),
('B2X31', 0, 'null'),
('B2X32', 0, 'null'),
('B2X33', 0, 'null'),
('B2X41', 0, 'null'),
('B2X42', 0, 'null'),
('B2X43', 0, 'null'),
('B2Y11', 0, 'null'),
('B2Y12', 0, 'null'),
('B2Y13', 0, 'null'),
('B2Y21', 0, 'null'),
('B2Y22', 0, 'null'),
('B2Y23', 0, 'null'),
('B2Y31', 0, 'null'),
('B2Y32', 0, 'null'),
('B2Y33', 0, 'null'),
('B2Y41', 0, 'null'),
('B2Y42', 0, 'null'),
('B2Y43', 0, 'null'),
('B2Z11', 0, 'null'),
('B2Z12', 0, 'null'),
('B2Z13', 0, 'null'),
('B2Z21', 0, 'null'),
('B2Z22', 0, 'null'),
('B2Z23', 0, 'null'),
('B2Z31', 0, 'null'),
('B2Z32', 0, 'null'),
('B2Z33', 0, 'null'),
('B2Z41', 0, 'null'),
('B2Z42', 0, 'null'),
('B2Z43', 0, 'null'),
('C1X11', 0, 'null'),
('C1X12', 0, 'null'),
('C1X13', 0, 'null'),
('C1X21', 0, 'null'),
('C1X22', 0, 'null'),
('C1X23', 0, 'null'),
('C1X31', 0, 'null'),
('C1X32', 0, 'null'),
('C1X33', 0, 'null'),
('C1X41', 0, 'null'),
('C1X42', 0, 'null'),
('C1X43', 0, 'null'),
('C1Y11', 0, 'null'),
('C1Y12', 0, 'null'),
('C1Y13', 0, 'null'),
('C1Y21', 0, 'null'),
('C1Y22', 0, 'null'),
('C1Y23', 0, 'null'),
('C1Y31', 0, 'null'),
('C1Y32', 0, 'null'),
('C1Y33', 0, 'null'),
('C1Y41', 0, 'null'),
('C1Y42', 0, 'null'),
('C1Y43', 0, 'null'),
('C1Z11', 0, 'null'),
('C1Z12', 0, 'null'),
('C1Z13', 0, 'null'),
('C1Z21', 0, 'null'),
('C1Z22', 0, 'null'),
('C1Z23', 0, 'null'),
('C1Z31', 0, 'null'),
('C1Z32', 0, 'null'),
('C1Z33', 0, 'null'),
('C1Z41', 0, 'null'),
('C1Z42', 0, 'null'),
('C1Z43', 0, 'null'),
('C2X11', 0, 'null'),
('C2X12', 0, 'null'),
('C2X13', 0, 'null'),
('C2X21', 0, 'null'),
('C2X22', 0, 'null'),
('C2X23', 0, 'null'),
('C2X31', 0, 'null'),
('C2X32', 0, 'null'),
('C2X33', 0, 'null'),
('C2X41', 0, 'null'),
('C2X42', 0, 'null'),
('C2X43', 0, 'null'),
('C2Y11', 0, 'null'),
('C2Y12', 0, 'null'),
('C2Y13', 0, 'null'),
('C2Y21', 0, 'null'),
('C2Y22', 0, 'null'),
('C2Y23', 0, 'null'),
('C2Y31', 0, 'null'),
('C2Y32', 0, 'null'),
('C2Y33', 0, 'null'),
('C2Y41', 0, 'null'),
('C2Y42', 0, 'null'),
('C2Y43', 0, 'null'),
('C2Z11', 0, 'null'),
('C2Z12', 0, 'null'),
('C2Z13', 0, 'null'),
('C2Z21', 0, 'null'),
('C2Z22', 0, 'null'),
('C2Z23', 0, 'null'),
('C2Z31', 0, 'null'),
('C2Z32', 0, 'null'),
('C2Z33', 0, 'null'),
('C2Z41', 0, 'null'),
('C2Z42', 0, 'null'),
('C2Z43', 0, 'null'),
('D1X11', 0, 'null'),
('D1X12', 0, 'null'),
('D1X13', 0, 'null'),
('D1X21', 0, 'null'),
('D1X22', 0, 'null'),
('D1X23', 0, 'null'),
('D1X31', 0, 'null'),
('D1X32', 0, 'null'),
('D1X33', 0, 'null'),
('D1X41', 0, 'null'),
('D1X42', 0, 'null'),
('D1X43', 0, 'null'),
('D1Y11', 0, 'null'),
('D1Y12', 0, 'null'),
('D1Y13', 0, 'null'),
('D1Y21', 0, 'null'),
('D1Y22', 0, 'null'),
('D1Y23', 0, 'null'),
('D1Y31', 0, 'null'),
('D1Y32', 0, 'null'),
('D1Y33', 0, 'null'),
('D1Y41', 0, 'null'),
('D1Y42', 0, 'null'),
('D1Y43', 0, 'null'),
('D1Z11', 0, 'null'),
('D1Z12', 0, 'null'),
('D1Z13', 0, 'null'),
('D1Z21', 0, 'null'),
('D1Z22', 0, 'null'),
('D1Z23', 0, 'null'),
('D1Z31', 0, 'null'),
('D1Z32', 0, 'null'),
('D1Z33', 0, 'null'),
('D1Z41', 0, 'null'),
('D1Z42', 0, 'null'),
('D1Z43', 0, 'null'),
('D2X11', 0, 'null'),
('D2X12', 0, 'null'),
('D2X13', 0, 'null'),
('D2X21', 0, 'null'),
('D2X22', 0, 'null'),
('D2X23', 0, 'null'),
('D2X31', 0, 'null'),
('D2X32', 0, 'null'),
('D2X33', 0, 'null'),
('D2X41', 0, 'null'),
('D2X42', 0, 'null'),
('D2X43', 0, 'null'),
('D2Y11', 0, 'null'),
('D2Y12', 0, 'null'),
('D2Y13', 0, 'null'),
('D2Y21', 0, 'null'),
('D2Y22', 0, 'null'),
('D2Y23', 0, 'null'),
('D2Y31', 0, 'null'),
('D2Y32', 0, 'null'),
('D2Y33', 0, 'null'),
('D2Y41', 0, 'null'),
('D2Y42', 0, 'null'),
('D2Y43', 0, 'null'),
('D2Z11', 0, 'null'),
('D2Z12', 0, 'null'),
('D2Z13', 0, 'null'),
('D2Z21', 0, 'null'),
('D2Z22', 0, 'null'),
('D2Z23', 0, 'null'),
('D2Z31', 0, 'null'),
('D2Z32', 0, 'null'),
('D2Z33', 0, 'null'),
('D2Z41', 0, 'null'),
('D2Z42', 0, 'null'),
('D2Z43', 0, 'null'),
('E1X11', 0, 'null'),
('E1X12', 0, 'null'),
('E1X13', 0, 'null'),
('E1X21', 0, 'null'),
('E1X22', 0, 'null'),
('E1X23', 0, 'null'),
('E1X31', 0, 'null'),
('E1X32', 0, 'null'),
('E1X33', 0, 'null'),
('E1X41', 0, 'null'),
('E1X42', 0, 'null'),
('E1X43', 0, 'null'),
('E1Y11', 0, 'null'),
('E1Y12', 0, 'null'),
('E1Y13', 0, 'null'),
('E1Y21', 0, 'null'),
('E1Y22', 0, 'null'),
('E1Y23', 0, 'null'),
('E1Y31', 0, 'null'),
('E1Y32', 0, 'null'),
('E1Y33', 0, 'null'),
('E1Y41', 0, 'null'),
('E1Y42', 0, 'null'),
('E1Y43', 0, 'null'),
('E1Z11', 0, 'null'),
('E1Z12', 0, 'null'),
('E1Z13', 0, 'null'),
('E1Z21', 0, 'null'),
('E1Z22', 0, 'null'),
('E1Z23', 0, 'null'),
('E1Z31', 0, 'null'),
('E1Z32', 0, 'null'),
('E1Z33', 0, 'null'),
('E1Z41', 0, 'null'),
('E1Z42', 0, 'null'),
('E1Z43', 0, 'null'),
('E2X11', 0, 'null'),
('E2X12', 0, 'null'),
('E2X13', 0, 'null'),
('E2X21', 0, 'null'),
('E2X22', 0, 'null'),
('E2X23', 0, 'null'),
('E2X31', 0, 'null'),
('E2X32', 0, 'null'),
('E2X33', 0, 'null'),
('E2X41', 0, 'null'),
('E2X42', 0, 'null'),
('E2X43', 0, 'null'),
('E2Y11', 0, 'null'),
('E2Y12', 0, 'null'),
('E2Y13', 0, 'null'),
('E2Y21', 0, 'null'),
('E2Y22', 0, 'null'),
('E2Y23', 0, 'null'),
('E2Y31', 0, 'null'),
('E2Y32', 0, 'null'),
('E2Y33', 0, 'null'),
('E2Y41', 0, 'null'),
('E2Y42', 0, 'null'),
('E2Y43', 0, 'null'),
('E2Z11', 0, 'null'),
('E2Z12', 0, 'null'),
('E2Z13', 0, 'null'),
('E2Z21', 0, 'null'),
('E2Z22', 0, 'null'),
('E2Z23', 0, 'null'),
('E2Z31', 0, 'null'),
('E2Z32', 0, 'null'),
('E2Z33', 0, 'null'),
('E2Z41', 0, 'null'),
('E2Z42', 0, 'null'),
('E2Z43', 0, 'null'),
('F1X11', 0, 'null'),
('F1X12', 0, 'null'),
('F1X13', 0, 'null'),
('F1X21', 0, 'null'),
('F1X22', 0, 'null'),
('F1X23', 0, 'null'),
('F1X31', 0, 'null'),
('F1X32', 0, 'null'),
('F1X33', 0, 'null'),
('F1X41', 0, 'null'),
('F1X42', 0, 'null'),
('F1X43', 0, 'null'),
('F1Y11', 0, 'null'),
('F1Y12', 0, 'null'),
('F1Y13', 0, 'null'),
('F1Y21', 0, 'null'),
('F1Y22', 0, 'null'),
('F1Y23', 0, 'null'),
('F1Y31', 0, 'null'),
('F1Y32', 0, 'null'),
('F1Y33', 0, 'null'),
('F1Y41', 0, 'null'),
('F1Y42', 0, 'null'),
('F1Y43', 0, 'null'),
('F1Z11', 0, 'null'),
('F1Z12', 0, 'null'),
('F1Z13', 0, 'null'),
('F1Z21', 0, 'null'),
('F1Z22', 0, 'null'),
('F1Z23', 0, 'null'),
('F1Z31', 0, 'null'),
('F1Z32', 0, 'null'),
('F1Z33', 0, 'null'),
('F1Z41', 0, 'null'),
('F1Z42', 0, 'null'),
('F1Z43', 0, 'null'),
('F2X11', 0, 'null'),
('F2X12', 0, 'null'),
('F2X13', 0, 'null'),
('F2X21', 0, 'null'),
('F2X22', 0, 'null'),
('F2X23', 0, 'null'),
('F2X31', 0, 'null'),
('F2X32', 0, 'null'),
('F2X33', 0, 'null'),
('F2X41', 0, 'null'),
('F2X42', 0, 'null'),
('F2X43', 0, 'null'),
('F2Y11', 0, 'null'),
('F2Y12', 0, 'null'),
('F2Y13', 0, 'null'),
('F2Y21', 0, 'null'),
('F2Y22', 0, 'null'),
('F2Y23', 0, 'null'),
('F2Y31', 0, 'null'),
('F2Y32', 0, 'null'),
('F2Y33', 0, 'null'),
('F2Y41', 0, 'null'),
('F2Y42', 0, 'null'),
('F2Y43', 0, 'null'),
('F2Z11', 0, 'null'),
('F2Z12', 0, 'null'),
('F2Z13', 0, 'null'),
('F2Z21', 0, 'null'),
('F2Z22', 0, 'null'),
('F2Z23', 0, 'null'),
('F2Z31', 0, 'null'),
('F2Z32', 0, 'null'),
('F2Z33', 0, 'null'),
('F2Z41', 0, 'null'),
('F2Z42', 0, 'null'),
('F2Z43', 0, 'null'),
('G1X11', 0, 'null'),
('G1X12', 0, 'null'),
('G1X13', 0, 'null'),
('G1X21', 0, 'null'),
('G1X22', 0, 'null'),
('G1X23', 0, 'null'),
('G1X31', 0, 'null'),
('G1X32', 0, 'null'),
('G1X33', 0, 'null'),
('G1X41', 0, 'null'),
('G1X42', 0, 'null'),
('G1X43', 0, 'null'),
('G1Y11', 0, 'null'),
('G1Y12', 0, 'null'),
('G1Y13', 0, 'null'),
('G1Y21', 0, 'null'),
('G1Y22', 0, 'null'),
('G1Y23', 0, 'null'),
('G1Y31', 0, 'null'),
('G1Y32', 0, 'null'),
('G1Y33', 0, 'null'),
('G1Y41', 0, 'null'),
('G1Y42', 0, 'null'),
('G1Y43', 0, 'null'),
('G1Z11', 0, 'null'),
('G1Z12', 0, 'null'),
('G1Z13', 0, 'null'),
('G1Z21', 0, 'null'),
('G1Z22', 0, 'null'),
('G1Z23', 0, 'null'),
('G1Z31', 0, 'null'),
('G1Z32', 0, 'null'),
('G1Z33', 0, 'null'),
('G1Z41', 0, 'null'),
('G1Z42', 0, 'null'),
('G1Z43', 0, 'null'),
('G2X11', 0, 'null'),
('G2X12', 0, 'null'),
('G2X13', 0, 'null'),
('G2X21', 0, 'null'),
('G2X22', 0, 'null'),
('G2X23', 0, 'null'),
('G2X31', 0, 'null'),
('G2X32', 0, 'null'),
('G2X33', 0, 'null'),
('G2X41', 0, 'null'),
('G2X42', 0, 'null'),
('G2X43', 0, 'null'),
('G2Y11', 0, 'null'),
('G2Y12', 0, 'null'),
('G2Y13', 0, 'null'),
('G2Y21', 0, 'null'),
('G2Y22', 0, 'null'),
('G2Y23', 0, 'null'),
('G2Y31', 0, 'null'),
('G2Y32', 0, 'null'),
('G2Y33', 0, 'null'),
('G2Y41', 0, 'null'),
('G2Y42', 0, 'null'),
('G2Y43', 0, 'null'),
('G2Z11', 0, 'null'),
('G2Z12', 0, 'null'),
('G2Z13', 0, 'null'),
('G2Z21', 0, 'null'),
('G2Z22', 0, 'null'),
('G2Z23', 0, 'null'),
('G2Z31', 0, 'null'),
('G2Z32', 0, 'null'),
('G2Z33', 0, 'null'),
('G2Z41', 0, 'null'),
('G2Z42', 0, 'null'),
('G2Z43', 0, 'null'),
('H1X11', 0, 'null'),
('H1X12', 0, 'null'),
('H1X13', 0, 'null'),
('H1X21', 0, 'null'),
('H1X22', 0, 'null'),
('H1X23', 0, 'null'),
('H1X31', 0, 'null'),
('H1X32', 0, 'null'),
('H1X33', 0, 'null'),
('H1X41', 0, 'null'),
('H1X42', 0, 'null'),
('H1X43', 0, 'null'),
('H1Y11', 0, 'null'),
('H1Y12', 0, 'null'),
('H1Y13', 0, 'null'),
('H1Y21', 0, 'null'),
('H1Y22', 0, 'null'),
('H1Y23', 0, 'null'),
('H1Y31', 0, 'null'),
('H1Y32', 0, 'null'),
('H1Y33', 0, 'null'),
('H1Y41', 0, 'null'),
('H1Y42', 0, 'null'),
('H1Y43', 0, 'null'),
('H1Z11', 0, 'null'),
('H1Z12', 0, 'null'),
('H1Z13', 0, 'null'),
('H1Z21', 0, 'null'),
('H1Z22', 0, 'null'),
('H1Z23', 0, 'null'),
('H1Z31', 0, 'null'),
('H1Z32', 0, 'null'),
('H1Z33', 0, 'null'),
('H1Z41', 0, 'null'),
('H1Z42', 0, 'null'),
('H1Z43', 0, 'null'),
('H2X11', 0, 'null'),
('H2X12', 0, 'null'),
('H2X13', 0, 'null'),
('H2X21', 0, 'null'),
('H2X22', 0, 'null'),
('H2X23', 0, 'null'),
('H2X31', 0, 'null'),
('H2X32', 0, 'null'),
('H2X33', 0, 'null'),
('H2X41', 0, 'null'),
('H2X42', 0, 'null'),
('H2X43', 0, 'null'),
('H2Y11', 0, 'null'),
('H2Y12', 0, 'null'),
('H2Y13', 0, 'null'),
('H2Y21', 0, 'null'),
('H2Y22', 0, 'null'),
('H2Y23', 0, 'null'),
('H2Y31', 0, 'null'),
('H2Y32', 0, 'null'),
('H2Y33', 0, 'null'),
('H2Y41', 0, 'null'),
('H2Y42', 0, 'null'),
('H2Y43', 0, 'null'),
('H2Z11', 0, 'null'),
('H2Z12', 0, 'null'),
('H2Z13', 0, 'null'),
('H2Z21', 0, 'null'),
('H2Z22', 0, 'null'),
('H2Z23', 0, 'null'),
('H2Z31', 0, 'null'),
('H2Z32', 0, 'null'),
('H2Z33', 0, 'null'),
('H2Z41', 0, 'null'),
('H2Z42', 0, 'null'),
('H2Z43', 0, 'null'),
('I1X11', 0, 'null'),
('I1X12', 0, 'null'),
('I1X13', 0, 'null'),
('I1X21', 0, 'null'),
('I1X22', 0, 'null'),
('I1X23', 0, 'null'),
('I1X31', 0, 'null'),
('I1X32', 0, 'null'),
('I1X33', 0, 'null'),
('I1X41', 0, 'null'),
('I1X42', 0, 'null'),
('I1X43', 0, 'null'),
('I1Y11', 0, 'null'),
('I1Y12', 0, 'null'),
('I1Y13', 0, 'null'),
('I1Y21', 0, 'null'),
('I1Y22', 0, 'null'),
('I1Y23', 0, 'null'),
('I1Y31', 0, 'null'),
('I1Y32', 0, 'null'),
('I1Y33', 0, 'null'),
('I1Y41', 0, 'null'),
('I1Y42', 0, 'null'),
('I1Y43', 0, 'null'),
('I1Z11', 0, 'null'),
('I1Z12', 0, 'null'),
('I1Z13', 0, 'null'),
('I1Z21', 0, 'null'),
('I1Z22', 0, 'null'),
('I1Z23', 0, 'null'),
('I1Z31', 0, 'null'),
('I1Z32', 0, 'null'),
('I1Z33', 0, 'null'),
('I1Z41', 0, 'null'),
('I1Z42', 0, 'null'),
('I1Z43', 0, 'null'),
('I2X11', 0, 'null'),
('I2X12', 0, 'null'),
('I2X13', 0, 'null'),
('I2X21', 0, 'null'),
('I2X22', 0, 'null'),
('I2X23', 0, 'null'),
('I2X31', 0, 'null'),
('I2X32', 0, 'null'),
('I2X33', 0, 'null'),
('I2X41', 0, 'null'),
('I2X42', 0, 'null'),
('I2X43', 0, 'null'),
('I2Y11', 0, 'null'),
('I2Y12', 0, 'null'),
('I2Y13', 0, 'null'),
('I2Y21', 0, 'null'),
('I2Y22', 0, 'null'),
('I2Y23', 0, 'null'),
('I2Y31', 0, 'null'),
('I2Y32', 0, 'null'),
('I2Y33', 0, 'null'),
('I2Y41', 0, 'null'),
('I2Y42', 0, 'null'),
('I2Y43', 0, 'null'),
('I2Z11', 0, 'null'),
('I2Z12', 0, 'null'),
('I2Z13', 0, 'null'),
('I2Z21', 0, 'null'),
('I2Z22', 0, 'null'),
('I2Z23', 0, 'null'),
('I2Z31', 0, 'null'),
('I2Z32', 0, 'null'),
('I2Z33', 0, 'null'),
('I2Z41', 0, 'null'),
('I2Z42', 0, 'null'),
('I2Z43', 0, 'null'),
('J1X11', 0, 'null'),
('J1X12', 0, 'null'),
('J1X13', 0, 'null'),
('J1X21', 0, 'null'),
('J1X22', 0, 'null'),
('J1X23', 0, 'null'),
('J1X31', 0, 'null'),
('J1X32', 0, 'null'),
('J1X33', 0, 'null'),
('J1X41', 0, 'null'),
('J1X42', 0, 'null'),
('J1X43', 0, 'null'),
('J1Y11', 0, 'null'),
('J1Y12', 0, 'null'),
('J1Y13', 0, 'null'),
('J1Y21', 0, 'null'),
('J1Y22', 0, 'null'),
('J1Y23', 0, 'null'),
('J1Y31', 0, 'null'),
('J1Y32', 0, 'null'),
('J1Y33', 0, 'null'),
('J1Y41', 0, 'null'),
('J1Y42', 0, 'null'),
('J1Y43', 0, 'null'),
('J1Z11', 0, 'null'),
('J1Z12', 0, 'null'),
('J1Z13', 0, 'null'),
('J1Z21', 0, 'null'),
('J1Z22', 0, 'null'),
('J1Z23', 0, 'null'),
('J1Z31', 0, 'null'),
('J1Z32', 0, 'null'),
('J1Z33', 0, 'null'),
('J1Z41', 0, 'null'),
('J1Z42', 0, 'null'),
('J1Z43', 0, 'null'),
('J2X11', 0, 'null'),
('J2X12', 0, 'null'),
('J2X13', 0, 'null'),
('J2X21', 0, 'null'),
('J2X22', 0, 'null'),
('J2X23', 0, 'null'),
('J2X31', 0, 'null'),
('J2X32', 0, 'null'),
('J2X33', 0, 'null'),
('J2X41', 0, 'null'),
('J2X42', 0, 'null'),
('J2X43', 0, 'null'),
('J2Y11', 0, 'null'),
('J2Y12', 0, 'null'),
('J2Y13', 0, 'null'),
('J2Y21', 0, 'null'),
('J2Y22', 0, 'null'),
('J2Y23', 0, 'null'),
('J2Y31', 0, 'null'),
('J2Y32', 0, 'null'),
('J2Y33', 0, 'null'),
('J2Y41', 0, 'null'),
('J2Y42', 0, 'null'),
('J2Y43', 0, 'null'),
('J2Z11', 0, 'null'),
('J2Z12', 0, 'null'),
('J2Z13', 0, 'null'),
('J2Z21', 0, 'null'),
('J2Z22', 0, 'null'),
('J2Z23', 0, 'null'),
('J2Z31', 0, 'null'),
('J2Z32', 0, 'null'),
('J2Z33', 0, 'null'),
('J2Z41', 0, 'null'),
('J2Z42', 0, 'null'),
('J2Z43', 0, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `BARCODE` int(20) NOT NULL,
  `PURCHASE_DATE` date NOT NULL,
  `USERNAME` text NOT NULL,
  `CUSTOMER_EMAIL` text NOT NULL,
  `BUYPRICE` float NOT NULL,
  `INFO` text NOT NULL,
  `MARKPRICE` float NOT NULL,
  `NAME` text NOT NULL,
  `NUM` varchar(45) NOT NULL,
  `SELLPRICE` float NOT NULL,
  `TYPE` varchar(45) NOT NULL,
  `SALES_NUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`BARCODE`, `PURCHASE_DATE`, `USERNAME`, `CUSTOMER_EMAIL`, `BUYPRICE`, `INFO`, `MARKPRICE`, `NAME`, `NUM`, `SELLPRICE`, `TYPE`, `SALES_NUM`) VALUES
(4, '2018-12-10', 'special', 'lordkoolkid@email.com', 4, '4', 4, '4', '4', 4, '4', 2746543),
(8, '2018-12-10', 'admin', 'admin@gmail.com', 8, '8', 8, '8', '8', 8, '8', 11166971);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, ' Admin User', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'no_image.jpg', 1, '2018-12-10 08:51:51'),
(2, 'Special User', 'special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'no_image.jpg', 1, '2018-11-27 09:49:37'),
(3, 'Default User', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'no_image.jpg', 1, '2018-11-26 20:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'special', 2, 1),
(3, 'User', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD UNIQUE KEY `BARC` (`BARC`,`NUM`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD UNIQUE KEY `loc` (`loc`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SALES_NUM`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
