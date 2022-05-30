-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2022 at 07:22 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hps`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_dr_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `admin_dr_view`;
CREATE TABLE IF NOT EXISTS `admin_dr_view` (
`dr_id` int(4)
,`name` varchar(50)
,`age` int(4)
,`Gender` varchar(20)
,`Department_id` int(4)
,`Department_name` varchar(50)
,`email` varchar(50)
,`phone_number` varchar(20)
,`fees` int(10)
,`Room_no` int(6)
,`Floor` int(4)
,`Slot_id` int(6)
,`Slot_timing` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE IF NOT EXISTS `admin_login` (
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`Username`, `Password`) VALUES
('hps', 'abc.123');

-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_patient_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `admin_patient_view`;
CREATE TABLE IF NOT EXISTS `admin_patient_view` (
`P_id` int(4)
,`name` varchar(50)
,`age` int(4)
,`gender` varchar(20)
,`email` varchar(50)
,`phonenumber` varchar(20)
,`password` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `A_id` int(4) NOT NULL AUTO_INCREMENT,
  `P_id` int(4) NOT NULL,
  `dr_id` int(4) NOT NULL,
  `Time` varchar(15) NOT NULL,
  PRIMARY KEY (`A_id`),
  KEY `dr_id` (`dr_id`),
  KEY `P_id` (`P_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `Department_id` int(4) NOT NULL,
  `Department_name` varchar(50) NOT NULL,
  PRIMARY KEY (`Department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_id`, `Department_name`) VALUES
(1, 'OPD'),
(2, 'ENT'),
(3, 'DIABETES'),
(4, 'DENTAL SURGERY');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `dr_id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int(4) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Department_id` int(4) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `fees` int(10) NOT NULL,
  `Room_no` int(6) NOT NULL,
  `Slot_id` int(6) NOT NULL,
  PRIMARY KEY (`dr_id`),
  KEY `Department_id` (`Department_id`),
  KEY `Room_no` (`Room_no`),
  KEY `Slot_id` (`Slot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`dr_id`, `name`, `age`, `Gender`, `Department_id`, `email`, `phone_number`, `fees`, `Room_no`, `Slot_id`) VALUES
(3, 'faseeh', 40, 'null', 3, 'faseeh@gmail.com', '03313672289', 600, 101, 4),
(7, 'Faseeh', 30, 'null', 2, 'fs@gmail.com', '03202253676', 0, 101, 2),
(9, 'Faseeh', 42, 'male', 1, 'dsfsfdsfds', '534674856743543', 300, 100, 1),
(10, 'faseeh', 40, 'male', 1, 'cfaseeh@gmail.com', '03313672289', 600, 100, 1),
(11, 'Faseeh', 30, 'male', 2, 'faseeh@gmail.com', '03313672289', 600, 102, 2);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `P_id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`P_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`P_id`, `name`, `age`, `gender`, `email`, `phonenumber`, `password`) VALUES
(1, 'Faseeh', 40, 'male', 'cfaseeh@gmail.com', '03313672289', 'aeiou123'),
(2, 'Amaan', 40, 'male', 'amaan@gmail.com', '03313672289', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `Room_no` int(4) NOT NULL,
  `Floor` int(4) NOT NULL,
  PRIMARY KEY (`Room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_no`, `Floor`) VALUES
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(200, 2),
(201, 2),
(202, 2),
(203, 2),
(204, 2);

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slot`;
CREATE TABLE IF NOT EXISTS `slot` (
  `Slot_id` int(11) NOT NULL,
  `Slot_timing` varchar(20) NOT NULL,
  PRIMARY KEY (`Slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`Slot_id`, `Slot_timing`) VALUES
(1, '12:00 pm - 2:00 pm'),
(2, '2:00 pm - 4:00 pm'),
(3, '4:00 pm - 6:00 pm'),
(4, '6:00 pm - 8:00 pm');

-- --------------------------------------------------------

--
-- Structure for view `admin_dr_view`
--
DROP TABLE IF EXISTS `admin_dr_view`;

DROP VIEW IF EXISTS `admin_dr_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_dr_view`  AS  select `doctor`.`dr_id` AS `dr_id`,`doctor`.`name` AS `name`,`doctor`.`age` AS `age`,`doctor`.`Gender` AS `Gender`,`doctor`.`Department_id` AS `Department_id`,`department`.`Department_name` AS `Department_name`,`doctor`.`email` AS `email`,`doctor`.`phone_number` AS `phone_number`,`doctor`.`fees` AS `fees`,`doctor`.`Room_no` AS `Room_no`,`room`.`Floor` AS `Floor`,`doctor`.`Slot_id` AS `Slot_id`,`slot`.`Slot_timing` AS `Slot_timing` from (((`doctor` join `department` on((`doctor`.`Department_id` = `department`.`Department_id`))) join `room` on((`doctor`.`Room_no` = `room`.`Room_no`))) join `slot` on((`doctor`.`Slot_id` = `slot`.`Slot_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `admin_patient_view`
--
DROP TABLE IF EXISTS `admin_patient_view`;

DROP VIEW IF EXISTS `admin_patient_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_patient_view`  AS  select `patient`.`P_id` AS `P_id`,`patient`.`name` AS `name`,`patient`.`age` AS `age`,`patient`.`gender` AS `gender`,`patient`.`email` AS `email`,`patient`.`phonenumber` AS `phonenumber`,`patient`.`password` AS `password` from `patient` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`dr_id`) REFERENCES `doctor` (`dr_id`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`P_id`) REFERENCES `patient` (`P_id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Department_id`) REFERENCES `department` (`Department_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`Room_no`) REFERENCES `room` (`Room_no`) ON DELETE NO ACTION,
  ADD CONSTRAINT `doctor_ibfk_3` FOREIGN KEY (`Slot_id`) REFERENCES `slot` (`Slot_id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
