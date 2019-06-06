-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2019 at 06:06 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drashti`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminmaster`
--

CREATE TABLE `developermaster` (
  `developerid` int(4) NOT NULL,
  `developername` varchar(200) NOT NULL,
  `developercontact` varchar(10) NOT NULL,
  `developerpwd` varchar(100) NOT NULL,
  `mgsparkid` int(3) NOT NULL,
  `developeremail` varchar(50) NOT NULL,
  `developerresumename` varchar(50) NOT NULL,
  `developertasks` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cartmaster`
--

CREATE TABLE `cartmaster` (
  `cartid` int(4) NOT NULL,
  `cartproducts` varchar(400) DEFAULT NULL,
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
  `deliverypersonlocationname` varchar(150) NOT NULL,
  `deliverypersonvehicleno` varchar(20) NOT NULL,
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
  `feedbackpoint` int(2) NOT NULL,
  `foodrating` int(1) NOT NULL,
  `servicerating` int(1) NOT NULL,
  `shoprating` int(1) NOT NULL,
  `suggestions` varchar(500) NOT NULL,
  `foodpercentage` decimal(2,0) NOT NULL,
  `servicepercentage` decimal(2,0) NOT NULL,
  `shoppercentage` decimal(2,0) NOT NULL,
  `underbudget` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foodmaster`
--

CREATE TABLE `foodmaster` (
  `foodid` int(4) NOT NULL,
  `foodname` varchar(200) NOT NULL,
  `foodcategory` int(1) NOT NULL,
  `foodcount` int(1) NOT NULL,
  `hasfoodcount` char(1) NOT NULL,
  `foodavailability` char(1) NOT NULL,
  `foodimage` blob NOT NULL,
  `foodreview` varchar(100) NOT NULL,
  `foodingredients` varchar(200) NOT NULL,
  `foodhealth` varchar(200) DEFAULT NULL,
  `foodoffers` varchar(200) DEFAULT NULL,
  `hasoffer` char(1) DEFAULT NULL,
  `offerid` int(4) DEFAULT NULL,
  `offername` varchar(200) DEFAULT NULL,
  `foodofferid` int(4) DEFAULT NULL,
  `foodoffername` varchar(200) DEFAULT NULL,
  `shopofferid` int(4) DEFAULT NULL,
  `shopoffername` varchar(200) DEFAULT NULL,
  `shopofferdiscountamount` decimal(2,0) NOT NULL,
  `foodofferdiscountamount` decimal(2,0) NOT NULL,
  `isnonveg` char(1) NOT NULL DEFAULT 'N',
  `foodprice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offermaster`
--

CREATE TABLE `offermaster` (
  `offerid` int(4) NOT NULL,
  `offername` varchar(200) NOT NULL,
  `offerdiscountamount` decimal(2,0) NOT NULL,
  `couponid` int(4) NOT NULL,
  `couponname` varchar(2000) NOT NULL,
  `coupondiscountamount` decimal(2,0) NOT NULL,
  `userid` int(4) NOT NULL,
  `username` varchar(200) NOT NULL,
  `shopofferid` int(4) DEFAULT NULL,
  `shopoffername` varchar(2000) DEFAULT NULL,
  `shopofferdiscountamount` decimal(2,0) NOT NULL,
  `foodofferid` int(4) NOT NULL,
  `foodoffername` varchar(200) NOT NULL,
  `foodofferdiscountamount` decimal(2,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordermaster`
--

CREATE TABLE `ordermaster` (
  `orderid` int(4) NOT NULL,
  `ordername` varchar(200) NOT NULL,
  `amount` int(10) NOT NULL,
  `offerid` int(4) NOT NULL,
  `offername` varchar(200) NOT NULL,
  `offerdiscountamount` decimal(2,0) NOT NULL,
  `couponid` int(4) NOT NULL,
  `couponname` varchar(200) NOT NULL,
  `coupondiscountamount` decimal(2,0) NOT NULL,
  `userid` int(4) NOT NULL,
  `username` varchar(200) NOT NULL,
  `shopofferid` int(4) DEFAULT NULL,
  `shopoffername` varchar(200) DEFAULT NULL,
  `shopofferdiscountamount` decimal(2,0) NOT NULL,
  `foodofferid` int(4) DEFAULT NULL,
  `foodoffername` varchar(200) DEFAULT NULL,
  `foodofferdiscountamount` decimal(2,0) NOT NULL,
  `paymentid` int(4) NOT NULL,
  `paymenttype` varchar(100) NOT NULL,
  `cardid` bigint(100) NOT NULL,
  `orderdetails` varchar(500) NOT NULL,
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
  `shopemail` varchar(50) NOT NULL,
  `shopcategory` int(11) NOT NULL,
  `shoplocationid` int(4) NOT NULL,
  `shoplocationname` varchar(100) NOT NULL,
  `shopreviews` varchar(200) NOT NULL,
  `shopownername` varchar(150) NOT NULL,
  `shopoffers` varchar(150) DEFAULT NULL,
  `shopdescription` varchar(200) DEFAULT NULL,
  `locationid` int(4) NOT NULL,
  `locationname` varchar(200) NOT NULL,
  `foodcategory` int(1) NOT NULL,
  `foodcount` int(1) NOT NULL,
  `hasfoodcount` char(1) NOT NULL,
  `hasoffer` char(1) NOT NULL,
  `offerid` int(4) DEFAULT NULL,
  `offername` varchar(200) DEFAULT NULL,
  `shopofferid` int(4) NOT NULL,
  `shopoffername` varchar(200) NOT NULL,
  `foodofferid` int(4) DEFAULT NULL,
  `foodoffername` varchar(200) DEFAULT NULL,
  `shopofferdiscountamount` decimal(2,0) NOT NULL,
  `foodofferdiscountamount` decimal(2,0) NOT NULL,
  `shopimage` blob NOT NULL,
  `shoppassword` varchar(100) NOT NULL,
  `carddetails` varchar(50) NOT NULL,
  `orderdetails` varchar(500) DEFAULT NULL,
  `isnonveg` char(1) NOT NULL,
  `othershopitemscategory` int(1) NOT NULL,
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
  `cartid` int(4) DEFAULT NULL,
  `cartproducts` varchar(300) DEFAULT NULL,
  `paymentid` int(4) DEFAULT NULL,
  `paymenttype` varchar(100) DEFAULT NULL,
  `cardid` bigint(100) DEFAULT NULL,
  `offerid` int(4) DEFAULT NULL,
  `offername` varchar(200) DEFAULT NULL,
  `couponid` int(4) DEFAULT NULL,
  `couponname` varchar(200) DEFAULT NULL,
  `cancellationcount` int(10) DEFAULT NULL
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
  ADD KEY `fk` (`foodid`),
  ADD KEY `userid` (`userid`);

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
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foodmaster`
--
ALTER TABLE `foodmaster`
  ADD PRIMARY KEY (`foodid`),
  ADD KEY `offerid` (`offerid`);

--
-- Indexes for table `offermaster`
--
ALTER TABLE `offermaster`
  ADD PRIMARY KEY (`offerid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ordermaster`
--
ALTER TABLE `ordermaster`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `offerid` (`offerid`);

--
-- Indexes for table `shopmaster`
--
ALTER TABLE `shopmaster`
  ADD PRIMARY KEY (`shopid`);

--
-- Indexes for table `usermaster`
--
ALTER TABLE `usermaster`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `offerid` (`offerid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cartmaster`
--
ALTER TABLE `cartmaster`
  ADD CONSTRAINT `cartmaster_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`userid`),
  ADD CONSTRAINT `fk` FOREIGN KEY (`foodid`) REFERENCES `cartmaster` (`cartid`);

--
-- Constraints for table `feedbackmaster`
--
ALTER TABLE `feedbackmaster`
  ADD CONSTRAINT `feedbackmaster_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`userid`);

--
-- Constraints for table `foodmaster`
--
ALTER TABLE `foodmaster`
  ADD CONSTRAINT `foodmaster_ibfk_1` FOREIGN KEY (`offerid`) REFERENCES `offermaster` (`offerid`);

--
-- Constraints for table `offermaster`
--
ALTER TABLE `offermaster`
  ADD CONSTRAINT `offermaster_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`userid`);

--
-- Constraints for table `ordermaster`
--
ALTER TABLE `ordermaster`
  ADD CONSTRAINT `ordermaster_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`userid`),
  ADD CONSTRAINT `ordermaster_ibfk_2` FOREIGN KEY (`offerid`) REFERENCES `offermaster` (`offerid`);

--
-- Constraints for table `usermaster`
--
ALTER TABLE `usermaster`
  ADD CONSTRAINT `usermaster_ibfk_1` FOREIGN KEY (`offerid`) REFERENCES `offermaster` (`offerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
