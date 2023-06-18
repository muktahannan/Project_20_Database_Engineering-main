-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2017 at 12:15 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restaurant_delivery_service`
--
CREATE DATABASE IF NOT EXISTS `restaurant_delivery_service` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `restaurant_delivery_service`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_12hours_service`
--

CREATE TABLE IF NOT EXISTS `tbl_12hours_service` (
  `12h_id` int(11) NOT NULL,
  `day_emp_id` int(11) NOT NULL,
  `day_emp_name` varchar(40) NOT NULL,
  `rules_id` int(11) DEFAULT NULL,
  KEY `rules_id` (`rules_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_12hours_service`
--

INSERT INTO `tbl_12hours_service` (`12h_id`, `day_emp_id`, `day_emp_name`, `rules_id`) VALUES
(901, 20, 'Isla', 301),
(902, 21, 'Jessica', 302),
(903, 22, 'lima', 303),
(904, 23, 'zara', 304);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_24hours_service`
--

CREATE TABLE IF NOT EXISTS `tbl_24hours_service` (
  `24h_id` int(11) NOT NULL,
  `night_emp_id` int(11) NOT NULL,
  `night_emp_name` varchar(40) NOT NULL,
  `rules_id` int(11) DEFAULT NULL,
  KEY `rules_id` (`rules_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_24hours_service`
--

INSERT INTO `tbl_24hours_service` (`24h_id`, `night_emp_id`, `night_emp_name`, `rules_id`) VALUES
(1001, 30, 'micle', 301),
(1002, 31, 'rock', 302),
(1003, 32, 'nishan', 303),
(1004, 30, 'micle', 301);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE IF NOT EXISTS `tbl_address` (
  `address_id` int(11) NOT NULL,
  `address_location` varchar(200) NOT NULL,
  `phone_no` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  KEY `cus_id` (`address_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`address_id`, `address_location`, `phone_no`, `email`) VALUES
(401, '27 Colmore Row Birmingham England B3 2EW', ' 07074312345', 'isla@gmail.com'),
(402, '26 Colmore Row Birmingham England A3 2EW', ' 07074312300', 'jessica@gmail.com'),
(403, '91 Western Road Brighton East Sussex England BN1 2', '07074315432', 'isabella@gmail.com'),
(404, '70 Western Road Brighton East Sussex England BN1 1', '07074310000', 'poppy@gmail.com'),
(405, '10 Guild Street LONDON N/A E98 3ZB', '07012312345', 'bonny@gmail.com'),
(406, '9 Guild Street LONDON N/A E90 3ZB', '07000010000', 'jamce@gmail.com');
-- --------------------------------------------------------

--
-- Table structure for table `tbl_branch`
--

CREATE TABLE IF NOT EXISTS `tbl_branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(11) NOT NULL,
  `branch_address` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL,
  KEY `branch_address` (`branch_address`) USING BTREE,
  KEY `rest_id` (`rest_id`) USING BTREE,
  KEY `branch_id` (`branch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_branch`
--

INSERT INTO `tbl_branch` (`branch_id`, `branch_name`, `branch_address`, `rest_id`) VALUES
(1301, 'Aaron''s Hil', 401, 1),
(1302, 'Babbacombe', 402, 2);
-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(40) NOT NULL,
  `cus_address` int(40) NOT NULL,
  `cus_phonenumber` varchar(40) NOT NULL,
  `cus_email` varchar(40) NOT NULL,
  KEY `cus_address` (`cus_address`) USING BTREE,
  KEY `cus_id` (`cus_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cus_id`, `cus_name`, `cus_address`, `cus_phonenumber`, `cus_email`) VALUES
(601, 'Robert', 401, '07911177233', 'robert@gmail.com'),
(602, 'Ava', 402, '07911177211', 'ava@gmail.com'),
(603, 'Amelia', 403, '07911177280', 'amelia@gmail.com'),
(604, 'Bonny', 404, '07911177555', 'bonny@gmail.com'),
(605, 'Emily', 405, '07934721000', 'emily@gmail.com'),
(606, 'Olivia', 406, '07911177555', 'olivia@gmail.com');
-- --------------------------------------------------------

--
-- Table structure for table `tbl_day_shift`
--

CREATE TABLE IF NOT EXISTS `tbl_day_shift` (
  `day_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `day_common_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_day_shift`
--

INSERT INTO `tbl_day_shift` (`day_id`, `cus_id`, `day_common_price`) VALUES
(10, 1, 50),
(11, 602, 50),
(12, 603, 50),
(13, 604, 50),
(14, 605, 50),
(15, 606, 50);
-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery`
--

CREATE TABLE IF NOT EXISTS `tbl_delivery` (
  `delivery_code` int(11) NOT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  KEY `delivery_code` (`delivery_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_delivery`
--

INSERT INTO `tbl_delivery` (`delivery_code`, `delivery_status`) VALUES
(101, 'sent'),
(102, 'sent'),
(103, 'sent'),
(104, 'sent'),
(105, 'sent'),
(106, 'sent');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery_time_card`
--

CREATE TABLE IF NOT EXISTS `tbl_delivery_time_card` (
  `card_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `service_code` int(11) NOT NULL,
  `card_number` varchar(40) NOT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  KEY `emp_id` (`emp_id`) USING BTREE,
  KEY `cus_id` (`cus_id`) USING BTREE,
  KEY `service_code` (`service_code`) USING BTREE,
  KEY `delivery_id` (`delivery_id`) USING BTREE,
  KEY `branch_id` (`branch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_delivery_time_card`
--

INSERT INTO `tbl_delivery_time_card` (`card_id`, `emp_id`, `cus_id`, `service_code`, `card_number`, `delivery_id`, `branch_id`) VALUES
(10, 701, 601, 501, '1234', 101, 1301),
(11, 703, 602, 502, '4321', 102, 1302);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE IF NOT EXISTS `tbl_employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(40) NOT NULL,
  `emp_address` int(40) NOT NULL,
  `emp_phonenumber` varchar(40) NOT NULL,
  `emp_email` varchar(40) NOT NULL,
  `managedby` int(40) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `managedby` (`managedby`) USING BTREE COMMENT 'self join column',
  KEY `emp_id` (`emp_id`) USING BTREE,
  KEY `emp_address` (`emp_address`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_name`, `emp_address`, `emp_phonenumber`, `emp_email`, `managedby`) VALUES
(701, 'Isla', 401, '07074312345', 'isla@yahoo.com', NULL),
(703, 'pappy', 402, '078 7783 5464', 'pappy@gmail.com', 701);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_night_shift`
--

CREATE TABLE IF NOT EXISTS `tbl_night_shift` (
  `service_code` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `night_common_price` int(11) NOT NULL,
  `night_charge` int(10) NOT NULL,
  PRIMARY KEY (`service_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_night_shift`
--

INSERT INTO `tbl_night_shift` (`service_code`, `emp_id`, `night_common_price`, `night_charge`) VALUES
(801, 701, 15, 10),
(802, 702, 25, 20),
(803, 703, 15, 10),
(804, 704, 25, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_restaurant`
--

CREATE TABLE IF NOT EXISTS `tbl_restaurant` (
  `rest_id` int(11) NOT NULL,
  `rest_name` varchar(40) NOT NULL,
  `branch_name` varchar(40) NOT NULL,
  `package_name` varchar(40) NOT NULL,
  PRIMARY KEY (`rest_id`),
  KEY `rest_id` (`rest_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_restaurant`
--

INSERT INTO `tbl_restaurant` (`rest_id`, `rest_name`, `branch_name`, `package_name`) VALUES
(1, 'kfc', 'Aaron''s Hill', 'Rice congee'),
(2, 'BFC', 'Abberley', 'Fried rice with shrimp paste'),
(3, 'Madco', 'Babbacombe', 'Omelet on rice'),
(4, 'BFC', 'Babbington', 'Red roast duck on rice'),
(5, 'Madco', 'Cadair', ' Thai chicken biryan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rules`
--

CREATE TABLE IF NOT EXISTS `tbl_rules` (
  `rules_id` int(11) NOT NULL,
  `rule_name` varchar(100) NOT NULL,
  `rule_description` text NOT NULL,
  KEY `rules_id` (`rules_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_rules`
--

INSERT INTO `tbl_rules` (`rules_id`, `rule_name`, `rule_description`) VALUES
(301, 'day', 'it is cool'),
(302, 'day', 'it is cool'),
(303, 'day', 'it is cool'),
(304, 'night', 'it is not cool'),
(305, 'night', 'it is not cool'),
(306, 'night', 'it is not cool');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE IF NOT EXISTS `tbl_service` (
  `service_code` int(11) NOT NULL,
  `rules_id` int(11) NOT NULL,
  `service_level` varchar(40) NOT NULL,
  KEY `rules_id` (`rules_id`) USING BTREE,
  KEY `service_code` (`service_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`service_code`, `rules_id`, `service_level`) VALUES
(501, 301, 'Casual dining'),
(502, 302, 'Family style'),
(503, 303, 'Fast food'),
(504, 304, 'Fast casual');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_12hours_service`
--
ALTER TABLE `tbl_12hours_service`
  ADD CONSTRAINT `tbl_12hours_service_ibfk_1` FOREIGN KEY (`rules_id`) REFERENCES `tbl_rules` (`rules_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_24hours_service`
--
ALTER TABLE `tbl_24hours_service`
  ADD CONSTRAINT `tbl_24hours_service_ibfk_1` FOREIGN KEY (`rules_id`) REFERENCES `tbl_rules` (`rules_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  ADD CONSTRAINT `tbl_branch_ibfk_1` FOREIGN KEY (`branch_address`) REFERENCES `tbl_address` (`address_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_branch_ibfk_2` FOREIGN KEY (`rest_id`) REFERENCES `tbl_restaurant` (`rest_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD CONSTRAINT `tbl_customer_ibfk_1` FOREIGN KEY (`cus_address`) REFERENCES `tbl_address` (`address_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_delivery_time_card`
--
ALTER TABLE `tbl_delivery_time_card`
  ADD CONSTRAINT `tbl_delivery_time_card_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_delivery_time_card_ibfk_2` FOREIGN KEY (`cus_id`) REFERENCES `tbl_customer` (`cus_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_delivery_time_card_ibfk_3` FOREIGN KEY (`service_code`) REFERENCES `tbl_service` (`service_code`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_delivery_time_card_ibfk_4` FOREIGN KEY (`delivery_id`) REFERENCES `tbl_delivery` (`delivery_code`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_delivery_time_card_ibfk_5` FOREIGN KEY (`branch_id`) REFERENCES `tbl_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`managedby`) REFERENCES `tbl_employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`emp_address`) REFERENCES `tbl_address` (`address_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD CONSTRAINT `tbl_service_ibfk_1` FOREIGN KEY (`rules_id`) REFERENCES `tbl_rules` (`rules_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
