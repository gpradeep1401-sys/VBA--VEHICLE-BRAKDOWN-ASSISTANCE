-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 05:03 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehassitancemsdb`
--
CREATE DATABASE vehassitancemsdb;
use vehassitancemsdb;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'User', 'User', 8979555557, 'adminuser@gmail.com', 'user', '2020-01-02 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `PhoneNumber` bigint(10) DEFAULT NULL,
  `PickupLoc` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `PickupDate` varchar(200) DEFAULT NULL,
  `PickupTime` varchar(200) DEFAULT NULL,
  `DateofRequest` timestamp NOT NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `AssignTo` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `BookingNumber`, `Name`, `Email`, `PhoneNumber`, `PickupLoc`, `Destination`, `PickupDate`, `PickupTime`, `DateofRequest`, `Remark`, `Status`, `AssignTo`, `UpdationDate`) VALUES
(1, 816217717, 'sai', 'jkjkh@gmail.com', 7897897, 'siddipet', 'balapur', '2021-08-27', '14:34', '2021-08-25 04:03:19', 'Address not sufficient', 'Rejected', '', '2021-08-25 08:49:45'),
(2, 697868423, 'teja', 'teja@gmail.com', 7897978998, 'suchitra', 'balapur', '2021-08-25', '14:00', '2021-08-25 04:25:40', 'I am on the way', 'On The Way', 'vams123', '2021-08-31 03:54:08'),
(3, 407268812, 'Gyani', 'gyani@gmail.com', 7897978998, 'BN reddy', 'balapur', '2021-08-25', '14:00', '2021-08-25 04:26:55', 'Task completed', 'Completed', 'vams123', '2021-08-26 10:54:16'),
(4, 158801232, 'Vipin', 'vipin@gmail.com', 7987987979, 'LB nagar', 'balapur', '2021-08-31', '12:08', '2021-08-31 05:37:19', NULL,'on the way', NULL, '2021-08-31 05:37:19'),
(5, 344289093, 'Akhil Kumar', 'akhil@gmail.com', 4546545456, 'Miryalguda', 'balapur', '2021-09-03', '13:47', '2021-09-03 05:14:30', NULL, 'still pending', NULL, '2021-09-03 05:14:30'),
(6, 475299702, 'Arjun', 'arjun@gmail.com', 8777977789, 'Kompally', 'balapur', '2021-09-03', '22:59', '2021-09-03 11:23:28', 'Completed', 'Completed', 'vams124', '2021-09-03 12:52:56'),
(7, 843252190, 'Anuj Kumar', 'ak@gmail.com', 1234567890, 'karmanghat', 'balapur', '2021-09-10', '09:00', '2021-09-07 16:58:08', NULL, 'invalid location', NULL, '2021-09-07 16:58:08'),
(8, 573248326, 'Amit kumar', 'amit@gmail.com', 1234567890, 'balapur', 'balapur', '2021-09-10', '15:35', '2021-09-07 17:03:27', 'Task Completed', 'Completed', 'test123', '2021-09-07 17:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbldriver`
--

CREATE TABLE `tbldriver` (
  `ID` int(10) NOT NULL,
  `DriverID` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldriver`
--

INSERT INTO `tbldriver` (`ID`, `DriverID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(1, 'vams123', 'vamsi', 7654654654, 'vamsil123@gmail.com', 'J-234, near Lokayukta colony park', '123456', '2021-08-19 13:29:39'),
(2, 'venu', 'venu', 9879879879, 'venu@gmail.com', 'H-9,maisammaguda', '123456', '2021-08-20 05:57:02'),
(4, 'varun', 'varun', 9879789799, 'varun@gmail.com', 'near bachpan school', '123456', '2021-08-23 05:19:18'),
(6, 'sudheer', 'sudheer', 8234567890, 'sudheer@gmail.com', 'suchitra circle', '123456', '2021-09-07 17:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '
We offer the Roadside Assistance Package – a 24x7 emergency support provided in the event of any mechanical/electrical breakdown or traffic accident of the vehicle. ... If your car has met with a major accident and is immovable, we will help you to tow your car to the nearest workshop or legal authorities', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'Batch 20,MRCET, Kompally, HyderabadHyderabad/HYD)', 'Batch20@gmail.com', 8341532114, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `BookingNumber`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 407268812, 'We assist you', 'Approved', '2021-08-25 08:43:14'),
(2, 816217717, 'Address not sufficient', 'Rejected', '2021-08-25 08:49:45'),
(3, 407268812, 'On the way', 'On The Way', '2021-08-26 05:01:51'),
(4, 407268812, 'Task completed', 'Completed', '2021-08-26 10:54:16'),
(5, 697868423, 'Approved', 'Approved', '2021-08-31 03:53:08'),
(6, 697868423, 'I am on the way', 'On The Way', '2021-08-31 03:54:08'),
(7, 475299702, 'Your request has been approved', 'Approved', '2021-09-03 11:26:29'),
(8, 475299702, 'On the way', 'On The Way', '2021-09-03 12:49:35'),
(9, 475299702, 'Completed', 'Completed', '2021-09-03 12:52:56'),
(10, 573248326, 'Task Assigned', 'Approved', '2021-09-07 17:05:25'),
(11, 573248326, 'On the way for task', 'On The Way', '2021-09-07 17:06:30'),
(12, 573248326, 'Task Completed', 'Completed', '2021-09-07 17:07:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BookingNumber` (`BookingNumber`);

--
-- Indexes for table `tbldriver`
--
ALTER TABLE `tbldriver`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbldriver`
--
ALTER TABLE `tbldriver`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
