-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 03:36 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizcontrol`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Id` int(25) NOT NULL,
  `Question` varchar(100) NOT NULL,
  `Author` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `examinfo`
--

CREATE TABLE `examinfo` (
  `Id` int(25) NOT NULL,
  `ExamID` varchar(25) NOT NULL,
  `Question` varchar(100) NOT NULL,
  `Answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `examprofile`
--

CREATE TABLE `examprofile` (
  `Id` int(25) NOT NULL,
  `Name` int(11) NOT NULL,
  `Duration` time NOT NULL,
  `CreateTime` datetime NOT NULL,
  `UpdateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `Id` int(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `examinfo`
--
ALTER TABLE `examinfo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `examprofile`
--
ALTER TABLE `examprofile`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `examinfo` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `examinfo`
--
ALTER TABLE `examinfo`
  ADD CONSTRAINT `examinfo_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `userinfo` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `examprofile`
--
ALTER TABLE `examprofile`
  ADD CONSTRAINT `examprofile_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `userinfo` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
