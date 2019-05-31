-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2019 at 03:53 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `romit`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminmaster`
--

CREATE TABLE `adminmaster` (
  `adminid` int(4) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `admincontact` varchar(10) NOT NULL,
  `adminpwd` varchar(100) NOT NULL,
  `mgsparkid` int(3) NOT NULL,
  `adminemail` varchar(50) NOT NULL,
  `adminresumename` varchar(50) NOT NULL,
  `admintasks` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cartmaster`
--

CREATE TABLE `cartmaster` (
  `cartid` int(4) NOT NULL DEFAULT '0',
  `cartproducts` varchar(300) DEFAULT NULL,
  `userid` int(4) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `foodid` int(4) NOT NULL,
  `foodname` varchar(100) NOT NULL,
  `foodcategory` int(1) NOT NULL,
  `foodprice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deliverymaster`
--

CREATE TABLE `deliverymaster` (
  `deliveryid` int(4) NOT NULL,
  `deliverypersonid` int(4) NOT NULL,
  `deliverypersonname` varchar(200) NOT NULL,
  `deliverypersonlocationid` int(4) NOT NULL,
  `deliverypersonlocationname` varchar(200) NOT NULL,
  `deliverypersonvehicleno` int(20) NOT NULL,
  `deliverypersonvehiclename` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedbackmaster`
--

CREATE TABLE `feedbackmaster` (
  `feedbackid` int(4) NOT NULL,
  `feedbackname` varchar(250) NOT NULL,
  `userid` int(4) NOT NULL,
  `username` varchar(200) NOT NULL,
  `feedbackpoint` int(2) DEFAULT NULL,
  `foodrating` int(1) DEFAULT NULL,
  `servicerating` int(1) DEFAULT NULL,
  `shoprating` int(1) DEFAULT NULL,
  `suggestions` varchar(500) DEFAULT NULL,
  `foodpercentage` decimal(10,0) NOT NULL,
  `servicepercentage` decimal(10,0) NOT NULL,
  `shoppercentage` decimal(10,0) NOT NULL,
  `underbudget` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foodmaster`
--

CREATE TABLE `foodmaster` (
  `foodid` int(4) NOT NULL,
  `foodname` varchar(200) NOT NULL,
  `foodcategory` int(1) NOT NULL,
  `foodimage` blob NOT NULL,
  `foodprice` int(10) NOT NULL,
  `foodreview` int(11) DEFAULT NULL,
  `foodcount` int(1) NOT NULL,
  `hasfoodcount` char(1) NOT NULL,
  `foodavailability` char(1) NOT NULL,
  `foodingredients` varchar(200) DEFAULT NULL,
  `foodhealth` varchar(200) DEFAULT NULL,
  `foodoffers` varchar(200) DEFAULT NULL,
  `hasoffer` char(1) DEFAULT NULL,
  `offerid` int(4) DEFAULT NULL,
  `offername` varchar(200) DEFAULT NULL,
  `foodofferid` int(4) DEFAULT NULL,
  `foodoffername` varchar(200) DEFAULT NULL,
  `shopofferid` int(4) DEFAULT NULL,
  `shopoffername` varchar(200) DEFAULT NULL,
  `shopofferdiscountamount` decimal(10,0) NOT NULL,
  `foodofferdiscountamount` decimal(10,0) NOT NULL,
  `isnonveg` char(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offermaster`
--

CREATE TABLE `offermaster` (
  `offerid` int(4) NOT NULL,
  `offername` varchar(200) NOT NULL,
  `offerdiscountamount` decimal(10,0) NOT NULL,
  `couponid` int(4) NOT NULL,
  `couponname` varchar(200) NOT NULL,
  `coupondiscountamount` int(11) NOT NULL,
  `userid` int(4) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `shopofferid` int(4) DEFAULT NULL,
  `shopoffername` varchar(200) DEFAULT NULL,
  `shopofferdiscountamount` decimal(10,0) NOT NULL,
  `foodofferid` int(4) DEFAULT NULL,
  `foodoffername` varchar(200) DEFAULT NULL,
  `foodofferdiscountamount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offermaster`
--

INSERT INTO `offermaster` (`offerid`, `offername`, `offerdiscountamount`, `couponid`, `couponname`, `coupondiscountamount`, `userid`, `username`, `shopofferid`, `shopoffername`, `shopofferdiscountamount`, `foodofferid`, `foodoffername`, `foodofferdiscountamount`) VALUES
(0, '', '0', 0, '', 0, 0, '0', 0, '0', '0', 0, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ordermaster`
--

CREATE TABLE `ordermaster` (
  `order_id` int(4) NOT NULL,
  `order_name` varchar(400) NOT NULL,
  `amount` int(10) NOT NULL,
  `offerid` int(4) NOT NULL,
  `offername` varchar(200) NOT NULL,
  `offerdiscountamount` decimal(10,0) NOT NULL,
  `couponid` int(4) NOT NULL,
  `couponname` varchar(200) NOT NULL,
  `coupondiscountamount` decimal(10,0) NOT NULL,
  `userid` int(4) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `shopofferid` int(4) DEFAULT NULL,
  `shopoffername` varchar(200) DEFAULT NULL,
  `shopofferdiscountamount` decimal(10,0) NOT NULL,
  `food_offerid` int(4) DEFAULT NULL,
  `foodoffername` varchar(300) DEFAULT NULL,
  `foodofferdiscountamount` decimal(10,0) NOT NULL,
  `paymentid` int(4) DEFAULT NULL,
  `paymenttype` char(100) DEFAULT NULL,
  `cardid` bigint(100) DEFAULT NULL,
  `orderdetails` varchar(500) DEFAULT NULL,
  `selfpick` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shopmaster`
--

CREATE TABLE `shopmaster` (
  `shopid` int(4) NOT NULL,
  `shopname` varchar(150) NOT NULL,
  `shopcontact` varchar(10) NOT NULL,
  `shopemail` varchar(50) DEFAULT NULL,
  `shopcategory` int(1) NOT NULL,
  `shoplocationid` int(4) NOT NULL,
  `shoplocationname` varchar(200) NOT NULL,
  `shopreviews` varchar(200) NOT NULL,
  `shopownername` varchar(150) NOT NULL,
  `shopoffers` varchar(150) DEFAULT NULL,
  `shopdescription` varchar(200) DEFAULT NULL,
  `locationid` int(4) NOT NULL,
  `location_name` varchar(200) NOT NULL,
  `foodcategory` int(1) NOT NULL,
  `foodcount` int(11) NOT NULL,
  `hasfoodcount` char(100) NOT NULL,
  `hasoffer` char(1) DEFAULT NULL,
  `offerid` int(4) DEFAULT NULL,
  `offername` varchar(200) DEFAULT NULL,
  `shopofferid` int(4) DEFAULT NULL,
  `shopoffername` varchar(200) DEFAULT NULL,
  `foodofferid` int(4) NOT NULL,
  `foodoffername` varchar(200) DEFAULT NULL,
  `shopofferdiscountamount` decimal(10,0) NOT NULL,
  `foodofferdiscountamount` decimal(10,0) NOT NULL,
  `shopimage` blob NOT NULL,
  `shoppassword` varchar(100) NOT NULL,
  `carddetails` varchar(50) NOT NULL,
  `orderdetails` varchar(400) DEFAULT NULL,
  `isnonveg` char(1) DEFAULT NULL,
  `othershopitemscategory` int(11) NOT NULL,
  `shopcount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usermaster`
--

CREATE TABLE `usermaster` (
  `userid` int(4) NOT NULL,
  `username` varchar(200) NOT NULL,
  `useremail` varchar(50) DEFAULT NULL,
  `userpassword` varchar(100) NOT NULL,
  `useraddress` varchar(200) NOT NULL,
  `userphonenumber` varchar(10) NOT NULL,
  `hasoffer` char(1) DEFAULT NULL,
  `cartid` int(4) NOT NULL,
  `cartproducts` varchar(300) DEFAULT NULL,
  `paymentid` int(4) DEFAULT NULL,
  `paymenttype` varchar(100) DEFAULT NULL,
  `cardid` bigint(100) DEFAULT NULL,
  `offerid` int(4) DEFAULT NULL,
  `offername` varchar(200) DEFAULT NULL,
  `coupenid` int(4) DEFAULT NULL,
  `coupenname` varchar(200) DEFAULT NULL,
  `cancellationcount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminmaster`
--
ALTER TABLE `adminmaster`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `cartmaster`
--
ALTER TABLE `cartmaster`
  ADD PRIMARY KEY (`cartid`),
  ADD UNIQUE KEY `userid` (`userid`,`foodid`);

--
-- Indexes for table `deliverymaster`
--
ALTER TABLE `deliverymaster`
  ADD PRIMARY KEY (`deliveryid`);

--
-- Indexes for table `feedbackmaster`
--
ALTER TABLE `feedbackmaster`
  ADD PRIMARY KEY (`feedbackid`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `foodmaster`
--
ALTER TABLE `foodmaster`
  ADD PRIMARY KEY (`foodid`),
  ADD UNIQUE KEY `foodid_2` (`foodid`),
  ADD UNIQUE KEY `hasfoodcount` (`hasfoodcount`),
  ADD UNIQUE KEY `foodid` (`foodid`,`foodcategory`,`foodofferid`,`shopofferid`),
  ADD UNIQUE KEY `offerid` (`offerid`),
  ADD UNIQUE KEY `shopofferid` (`shopofferid`);

--
-- Indexes for table `offermaster`
--
ALTER TABLE `offermaster`
  ADD PRIMARY KEY (`offerid`),
  ADD UNIQUE KEY `couponid_2` (`couponid`),
  ADD UNIQUE KEY `couponid` (`couponid`,`shopofferid`,`foodofferid`),
  ADD UNIQUE KEY `shopofferid` (`shopofferid`),
  ADD UNIQUE KEY `foodofferid` (`foodofferid`);

--
-- Indexes for table `ordermaster`
--
ALTER TABLE `ordermaster`
  ADD PRIMARY KEY (`order_id`,`offerid`),
  ADD UNIQUE KEY `offerid` (`offerid`),
  ADD UNIQUE KEY `couponid` (`couponid`,`shopofferid`,`food_offerid`,`paymentid`);

--
-- Indexes for table `shopmaster`
--
ALTER TABLE `shopmaster`
  ADD PRIMARY KEY (`shopid`),
  ADD UNIQUE KEY `shopid` (`shopid`),
  ADD UNIQUE KEY `shoplocationid_2` (`shoplocationid`),
  ADD UNIQUE KEY `shoplocationid_3` (`shoplocationid`),
  ADD UNIQUE KEY `locationid` (`locationid`),
  ADD UNIQUE KEY `foodcategory` (`foodcategory`),
  ADD UNIQUE KEY `hasfoodcount` (`hasfoodcount`),
  ADD UNIQUE KEY `foodofferid` (`foodofferid`),
  ADD UNIQUE KEY `shoplocationid` (`shoplocationid`,`locationid`,`foodcategory`,`hasfoodcount`,`shopofferid`,`foodofferid`),
  ADD UNIQUE KEY `shopofferid` (`shopofferid`),
  ADD UNIQUE KEY `foodoffername` (`foodoffername`);

--
-- Indexes for table `usermaster`
--
ALTER TABLE `usermaster`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `cartid_2` (`cartid`),
  ADD UNIQUE KEY `cartid_3` (`cartid`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `userid_2` (`userid`),
  ADD KEY `cartid` (`cartid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cartmaster`
--
ALTER TABLE `cartmaster`
  ADD CONSTRAINT `cartmaster_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`userid`);

--
-- Constraints for table `feedbackmaster`
--
ALTER TABLE `feedbackmaster`
  ADD CONSTRAINT `feedbackmaster_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`userid`);

--
-- Constraints for table `foodmaster`
--
ALTER TABLE `foodmaster`
  ADD CONSTRAINT `foodmaster_ibfk_1` FOREIGN KEY (`foodid`) REFERENCES `foodmaster` (`foodid`),
  ADD CONSTRAINT `foodmaster_ibfk_2` FOREIGN KEY (`offerid`) REFERENCES `offermaster` (`offerid`),
  ADD CONSTRAINT `foodmaster_ibfk_3` FOREIGN KEY (`shopofferid`) REFERENCES `shopmaster` (`shopid`);

--
-- Constraints for table `offermaster`
--
ALTER TABLE `offermaster`
  ADD CONSTRAINT `offermaster_ibfk_1` FOREIGN KEY (`shopofferid`) REFERENCES `offermaster` (`offerid`),
  ADD CONSTRAINT `offermaster_ibfk_2` FOREIGN KEY (`foodofferid`) REFERENCES `offermaster` (`offerid`);

--
-- Constraints for table `ordermaster`
--
ALTER TABLE `ordermaster`
  ADD CONSTRAINT `ordermaster_ibfk_1` FOREIGN KEY (`offerid`) REFERENCES `offermaster` (`offerid`),
  ADD CONSTRAINT `ordermaster_ibfk_2` FOREIGN KEY (`couponid`) REFERENCES `offermaster` (`couponid`);

--
-- Constraints for table `shopmaster`
--
ALTER TABLE `shopmaster`
  ADD CONSTRAINT `shopmaster_ibfk_1` FOREIGN KEY (`foodcategory`) REFERENCES `foodmaster` (`foodid`),
  ADD CONSTRAINT `shopmaster_ibfk_2` FOREIGN KEY (`shopofferid`) REFERENCES `offermaster` (`shopofferid`),
  ADD CONSTRAINT `shopmaster_ibfk_3` FOREIGN KEY (`foodofferid`) REFERENCES `foodmaster` (`foodid`);

--
-- Constraints for table `usermaster`
--
ALTER TABLE `usermaster`
  ADD CONSTRAINT `usermaster_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`userid`),
  ADD CONSTRAINT `usermaster_ibfk_2` FOREIGN KEY (`cartid`) REFERENCES `cartmaster` (`cartid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
