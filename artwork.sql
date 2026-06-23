-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 02:08 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` varchar(20) NOT NULL,
  `admin_pwd` varchar(20) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `admin_phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_pwd`, `admin_name`, `email_id`, `admin_phone`) VALUES
('admin', 'admin', 'Mayuri K', 'mayuri.infospace@gmail.com', 9899171714);

-- --------------------------------------------------------

--
-- Table structure for table `art_info`
--

CREATE TABLE `art_info` (
  `art_id` int(10) NOT NULL,
  `art_name` varchar(50) NOT NULL,
  `art_category` varchar(20) NOT NULL,
  `art_price` int(20) NOT NULL,
  `art_discount` int(10) NOT NULL,
  `art_photo` varchar(50) NOT NULL,
  `art_detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `art_info`
--

INSERT INTO `art_info` (`art_id`, `art_name`, `art_category`, `art_price`, `art_discount`, `art_photo`, `art_detail`) VALUES
(2, 'Paquin', 'Art Deco', 200000, 195000, ' ../img/26-03-2017-1490512983.jpg', '										This is cool pic for art deco. and look like real life image.					'),
(3, 'Sculpture', 'Art Deco', 25000, 23500, ' 	\n../img/26-03-2017-1490513039.jpg', '					This is cool pic for art deco. and look like real life image.\r\n				'),
(4, 'Art1', 'Fine Art', 1500, 100, ' ../img/26-03-2017-1490513278.jpg', 'This cool and Attractive image . and this famous art & represent to the community. 				 123'),
(5, 'art2', 'Fine Art', 3000, 300, ' ../img/26-03-2017-1490513330.jpg', '										This cool and Attractive image . and this famous art & represent to the community.\r\n				1212				'),
(6, 'Art3', 'Fine Art', 3500, 1000, '../img/26-03-2017-1490513373.jpg', 'This cool and Attractive image . and this famous art & represent to the community.\r\n'),
(7, 'Art1', 'Folk', 2000, 100, '../img/26-03-2017-1490516560.jpg', 'This is art for folk and too good . and its official art. this is art used to'),
(8, 'Art2', 'Folk', 1800, 500, '../img/26-03-2017-1490516896.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.'),
(9, 'krishna', 'Folk', 1234, 1000, '../img/26-03-2017-1490516947.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.'),
(10, 'Art1', 'Pop Art', 1900, 1000, '../img/26-03-2017-1490517387.jpg', 'This Is Attractive  ARt. This is art very use.'),
(11, 'Art2', 'Pop Art', 2200, 1000, ' ../img/28-02-2021-1551351752.jpg', '										This Is Attractive ARt. This is art very unique.\r\n								'),
(12, 'Art3', 'Pop Art', 5000, 2000, '../img/26-03-2017-1490517473.jpg', 'This Is Attractive ARt. This is art very use.\r\n'),
(13, 'Art1', 'Street Art', 2000, 1000, '../img/26-03-2017-1490517588.jpg', 'This is art too good and most use of the day..				'),
(14, 'Art2', 'Street Art', 1200, 1000, '../img/26-03-2017-1490517690.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.\r\n'),
(15, 'Art3', 'Street Art', 2000, 120, '../img/26-03-2017-1490517718.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.'),
(16, 'Art4', 'Street Art', 5500, 2000, '../img/26-03-2017-1490517770.jpg', 'This Is Attractive ARt. This is art very use.\r\n'),
(17, 'Art2har', 'Fine Art', 1000, 500, '../img/26-03-2017-1490520544.jpg', 'this is good product'),
(18, 'Diana Hobson Fine Art LA', 'Fine Art', 5000, 1000, '../img/09-02-2021-1549710979.jpg', 'Diana Hobson Fine Art LA, Art Gallery, Venice, Venice'),
(19, 'Celtic Art', 'Fine Art', 200000, 195000, '../img/02-03-2021-1551527463.jpg', 'Broadly speaking, the earliest Celtic arts and crafts appeared in Iron Age Europe with the first migrations of Celts coming from the steppes of Southern Russia, from about 1000 BCE onwards. Any European art, craftwork or architecture before this date derives from earlier Bronze Age societies of the Urnfield culture (1200-750 BCE), or the Tumulus (1600-1200 BCE), Unetice (2300-1600 BCE) or Beaker (2800â€“1900 BCE) cultures.\r\nSee also: Irish Bronze Age and Irish Iron Age.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_info`
--

CREATE TABLE `booking_info` (
  `bart_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `art_id` int(10) NOT NULL,
  `Name` text NOT NULL,
  `bart_name` varchar(50) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `delivery_address` varchar(50) NOT NULL,
  `bart_quantity` int(10) NOT NULL,
  `bart_date` varchar(30) NOT NULL DEFAULT 'CURRENT_TIMESTAMP(50)',
  `bart_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `booking_info`
--

INSERT INTO `booking_info` (`bart_id`, `cust_id`, `art_id`, `Name`, `bart_name`, `order_status`, `delivery_address`, `bart_quantity`, `bart_date`, `bart_price`) VALUES
(2, 1, 3, 'MayuriK', 'Sculpture', 'Available', 'Nasik,Maharashtra', 5, '2021-02-26 16:28:35', 12500),
(3, 1, 4, 'MayuriK', 'Art1', 'Available', 'Nasik,Maharashtra', 5, '2021-02-26 16:28:51', 7500),
(4, 1, 10, 'MayuriK', 'Art1', 'Available', 'Nasik,Maharashtra', 1, '2021-02-26 16:29:30', 1900),
(13, 1, 3, 'MayuriK', 'Sculpture', 'Available', 'Nasik,Maharashtra', 1, '2021-05-06 14:12:56', 25000),
(14, 1, 2, 'MayuriK', 'Paquin', 'Available', 'Nasik,Maharashtra', 1, '2021-05-06 14:13:21', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `cust_id` int(10) NOT NULL,
  `cust_pwd` varchar(20) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_Fname` varchar(10) NOT NULL,
  `cust_Lname` varchar(10) NOT NULL,
  `cust_sex` varchar(10) NOT NULL,
  `cust_phone` bigint(10) NOT NULL,
  `cust_state` varchar(20) NOT NULL,
  `cust_place` varchar(20) NOT NULL,
  `cust_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`cust_id`, `cust_pwd`, `cust_email`, `cust_Fname`, `cust_Lname`, `cust_sex`, `cust_phone`, `cust_state`, `cust_place`, `cust_address`) VALUES
(1, '123456789', 'mayuri.infospace@gmail.com', 'Mayuri', 'K', 'Male', 9090909090, 'Nasik', 'India', 'Thakkers Nexus Point, Ground Floor, College Rd, ne');

-- --------------------------------------------------------

--
-- Table structure for table `exhibition_events`
--

CREATE TABLE `exhibition_events` (
  `ex_id` int(100) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_about` varchar(500) NOT NULL,
  `event_category` varchar(100) NOT NULL,
  `event_venue` varchar(500) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(500) NOT NULL,
  `event_photo` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exhibition_events`
--

INSERT INTO `exhibition_events` (`ex_id`, `event_name`, `event_about`, `event_category`, `event_venue`, `event_date`, `event_time`, `event_photo`) VALUES
(7, 'Kala Sutra - 2016 ', 'Group show', 'Pop Art', '7A Kennedy Road Central, Hong Kong', '2021-02-22', ' 12:00', '../img/eventimages/14803275202.png'),
(8, 'Art Dubai / Modern 2018', 'Group show at booth M10.', 'Art Deco', 'Madinat Jumeirah', '2021-04-04', ' 10:00', '../img/eventimages/1521453751Dubai-Medium.jpg'),
(10, 'Art Stage Singapore 2017', 'Group show', 'Art Deco', 'Marina Bay Sands Expo & Convention Centre', '2021-03-01', '15:33', '../img/eventimages/26-03-2017-1490516560.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_info`
--

CREATE TABLE `feedback_info` (
  `feed_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `Feed_Status` varchar(50) NOT NULL,
  `Feed_Response` varchar(50) NOT NULL,
  `Feed_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `pay_id` int(10) NOT NULL,
  `bart_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `pay_amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`pay_id`, `bart_id`, `cust_id`, `pay_amount`) VALUES
(2, 2, 1, 12500),
(3, 3, 1, 7500),
(4, 4, 1, 1900),
(13, 13, 1, 25000),
(14, 14, 1, 200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `Login_id` (`email_id`);

--
-- Indexes for table `art_info`
--
ALTER TABLE `art_info`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD PRIMARY KEY (`bart_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `art_id` (`art_id`),
  ADD KEY `cust_id_2` (`cust_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `cust_email` (`cust_email`),
  ADD UNIQUE KEY `cust_id_4` (`cust_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `cust_id_2` (`cust_id`),
  ADD KEY `cust_id_3` (`cust_id`);

--
-- Indexes for table `exhibition_events`
--
ALTER TABLE `exhibition_events`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedback_info`
--
ALTER TABLE `feedback_info`
  ADD PRIMARY KEY (`feed_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `bart_id` (`bart_id`,`cust_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `art_info`
--
ALTER TABLE `art_info`
  MODIFY `art_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `booking_info`
--
ALTER TABLE `booking_info`
  MODIFY `bart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `cust_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exhibition_events`
--
ALTER TABLE `exhibition_events`
  MODIFY `ex_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback_info`
--
ALTER TABLE `feedback_info`
  MODIFY `feed_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `pay_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD CONSTRAINT `booking_info_ibfk_1` FOREIGN KEY (`art_id`) REFERENCES `art_info` (`art_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_info_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback_info`
--
ALTER TABLE `feedback_info`
  ADD CONSTRAINT `feedback_info_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD CONSTRAINT `payment_info_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_info_ibfk_2` FOREIGN KEY (`bart_id`) REFERENCES `booking_info` (`bart_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
