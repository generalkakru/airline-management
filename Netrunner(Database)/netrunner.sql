-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 15, 2021 at 10:11 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netrunner`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancellation`
--

DROP TABLE IF EXISTS `cancellation`;
CREATE TABLE IF NOT EXISTS `cancellation` (
  `pnr_no` varchar(10) DEFAULT NULL,
  `cancellation_no` varchar(10) DEFAULT NULL,
  `cancellation_date` varchar(20) DEFAULT NULL,
  `ticket_id` varchar(15) DEFAULT NULL,
  `fli_code` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cancellation`
--

INSERT INTO `cancellation` (`pnr_no`, `cancellation_no`, `cancellation_date`, `ticket_id`, `fli_code`) VALUES
('BY444', '12348907', '10/12/2021', 'TEST', 'SJ-404'),
('CJ911', 'asdasd', '15/12/2021', 'AREQQ', 'GA-911');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
CREATE TABLE IF NOT EXISTS `flight` (
  `f_code` varchar(10) DEFAULT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `src` varchar(30) DEFAULT NULL,
  `dst` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`f_code`, `f_name`, `src`, `dst`) VALUES
('Aasd', 'asdwqe', 'BANDALORE', 'PATNA'),
('AI-123', 'Air India', 'Bangalore', 'Mumbai'),
('SJ-439', 'SpiceJet', 'Bangalore', 'Mumbai'),
('GA-411', 'Go-Air', 'Bangalore', 'Mumbai'),
('AI-964', 'Air India', 'Bangalore', 'Chennai'),
('SJ-004', 'SpiceJet', 'Bangalore', 'Chennai'),
('SJ-032', 'SpiceJet', 'Bangalore', 'Hyderabad'),
('GA-022', 'Go-Air', 'Bangalore', 'Hyderabad'),
('GA-654', 'Go-Air', 'Mumbai', 'Bangalore'),
('SJ-041', 'SpiceJet', 'Mumbai', 'Bangalore'),
('SJ-069', 'SpiceJet', 'Mumbai', 'Bangalore'),
('GA-059', 'Go-Air', 'Mumbai', 'Chennai'),
('AI-419', 'Air India', 'Mumbai', 'Chennai'),
('AI-122', 'Air India', 'Mumbai', 'Hyderabad'),
('SJ-162', 'SpiceJet', 'Mumbai', 'Patna'),
('GA-177', 'Go-Air', 'Mumbai', 'Patna'),
('GA-997', 'Go-Air', 'Chennai', 'Patna'),
('AI-155', 'Air India', 'Chennai', 'Hyderabad'),
('GA-177', 'Go-Air', 'Chennai', 'Delhi'),
('AI-111', 'Air India', 'Chennai', 'Delhi'),
('GA-951', 'Go-Air', 'Patna', 'Delhi'),
('GA-081', 'Go-Air', 'Patna', 'Hyderabad'),
('SJ-514', 'SpiceJet', 'Patna', 'Mumbai'),
('SJ-012', 'SpiceJet', 'Patna', 'Bangalore'),
('SJ-444', 'SpiceJet', 'Delhi', 'Bangalore'),
('GA-006', 'Go-Air', 'Delhi', 'Bangalore'),
('GA-089', 'Go-Air', 'Delhi', 'Patna'),
('AI-031', 'Air India', 'Delhi', 'Mumbai'),
('AI-044', 'Air India', 'Delhi', 'Mumbai'),
('AI-713', 'Air India', 'Delhi', 'Hyderabad'),
('AI-551', 'Air India', 'Hyderabad', 'Patna'),
('SJ-909', 'SpiceJet', 'Hyderabad', 'Mumbai'),
('GA-911', 'Go-Air', 'Hyderabad', 'Chennai'),
('Test', 'Test', 'Test', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin'),
('pritish', '7434'),
('vaibhav', '7434'),
('dhiraj', '7434');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE IF NOT EXISTS `passenger` (
  `pnr_no` varchar(10) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `nationality` varchar(15) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `ph_no` varchar(15) DEFAULT NULL,
  `passport_no` varchar(20) DEFAULT NULL,
  `fl_code` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`pnr_no`, `address`, `nationality`, `name`, `gender`, `ph_no`, `passport_no`, `fl_code`) VALUES
('CJ911', 'Roop Nagar, Jammu', 'Indian', 'Pritish Kakru', 'Male', '9086036311', '12345678', 'GA-911'),
('BY444', 'Chembur, Mumbai', 'Indian', 'Vaibhav Kambhar', 'male', '9969565405', '43218765', 'AI-044'),
('KP911', 'Kandivali East, Mumbai', 'Indian', 'Dhiraj Vinjar', 'male', '8668332266', '98765768', 'SJ-909'),
('KI123', 'Chembur, Mumbai', 'Indian', 'Yash', 'male', '123123123', '6182736123', 'GA-911');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `pnr_no` varchar(10) DEFAULT NULL,
  `ph_no` varchar(15) DEFAULT NULL,
  `cheque_no` varchar(15) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `paid_amt` varchar(10) DEFAULT NULL,
  `pay_date` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pnr_no`, `ph_no`, `cheque_no`, `card_no`, `paid_amt`, `pay_date`) VALUES
('CJ911', '9086036311', 'HDFC189251', '1402 8941 0544 9925', '5000', '30/11/2021'),
('BY444', '9969565405', 'ICICI318772', '0192 7738 9122 4171', '4500', '01/12/2021');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `pnr_no` varchar(10) DEFAULT NULL,
  `ticket_id` varchar(10) DEFAULT NULL,
  `f_code` varchar(10) DEFAULT NULL,
  `jny_date` varchar(20) DEFAULT NULL,
  `jny_time` varchar(10) DEFAULT NULL,
  `src` varchar(20) DEFAULT NULL,
  `dst` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`pnr_no`, `ticket_id`, `f_code`, `jny_date`, `jny_time`, `src`, `dst`) VALUES
('CJ911', 'GAT001', 'GA-911', '15/12/2021', '14:11', 'Hyderabad', 'Chennai'),
('CF941', 'SJT031', 'SJ-909', '15/12/2021', '07:00', 'Hyderabad', 'Mumbai'),
('FA874', 'AIT778', 'AI-551', '16/12/2021', '07:00', 'Hyderabad', 'Patna'),
('FA855', 'AIT809', 'AI-713', '15/12/2021', '07:50', 'Delhi', 'Hyderabad'),
('BY444', 'AIT512', 'AI-713', '15/12/2021', '07:50', 'Delhi', 'Mumbai'),
('BH841', 'AIT500', 'AI-031', '15/12/2021', '21:00', 'Delhi', 'Mumbai'),
('BH991', 'GAT500', 'GA-089', '15/12/2021', '21:00', 'Delhi', 'Patna'),
('BT131', 'GAT880', 'GA-006', '18/12/2021', '21:00', 'Delhi', 'Bangalore'),
('GT330', 'SJT313', 'SJ-444', '18/12/2021', '16:00', 'Delhi', 'Bangalore'),
('GT305', 'SJT399', 'SJ-012', '20/12/2021', '16:00', 'Patna', 'Bangalore'),
('HH090', 'SJT935', 'SJ-514', '22/12/2021', '02:45', 'Patna', 'Mumbai'),
('HH055', 'GAT935', 'GA-081', '22/12/2021', '02:45', 'Patna', 'Hyderabad'),
('KA855', 'GAT984', 'GA-951', '20/12/2021', '11:45', 'Patna', 'Delhi'),
('KP333', 'AIT984', 'AI-111', '20/12/2021', '11:45', 'Chennai', 'Delhi'),
('KP090', 'AIT008', 'AI-177', '21/12/2021', '20:00', 'Chennai', 'Delhi'),
('KP099', 'GAT448', 'GA-177', '20/12/2021', '21:00', 'Chennai', 'Delhi'),
('LJ299', 'AIT448', 'AI-155', '25/12/2021', '21:00', 'Chennai', 'Hyderabad'),
('LU909', 'GAT814', 'GA-997', '24/12/2021', '15:00', 'Chennai', 'Patna'),
('LU911', 'GAT844', 'GA-177', '24/12/2021', '15:00', 'Mumbai', 'Patna'),
('HJ041', 'SJT914', 'SJ-162', '24/12/2021', '11:45', 'Mumbai', 'Patna'),
('HJ001', 'AIT224', 'AI-122', '24/12/2021', '11:45', 'Mumbai', 'Hyderabad'),
('HJ004', 'AIT004', 'AI-419', '20/12/2021', '11:45', 'Mumbai', 'Chennai'),
('IO091', 'GAT904', 'GA-059', '20/12/2021', '19:00', 'Mumbai', 'Chennai'),
('IO001', 'SJT888', 'SJ-069', '20/12/2021', '19:00', 'Mumbai', 'Bangalore'),
('IO002', 'SJT019', 'SJ-041', '20/12/2021', '10:00', 'Mumbai', 'Bangalore'),
('IO003', 'GAT209', 'GA-654', '22/12/2021', '10:00', 'Mumbai', 'Bangalore'),
('UI981', 'GAT002', 'GA-022', '22/12/2021', '10:00', 'Bangalore', 'Hyderabad'),
('UK013', 'SJT011', 'SJ-032', '21/12/2021', '21:00', 'Bangalore', 'Hyderabad'),
('JH843', 'SJT905', 'SJ-004', '21/12/2021', '21:00', 'Bangalore', 'Chennai'),
('JH855', 'AJT642', 'AI-964', '22/12/2021', '01:30', 'Bangalore', 'Chennai'),
('HW955', 'GAT662', 'GA-411', '24/12/2021', '07:30', 'Bangalore', 'Mumbai'),
('PW913', 'SJT668', 'SJ-439', '23/12/2021', '10:30', 'Bangalore', 'Mumbai'),
('RP189', 'AIT251', 'AI-123', '23/12/2021', '21:00', 'Bangalore', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
CREATE TABLE IF NOT EXISTS `sector` (
  `flight_code` varchar(20) DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `class_code` varchar(5) DEFAULT NULL,
  `class_name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`flight_code`, `capacity`, `class_code`, `class_name`) VALUES
('GA-911', '600', 'B-2', 'Business'),
('GA-911', '500', 'B-1', 'Business'),
('GA-911', '400', 'E-3', 'Economy + Benfits'),
('GA-911', '350', 'E-2', 'Economy - 2'),
('GA-911', '300', 'E-1', 'Economy - 1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
