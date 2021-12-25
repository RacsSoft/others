-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2021 at 08:28 AM
-- Server version: 10.3.32-MariaDB-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `racsioca_ecom`
--
CREATE DATABASE IF NOT EXISTS `racsioca_ecom` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `racsioca_ecom`;
--
-- Database: `racsioca_racsdb`
--
CREATE DATABASE IF NOT EXISTS `racsioca_racsdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `racsioca_racsdb`;
--
-- Database: `racsioca_racssoft`
--
CREATE DATABASE IF NOT EXISTS `racsioca_racssoft` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `racsioca_racssoft`;
--
-- Database: `racsioca_security`
--
CREATE DATABASE IF NOT EXISTS `racsioca_security` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `racsioca_security`;

-- --------------------------------------------------------

--
-- Table structure for table `Devices`
--

CREATE TABLE `Devices` (
  `Id` int(11) NOT NULL,
  `DeviceName` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Purchase`
--

CREATE TABLE `Purchase` (
  `Id` bigint(20) NOT NULL,
  `CreateDate` date NOT NULL,
  `CreatedTime` time NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `PurchaseMethod` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserDeviceRegistration`
--

CREATE TABLE `UserDeviceRegistration` (
  `Id` bigint(20) NOT NULL,
  `DeviceId` tinyint(4) NOT NULL,
  `CreateDate` date NOT NULL,
  `RegistrationKey` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserIdentityPerDevice`
--

CREATE TABLE `UserIdentityPerDevice` (
  `Id` bigint(20) NOT NULL,
  `KEYCode` text NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `PurchaseId` bigint(20) NOT NULL,
  `CreateDate` date NOT NULL,
  `CreatedTime` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserPassword`
--

CREATE TABLE `UserPassword` (
  `Id` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `Password` text NOT NULL,
  `CreateDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `Id` bigint(20) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `RegistrationId` varchar(25) NOT NULL,
  `CreatedDate` date NOT NULL,
  `CreatedTime` time NOT NULL,
  `Comments` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Devices`
--
ALTER TABLE `Devices`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Purchase`
--
ALTER TABLE `Purchase`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `UserDeviceRegistration`
--
ALTER TABLE `UserDeviceRegistration`
  ADD UNIQUE KEY `RegistrationKey` (`RegistrationKey`);

--
-- Indexes for table `UserIdentityPerDevice`
--
ALTER TABLE `UserIdentityPerDevice`
  ADD PRIMARY KEY (`Id`);
--
-- Database: `racsioca_shop`
--
CREATE DATABASE IF NOT EXISTS `racsioca_shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `racsioca_shop`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
