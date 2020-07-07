-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 06, 2020 at 03:59 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `callcentermanagement`
--
CREATE DATABASE IF NOT EXISTS `callcentermanagement` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `callcentermanagement`;

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE IF NOT EXISTS `agent` (
  `agentCode` varchar(10) NOT NULL,
  `agentName` varchar(20) NOT NULL,
  PRIMARY KEY (`agentCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agentCode`, `agentName`) VALUES
('AGT_001', 'Alpha'),
('AGT_002', 'Bravo');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
CREATE TABLE IF NOT EXISTS `complaint` (
  `complaintCode` varchar(10) NOT NULL,
  `issueCode` varchar(10) NOT NULL,
  `complaintDescription` varchar(100) NOT NULL,
  PRIMARY KEY (`complaintCode`),
  KEY `issueCode` (`issueCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `contactCode` varchar(10) NOT NULL,
  `contactType` varchar(15) NOT NULL,
  `contactDescription` varchar(100) NOT NULL,
  PRIMARY KEY (`contactCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactCode`, `contactType`, `contactDescription`) VALUES
('123', 'CALL', 'Basic Description');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerCode` varchar(10) NOT NULL,
  `customerStatus` varchar(15) NOT NULL,
  PRIMARY KEY (`customerCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerCode`, `customerStatus`) VALUES
('0123456789', 'UNREGISTERED'),
('0987654321', 'UNREGISTERED');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
CREATE TABLE IF NOT EXISTS `issue` (
  `issueCode` varchar(10) NOT NULL,
  `agentCode` varchar(10) NOT NULL,
  `customerCode` varchar(10) NOT NULL,
  `issueDate` date NOT NULL,
  `issueDescription` varchar(100) NOT NULL,
  `issueStatus` varchar(15) NOT NULL,
  PRIMARY KEY (`issueCode`),
  KEY `agentCode` (`agentCode`),
  KEY `customerCode` (`customerCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
