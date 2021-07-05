-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 04:19 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `client`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 47, 'PROID', 10),
(2, '0', 1, 101, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(5, 'DOG', 0),
(11, 'CAT', 0),
(12, 'FISH', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(10, 'Subham', 'Kedia', '', '', '', '', 'Kolkata', '', '', '0000-00-00', 'Male', '0416224309', '', 0, 'subham', '04a12c8fb6fe5319b63a25e40a7dc5358586756b', '', 1, '2020-10-08'),
(11, 'Subham', 'Kedia', '', '', '', '', 'Kolkata', '', '', '0000-00-00', 'Male', '0416224309', '', 0, 'subham', '04a12c8fb6fe5319b63a25e40a7dc5358586756b', '', 1, '2020-10-08'),
(12, 'subham', 'kedia', '', '', '', '', 'kolkata', '', '', '0000-00-00', 'Male', '0416224309', '', 0, 'ddd', '04a12c8fb6fe5319b63a25e40a7dc5358586756b', '', 1, '2020-10-15'),
(13, 'sahaj', 'chawla', '', '', '', '', 'raipur', '', '', '0000-00-00', 'Male', '9360222920', '', 0, 'sahaj', 'f7fa92bba42d294f139997580b0a870894cc9a59', '', 1, '2020-10-16'),
(14, 'sahaj', 'chawla', '', '', '', '', 'raipur', '', '', '0000-00-00', 'Male', '9360222920', '', 0, 'sahaj', 'f7fa92bba42d294f139997580b0a870894cc9a59', '', 1, '2020-10-16'),
(15, 'hello', 'hello', '', '', '', '', 'Vellore', '', '', '0000-00-00', 'Female', '8334004860', '', 0, 'hello', '4233137d1c510f2e55ba5cb220b864b11033f156', 'customer_image/pepsi-light-cropped.jpg', 1, '2020-10-27'),
(19, 'Subham', 'Kedia', '', '', '', '', 'Delhi', '', '', '0000-00-00', 'Male', '4162243091', '', 0, 'Skedia', '4233137d1c510f2e55ba5cb220b864b11033f156', '', 1, '2020-10-27'),
(20, 'Subham', 'Kedia', '', '', '', '', 'Delhi', '', '', '0000-00-00', 'Male', '4162243091', '', 0, 'Skedia', '4233137d1c510f2e55ba5cb220b864b11033f156', '', 1, '2020-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(4, 201743, 1, 400, 95, 0),
(5, 201743, 1, 360, 96, 0),
(6, 201737, 1, 119, 97, 0),
(7, 201743, 1, 400, 98, 0),
(8, 201745, 1, 300, 98, 0),
(9, 201743, 1, 400, 99, 0),
(10, 201737, 2, 238, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `INGREDIENTS` varchar(255) NOT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `INGREDIENTS`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(201737, 'RED BLUE FISH                                 ', '', 2, 100, 119, 12, 'uploaded_photos/RED BLUE FISH.jpg', 'Available', 'subham', ''),
(201738, 'CLOWN FISH                    ', '', 3, 150, 199, 12, 'uploaded_photos/CLOWN FISH.png', 'Available', 'subham', ''),
(201743, 'pug                                            ', '', 10, 500, 400, 5, 'uploaded_photos/pug.jpg', 'Available', 'subham', ''),
(201744, 'beagle dog', '', 3, 600, 500, 5, 'uploaded_photos/beagle dog.jpg', 'Available', 'subham', ''),
(201745, 'BLACK CAT', '', 2, 350, 300, 11, 'uploaded_photos/black cat.jpg', 'Available', 'subham', ''),
(201746, 'grey cat ', '', 4, 300, 280, 11, 'uploaded_photos/grey cat.jpg', 'Available', 'subham', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(1, 201737, 0, 119, 0, 0),
(2, 201738, 0, 199, 0, 0),
(7, 201743, 10, 360, 1, 0),
(8, 201744, 0, 500, 0, 0),
(9, 201745, 10, 270, 1, 0),
(10, 201746, 0, 280, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` varchar(90) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsetting`
--

INSERT INTO `tblsetting` (`SETTINGID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(3, 'DELHI', 'DELHI', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`) VALUES
(4, '2020-10-15 09:39:59', 12, 95, 0, 400, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2020-10-15 00:00:00', 1, 0),
(5, '2020-10-15 09:46:39', 12, 96, 0, 360, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 1, 0),
(6, '2020-10-16 05:39:47', 13, 97, 0, 119, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2020-10-16 00:00:00', 1, 0),
(7, '2020-10-27 02:48:54', 15, 98, 0, 700, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 1, 0),
(9, '2020-10-28 07:10:48', 15, 99, 100, 500, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2020-10-28 00:00:00', 1, 0),
(10, '2020-11-05 10:47:34', 15, 100, 100, 338, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2020-11-05 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(126, 'subham kedia', 'subham', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', ''),
(128, 'arpit', 'arpit', '752c4a2edcdc89f0a30e8e891df4307a22591f40', 'Staff', ''),
(129, 'sahaaj', 'sahaaj', 'bfb85ececdabfac98d85fadd0b3c2e5fdc2370b1', 'Encoder', ''),
(130, 'hello', 'hello', 'aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d', 'Staff', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwishlist`
--

INSERT INTO `tblwishlist` (`id`, `CUSID`, `PROID`, `WISHDATE`, `WISHSTATS`) VALUES
(3, 12, 201743, '2020-10-15', '0'),
(4, 13, 201737, '2020-10-16', '0'),
(5, 13, 201745, '2020-10-16', '0'),
(6, 15, 201743, '2020-10-27', '0'),
(8, 15, 201745, '2020-10-28', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Indexes for table `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
