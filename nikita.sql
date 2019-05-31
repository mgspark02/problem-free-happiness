 Server: localhost  -   Database: nikita
 
-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2019 at 06:47 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `nikita`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminmaster`
--

CREATE TABLE IF NOT EXISTS `adminmaster` (
  `adminid` int(4) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `admincontact` varchar(10) NOT NULL,
  `adminpassword` varchar(100) NOT NULL,
  `mgsparkid` int(3) NOT NULL,
  `adminemail` varchar(50) NOT NULL,
  `adminresumename` varchar(50) NOT NULL,
  `admintasks` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminmaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `cartmaster`
--

CREATE TABLE IF NOT EXISTS `cartmaster` (
  `cartid` int(4) NOT NULL DEFAULT '0',
  `cartproducts` varchar(300) DEFAULT NULL,
  `userid` int(4) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `Foodid` int(4) NOT NULL,
  `Foodname` varchar(100) NOT NULL,
  `Foodcategory` int(1) NOT NULL,
  `Foodprice` int(10) NOT NULL,
  PRIMARY KEY (`cartid`),
  KEY `userid` (`userid`,`Foodid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cartmaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `deliverymaster`
--

CREATE TABLE IF NOT EXISTS `deliverymaster` (
  `deliveryid` int(4) NOT NULL,
  `deliverypersonid` int(4) NOT NULL,
  `deliverypersonname` varchar(200) NOT NULL,
  `deliverypersonlocationid` int(4) NOT NULL,
  `deliverypersonlocationname` varchar(150) NOT NULL,
  `deliverypersonvehicleno` int(20) NOT NULL,
  `deliverypersonvehiclename` varchar(200) NOT NULL,
  PRIMARY KEY (`deliveryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliverymaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `feedbackmaster`
--

CREATE TABLE IF NOT EXISTS `feedbackmaster` (
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
  `underbudget` int(1) DEFAULT NULL,
  PRIMARY KEY (`feedbackid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackmaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `foodmaster`
--

CREATE TABLE IF NOT EXISTS `foodmaster` (
  `Foodid` int(4) NOT NULL,
  `Foodname` varchar(200) NOT NULL,
  `Foodcategory` int(1) NOT NULL,
  `Foodimage` blob NOT NULL,
  `Foodprice` int(10) NOT NULL,
  `FoodReview` varchar(100) DEFAULT NULL,
  `FoodCount` int(1) NOT NULL,
  `hasfoodcount` char(1) NOT NULL,
  `FoodAvailability` char(1) NOT NULL,
  `FoodIngredients` varchar(200) DEFAULT NULL,
  `FoodHealth` varchar(200) DEFAULT NULL,
  `FoodOffers` varchar(200) DEFAULT NULL,
  `hasOffer` char(1) DEFAULT NULL,
  `offerid` int(4) DEFAULT NULL,
  `offername` varchar(200) DEFAULT NULL,
  `foodofferid` int(4) DEFAULT NULL,
  `foodoffername` varchar(200) DEFAULT NULL,
  `Shopofferid` int(4) DEFAULT NULL,
  `Shopoffername` varchar(200) DEFAULT NULL,
  `ShopOfferdiscountamount` decimal(10,0) NOT NULL,
  `foodOfferdiscountamount` decimal(10,0) NOT NULL,
  `isNonVeg` char(1) DEFAULT 'N',
  PRIMARY KEY (`Foodid`),
  KEY `Foodid` (`Foodid`,`Foodcategory`,`foodofferid`,`Shopofferid`),
  KEY `offerid` (`offerid`),
  KEY `Foodid_2` (`Foodid`),
  KEY `hasfoodcount` (`hasfoodcount`),
  KEY `Shopofferid` (`Shopofferid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodmaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `offermaster`
--

CREATE TABLE IF NOT EXISTS `offermaster` (
  `Offerid` int(4) NOT NULL,
  `Offername` varchar(200) NOT NULL,
  `Offerdiscountamount` decimal(10,0) NOT NULL,
  `Couponid` int(4) NOT NULL,
  `Couponname` varchar(200) NOT NULL,
  `Coupondiscountamount` decimal(10,0) NOT NULL,
  `userid` int(4) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `Shopofferid` int(4) DEFAULT NULL,
  `Shopoffername` varchar(200) DEFAULT NULL,
  `ShopOfferdiscountamount` decimal(10,0) NOT NULL,
  `foodofferid` int(4) DEFAULT NULL,
  `foodoffername` varchar(200) DEFAULT NULL,
  `foodOfferdiscountamount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Offerid`),
  KEY `Couponid` (`Couponid`,`Shopofferid`,`foodofferid`),
  KEY `Couponid_2` (`Couponid`),
  KEY `Shopofferid` (`Shopofferid`),
  KEY `foodofferid` (`foodofferid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offermaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `ordermaster`
--

CREATE TABLE IF NOT EXISTS `ordermaster` (
  `Order_id` int(4) NOT NULL,
  `Order_name` varchar(200) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Offerid` int(4) NOT NULL,
  `Offername` varchar(200) NOT NULL,
  `Offerdiscountamount` decimal(10,0) NOT NULL,
  `Couponid` int(4) NOT NULL,
  `Couponname` varchar(200) NOT NULL,
  `Coupondiscountamount` decimal(10,0) NOT NULL,
  `userid` int(4) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `Shopofferid` int(4) DEFAULT NULL,
  `Shopoffername` varchar(200) DEFAULT NULL,
  `ShopOfferdiscountamount` decimal(10,0) NOT NULL,
  `food_offerid` int(4) DEFAULT NULL,
  `foodoffername` varchar(300) DEFAULT NULL,
  `foodOfferdiscountamount` decimal(10,0) NOT NULL,
  `paymentid` int(4) DEFAULT NULL,
  `paymenttype` varchar(100) DEFAULT NULL,
  `cardid` bigint(100) DEFAULT NULL,
  `orderdetails` varchar(500) DEFAULT NULL,
  `selfpick` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Order_id`,`Offerid`),
  KEY `Couponid` (`Couponid`,`Shopofferid`,`food_offerid`,`paymentid`),
  KEY `Offerid` (`Offerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordermaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `shopmaster`
--

CREATE TABLE IF NOT EXISTS `shopmaster` (
  `Shopid` int(4) NOT NULL,
  `Shopname` varchar(150) NOT NULL,
  `Shopcontact` varchar(10) NOT NULL,
  `Shopemail` varchar(50) DEFAULT NULL,
  `Shopcategory` int(1) NOT NULL,
  `Shoplocationid` int(4) NOT NULL,
  `Shoplocationname` varchar(100) NOT NULL,
  `Shopreviews` varchar(200) NOT NULL,
  `Shopownername` varchar(150) NOT NULL,
  `Shopoffers` varchar(150) DEFAULT NULL,
  `ShopDescription` varchar(200) DEFAULT NULL,
  `locationid` int(4) NOT NULL,
  `location_name` varchar(200) NOT NULL,
  `Foodcategory` int(1) NOT NULL,
  `FoodCount` int(11) NOT NULL,
  `hasfoodcount` char(100) NOT NULL,
  `hasOffer` char(1) DEFAULT NULL,
  `offerid` int(4) DEFAULT NULL,
  `offername` varchar(200) DEFAULT NULL,
  `Shopofferid` int(4) DEFAULT NULL,
  `Shopoffername` varchar(200) DEFAULT NULL,
  `foodofferid` int(4) NOT NULL,
  `foodoffername` varchar(200) DEFAULT NULL,
  `ShopOfferdiscountamount` decimal(10,0) NOT NULL,
  `foodOfferdiscountamount` decimal(10,0) NOT NULL,
  `Shopimage` blob NOT NULL,
  `Shoppassword` varchar(100) NOT NULL,
  `carddetails` varchar(50) NOT NULL,
  `orderdetails` varchar(400) DEFAULT NULL,
  `isNonVeg` char(1) DEFAULT NULL,
  `othershopitemscategory` int(11) NOT NULL,
  `shopcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`Shopid`),
  KEY `Shoplocationid` (`Shoplocationid`,`locationid`,`Foodcategory`,`hasfoodcount`,`Shopofferid`,`foodofferid`),
  KEY `Shopid` (`Shopid`),
  KEY `Shoplocationid_2` (`Shoplocationid`),
  KEY `Shoplocationid_3` (`Shoplocationid`),
  KEY `locationid` (`locationid`),
  KEY `Foodcategory` (`Foodcategory`),
  KEY `hasfoodcount` (`hasfoodcount`),
  KEY `Shopofferid` (`Shopofferid`),
  KEY `foodoffername` (`foodoffername`),
  KEY `foodofferid` (`foodofferid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopmaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `usermaster`
--

CREATE TABLE IF NOT EXISTS `usermaster` (
  `userid` int(4) NOT NULL,
  `username` varchar(200) NOT NULL,
  `useremail` varchar(50) DEFAULT NULL,
  `userpassword` varchar(100) NOT NULL,
  `useraddress` varchar(200) NOT NULL,
  `userphonenumber` varchar(10) NOT NULL,
  `hasOffer` char(1) DEFAULT NULL,
  `Cartid` int(4) NOT NULL,
  `Cartproducts` varchar(300) DEFAULT NULL,
  `paymentid` int(4) DEFAULT NULL,
  `paymenttype` varchar(100) DEFAULT NULL,
  `cardid` bigint(100) DEFAULT NULL,
  `offerid` int(4) DEFAULT NULL,
  `offername` varchar(200) DEFAULT NULL,
  `couponid` int(4) DEFAULT NULL,
  `couponname` varchar(200) DEFAULT NULL,
  `cancellationcount` int(10) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `Cartid` (`Cartid`),
  KEY `Cartid_2` (`Cartid`),
  KEY `Cartid_3` (`Cartid`),
  KEY `userid` (`userid`),
  KEY `userid_2` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usermaster`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminmaster`
--
ALTER TABLE `adminmaster`
  ADD CONSTRAINT `adminmaster_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `adminmaster` (`adminid`);

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
  ADD CONSTRAINT `foodmaster_ibfk_1` FOREIGN KEY (`Foodid`) REFERENCES `foodmaster` (`Foodid`),
  ADD CONSTRAINT `foodmaster_ibfk_2` FOREIGN KEY (`offerid`) REFERENCES `offermaster` (`Offerid`),
  ADD CONSTRAINT `foodmaster_ibfk_3` FOREIGN KEY (`Shopofferid`) REFERENCES `shopmaster` (`Shopid`);

--
-- Constraints for table `offermaster`
--
ALTER TABLE `offermaster`
  ADD CONSTRAINT `offermaster_ibfk_1` FOREIGN KEY (`Shopofferid`) REFERENCES `offermaster` (`Shopofferid`),
  ADD CONSTRAINT `offermaster_ibfk_2` FOREIGN KEY (`foodofferid`) REFERENCES `offermaster` (`foodofferid`),
  ADD CONSTRAINT `offermaster_ibfk_3` FOREIGN KEY (`Offerid`) REFERENCES `offermaster` (`Offerid`);

--
-- Constraints for table `ordermaster`
--
ALTER TABLE `ordermaster`
  ADD CONSTRAINT `ordermaster_ibfk_1` FOREIGN KEY (`Offerid`) REFERENCES `offermaster` (`Offerid`),
  ADD CONSTRAINT `ordermaster_ibfk_2` FOREIGN KEY (`Couponid`) REFERENCES `offermaster` (`Couponid`);

--
-- Constraints for table `shopmaster`
--
ALTER TABLE `shopmaster`
  ADD CONSTRAINT `shopmaster_ibfk_1` FOREIGN KEY (`Foodcategory`) REFERENCES `foodmaster` (`Foodid`),
  ADD CONSTRAINT `shopmaster_ibfk_2` FOREIGN KEY (`Shopofferid`) REFERENCES `offermaster` (`Shopofferid`),
  ADD CONSTRAINT `shopmaster_ibfk_3` FOREIGN KEY (`foodofferid`) REFERENCES `foodmaster` (`Foodid`);

--
-- Constraints for table `usermaster`
--
ALTER TABLE `usermaster`
  ADD CONSTRAINT `usermaster_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`userid`),
  ADD CONSTRAINT `usermaster_ibfk_2` FOREIGN KEY (`Cartid`) REFERENCES `cartmaster` (`cartid`);

