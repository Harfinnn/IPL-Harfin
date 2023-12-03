-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 02:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_Id` int(5) NOT NULL,
  `Ussername` varchar(30) NOT NULL,
  `Admin_Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `Id_Apply` int(11) NOT NULL,
  `Js_Id` int(11) NOT NULL,
  `Date_Apply` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `approve`
--

CREATE TABLE `approve` (
  `Id_approve` int(5) NOT NULL,
  `Admin_id` int(30) NOT NULL,
  `Date_Approve` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Ussername` varchar(30) NOT NULL,
  `Id_Role` int(5) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `Js_Id` int(5) NOT NULL,
  `Ussername` varchar(30) NOT NULL,
  `Js_Name` varchar(30) DEFAULT NULL,
  `Js_Address` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Contact_Num` char(12) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_provider`
--

CREATE TABLE `job_provider` (
  `Ip_Id` int(5) NOT NULL,
  `Ussername` varchar(30) NOT NULL,
  `Company_Name` varchar(30) DEFAULT NULL,
  `Company_Address` varchar(30) DEFAULT NULL,
  `Company_Contact_Num` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `Id_Request` int(5) NOT NULL,
  `Ip_id` int(5) NOT NULL,
  `Date_Request` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Id_Role` int(5) NOT NULL,
  `Name_Role` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE `vacancy` (
  `Vacancy_Id` int(5) NOT NULL,
  `Id_Approve` int(5) NOT NULL,
  `Id_Apply` int(5) NOT NULL,
  `Id_Request` int(5) NOT NULL,
  `Vacancy_Title` varchar(30) DEFAULT NULL,
  `Vacancy_Desc` varchar(30) DEFAULT NULL,
  `Num_Of_Jobs` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_Id`),
  ADD KEY `Ussername` (`Ussername`);

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`Id_Apply`),
  ADD KEY `Js_Id` (`Js_Id`);

--
-- Indexes for table `approve`
--
ALTER TABLE `approve`
  ADD PRIMARY KEY (`Id_approve`),
  ADD KEY `Admin_id` (`Admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Ussername`),
  ADD KEY `Id_Role` (`Id_Role`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`Js_Id`),
  ADD KEY `Ussername` (`Ussername`);

--
-- Indexes for table `job_provider`
--
ALTER TABLE `job_provider`
  ADD PRIMARY KEY (`Ip_Id`),
  ADD KEY `Ussername` (`Ussername`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`Id_Request`),
  ADD KEY `Ip_id` (`Ip_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id_Role`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`Vacancy_Id`),
  ADD KEY `Id_Approve` (`Id_Approve`,`Id_Apply`,`Id_Request`),
  ADD KEY `Id_Apply` (`Id_Apply`),
  ADD KEY `Id_Request` (`Id_Request`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Ussername`) REFERENCES `customer` (`Ussername`);

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `apply_ibfk_1` FOREIGN KEY (`Js_Id`) REFERENCES `jobseeker` (`Js_Id`);

--
-- Constraints for table `approve`
--
ALTER TABLE `approve`
  ADD CONSTRAINT `approve_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_Id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Id_Role`) REFERENCES `role` (`Id_Role`);

--
-- Constraints for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD CONSTRAINT `jobseeker_ibfk_1` FOREIGN KEY (`Ussername`) REFERENCES `customer` (`Ussername`);

--
-- Constraints for table `job_provider`
--
ALTER TABLE `job_provider`
  ADD CONSTRAINT `job_provider_ibfk_1` FOREIGN KEY (`Ussername`) REFERENCES `customer` (`Ussername`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`Ip_id`) REFERENCES `job_provider` (`Ip_Id`);

--
-- Constraints for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD CONSTRAINT `vacancy_ibfk_1` FOREIGN KEY (`Id_Approve`) REFERENCES `approve` (`Id_approve`),
  ADD CONSTRAINT `vacancy_ibfk_2` FOREIGN KEY (`Id_Apply`) REFERENCES `apply` (`Id_Apply`),
  ADD CONSTRAINT `vacancy_ibfk_3` FOREIGN KEY (`Id_Request`) REFERENCES `request` (`Id_Request`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
