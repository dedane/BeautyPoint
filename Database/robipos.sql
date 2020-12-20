-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2020 at 04:47 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robipos`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounttype`
--

CREATE TABLE IF NOT EXISTS `accounttype` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(50) NOT NULL,
  `companyid` varchar(10) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounttype`
--

INSERT INTO `accounttype` (`id`, `name`, `type`, `companyid`, `userid`, `description`) VALUES
(1, 'Asset', 'BS', '1', '1', 'Asset'),
(2, 'Liability', 'BS', '1', '1', 'Liability'),
(3, 'Equity', 'BS', '1', '1', 'Equity'),
(4, 'Income', 'PL', '1', '1', 'Income'),
(5, 'Expense', 'PL', '1', '1', 'Expense');

-- --------------------------------------------------------

--
-- Table structure for table `activityloggs`
--

CREATE TABLE IF NOT EXISTS `activityloggs` (
  `id` int(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `timedone` varchar(50) NOT NULL,
  `actiondone` text NOT NULL,
  `ip` text NOT NULL,
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE IF NOT EXISTS `admintable` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `surname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `campus` varchar(30) NOT NULL,
  `college` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `type` varchar(50) NOT NULL,
  `token` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `idno` varchar(40) NOT NULL,
  `updatedat` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`id`, `username`, `password`, `surname`, `firstname`, `phone`, `campus`, `college`, `department`, `type`, `token`, `email`, `createdate`, `status`, `idno`, `updatedat`) VALUES
(1, 'admin', 'Robisearch321', 'dd', 'ddd', '222222222', '', '', '', '', '', 'admqin@gmail.com', '', 'active', '2222222', '2016-11-07 04:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `advance`
--

CREATE TABLE IF NOT EXISTS `advance` (
  `id` int(11) NOT NULL,
  `tenantid` varchar(50) NOT NULL,
  `todate` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `createdat` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `closedate` varchar(30) NOT NULL,
  `startdate` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advance`
--

INSERT INTO `advance` (`id`, `tenantid`, `todate`, `amount`, `description`, `status`, `createdat`, `userid`, `companyid`, `balance`, `closedate`, `startdate`) VALUES
(1, '8 ', '', '34444', '', 'active', '2020-07-08 17:49:23pm', '1', '1', '34444', '2020-07-09 10:00:00', '2020-07-08 17:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `advancepayment`
--

CREATE TABLE IF NOT EXISTS `advancepayment` (
  `id` int(30) NOT NULL,
  `createdat` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `companyid` varchar(30) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `balance` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `advanceid` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advancepayment`
--

INSERT INTO `advancepayment` (`id`, `createdat`, `userid`, `companyid`, `amount`, `balance`, `description`, `advanceid`) VALUES
(1, '2019-09-25 04:47:53am', '1', '1', '500', '39500', 'ok', 1);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `id` int(40) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `idno` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `county` varchar(40) NOT NULL,
  `accountno` varchar(100) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE IF NOT EXISTS `alerts` (
  `id` int(100) NOT NULL,
  `contact` text NOT NULL,
  `postedtime` varchar(40) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `duedate` varchar(30) NOT NULL,
  `duetime` varchar(30) NOT NULL,
  `deliverystatus` varchar(10) NOT NULL DEFAULT 'new',
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `groupname` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `contact`, `postedtime`, `message`, `status`, `userid`, `companyid`, `duedate`, `duetime`, `deliverystatus`, `name`, `type`, `groupname`) VALUES
(1, '254718667391', '2020-04-25 09:35:59am', 'test', 'active', '1', '1', '2020-04-25', '01:45', 'new', 'ouko manayala', 'single', '');

-- --------------------------------------------------------

--
-- Table structure for table `alldocuments`
--

CREATE TABLE IF NOT EXISTS `alldocuments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `img_id` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `documentname` text,
  `companyid` varchar(100) NOT NULL,
  `branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `allpayments`
--

CREATE TABLE IF NOT EXISTS `allpayments` (
  `id` int(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `dateposted` varchar(50) NOT NULL,
  `user` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `createdat` varchar(50) NOT NULL,
  `receiptno` varchar(100) NOT NULL,
  `idno` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `imgid` varchar(100) NOT NULL,
  `img_id` text NOT NULL,
  `plotno` varchar(50) NOT NULL,
  `landlord` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `advance` varchar(20) NOT NULL,
  `direct` varchar(20) NOT NULL,
  `balance` varchar(20) NOT NULL,
  `mpesa` varchar(20) NOT NULL,
  `cash` varchar(20) NOT NULL,
  `card` varchar(20) NOT NULL,
  `cheque` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `paid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
  `id` int(50) NOT NULL,
  `title` text NOT NULL,
  `target` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `dateposted` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `companyid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `approvals`
--

CREATE TABLE IF NOT EXISTS `approvals` (
  `id` int(11) NOT NULL,
  `level` varchar(5) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `invoice` varchar(20) NOT NULL,
  `applicationid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asignrooms`
--

CREATE TABLE IF NOT EXISTS `asignrooms` (
  `id` int(11) NOT NULL,
  `roomid` varchar(40) NOT NULL,
  `plotno` varchar(100) NOT NULL,
  `houseno` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `memberid` varchar(50) NOT NULL,
  `companyid` varchar(30) NOT NULL,
  `exactdate` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asignrooms`
--

INSERT INTO `asignrooms` (`id`, `roomid`, `plotno`, `houseno`, `status`, `createdat`, `updatedat`, `userid`, `memberid`, `companyid`, `exactdate`) VALUES
(1, '7', '2', '1054', 'active', '2020-07-08 13:48:35', '', '1', '1', '1', '2020-07-08'),
(2, '6', '2', '102', 'active', '2020-07-08 13:49:13', '', '1', '1', '1', '2020-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE IF NOT EXISTS `assets` (
  `id` int(30) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `supplier` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_included` int(10) NOT NULL DEFAULT '16',
  `buyingprice` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `assetcondition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assetvalue` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serialno` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `imgid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT '0',
  `is_service` int(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `qty` decimal(10,2) NOT NULL,
  `dateposted` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `companyid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `expdate` date NOT NULL,
  `orderamount` text COLLATE utf8_unicode_ci NOT NULL,
  `shortname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `uom` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pcs',
  `producttype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Inventory',
  `assetaccount` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `salesaccount` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `expenseaccount` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `depreciationpercent` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `invoice` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `depreciation` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accumulativeaccount` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accumdepreciation` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignbranches`
--

CREATE TABLE IF NOT EXISTS `assignbranches` (
  `id` int(11) NOT NULL,
  `branchid` int(11) DEFAULT NULL,
  `employeeno` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `description` text COMMENT 'Description of a credit / debit',
  `userid` int(30) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `companyid` int(11) NOT NULL,
  `updateddate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Add or sub entitlement for employees or contracts';

-- --------------------------------------------------------

--
-- Table structure for table `assigntask`
--

CREATE TABLE IF NOT EXISTS `assigntask` (
  `id` int(30) NOT NULL,
  `branchid` int(11) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'active',
  `userid` int(30) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `companyid` int(11) NOT NULL,
  `updateddate` varchar(40) NOT NULL,
  `taskid` int(11) NOT NULL,
  `mode` varchar(20) NOT NULL,
  `target` varchar(20) NOT NULL,
  `period` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `fromdate` varchar(30) NOT NULL,
  `todate` varchar(30) NOT NULL,
  `year` varchar(20) NOT NULL,
  `defaulttype` varchar(20) NOT NULL,
  `tasktype` varchar(10) NOT NULL DEFAULT 'General'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Add or sub entitlement for employees or contracts';

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(100) NOT NULL,
  `idno` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `timein` varchar(100) NOT NULL,
  `timeout` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `createddate` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `timediffrence` int(5) NOT NULL DEFAULT '0',
  `device` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(50) NOT NULL,
  `expendituretype` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `paiddate` varchar(50) NOT NULL,
  `incharge` varchar(40) NOT NULL,
  `bankname` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `entrydate` varchar(50) NOT NULL,
  `invoice` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batchlist`
--

CREATE TABLE IF NOT EXISTS `batchlist` (
  `id` int(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `exactime` varchar(50) NOT NULL,
  `batchid` varchar(50) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `companyid` int(11) NOT NULL,
  `branchid` int(11) NOT NULL,
  `batchno` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(50) NOT NULL,
  `companyid` varchar(60) NOT NULL,
  `title` text NOT NULL,
  `answers` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `date` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `postedtime` varchar(60) NOT NULL,
  `userid` varchar(60) NOT NULL,
  `invoice` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `companyid`, `title`, `answers`, `email`, `phone`, `date`, `description`, `postedtime`, `userid`, `invoice`) VALUES
(1, '1', 'Do you work on weekend', 'YES', 'karenmakena3@gmail.com', '0702400635', '', 'hi i want to be a shujaa also', '2016-12-13 06:47:33am', '', 0),
(2, '1', 'Can You deliver anywhere in Kenya', 'Yes  we do withing 48 hours outside Nairobi', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(50) NOT NULL,
  `companyid` varchar(60) NOT NULL,
  `title` text NOT NULL,
  `answers` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `date` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `postedtime` varchar(60) NOT NULL,
  `userid` varchar(60) NOT NULL,
  `invoice` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `companyid`, `title`, `answers`, `email`, `phone`, `date`, `description`, `postedtime`, `userid`, `invoice`) VALUES
(1, '1', 'Do you work on weekend', 'YES', 'karenmakena3@gmail.com', '0702400635', '', 'hi i want to be a shujaa also', '2016-12-13 06:47:33am', '', 0),
(2, '1', 'Can You deliver anywhere in Kenya', 'Yes  we do withing 48 hours outside Nairobi', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookroom`
--

CREATE TABLE IF NOT EXISTS `bookroom` (
  `id` int(11) NOT NULL,
  `houseno` varchar(60) NOT NULL,
  `plotno` varchar(50) NOT NULL,
  `idno` varchar(50) NOT NULL,
  `tenantid` varchar(40) NOT NULL,
  `entrydate` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `checkoutdate` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `createdat` datetime NOT NULL,
  `updatedat` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `paymentstatus` varchar(30) NOT NULL,
  `paymentmode` varchar(30) NOT NULL,
  `paymentcode` varchar(30) NOT NULL,
  `totalamount` decimal(10,2) NOT NULL,
  `overpayment` decimal(10,2) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `transactioncode` varchar(30) NOT NULL,
  `roomtype` varchar(40) NOT NULL,
  `number` varchar(10) NOT NULL,
  `total` varchar(30) NOT NULL,
  `balance` varchar(30) NOT NULL,
  `mpesa` varchar(30) NOT NULL,
  `card` varchar(30) NOT NULL,
  `bookroom` varchar(20) NOT NULL,
  `credit` varchar(30) NOT NULL,
  `voucher` varchar(10) NOT NULL,
  `cheque` varchar(30) NOT NULL,
  `points` varchar(30) NOT NULL,
  `people` varchar(10) NOT NULL,
  `category` varchar(30) NOT NULL DEFAULT 'accommodation',
  `deposite` decimal(10,2) NOT NULL,
  `chargeid` int(11) NOT NULL,
  `booings` int(11) NOT NULL DEFAULT '1',
  `branchid` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookroom`
--

INSERT INTO `bookroom` (`id`, `houseno`, `plotno`, `idno`, `tenantid`, `entrydate`, `description`, `checkoutdate`, `status`, `userid`, `createdat`, `updatedat`, `companyid`, `amount`, `paymentstatus`, `paymentmode`, `paymentcode`, `totalamount`, `overpayment`, `discount`, `transactioncode`, `roomtype`, `number`, `total`, `balance`, `mpesa`, `card`, `bookroom`, `credit`, `voucher`, `cheque`, `points`, `people`, `category`, `deposite`, `chargeid`, `booings`, `branchid`) VALUES
(1, ' `name`', 'INSERT INTO `accounttype` (`id`', ' `userid`', '15', '2020-08-12 16:13:15', '', '0000-00-00 00:00:00', 'active', '1', '2020-08-12 16:13:15', '', '1', '', '', '', '', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'accommodation', '0.00', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `description`, `createdate`, `status`, `userid`, `updatedate`, `companyid`) VALUES
(1, 'Counter', '<H1 style="margin:0px;">ROBISEARCH LTD</H1>\r\nP.O BOX 159-50404 JUJA\r\nTELEPHONE:0780655987\r\nTILL NO::0708325411\r\n<center><h1>PAYBILL NO:XXXX</h1></center>', '2020-05-15 13:15:48', 'active', '1', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(50) NOT NULL,
  `companyid` varchar(60) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `date` varchar(60) NOT NULL,
  `website` text NOT NULL,
  `postedtime` varchar(60) NOT NULL,
  `userid` varchar(60) NOT NULL,
  `invoice` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `companyid`, `title`, `description`, `email`, `phone`, `date`, `website`, `postedtime`, `userid`, `invoice`) VALUES
(1, '1', 'JKUAT', 'Our partner in ICT Field', 'karenmakena3@gmail.com', '0702400635', '', 'http://www.jkuat.ac.ke/', '2016-12-13 06:47:33am', '', 0),
(2, '1', 'SimbaNet', 'Our partner in in Nikague App', '', '', '', 'https://www.simbanet.net/', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE IF NOT EXISTS `budget` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `createdate` varchar(20) NOT NULL,
  `expamount` decimal(10,2) NOT NULL,
  `usedamount` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `year` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bulkdispatch`
--

CREATE TABLE IF NOT EXISTS `bulkdispatch` (
  `id` int(11) NOT NULL,
  `branchid` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `frombranch` varchar(50) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `enddate` varchar(50) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `companyid` varchar(20) NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `approvedby` int(20) NOT NULL,
  `dateapproved` int(20) NOT NULL,
  `tobranch` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'new',
  `startdate` varchar(20) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'Transfer'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `callcenter`
--

CREATE TABLE IF NOT EXISTS `callcenter` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `category` varchar(30) NOT NULL,
  `messageid` varchar(30) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `updateddate` varchar(30) NOT NULL,
  `callername` text NOT NULL,
  `receiver` text NOT NULL,
  `calldate` varchar(30) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `media` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `createdate`, `status`, `userid`, `updatedate`, `companyid`) VALUES
(1, 'Customers', 'Customers', '2019-12-07 05:30:29am', 'active', '1', '1', '1'),
(2, 'Supplier', 'Supplier', '2019-12-07 05:30:29am', 'active', '1', '', '1'),
(3, 'Tenants', 'Tenants', '2019-12-07 05:30:48am', 'active', '1', '', '1'),
(4, 'Agents', 'Agents', '2020-05-14 06:45:19am', 'active', '1', '', '1'),
(5, 'Supplier', 'Supplier', '', 'active', '', '', ''),
(6, 'reseller', '', '2020-08-11 10:28:40am', 'active', '1', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE IF NOT EXISTS `charges` (
  `id` int(20) NOT NULL,
  `type` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(40) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `priority` int(11) NOT NULL,
  `companyid` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `type`, `description`, `status`, `createdat`, `updatedat`, `userid`, `priority`, `companyid`) VALUES
(1, 'RENT', '', '', '2018-05-30 14:28:37', '', '', 0, 1),
(2, 'DEPOSIT', '', '', '2018-05-30 14:27:39', '', '', 0, 1),
(3, 'WATER/POWER DEPOSIT', '', '', '2018-05-30 14:28:49', '', '', 0, 1),
(4, 'PENALTY', '', '', '2018-06-25 13:38:03', '', '', 0, 1),
(5, 'WATER', '', '', '2018-06-27 11:33:55', '', '', 0, 1),
(6, 'PARTIAL PAYMENT', '', '', '2018-06-29 16:22:30', '', '', 0, 1),
(7, 'GARBAGE', '', '', '2018-07-03 16:56:46', '', '', 0, 1),
(8, 'DAMAGES', '', '', '2018-07-17 12:30:05', '', '', 0, 1),
(9, 'AGREEMENT FORM', '', '', '2018-07-23 10:21:11', '', '', 0, 1),
(10, 'POWER', '', '', '2018-08-04 10:42:10', '', '', 0, 1),
(11, 'SEWAGE', 'SEWAGE', '', '2020-05-27 16:23:21', '', '', 2, 1),
(12, 'BED ONLY', '', '', '2020-05-28 15:38:20', '', '', 1, 1),
(13, 'BED AND BREAKFAST', '', '', '2020-05-28 15:38:39', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cheque`
--

CREATE TABLE IF NOT EXISTS `cheque` (
  `id` int(50) NOT NULL,
  `expendituretype` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `paiddate` varchar(50) NOT NULL,
  `incharge` varchar(40) NOT NULL,
  `bankname` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `entrydate` varchar(50) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `business` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `chequenumber` varchar(70) NOT NULL,
  `exactdate` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE IF NOT EXISTS `collection` (
  `id` int(11) NOT NULL,
  `paiddate` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` varchar(30) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `companyid` varchar(20) NOT NULL,
  `paymentmethodes` int(10) NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT 'payment',
  `transactioncode` varchar(50) NOT NULL,
  `supplier` int(11) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id`, `paiddate`, `invoice`, `amount`, `remarks`, `balance`, `userid`, `companyid`, `paymentmethodes`, `createdate`, `name`, `transactioncode`, `supplier`, `branchid`) VALUES
(1, '2020-08-06 15:48:12', '41596717980', '2000', '', '68800', '4', '1', 1030, '', 'paid', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE IF NOT EXISTS `commission` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `datesold` varchar(40) NOT NULL,
  `sellingprice` decimal(10,2) NOT NULL,
  `profit` varchar(50) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `paymentdate` varchar(50) NOT NULL,
  `rate` varchar(30) NOT NULL,
  `customer` varchar(30) NOT NULL,
  `customerphone` varchar(50) NOT NULL,
  `customeremail` varchar(50) NOT NULL,
  `customerlocation` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `dateposted` varchar(40) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'New',
  `paid` decimal(10,2) NOT NULL,
  `expcommission` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE IF NOT EXISTS `complain` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `type` varchar(30) NOT NULL,
  `messageid` varchar(30) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `updateddate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complaindata`
--

CREATE TABLE IF NOT EXISTS `complaindata` (
  `id` int(30) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `taskid` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'newstock',
  `companyid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `constants`
--

CREATE TABLE IF NOT EXISTS `constants` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `companyid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constants`
--

INSERT INTO `constants` (`id`, `name`, `amount`, `status`, `companyid`, `userid`, `category`) VALUES
(1, 'Relief', '2400.00', 'active', 1, 1, 'Relief'),
(2, 'Pension', '200.00', 'active', 1, 1, 'Pension'),
(3, 'NSSF', '200.00', 'oldrate', 1, 1, 'NSSF'),
(4, 'Minimum Paye', '24000.00', 'active', 1, 1, 'MinimumPaye');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(50) NOT NULL,
  `country` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `date` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `postedtime` varchar(60) NOT NULL,
  `userid` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `country`, `firstname`, `lastname`, `email`, `phone`, `date`, `description`, `postedtime`, `userid`) VALUES
(1, '', 'karen makena', 'kinoti', 'karenmakena3@gmail.com', '0702400635', '', 'hi i want to be a shujaa also', '2016-12-13 06:47:33am', '');

-- --------------------------------------------------------

--
-- Table structure for table `contactdetails`
--

CREATE TABLE IF NOT EXISTS `contactdetails` (
  `id` int(50) NOT NULL,
  `title` text NOT NULL,
  `website` text NOT NULL,
  `contactdetails` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `date` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `postedtime` varchar(60) NOT NULL,
  `userid` varchar(60) NOT NULL,
  `companyid` int(11) NOT NULL,
  `branchid` int(11) NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instagram` text NOT NULL,
  `linkedin` text NOT NULL,
  `youtube` text NOT NULL,
  `location` text NOT NULL,
  `aboutustitle` text NOT NULL,
  `aboutus` text NOT NULL,
  `whyustitle` text NOT NULL,
  `whyus` text NOT NULL,
  `whatsapp` text NOT NULL,
  `websites` text NOT NULL,
  `otherlinks` text NOT NULL,
  `termstitle` text NOT NULL,
  `terms` text NOT NULL,
  `deliverytitle` text NOT NULL,
  `delivery` text NOT NULL,
  `privacytitle` text NOT NULL,
  `privacy` text NOT NULL,
  `branches` text NOT NULL,
  `telegram` text NOT NULL,
  `otherlinktitle` text NOT NULL,
  `aboutuslogo` text NOT NULL,
  `businessname` text NOT NULL,
  `business` varchar(30) NOT NULL,
  `vision` text NOT NULL,
  `mission` text NOT NULL,
  `corevalues` text NOT NULL,
  `ourpromise` text NOT NULL,
  `returnpolicy` text NOT NULL,
  `workinghours` text NOT NULL,
  `updatedat` varchar(30) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `careertitle` text NOT NULL,
  `career` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactdetails`
--

INSERT INTO `contactdetails` (`id`, `title`, `website`, `contactdetails`, `email`, `phone`, `date`, `description`, `postedtime`, `userid`, `companyid`, `branchid`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `location`, `aboutustitle`, `aboutus`, `whyustitle`, `whyus`, `whatsapp`, `websites`, `otherlinks`, `termstitle`, `terms`, `deliverytitle`, `delivery`, `privacytitle`, `privacy`, `branches`, `telegram`, `otherlinktitle`, `aboutuslogo`, `businessname`, `business`, `vision`, `mission`, `corevalues`, `ourpromise`, `returnpolicy`, `workinghours`, `updatedat`, `updatedby`, `careertitle`, `career`) VALUES
(1, '', 'https://robisearch.com/', 'kinoti', 'karenmakena3@gmail.com', '0754413386, 0716413386,0780655987', '', 'We have from 01/07/2020 to 31/8/2010', '2016-12-13 06:47:33am', '1', 1, 0, 'https://web.facebook.com/Robiearch/', 'https://twitter.com/robisearch', 'https://www.linkedin.com/in/robert-manyala-995177122/', 'https://www.linkedin.com/in/robert-manyala-995177122/', 'https://www.youtube.com/channel/UC9Z1YpMKlCgwqn4H1nT1hLg/featured', 'Nairobi -Nara Fourth Floor,</br> Kisii-Oyondi Building', '<b>About Us </b>', 'Robisearch Ltd is an ICT company that begun in 2011 as a result of innovations that transform lives globally. We are a member of the Nairobi Chambers (KNCCI) organization.We have great experience in dealing with customers having handled over 500 clients in all Kenyan towns such as Juja, Nairobi, Mombasa and Kisumu as well as beyond the country.We provide our clients with adequate support thus providing more value to our customers .Our systems are customized to fit a clients particular need.We are the company behind various innovations like…..</br>', 'Why Us ', 'We have a well-organized support and maintenance structure that we will sign with you as a Service Level Agreement that guarantees you;', 'https://api.whatsapp.com/send?phone=254716413386&text=&source=&data=&app_absent=', '', 'POS.robisearch.com/', 'Terms and Condition ', 'karenmakena3@gmail.com', 'Delivery Information', 'Shipping Agents and Times</br>\r\n\r\nOur products ordered before 3pm are shipped within 24 Hours using the following carriers, Umash Bus Sacco, Easy Coach Sacco, North Rift Sacco or any other of your choice. Orders Placed in later hours are shipped on the following days</br>\r\nZipping Zones and Costs</br>\r\n\r\nOur shipping Zones are categorized into Coast Region, Rift Valley Region, Nairobi Region, North Easter Region and Nyanza Region. All orders to be collected at our shop are not chargeable any shipping cost. However all the other places we charge shipping cost depending with what our shipping agents charges; basically a shipping cost of between Ksh300- 400 applies except for regions within Nairobi County where a fee of roughly Ksh 150 – 200 applies. All shipping cost is subject to change without any notice.</br>', 'Privacy Details', 'PRIVACY POLICY</br>\r\n\r\nThis Privacy Policy explains what personal data is collected when you use the jiji.ng any jiji.ng mobile application, or website (“Jiji”, "Website", or "App") and the services provided through it (together with the Website and the App, the “Service”), how such personal data will be used, shared.</br>\r\n\r\nBY USING THE SERVICE, YOU PROMISE US THAT (I) YOU HAVE READ, UNDERSTOOD AND AGREED TO THIS PRIVACY POLICY, AND (II) YOU ARE OVER 16 YEARS OF AGE (OR HAVE HAD YOUR PARENT OR GUARDIAN READ AND AGREED TO THIS PRIVACY POLICY FOR YOU). If you do not agree or you are unable to make this promise, you must not use the Service. In such case, you must contact the support team via online chat or email to request deletion of your account and data.</br>\r\n\r\nProcess in respect of personal data, means to collect, store, and disclose to others.</br>\r\n\r\nTABLE OF CONTENTS</br>\r\n\r\n1. PERSONAL DATA CONTROLLER</br>\r\n\r\n2. CATEGORIES OF PERSONAL DATA WE COLLECT</br>\r\n\r\n3. FOR WHAT PURPOSES WE PROCESS PERSONAL DATA</br>\r\n\r\n4. AUTHORISED REQUIREMENT FOR PROCESSING YOUR PERSONAL DATA</br>\r\n\r\n5. WHO WE SHARE YOUR PERSONAL DATA WITH\r\n</br>\r\n6. HOW YOU CAN EXERCISE YOUR PRIVACY RIGHTS</br>\r\n\r\n7. AGE LIMITATION</br>\r\n\r\n8. CHANGES TO THIS PRIVACY POLICY</br>\r\n\r\n9. DATA RETENTION\r\n</br>\r\n10. CONTACT US</br>', 'Juja, Kisii', 'https://api.whatsapp.com/send?phone=254716413386&text=&source=&data=&app_absent=', 'POS LINK', '2147483647', 'Robisearch is an ICT business organization that deals ICT based solutions. We have been in the industry since 2011. Our main activity is software developement. ', 'ROBISEARCH LTD', '  Transforming the world through innovation', '  To be the best ICT company offering innovate services globally.', 'nnovation, Integrity, hardwork, commitment, honesty, equality, justice, fairness, love.', 'To Give the best services at all times', 'Return Policy</br>\r\n\r\nAll defined terms used below shall have the meanings set forth in our Terms and Conditions. If you are not happy with your purchase, we will accept a return of a unused product within 7 days. Once we receive the returned item Breejoz Baby Shop & Maternity Collections will then give a full refund (excluding shipping as we are unable to refund the initial shipping cost of your order). Please allow 1-2 weeks for your return to be processed.</br>', ' WORKING HOURS</br>\r\n\r\n    Mon 8:00am - 6:00pm</br>\r\n Tue 8:00am - 6:00pm</br>\r\n    Wed 8:00am - 6:00pm</br>\r\n    Thur 8:00am - 6:00pm</br>\r\n    Fri 8:00am - 6:00pm</br>\r\n    Sat 8:00am - 6:00pm</br>\r\n\r\n', '2020-07-04 08:44:24', 1, 'Job Vacancy', 'Join our sales team as online marketers');

-- --------------------------------------------------------

--
-- Table structure for table `county`
--

CREATE TABLE IF NOT EXISTS `county` (
  `id` int(40) NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincecode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `county`
--

INSERT INTO `county` (`id`, `code`, `name`, `provincecode`, `description`, `created_at`, `updated_at`) VALUES
(1, '1', 'Mombasa', '2', 'Mombasa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '2', 'Kwale', '2', 'Kwale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '3', 'Kilifi', '2', 'Kilifi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '4', 'Tana River', '2', 'Tana River', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '5', 'Lamu', '2', 'Lamu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '6', 'Taita-Taveta', '2', 'Taita-Taveta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '7', 'Garissa', '5', 'Garissa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '8', 'Wajir', '5', 'Wajir', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '9', 'Mandera', '5', 'Mandera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '10', 'Marsabit', '3', 'Marsabit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '11', 'Isiolo', '3', 'Isiolo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '12', 'Meru', '3', 'Meru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '13', 'Tharaka-Nithi', '3', 'Tharaka-Nithi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '14', 'Embu', '3', 'Embu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '15', 'Kitui', '3', 'Kitui', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '16', 'Machakos', '3', 'Machakos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '17', 'Makueni', '3', 'Makueni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '18', 'Nyandarua', '1', 'Nyandarua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '19', 'Nyeri', '1', 'Nyeri', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '20', 'Kirinyaga', '1', 'Kirinyaga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '21', 'Murang''a', '1', 'Murang''a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '22', 'Kiambu', '1', 'Kiambu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '23', 'Turkana', '7', 'Turkana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '24', 'West Pokot', '7', 'West Pokot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '25', 'Samburu', '7', 'Samburu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '26', 'Trans-Nzoia', '7', 'Trans-Nzoia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '27', 'Uasin Gishu', '7', 'Uasin Gishu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '28', 'Elgeyo-Marakwet', '7', 'Elgeyo-Marakwet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '29', 'Nandi', '7', 'Nandi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '30', 'Baringo', '7', 'Baringo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '31', 'Laikipia', '7', 'Laikipia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '32', 'Nakuru', '7', 'Nakuru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '33', 'Narok', '7', 'Narok', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '34', 'Kajiado', '7', 'Kajiado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '35', 'Kericho', '7', 'Kericho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '36', 'Bomet', '7', 'Bomet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '37', 'Kakamega', '8', 'Kakamega', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '38', 'Vihiga', '8', 'Vihiga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '39', 'Bungoma', '8', 'Bungoma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '40', 'Busia', '8', 'Busia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '41', 'Siaya', '6', 'Siaya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '42', 'Kisumu', '6', 'Kisumu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '43', 'Homa Bay', '6', 'Homa Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '44', 'Migori', '6', 'Migori', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '45', 'Kisii', '6', 'Kisii', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '46', 'Nyamira', '6', 'Nyamira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '47', 'Nairobi', '4', 'Nairobi', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `description`, `createdate`, `status`, `userid`, `updatedate`, `companyid`) VALUES
(1, 'Ksh', '', '2018-03-06 19:44:07pm', 'active', '1', '', '1'),
(2, 'URO', '', '', 'active', '', '', '1'),
(3, 'USD', '', '', 'active', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `business` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `createddate` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `website` varchar(100) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `idno` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `box` varchar(50) NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  `town` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `apiaccount_id` varchar(30) NOT NULL DEFAULT '1',
  `recoverpassword` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'new',
  `companyid` int(10) NOT NULL DEFAULT '1',
  `service` text NOT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `smstype` int(10) NOT NULL DEFAULT '2',
  `refer` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `surname`, `username`, `phone`, `business`, `county`, `createddate`, `password`, `website`, `dob`, `idno`, `description`, `box`, `source`, `town`, `country`, `updatedate`, `category`, `apiaccount_id`, `recoverpassword`, `status`, `companyid`, `service`, `usertype`, `smstype`, `refer`, `email`) VALUES
(1, 'robert', 'Nyambura', '', '0710597573', 'JUJA', '', '2020-04-17', '', 'http://127.0.0.1:86/pos.robisearch.com/agent', '', '2333333', 'Description / Message', '', 'Facebook', '', '', '', 'reseller', '1', '', '0', 1, 'Enter name of the product/service you need e.g POS, BULK SMS, BIOMETRIC, WEBSITE, COMPUTER, PRINETR etc', NULL, 2, '', ''),
(3, 'robert', 'Manyala', '', '0721150817', 'JKUAT', '', '2020-04-17', '', 'http://127.0.0.1:86/pos.robisearch.com/agent', '', '22434334', 'ok', '', 'Referal', '', '', '', 'reseller', '1', '', '0', 1, 'POS, BULK SMS, BIOMETRIC, WEBSITE,', NULL, 2, '', 'robisearch@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customerfiscalyear`
--

CREATE TABLE IF NOT EXISTS `customerfiscalyear` (
  `id` int(40) NOT NULL,
  `name` varchar(60) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `companyid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `opening` decimal(10,2) NOT NULL,
  `closing` decimal(10,2) NOT NULL,
  `priority` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  `branchid` int(11) NOT NULL DEFAULT '1',
  `category` varchar(20) NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customersupplierbalance`
--

CREATE TABLE IF NOT EXISTS `customersupplierbalance` (
  `id` int(40) NOT NULL,
  `description` varchar(60) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `companyid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `opening` decimal(10,2) NOT NULL,
  `closing` decimal(10,2) NOT NULL,
  `priority` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  `branchid` int(11) NOT NULL DEFAULT '1',
  `customerid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dailycharges`
--

CREATE TABLE IF NOT EXISTS `dailycharges` (
  `id` int(100) NOT NULL,
  `chargeid` int(11) NOT NULL,
  `plotno` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `companyid` varchar(30) NOT NULL,
  `houseno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dailycollections`
--

CREATE TABLE IF NOT EXISTS `dailycollections` (
  `id` int(40) NOT NULL,
  `idno` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` varchar(50) NOT NULL,
  `createdat` varchar(50) NOT NULL,
  `updatedat` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL,
  `balance` varchar(30) NOT NULL,
  `mpesa` varchar(30) NOT NULL,
  `card` varchar(30) NOT NULL,
  `credit` varchar(30) NOT NULL,
  `voucher` varchar(10) NOT NULL,
  `cheque` varchar(30) NOT NULL,
  `points` varchar(30) NOT NULL,
  `controller` varchar(30) NOT NULL,
  `expense` varchar(30) NOT NULL,
  `cash` varchar(30) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `entrydate` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `transactioncode` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'active',
  `tax` decimal(10,2) NOT NULL,
  `sort` decimal(10,2) NOT NULL,
  `sortmoney` decimal(10,2) NOT NULL,
  `transactiondate` varchar(30) NOT NULL,
  `branchid` int(11) NOT NULL,
  `openingbalance` decimal(10,2) NOT NULL,
  `closingbalance` decimal(10,2) NOT NULL,
  `cashcollected` decimal(10,2) NOT NULL,
  `totalsales` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dailytasks`
--

CREATE TABLE IF NOT EXISTS `dailytasks` (
  `id` int(30) NOT NULL,
  `branchid` int(11) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'active',
  `userid` int(30) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `companyid` int(11) NOT NULL,
  `updateddate` varchar(40) NOT NULL,
  `taskid` int(11) NOT NULL,
  `achieved` varchar(20) NOT NULL,
  `period` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `exactdate` varchar(30) NOT NULL,
  `day` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `updatedby` int(11) NOT NULL,
  `mykey` varchar(50) NOT NULL,
  `approval` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Add or sub entitlement for employees or contracts';

-- --------------------------------------------------------

--
-- Table structure for table `damages`
--

CREATE TABLE IF NOT EXISTS `damages` (
  `id` int(10) NOT NULL,
  `expendituretype` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `datedamaged` varchar(50) NOT NULL,
  `incharge` varchar(40) NOT NULL,
  `product` text NOT NULL,
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(30) NOT NULL,
  `entrydate` varchar(50) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `original` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE IF NOT EXISTS `deals` (
  `id` int(50) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `nextstep` text NOT NULL,
  `contactname` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `fromdate` datetime NOT NULL,
  `todate` datetime NOT NULL,
  `probability` varchar(100) NOT NULL,
  `expectedrevenue` varchar(100) NOT NULL,
  `stage` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `comments` text NOT NULL,
  `userid` varchar(100) NOT NULL,
  `dateposted` datetime NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `allsteps` text NOT NULL,
  `dealowner` varchar(30) NOT NULL,
  `branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `debitcredit`
--

CREATE TABLE IF NOT EXISTS `debitcredit` (
  `id` int(30) NOT NULL,
  `account` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `crateddate` datetime NOT NULL,
  `debit` decimal(10,2) DEFAULT NULL,
  `credit` decimal(10,2) DEFAULT NULL,
  `balance` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `companyid` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `branch` varchar(30) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `refno` varchar(30) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `confirm` varchar(30) NOT NULL DEFAULT 'No',
  `updatedat` varchar(30) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `transactioncode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
  `id` int(11) NOT NULL,
  `itemid` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'new',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `code` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `buyingprice` decimal(10,2) NOT NULL,
  `sellingprice` decimal(10,2) NOT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `serial` varchar(50) NOT NULL,
  `orderno` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `batchno` int(11) NOT NULL,
  `myid` int(50) NOT NULL,
  `staff` int(11) NOT NULL,
  `shipping` decimal(10,2) NOT NULL,
  `commission` decimal(10,2) NOT NULL,
  `ordereddate` varchar(50) NOT NULL,
  `supplier` int(11) NOT NULL DEFAULT '1',
  `profit` varchar(20) NOT NULL,
  `commissionrate` varchar(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `mode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(50) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `faculty_id`, `created_at`, `updated_at`) VALUES
(1, 'IT ', 'IT ', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Finance', 'Finance', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE IF NOT EXISTS `device` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id`, `name`, `description`, `createdate`, `status`, `userid`, `updatedate`, `companyid`) VALUES
(1, '101', '', '2019-06-10 09:49:10am', 'active', '1', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `distribution`
--

CREATE TABLE IF NOT EXISTS `distribution` (
  `id` int(11) NOT NULL,
  `itemid` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'new',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `code` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `buyingprice` decimal(10,2) NOT NULL,
  `sellingprice` decimal(10,2) NOT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `serial` varchar(50) NOT NULL,
  `orderno` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `batchno` int(11) NOT NULL,
  `myid` int(50) NOT NULL,
  `staff` int(11) NOT NULL,
  `shipping` decimal(10,2) NOT NULL,
  `commission` decimal(10,2) NOT NULL,
  `ordereddate` varchar(50) NOT NULL,
  `supplier` int(11) NOT NULL DEFAULT '1',
  `profit` varchar(20) NOT NULL,
  `commissionrate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `id` int(30) NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `countyid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `provincecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(50) NOT NULL,
  `documentname` varchar(100) NOT NULL,
  `idno` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `dateposted` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `userid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `entrydate` varchar(50) NOT NULL,
  `img_id` varchar(100) NOT NULL,
  `companyid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_accounts`
--

CREATE TABLE IF NOT EXISTS `email_accounts` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `smtp_host` varchar(50) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `server` int(11) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `protocol` varchar(30) NOT NULL DEFAULT 'smtp'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_accounts`
--

INSERT INTO `email_accounts` (`id`, `email`, `password`, `smtp_host`, `smtp_port`, `userid`, `companyid`, `name`, `server`, `createdate`, `protocol`) VALUES
(1, 'marketing@mombasacontinental.com', 'Pass@123', 'mail.mombasacontinental.com', 587, 1, 465, 'ROBISEARCH LTD/TASK MANAGER', 1, '', 'mail/smtp'),
(2, 'support@robisearch.com', 'support!@##@!', 'ssl://mail.robisearch.com', 465, 1, 1, 'ROBISEARCH LTD/TASK MANAGER', 2, '2019-06-23 05:28:28pm', 'smtp'),
(3, 'oukobert@gmail.com', '0718667391', 'ssl://smtp.googlemail.com', 465, 1, 1, 'robisearch', 1, '2019-11-04 11:00:33am', 'smtp');

-- --------------------------------------------------------

--
-- Table structure for table `employeecharges`
--

CREATE TABLE IF NOT EXISTS `employeecharges` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'Minus',
  `amountmode` varchar(20) NOT NULL,
  `qtymode` varchar(20) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `memberid` int(11) NOT NULL,
  `statutory` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employeepayments`
--

CREATE TABLE IF NOT EXISTS `employeepayments` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'Minus',
  `amountmode` varchar(20) NOT NULL,
  `qtymode` varchar(20) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `memberid` int(11) NOT NULL,
  `salaryid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `fromdate` varchar(50) NOT NULL,
  `todate` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `participants` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'new',
  `comments` text NOT NULL,
  `repeated` varchar(50) NOT NULL,
  `dateposted` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `companyid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `dateposted` datetime NOT NULL,
  `user` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  `datespent` datetime NOT NULL,
  `receiptno` varchar(100) NOT NULL,
  `idno` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `imgid` varchar(100) NOT NULL,
  `img_id` text NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `accounttype` varchar(50) NOT NULL,
  `bankname` varchar(60) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `paymentmethodes` varchar(30) NOT NULL,
  `duedate` varchar(30) NOT NULL,
  `terms` text NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `updatedat` varchar(30) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `branchid` int(11) NOT NULL DEFAULT '1',
  `allocation` varchar(20) NOT NULL DEFAULT 'No',
  `invoicestatus` varchar(20) NOT NULL DEFAULT 'No',
  `allocationtext` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `type`, `userid`, `amount`, `description`, `dateposted`, `user`, `status`, `datespent`, `receiptno`, `idno`, `contact`, `controller`, `imgid`, `img_id`, `companyid`, `accounttype`, `bankname`, `supplier`, `invoice`, `paymentmethodes`, `duedate`, `terms`, `balance`, `paid`, `updatedat`, `updatedby`, `branchid`, `allocation`, `invoicestatus`, `allocationtext`) VALUES
(1, 'Expense', '1', '0', 'Opening balance', '2020-08-11 13:25:49', '', 'Active', '2020-08-11 13:25:49', '', '', '254795602114', 'ROBERT', '6608691597141532', '6608691597141532', '1', '', '1050', '3', '11597141527', 'n/a', '', '', '0.00', '0.00', '', 0, 1, 'No', 'No', '');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(50) NOT NULL,
  `companyid` varchar(60) NOT NULL,
  `title` text NOT NULL,
  `answers` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `date` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `postedtime` varchar(60) NOT NULL,
  `userid` varchar(60) NOT NULL,
  `invoice` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `companyid`, `title`, `answers`, `email`, `phone`, `date`, `description`, `postedtime`, `userid`, `invoice`) VALUES
(1, '1', 'Do you work on weekend', 'YES', 'karenmakena3@gmail.com', '0702400635', '', 'hi i want to be a shujaa also', '2016-12-13 06:47:33am', '', 0),
(2, '1', 'Can You deliver anywhere in Kenya', 'Yes  we do withing 48 hours outside Nairobi', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fingers`
--

CREATE TABLE IF NOT EXISTS `fingers` (
  `id` int(100) NOT NULL,
  `admno` varchar(200) NOT NULL,
  `fingername` varchar(50) NOT NULL,
  `regdate` varchar(100) NOT NULL,
  `template` text NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fiscalyear`
--

CREATE TABLE IF NOT EXISTS `fiscalyear` (
  `id` int(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `companyid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `opening` decimal(10,2) NOT NULL,
  `closing` decimal(10,2) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fiscalyear`
--

INSERT INTO `fiscalyear` (`id`, `name`, `status`, `startdate`, `enddate`, `companyid`, `userid`, `createdate`, `opening`, `closing`, `priority`) VALUES
(1, '2020 Fiscal Year', 'active', '2020-01-01 00:00:00', '2020-12-31 23:59:00', 1, 1, '2020-06-22 08:06:29', '100.00', '0.00', 0),
(2, '2021 Fiscal Year', 'active', '2021-01-01 00:00:00', '2021-12-31 23:59:59', 1, 1, '2020-06-22 21:56:17', '5000.00', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `followups`
--

CREATE TABLE IF NOT EXISTS `followups` (
  `id` int(30) NOT NULL,
  `date` varchar(50) NOT NULL,
  `followupid` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'newstock',
  `companyid` varchar(100) NOT NULL,
  `nextdate` datetime NOT NULL,
  `feedback` text NOT NULL,
  `recommendation` text NOT NULL,
  `challanges` text NOT NULL,
  `level` varchar(50) NOT NULL,
  `branchid` int(11) NOT NULL,
  `finalid` varchar(50) NOT NULL,
  `dateposted` datetime NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'Deal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `glaccounts`
--

CREATE TABLE IF NOT EXISTS `glaccounts` (
  `id` int(30) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `accounttype` varchar(50) NOT NULL,
  `accountname` varchar(80) NOT NULL,
  `bankname` varchar(50) NOT NULL,
  `openingdate` varchar(50) NOT NULL,
  `description` int(11) NOT NULL,
  `accountstatus` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `currency` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `glaccounts`
--

INSERT INTO `glaccounts` (`id`, `userid`, `companyid`, `accounttype`, `accountname`, `bankname`, `openingdate`, `description`, `accountstatus`, `amount`, `createdate`, `number`, `currency`) VALUES
(30, '1', '1', '1', 'Cash', '', '2018-07-20 13:23:56', 1, '', '-3000', '2020-07-13 15:38:56', 1000, '1'),
(31, '1', '1', '1', 'Mpesa', '', '2020-05-10 17:24:37', 1, '', '-2000', '2020-05-10 17:28:13', 1010, '1'),
(33, '351', '1', '1', 'KCB account', '', '2018-06-01', 1, '', '-87000', '2019-07-30 19:18:31', 1030, '1'),
(34, '1', '1', '6', 'Accounts receivable', '', '2018-06-01', 1, '', '0', '2020-01-07 05:46:09', 1100, ''),
(35, '351', '1', '6', 'Inventory assets', '', '2018-07-20 13:29:27', 1, '', '0', '2019-07-20 23:18:46', 1110, '1'),
(36, '2', '1', '6', 'checking account', '', '2018-07-20 14:14:59', 1, '', '0', '2018-07-20 14:15:36pm', 1120, 'KES'),
(37, '351', '1', '6', 'Tax Assets', '', '2018-07-20 14:15:37', 1, '', '0', '2019-07-20 13:01:36', 1130, ''),
(38, '2', '1', '6', 'loans & advances', '', '2018-07-20 14:17:01', 1, '', '0', '2018-07-20 14:18:41pm', 1140, 'KES'),
(39, '2', '1', '6', 'securities & deposits', '', '2018-07-20 14:18:42', 1, '', '0', '2018-07-20 14:19:49pm', 1150, 'KES'),
(40, '351', '1', '6', 'Allowance for doubtful accounts', '', '2018-07-20 14:19:50', 1, '', '0', '2019-07-20 12:05:22', 1160, ''),
(41, '351', '1', '6', 'Prepayments', '', '2018-07-20 14:37:09', 1, '', '0', '2019-07-20 13:03:33', 1170, ''),
(44, '351', '1', '6', 'Salary advances', '', '2018-07-20 14:42:02', 1, '', '0', '2019-07-20 12:58:57', 1200, ''),
(45, '351', '1', '7', 'Land', '', '2018-07-20 14:43:05', 1, '', '0', '2019-07-20 13:00:33', 1500, ''),
(46, '351', '1', '7', 'Motor Vehicle', '', '2018-07-20 15:05:47', 1, '', '0', '2019-07-20 13:04:35', 1510, ''),
(47, '1', '1', '27', 'Softwares', '', '2018-07-20 15:06:36', 4, '', '0', '2019-10-28 05:41:59', 1520, ''),
(48, '351', '1', '7', 'Buildings', '', '2018-07-20 15:07:38', 1, '', '0', '2019-07-20 13:07:02', 1530, ''),
(49, '351', '1', '7', 'Plants & Machinery', '', '2018-07-20 15:09:21', 1, '', '0', '2019-07-20 13:08:16', 1540, ''),
(50, '351', '1', '7', 'Office Equipments', '', '2018-07-20 15:13:54', 1, '', '0', '2019-07-20 13:09:35', 1550, ''),
(51, '351', '1', '7', 'Furnitures & Fixtures', '', '2018-07-20 15:18:17', 1, '', '0', '2019-07-20 13:10:29', 1560, ''),
(52, '351', '1', '7', 'Depreciation ', '117', '2018-07-20 15:20:15', 1, '', '0', '2019-07-20 13:13:53', 1570, ''),
(53, '351', '1', '7', 'Depletable assets', '', '2018-07-20 15:21:07', 1, '', '0', '2019-07-20 13:30:32', 1580, '1'),
(54, '351', '1', '7', 'Leasehold improvements', '', '2018-07-20 15:22:55', 1, '', '0', '2019-07-20 13:36:59', 1590, ''),
(55, '351', '1', '7', 'Accumulated depreciation', '', '2018-07-20 15:23:48', 1, '', '0', '2019-07-20 13:17:21', 1600, ''),
(57, '351', '1', '9', 'Capital ', '', '2018-07-20 15:43:54', 1, '', '0', '2019-07-20 14:18:04', 1800, ''),
(58, '416', '1', '29', 'Office purchases', '', '2018-07-20 16:02:41', 5, '', '0', '2019-10-16 17:53:18', 1850, ''),
(59, '2', '1', '8', 'stock of raw materials', '', '2018-07-20 16:04:29', 1, '', '0', '2018-07-20 16:07:35pm', 1860, 'KES'),
(63, '351', '1', '14', 'Loan payable', '', '2018-07-23 12:06:08', 2, '', '0', '2019-07-20 14:11:32', 2000, ''),
(64, '351', '1', '14', 'Dividends payable', '', '2018-07-23 12:33:51', 2, '', '0', '2019-07-20 15:08:15', 2010, '1'),
(65, '2', '1', '14', 'Income tax payable', '', '2018-07-23 12:35:15', 2, '', '0', '2018-07-23 12:36:09pm', 2020, 'KES'),
(66, '351', '1', '14', 'Accrued Expenses Payable ', '', '2018-07-23 12:36:09', 2, '', '0', '2019-07-20 13:33:39', 2030, '1'),
(67, '351', '1', '14', 'Payroll Liabilities', '', '2018-07-23 12:37:11', 2, '', '0', '2019-07-20 13:24:33', 2040, ''),
(68, '351', '1', '14', 'Current tax liability', '', '2018-07-23 12:37:58', 2, '', '0', '2019-07-20 15:10:18', 2050, '1'),
(69, '351', '1', '14', 'Client trust accounts', '', '2018-07-23 12:38:55', 2, '', '0', '2019-07-20 15:11:06', 2060, ''),
(70, '351', '1', '14', 'Insurance payable', '', '2018-07-23 12:39:33', 2, '', '0', '2019-07-20 15:12:04', 2070, ''),
(72, '351', '1', '14', 'Sales & services tax payable', '', '2018-07-23 12:40:58', 2, '', '0', '2019-07-20 15:14:57', 2090, ''),
(74, '351', '1', '14', 'Bank Overdraft', '', '2018-07-23 12:43:29', 2, '', '0', '2019-07-20 13:52:34', 2110, '1'),
(75, '351', '1', '14', 'Current portion of obligations under finance leases', '', '2018-07-23 12:44:39', 2, '', '0', '2019-07-20 15:19:30', 2120, ''),
(76, '351', '1', '15', 'Long term debt', '', '2018-07-23 12:57:42', 2, '', '0', '2019-07-20 15:16:19', 2500, ''),
(78, '351', '1', '15', 'Notes payable', '', '2018-07-23 13:00:31', 2, '', '0', '2019-07-20 13:58:01', 2510, ''),
(79, '351', '1', '15', 'Liabilities related to assets held for sale', '', '2018-07-23 13:01:58', 2, '', '0', '2019-07-20 15:28:14', 2520, '1'),
(80, '2', '1', '15', 'shareholder notes payable', '', '2018-07-23 13:02:46', 2, '', '0', '2018-07-23 13:04:38pm', 2530, 'KES'),
(81, '351', '1', '15', 'Accrued non-current liabilities', '', '2018-07-23 13:04:38', 2, '', '0', '2019-07-22 09:45:51', 2540, ''),
(82, '2', '1', '15', 'accrued holiday payable', '', '2018-07-23 13:15:07', 2, '', '0', '2018-07-23 13:19:53pm', 2550, 'KES'),
(83, '2', '1', '26', 'ordinary shares', '', '2018-07-23 13:54:16', 3, '', '0', '2018-07-23 13:55:37pm', 3000, 'KES'),
(84, '1', '1', '26', 'opening balance Equity', '', '2018-07-23 13:55:37', 3, '', '-50000', '2020-05-09 20:15:00', 3010, ''),
(85, '2', '1', '26', 'partner contributions', '', '2018-07-23 13:56:29', 3, '', '0', '2018-07-23 13:57:14pm', 3020, 'KES'),
(86, '2', '1', '26', 'share capital', '', '2018-07-23 13:57:15', 3, '', '0', '2018-07-23 13:59:17pm', 3030, 'KES'),
(87, '2', '1', '26', 'capital stock', '', '2018-07-23 13:59:18', 3, '', '0', '2018-07-23 14:00:06pm', 3040, 'KES'),
(89, '351', '1', '26', 'Dividend disbursed', '', '2018-07-23 14:00:07', 3, '', '0', '2019-07-22 09:44:29', 3050, ''),
(90, '2', '1', '26', 'other comprehensive income', '', '2018-07-23 14:05:14', 3, '', '0', '2018-07-23 14:06:04pm', 3060, 'KES'),
(91, '2', '1', '26', 'retained earnings', '', '2018-07-23 14:06:06', 3, '', '0', '2018-07-23 14:06:41pm', 3070, 'KES'),
(92, '2', '1', '26', 'paid in capital', '', '2018-07-23 14:06:42', 3, '', '0', '2018-07-23 14:08:06pm', 3080, 'KES'),
(93, '2', '1', '26', 'equity in earnings of subsidiaries', '', '2018-07-23 14:08:07', 3, '', '0', '2018-07-23 14:09:00pm', 3090, 'KES'),
(94, '351', '1', '27', 'Sales', '', '2018-06-01', 4, '', '0', '2019-07-23 11:30:51', 4000, ''),
(95, '351', '1', '27', 'Maintainance/Training fees', '94', '2018-07-23 14:09:38', 4, '', '0', '2019-07-20 15:53:04', 4010, ''),
(97, '351', '1', '30', 'expenses included in valuation', '', '2018-06-01 ', 5, '', '0', '2019-07-23 11:33:52', 5010, ''),
(98, '351', '1', '30', 'stock adjustment', '', '2018-07-23 14:27:39', 5, '', '0', '2019-07-20 17:25:59', 5020, ''),
(99, '1', '1', '8', 'Cost of Good sold', '', '2018-07-01', 5, '', '0', '2020-05-11 09:26:16', 5500, ''),
(100, '351', '1', '29', 'Transport', '', '2018-06-01', 5, '', '0', '2019-07-23 11:27:46', 5510, ''),
(101, '351', '1', '29', 'Rent Expenses', '', '2018-07-23 14:33:51', 5, '', '0', '2019-07-20 17:40:22', 5520, ''),
(102, '351', '1', '29', 'Utilities', '', '2018-07-23 14:34:24', 5, '', '0', '2019-07-20 17:42:59', 5530, '1'),
(103, '351', '1', '29', 'Advertisements', '', '2018-07-23 14:34:52', 5, '', '0', '2019-07-20 17:47:48', 5540, '1'),
(104, '351', '1', '29', 'Salary Costs', '', '2018-07-23 14:35:41', 5, '', '50000', '2019-07-20 20:26:30', 5550, ''),
(105, '1', '1', '29', 'Staff Costs', '', '2020-07-23 14:36:42', 5, '', '0', '2020-06-30 21:02:43', 5560, '1'),
(106, '351', '1', '29', 'Staff Uniforms', '105', '2018-07-23 14:37:26', 5, '', '0', '2019-07-20 20:43:01', 5561, '1'),
(107, '351', '1', '29', 'Staff Welfare ', '105', '2018-07-23 14:38:50', 5, '', '0', '2019-07-20 20:47:45', 5562, '1'),
(114, '351', '1', '29', 'Training Fees', '', '2018-07-23 14:46:18', 5, '', '0', '2019-07-20 21:00:54', 5650, '1'),
(115, '351', '1', '29', 'Marketing expenses', '', '2018-07-23 14:47:47', 5, '', '0', '2019-07-20 20:59:00', 5660, ''),
(118, '351', '1', '29', 'Bid Bond Charges', '120', '2018-07-23 14:51:10', 5, '', '0', '2019-07-20 21:51:57', 5711, '1'),
(119, '351', '1', '29', 'Bank Service Charges ', '', '2018-07-23 14:54:26', 5, '', '0', '2019-07-20 21:24:05', 5700, '1'),
(120, '351', '1', '29', 'Tender expenses', '', '2018-07-23 14:55:12', 5, '', '0', '2019-07-20 21:49:11', 5710, ''),
(122, '351', '1', '29', 'Outsourced Printing & Scanning', '', '2018-07-23 15:02:34', 5, '', '0', '2019-07-20 21:55:42', 5730, ''),
(123, '351', '1', '30', 'Commission on sales', '', '2018-07-23 15:03:42', 5, '', '0', '2019-07-20 21:56:36', 5740, '1'),
(124, '351', '1', '29', 'Accomodation', '', '2018-07-23 15:04:46', 5, '', '0', '2019-07-20 21:58:04', 5750, ''),
(125, '351', '1', '29', 'Professional /Legal expenses', '', '2018-07-23 15:05:55', 5, '', '0', '2019-07-20 22:28:51', 5760, '1'),
(126, '351', '1', '28', 'Postage & Delivery', '', '2018-07-23 15:06:59', 4, '', '0', '2019-07-20 22:00:51', 5770, '1'),
(127, '351', '1', '29', 'Repairs & Maintenance', '', '2018-07-23 15:07:48', 5, '', '0', '2019-07-20 22:02:26', 5780, ''),
(128, '351', '1', '29', 'Depreciation Expense', '', '2018-07-23 15:08:24', 5, '', '0', '2019-07-20 22:03:48', 5790, ''),
(129, '351', '1', '29', 'Miscellaneous', '', '2018-07-23 15:09:39', 5, '', '0', '2019-07-20 22:05:47', 5800, ''),
(130, '351', '1', '27', 'Point of sale', '94', '2018-06-01 ', 4, '', '0', '2019-08-08 09:12:19', 4020, ''),
(131, '351', '1', '27', 'Bulk Sms', '94', '2018-07-23 15:12:25', 4, '', '0', '2019-07-20 15:56:23', 4030, '1'),
(132, '351', '1', '27', 'property management System', '94', '2018-07-23 15:13:09', 4, '', '0', '2019-07-20 16:16:00', 4040, '1'),
(133, '351', '1', '27', 'Biometric system', '94', '2018-07-23 15:13:41', 4, '', '0', '2019-07-20 16:14:44', 4050, '1'),
(134, '351', '1', '27', 'school management System', '94', '2018-07-23 15:14:35', 4, '', '0', '2019-07-20 16:17:38', 4060, '1'),
(135, '351', '1', '27', 'Hospital management System', '94', '2018-07-23 15:15:15', 4, '', '0', '2019-07-20 16:19:26', 4070, ''),
(136, '351', '1', '27', 'Website Development', '94', '2018-07-23 15:16:03', 4, '', '0', '2019-07-20 16:25:53', 4080, '1'),
(137, '351', '1', '27', 'Pos Upgrade', '94', '2018-07-23 15:16:38', 4, '', '0', '2019-07-20 16:27:18', 4090, ''),
(139, '351', '1', '27', 'Hardware', '94', '2018-07-23 15:18:10', 4, '', '0', '2019-07-20 16:49:09', 4110, '1'),
(140, '351', '1', '27', 'Graphic Design', '94', '2018-07-23 15:18:56', 4, '', '0', '2019-07-20 16:50:40', 4120, '1'),
(141, '351', '1', '27', 'Thermal rolls', '94', '2018-07-23 15:19:38', 4, '', '0', '2019-07-20 16:54:33', 4130, '1'),
(143, '479', '1', '1', 'Paybill', '', '2018-07-26 12:58:21', 1, '', '0', '2019-01-18 17:14:27', 1020, '1'),
(144, '351', '1', '14', 'Account payable', '', '2018-06-01', 2, '', '0', '2019-07-23 11:29:59', 2130, ''),
(148, '351', '1', '1', 'Director''s Account', '', '2018-06-01', 1, '', '0', '2019-08-22 08:43:26', 1040, '1'),
(151, '351', '1', '8', 'Hardware', '58', '2018-10-30 09:48:11', 5, '', '0', '2019-09-04 10:25:47', 1851, '1'),
(152, '351', '1', '27', 'Labour Fees', '94', '2018-11-01 12:09:21', 4, '', '0', '2019-07-20 16:57:21', 4160, '1'),
(154, '351', '1', '29', 'Supplies', '156', '2018-11-05 16:43:21', 5, '', '0', '2019-07-18 14:43:13', 5900, '1'),
(155, '351', '1', '29', 'Cleaning', '156', '2018-11-05 16:46:57', 5, '', '0', '2019-07-18 14:28:52', 5910, '1'),
(156, '351', '1', '29', 'Office Expenses', '', '2018-11-05 16:47:29', 5, '', '0', '2019-07-18 14:15:56', 5920, '1'),
(157, '351', '1', '27', 'Management Information System', '94', '2019-01-31 16:43:09', 4, '', '0', '2019-07-20 16:58:11', 4170, '1'),
(158, '351', '1', '29', 'Mpesa  charges', '', '2019-05-25 12:20:26', 5, '', '0', '2019-07-20 22:26:12', 5930, '1'),
(159, '351', '1', '1', 'Petty cash', '', '2019-06-01', 1, '', '0', '2019-08-22 15:25:29', 1050, '1'),
(160, '351', '1', '29', 'Discount Allowed', '', '2019-07-08 ', 5, '', '0', '2019-07-20 23:17:13', 5030, '1'),
(161, '351', '1', '6', 'Withholding Tax', '', '2019-07-20 13:24:34', 1, '', '0', '2019-07-20 13:28:18', 1210, ''),
(162, '351', '1', '6', 'Discount Recieved', '', '2019-07-20 13:28:19', 1, '', '0', '2019-07-20 13:29:38', 1220, '1'),
(163, '351', '1', '6', 'Accrued Income Receivable ', '', '2019-07-20 13:33:40', 1, '', '0', '2019-07-20 13:36:05', 1230, '1'),
(164, '351', '1', '14', 'NHIF', '67', '2019-07-20 14:03:52', 2, '', '0', '2019-07-20 14:06:21', 2041, '1'),
(165, '351', '1', '14', 'NSSF', '67', '2019-07-20 14:06:22', 2, '', '0', '2019-07-20 14:07:21', 2042, ''),
(166, '351', '1', '14', 'PAYE', '67', '2019-07-20 14:07:21', 2, '', '0', '2019-07-20 14:08:21', 2043, '1'),
(167, '351', '1', '14', 'Net Pay', '', '2019-07-20 14:08:21', 2, '', '0', '2019-07-20 14:10:20', 2045, ''),
(168, '351', '1', '27', 'Bulk Sms Account Set Up', '131', '2019-07-20 15:56:24', 4, '', '0', '2019-07-20 16:07:37', 4031, '1'),
(169, '351', '1', '27', 'Bulk Sms Branding', '131', '2019-07-20 16:07:38', 4, '', '0', '2019-07-20 16:09:27', 4032, ''),
(170, '1', '1', '27', 'Bulk Sms Recharge', '131', '2019-07-20 16:09:28', 4, '', '0', '2019-10-26 13:53:32', 4033, '1'),
(171, '351', '1', '27', 'Hotel Accommodation System', '94', '2019-07-20 16:19:27', 4, '', '0', '2019-07-20 16:23:52', 4100, '1'),
(172, '351', '1', '27', 'Miscellaneous Income', '94', '2019-07-20 16:58:12', 4, '', '0', '2019-07-20 17:00:06', 4180, '1'),
(173, '351', '1', '27', 'Mpesa Intergration', '94', '2019-07-20 17:00:07', 4, '', '0', '2019-07-20 17:02:30', 4190, '1'),
(174, '351', '1', '27', 'Biometric Bulk Sms Intergration', '94', '2019-07-20 17:02:31', 4, '', '0', '2019-07-20 17:38:53', 4195, ''),
(175, '351', '1', '8', 'Thermal rolls', '58', '2019-07-20 17:32:58', 5, '', '0', '2019-09-04 10:26:06', 1852, '1'),
(176, '351', '1', '29', 'Electricity', '102', '2019-07-20 17:42:59', 5, '', '0', '2019-07-20 17:44:30', 5531, '1'),
(177, '351', '1', '29', 'Water', '102', '2019-07-20 17:44:31', 5, '', '0', '2019-07-20 17:45:22', 5532, '1'),
(178, '351', '1', '29', 'Wages/Overtime', '104', '2019-07-20 20:26:31', 5, '', '0', '2019-07-20 20:29:49', 5551, '1'),
(179, '1', '1', '29', 'Staff Airtime', '105', '2020-07-20 20:47:45', 5, '', '0', '2020-06-30 21:03:42', 5563, '1'),
(180, '1', '1', '29', 'Medical Expenses ', '105', '2019-07-20 20:50:12', 5, '', '0', '2020-06-30 22:16:41', 5566, '1'),
(181, '351', '1', '29', 'NSSF-Employer', '105', '2019-07-20 20:51:37', 5, '', '0', '2019-07-20 20:53:29', 5565, '1'),
(182, '351', '1', '29', 'Meal Expenses ', '', '2019-07-20 22:28:52', 5, '', '0', '2019-07-20 22:48:43', 5250, '1'),
(183, '351', '1', '29', 'Refunds', '', '2019-07-20 22:48:44', 5, '', '0', '2019-07-20 22:49:44', 5240, '1'),
(184, '351', '1', '30', 'Loss on Disposal of fixed Assets ', '', '2019-07-20 22:49:45', 5, '', '0', '2019-07-20 22:53:18', 5220, '1'),
(185, '351', '1', '29', 'Internet Expenses ', '', '2019-07-20 22:53:19', 5, '', '0', '2019-07-20 22:56:13', 5200, ''),
(186, '351', '1', '29', 'Telephone  Expenses ', '', '2019-07-20 22:56:14', 5, '', '0', '2019-07-20 22:57:42', 5210, '1'),
(187, '351', '1', '29', 'Dues & Subscriptions', '', '2019-07-20 22:57:43', 5, '', '0', '2019-07-20 23:02:13', 5180, '1'),
(188, '351', '1', '29', 'Donations', '', '2019-07-20 23:02:14', 5, '', '0', '2019-07-20 23:03:34', 5170, '1'),
(189, '351', '1', '29', 'Chaitable Donations', '188', '2019-07-20 23:03:35', 5, '', '0', '2019-07-20 23:04:51', 5171, '1'),
(190, '351', '1', '29', 'Non-Charitable Donations', '188', '2019-07-20 23:04:52', 5, '', '0', '2019-07-20 23:08:00', 5172, '1'),
(191, '351', '1', '29', 'Business Licences & Permits ', '', '2019-07-20 23:08:01', 5, '', '0', '2019-07-20 23:09:26', 5960, '1'),
(192, '351', '1', '29', 'Bad debts written off', '', '2019-07-20 23:09:27', 5, '', '0', '2019-07-20 23:10:42', 5950, '1'),
(193, '351', '1', '29', 'Bad debts ', '', '2019-07-20 23:10:43', 5, '', '0', '2019-07-20 23:11:35', 5940, '1'),
(194, '351', '1', '27', 'suspense Income A/C', '', '2019-07-22 22:00:00', 4, '', '0', '2019-07-27 17:14:05', 4050, '1'),
(195, '351', '1', '29', 'suspense Expense A/C', '', '2019-07-22 22:05:38', 5, '', '0', '2019-07-27 17:15:19', 5040, '1'),
(196, '351', '1', '34', 'Opening Balance', '', '2018-06-01', 4, '', '0', '2019-07-30 09:29:55', 1060, '1'),
(197, '351', '1', '29', 'CCTV Installation fee', '', '2018-06-01', 5, '', '0', '2019-08-21 10:15:30', 5190, '1'),
(198, '351', '1', '29', 'Director''s Expenses', '', '2018-06-01', 5, '', '0', '2019-08-23 14:53:11', 5720, '1'),
(199, '351', '1', '29', 'Staff Allowance', '105', '2019-06-01 ', 5, '', '-521', '2019-10-01 15:22:06', 5564, '1'),
(200, '351', '1', '1', 'KCB 2 account', '', '2019-10-01 11:49:23', 1, '', '-40600', '2019-10-23 11:51:03', 1035, '1');

-- --------------------------------------------------------

--
-- Table structure for table `glfiscalyear`
--

CREATE TABLE IF NOT EXISTS `glfiscalyear` (
  `id` int(40) NOT NULL,
  `name` varchar(60) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `companyid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `opening` decimal(10,2) NOT NULL,
  `closing` decimal(10,2) NOT NULL,
  `priority` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  `branchid` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `glfiscalyear`
--

INSERT INTO `glfiscalyear` (`id`, `name`, `status`, `startdate`, `enddate`, `companyid`, `userid`, `createdate`, `opening`, `closing`, `priority`, `number`, `branchid`) VALUES
(1, '2019 Fiscal Year', 'active', '2019-01-01 00:00:00', '2019-12-31 23:59:59', 1, 1, '2019-08-28 05:51:23', '5000.00', '12000.00', 0, '1035', 1),
(2, '2019 Fiscal Year	', 'active', '0000-00-00 00:00:00', '2019-12-31 23:59:59', 1, 1, '2019-08-28 05:41:05', '10000.00', '12000.00', 0, '1010', 1),
(3, '2019 Fiscal Year', 'active', '2019-01-01 00:00:00', '2019-08-28 23:59:59', 1, 1, '2019-08-28 05:50:23', '2000.00', '8000.00', 0, '1000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `glgroups`
--

CREATE TABLE IF NOT EXISTS `glgroups` (
  `id` int(30) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `accounttype` varchar(50) NOT NULL,
  `accountname` varchar(80) NOT NULL,
  `groupname` bigint(50) NOT NULL DEFAULT '1',
  `openingdate` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `glgroups`
--

INSERT INTO `glgroups` (`id`, `userid`, `companyid`, `accounttype`, `accountname`, `groupname`, `openingdate`) VALUES
(1, '2', '1', '1', 'Banks', 0, ''),
(6, '2', '1', '1', 'Current asset', 0, ''),
(7, '2', '1', '1', 'Fixed assets', 0, ''),
(8, '2', '1', '5', 'Cost of Good Sold', 0, ''),
(9, '2', '1', '1', 'Capital asset', 0, ''),
(14, '2', '1', '2', 'Current liabilities', 0, ''),
(15, '2', '1', '2', 'Longterm liabilities', 0, ''),
(26, '2', '1', '3', 'Equity', 0, ''),
(27, '2', '1', '4', 'Income', 0, ''),
(28, '2', '1', '4', 'Other income', 0, ''),
(29, '2', '1', '5', 'Expenses', 0, ''),
(30, '2', '1', '5', 'Other expenses', 0, ''),
(31, '2', '1', '2', 'Share Capital', 0, ''),
(32, '2', '1', '2', 'Retained Earnings', 0, ''),
(33, '2', '1', '4', 'Cash', 1, ''),
(34, '2', '1', '4', 'Equity', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `grouping`
--

CREATE TABLE IF NOT EXISTS `grouping` (
  `id` int(50) NOT NULL,
  `memberid` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `updatedat` varchar(50) NOT NULL,
  `categoryid` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grouping`
--

INSERT INTO `grouping` (`id`, `memberid`, `userid`, `createdate`, `user`, `status`, `updatedat`, `categoryid`, `companyid`) VALUES
(1, '14', '1', '2020-08-11 12:35:55pm', '', '0', '2020-08-11 12:36:08pm', '6', '1');

-- --------------------------------------------------------

--
-- Table structure for table `groupleavedays`
--

CREATE TABLE IF NOT EXISTS `groupleavedays` (
  `id` int(11) NOT NULL,
  `group` int(11) DEFAULT NULL,
  `employeeno` int(11) DEFAULT NULL,
  `overtime` int(11) DEFAULT NULL COMMENT 'Link to an overtime request',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `type` int(11) NOT NULL,
  `days` decimal(10,2) NOT NULL,
  `description` text COMMENT 'Description of a credit / debit',
  `userid` int(30) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Add or sub entitlement for employees or contracts';

--
-- Dumping data for table `groupleavedays`
--

INSERT INTO `groupleavedays` (`id`, `group`, `employeeno`, `overtime`, `startdate`, `enddate`, `type`, `days`, `description`, `userid`, `createdate`, `companyid`) VALUES
(1, NULL, 7, NULL, '2020-04-08', '2020-04-08', 2, '21.00', '', 1, '2020-04-08 09:45:52am', 0),
(2, 1, NULL, NULL, '2020-02-01', '2020-12-31', 2, '10.00', '', 1, '2020-04-08 09:56:33am', 0),
(3, NULL, 1, NULL, '2020-05-06', '2020-05-06', 3, '10.00', '', 1, '2020-05-06 08:07:49pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE IF NOT EXISTS `house` (
  `id` int(100) NOT NULL,
  `houseno` varchar(100) NOT NULL,
  `type` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `plotno` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `vat` decimal(10,2) NOT NULL,
  `commission` decimal(10,2) NOT NULL,
  `priority` int(11) NOT NULL,
  `category` varchar(30) NOT NULL DEFAULT 'rental',
  `branchid` int(30) NOT NULL DEFAULT '1',
  `vat2` decimal(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id`, `houseno`, `type`, `description`, `plotno`, `cost`, `status`, `createdat`, `updatedat`, `userid`, `floor`, `companyid`, `vat`, `commission`, `priority`, `category`, `branchid`, `vat2`) VALUES
(1, '101', 'Single', '', '1', '0', 'occupied', '2020-07-14 13:59:37', '', '1', 'GF', '1', '0.00', '0.00', 1, 'accommodation', 1, '0.00'),
(2, '102', 'Shop', '', '1', '0', 'occupied', '2020-07-14 13:59:43', '2020-08-06 07:14:17', '1', 'GF', '1', '0.00', '0.00', 1, 'accommodation', 1, '0.00'),
(3, '103', 'Executive', '', '1', '0', 'occupied', '2020-07-14 13:59:49', '', '1', 'GF', '1', '0.00', '0.00', 1, 'accommodation', 1, '0.00'),
(4, '201', 'Single', '', '2', '5000', 'occupied', '2020-07-29 06:11:54', '2020-07-29 06:11:54', '1', 'GF', '1', '10.00', '0.00', 1, 'rental', 1, '0.00'),
(5, '2002', 'Single', '', '2', '3000', 'occupied', '2020-07-29 15:29:05', '2020-07-29 15:29:05', '1', 'GF', '1', '10.00', '10.00', 1, 'rental', 1, '0.00'),
(6, '2003', 'Double', '', '2', '10000', 'occupied', '2020-07-29 15:29:20', '2020-07-29 15:29:20', '1', 'GF', '1', '10.00', '0.00', 1, 'rental', 1, '5.00'),
(7, '2004', 'Single', '', '2', '50000', 'occupied', '2020-07-29 15:30:01', '2020-07-29 15:30:01', '1', 'GF', '1', '14.00', '5.00', 1, 'rental', 1, '0.00'),
(8, '2005', 'Bed Sitter', '', '2', '5000', 'vacant', '2020-07-29 07:25:15', '', '1', 'GF', '1', '14.00', '0.00', 1, 'rental', 1, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `housekeeping`
--

CREATE TABLE IF NOT EXISTS `housekeeping` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `houseno` varchar(30) NOT NULL,
  `plotno` varchar(20) NOT NULL DEFAULT '0',
  `approvedby` varchar(20) NOT NULL,
  `comments` text NOT NULL,
  `approval` varchar(30) NOT NULL DEFAULT 'new',
  `exactdate` varchar(30) NOT NULL,
  `type` text NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(50) NOT NULL,
  `name` text NOT NULL,
  `imageid` varchar(50) NOT NULL,
  `user` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(40) NOT NULL,
  `plotno` varchar(60) NOT NULL,
  `houseno` varchar(40) NOT NULL,
  `tenantid` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `duedate` varchar(40) NOT NULL,
  `paymentstatus` varchar(40) NOT NULL,
  `paymentmode` varchar(40) NOT NULL,
  `paymentcode` varchar(100) NOT NULL,
  `transactioncode` varchar(100) NOT NULL,
  `approval` varchar(30) NOT NULL DEFAULT 'new',
  `approvedby` varchar(60) NOT NULL,
  `approvaldate` varchar(60) NOT NULL,
  `totalamount` varchar(40) NOT NULL,
  `paid` varchar(40) NOT NULL,
  `balance` varchar(40) NOT NULL DEFAULT '0',
  `companyid` varchar(100) NOT NULL DEFAULT '1',
  `commission` decimal(10,2) NOT NULL,
  `vat` decimal(10,2) NOT NULL,
  `paymentdate` varchar(30) NOT NULL,
  `order` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `coparent` decimal(10,2) NOT NULL,
  `coparentcommission` decimal(10,2) NOT NULL,
  `coparentvat` decimal(10,2) NOT NULL,
  `coparentdate` varchar(30) NOT NULL,
  `coparentuserid` int(11) NOT NULL,
  `chargeid` varchar(30) NOT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE IF NOT EXISTS `journal` (
  `id` int(50) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `journaldate` varchar(50) NOT NULL,
  `incharge` varchar(40) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `entrydate` varchar(50) NOT NULL,
  `invoice` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`id`, `currency`, `amount`, `description`, `journaldate`, `incharge`, `userid`, `companyid`, `entrydate`, `invoice`) VALUES
(1, '1', '', 'Opening balance', '2020-07-20 12:54:35', '', '1', '1', '2020-07-20 12:54:48', 'JENTRY-11595238874'),
(2, '1', '', 'Opening balance', '2020-07-27 14:30:26', '', '1', '1', '2020-07-27 14:30:37', 'JENTRY-11595849425'),
(3, '1', '0', 'june salary', '2020-08-13 10:50:24', '', '1', '1', '2020-08-13 10:50:34', 'JENTRY-11597305023');

-- --------------------------------------------------------

--
-- Table structure for table `labour`
--

CREATE TABLE IF NOT EXISTS `labour` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `createdate` varchar(20) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `usedamount` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `year` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `description` text NOT NULL,
  `employeeid` varchar(30) NOT NULL,
  `exactdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `landlord`
--

CREATE TABLE IF NOT EXISTS `landlord` (
  `id` int(40) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `idno` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `county` varchar(40) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `accountno` varchar(100) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lease`
--

CREATE TABLE IF NOT EXISTS `lease` (
  `id` int(10) NOT NULL,
  `branchfrom` varchar(50) NOT NULL,
  `serial` varchar(50) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `dateleased` varchar(50) NOT NULL,
  `incharge` varchar(40) NOT NULL,
  `product` text NOT NULL,
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(30) NOT NULL,
  `entrydate` varchar(50) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `original` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `branchid` int(11) NOT NULL DEFAULT '1',
  `amount` varchar(10) NOT NULL DEFAULT '0.00',
  `duedate` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Dispatched',
  `mode` varchar(30) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `totalamount` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leavegroup`
--

CREATE TABLE IF NOT EXISTS `leavegroup` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `createdat` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedat` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total` int(30) NOT NULL,
  `startdate` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `enddate` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `defaultleavetype` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leavegroup`
--

INSERT INTO `leavegroup` (`id`, `name`, `description`, `createdat`, `updatedat`, `total`, `startdate`, `enddate`, `defaultleavetype`) VALUES
(1, 'general', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 20, '1/1', '31/12', 2);

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE IF NOT EXISTS `leaves` (
  `id` int(30) NOT NULL,
  `startdate` varchar(30) DEFAULT NULL,
  `enddate` varchar(30) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `employee` int(11) DEFAULT NULL,
  `cause` text,
  `startdatetype` varchar(12) DEFAULT NULL,
  `enddatetype` varchar(12) DEFAULT NULL,
  `duration` decimal(10,2) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `description` text COMMENT 'Comments on leave request',
  `change_type` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `updateddate` timestamp NULL DEFAULT NULL,
  `photo` text NOT NULL,
  `incharge` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `postedtime` varchar(30) NOT NULL,
  `img_id` text,
  `comments` text NOT NULL,
  `manager` int(10) NOT NULL,
  `companyid` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of changes in leave requests table';

-- --------------------------------------------------------

--
-- Table structure for table `leavetypes`
--

CREATE TABLE IF NOT EXISTS `leavetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `deduct` varchar(10) NOT NULL,
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leavetypes`
--

INSERT INTO `leavetypes` (`id`, `name`, `description`, `createdate`, `gender`, `deduct`, `companyid`) VALUES
(1, 'maternity leave', '', '2019-06-03 01:46:56pm', 'Female', 'No', 0),
(2, 'Normal leave', '', '2019-06-03 01:47:13pm', 'Both', 'No', 0),
(3, 'Emergency', '', '2019-06-03 01:47:41pm', 'Both', 'No', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loggs`
--

CREATE TABLE IF NOT EXISTS `loggs` (
  `id` int(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `timein` varchar(50) NOT NULL,
  `timeout` varchar(50) NOT NULL,
  `browser` text NOT NULL,
  `ip` text NOT NULL,
  `action` varchar(30) DEFAULT 'loggedin',
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loyalitycards`
--

CREATE TABLE IF NOT EXISTS `loyalitycards` (
  `id` int(30) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateposted` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateupdated` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `companyid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cardnumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `branchid` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `mode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `invoice` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `originalamount` decimal(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loyalitycards`
--

INSERT INTO `loyalitycards` (`id`, `value`, `customer_id`, `deleted`, `status`, `description`, `userid`, `dateposted`, `dateupdated`, `companyid`, `cardnumber`, `type`, `branchid`, `amount`, `mode`, `invoice`, `originalamount`) VALUES
(1, '8.07', NULL, 0, '', 'Loyality points awarded ', '1', '2020-08-01 14:16:02', '', '1', '4444', 'Points', 1, '0.00', '', '11596280512', '806.80');

-- --------------------------------------------------------

--
-- Table structure for table `maincategory`
--

CREATE TABLE IF NOT EXISTS `maincategory` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maincategory`
--

INSERT INTO `maincategory` (`id`, `name`, `description`, `createdate`, `status`, `userid`, `updatedate`, `companyid`) VALUES
(1, 'FOOD', 'test', '2020-07-30 16:49:35', 'active', '1', '', '1'),
(2, 'OTHERS', '', '2020-07-11 14:45:50', 'active', '1', '', '1'),
(3, 'dawa', 'OTHERS', '2020-07-11 14:45:57', 'active', '1', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'side',
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`id`, `name`, `icon`, `status`, `url`, `type`, `sort`) VALUES
('accomodation', 'Accomodation', '', '1', 'user/accomodation', 'side', 8),
('assetliability', 'Assets and Liabilities', '', '1', 'user/assetliability', 'side', 7),
('banking', 'Banking', '', '1', 'user/banking', 'side', 6),
('contact', 'Contacts', '', '1', 'user/contact', 'side', 4),
('goodservice', 'Goods and Services', '', '1', 'user/goodservice', 'side', 3),
('humanresource', 'HR', 'grouping', '1', 'user/viewrequest', 'side', 8),
('moneyin', 'Money In', '', '1', 'user/moneyin', 'side', 1),
('moneyout', 'Money out', '', '1', 'user/moneyout', 'side', 2),
('project', 'Projects', '', '1', 'user/project', 'side', 5),
('report', 'Reports', '', '1', 'user/report', 'side', 9),
('setting', 'Settings', '', '1', 'user/setting', 'side', 10);

-- --------------------------------------------------------

--
-- Table structure for table `mainservices`
--

CREATE TABLE IF NOT EXISTS `mainservices` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `companyid` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mainservices`
--

INSERT INTO `mainservices` (`id`, `name`, `companyid`) VALUES
(1, 'General systems', 1),
(2, 'E-commerce', 1),
(3, 'Biometric', 1),
(4, 'Website', 1),
(5, 'PMS', 1),
(6, 'Bulk sms', 1),
(7, 'Pos', 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_07_02_112357_Product', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'side',
  `menu` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`name`, `sort`, `icon`, `id`, `status`, `url`, `type`, `menu`) VALUES
('Accomodation', 84, 'money', 'accomodation', '1', 'admin/viewpallmyplots', 'side', 'accomodation'),
('Accounting', 35, 'battery-quarter', 'accounting', '1', 'user/allaccounting', 'side', 'banking'),
('Accounting Reports', 35, 'money', 'accountingreports', '1', 'user/startsales', 'side', 'banking'),
('Assets', 49, 'paw', 'assets', '1', 'user/viewassets', 'side', 'assetliability'),
('Bank Deposits', 35, 'money', 'bankdeposits', '1', 'user/viewbanks', 'side', 'banking'),
('Bank Transfer', 35, 'money', 'banktransfer', '1', 'user/viewbanktransfer', 'side', 'banking'),
('Biometric Records', 31, 'rss-square', 'biometricrecords', '1', 'user/allattendance', 'side', 'humanresource'),
('Branch', 81, 'rss-square', 'branch', '1', 'user/viewbranch', 'side', 'setting'),
('Call center', 12, 'rss-square', 'callcenter', '1', 'user/callcenter', 'side', 'contact'),
('Cashier Sales', 87, 'folder-open', 'cashiersales', '1', 'user/mysales', 'side', 'moneyin'),
('Comments/Complains', 11, 'paw', 'complain', '1', 'user/complain', 'side', 'project'),
('Configuration', 5, 'home', 'config', '1', 'user/viewconfiguration', 'top', 'setting'),
('Damaged products', 50, 'paw', 'damagedproducts', '1', 'user/viewdamages', 'side', 'assetliability'),
('Deals', 11, 'calendar-times-o', 'deals', '1', 'user/viedeals', 'side', 'project'),
('Departments', 31, 'rss-square', 'departments', '1', 'Create Departments', 'side', 'humanresource'),
('Display Counter', 6, 'rss-square', 'displaycounter', '0', 'display', 'side', 'goodservice'),
('Display Sales Report', 24, 'folder-open', 'displayreport', '1', 'user/displayreport', 'side', 'report'),
('Documents', 14, 'folder-open-o', 'documents', '1', 'user/viewdocuments', 'side', 'project'),
('E-Commerce', 8, 'grouping', 'ecommerce', '1', 'user/ecommerce', 'side', 'moneyin'),
('Events', 10, 'line-chart', 'events', '1', 'user/viewevents', 'side', 'project'),
('Grouping Members', 20, 'paper-plane', 'grouping', '1', 'user/viewgrouping', 'side', 'contact'),
('Human Resource', 14, 'rss-square', 'humanresource', '1', 'user/viewrequest', 'side', 'humanresource'),
('Income', 85, 'window-close', 'income', '1', 'user/allinvoices', 'side', 'moneyin'),
('Expenses', 85, 'window-close', 'incomeexpenses', '1', 'user/viewexpenses', 'side', 'moneyout'),
('Dispatched stocklist/Store', 60, 'sort-amount-asc', 'incomingstock', '1', 'user/viewincomingstock', 'side', 'goodservice'),
('Issued Store Items', 59, 'sort-amount-asc', 'incomingstore', '1', 'user/viewallorder', 'side', 'goodservice'),
('journal entry', 35, 'money', 'journalentry', '1', 'user/viewjournalentry', 'side', 'banking'),
('Labour Records', 31, 'rss-square', 'labourrecords', '1', 'user/viewlabour', 'side', 'humanresource'),
('Leave Management', 31, 'rss-square', 'leavemanagement', '1', 'user/viewleaves', 'side', 'humanresource'),
('Low Store', 55, 'battery-quarter', 'lowproducts', '1', 'user/viewwarningproducts', 'side', 'goodservice'),
('Low stocklist', 57, 'battery-quarter', 'lowstocklist', '1', 'user/viewlowstore', 'side', 'goodservice'),
('Loyality Cards', 30, 'credit-card', 'loyalitycards', '1', 'user/viewloyality', 'side', 'project'),
('People/Contacts', 80, 'rss-square', 'members', '1', 'user/viewmember', 'side', 'contact'),
('Change password', 9, 'hourglass-start', 'password', '1', 'user/passwordform', 'side', 'setting'),
('Payroll', 30, 'rss-square', 'payroll', '1', 'user/salaryhistory', 'side', 'humanresource'),
('Payroll Setup', 31, 'rss-square', 'payrollsetup', '1', 'user/payrollsetup', 'side', 'humanresource'),
('Category of people', 33, 'address-book-o', 'peoplecategory', '1', 'user/viewcategory', 'side', 'contact'),
('Print Receipt', 1, 'recycle', 'printreceipt', '1', 'user/printreceipts', 'side', 'goodservice'),
('Stock List(Counter)', 66, 'snowflake-o', 'productlist', '1', 'user/viewproductlist', 'side', 'goodservice'),
('Products(Main store)', 65, 'snowflake-o', 'products', '1', 'user/viewproducts', 'side', 'goodservice'),
('Category of Products', 70, 'recycle', 'productscategory', '1', 'user/viewproductcategory', 'side', 'goodservice'),
('Update profile', 8, 'blind', 'profile', '1', 'user/profileform', 'side', 'setting'),
('Purchases', 86, 'automobile', 'purchases', '1', 'user/viewpurchases', 'side', 'moneyout'),
('Record Delivery', 87, 'cart-plus', 'recorddelivery', '1', 'user/recorddelivery', 'side', 'moneyin'),
('Manage Report', 25, 'folder-open', 'reports', '1', 'user/startsales', 'side', 'report'),
('Retail sales', 90, 'cart-plus', 'sales', '1', 'user/viewsales', 'side', 'moneyin'),
('Select User', 1, 'rss-square', 'selectuser', '1', 'login', 'side', 'contact'),
('Send Sms', 15, 'paper-plane', 'sendsms', '1', 'user/viewsms', 'side', 'project'),
('Tasks', 12, 'bullseye', 'task', '1', 'user/viewtasks', 'side', 'project'),
('Tasks Category', 13, 'birthday-cake', 'taskscategory', '1', 'user/viewtaskcategory', 'side', 'project'),
('Users', 75, 'rss-square', 'users', '1', 'user/viewemployee', 'side', 'contact'),
('Return/RePrint Sales', 86, 'paw', 'viewreturnsales', '1', 'user/viewreturnsales', 'side', 'moneyout'),
('Whole sale', 88, 'cart-plus', 'wholesale', '1', 'user/viewwholesales', 'side', 'moneyin');

-- --------------------------------------------------------

--
-- Table structure for table `modulesactions`
--

CREATE TABLE IF NOT EXISTS `modulesactions` (
  `actionid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `moduleid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modulesactions`
--

INSERT INTO `modulesactions` (`actionid`, `moduleid`, `name`, `sort`) VALUES
('accommodationcleaner', 'accomodation', 'Tick ONLY if Cleaner', 26),
('accommodationreceiptionist', 'accomodation', 'Tick  ONLY if Receptionist', 27),
('accomodationmanager', 'accomodation', 'Tick  ONLY if manager', 25),
('accountlimit', 'sales', 'Enforce Daily Sales Limit', 16),
('add', 'assets', 'Add asset', 1),
('add', 'bankdeposits', 'add', 1),
('add', 'banktransfer', 'add', 1),
('add', 'biometricrecords', 'add', 1),
('add', 'branch', 'Add Baranch', 1),
('add', 'callcenter', 'Add Calls', 1),
('add', 'complain', 'Add complain', 2),
('add', 'config', 'add', 1),
('add', 'damagedproducts', 'add', 1),
('add', 'deals', 'add', 1),
('add', 'departments', 'add', 1),
('add', 'documents', 'add', 1),
('add', 'ecommerce', 'Add', 1),
('add', 'events', 'add', 1),
('add', 'grouping', 'add', 1),
('add', 'humanresource', 'Add Expense Request Form', 1),
('add', 'income', 'add', 2),
('add', 'incomeexpenses', 'add', 1),
('add', 'incomingstock', 'add', 1),
('add', 'incomingstore', 'Add incoming', 1),
('add', 'journalentry', 'add', 1),
('add', 'labourrecords', 'add', 1),
('add', 'leavemanagement', 'add', 0),
('add', 'lowproducts', 'add', 1),
('add', 'lowstocklist', 'add', 6),
('add', 'loyalitycards', 'add', 1),
('add', 'members', 'add', 1),
('add', 'payroll', 'add', 1),
('add', 'payrollsetup', 'add', 1),
('add', 'peoplecategory', 'add', 1),
('add', 'productlist', 'Add Products', 7),
('add', 'products', 'add', 1),
('add', 'productscategory', 'add', 1),
('add', 'purchases', 'add', 1),
('add', 'recorddelivery', 'Add Delivery', 1),
('add', 'sales', 'add', 1),
('add', 'sendsms', 'add', 1),
('add', 'task', 'add', 1),
('add', 'taskscategory', 'add', 1),
('add', 'users', 'add', 1),
('add', 'viewreturnsales', 'add', 1),
('add', 'wholesale', 'add', 1),
('addcharges', 'accomodation', 'Add Room Chaerges', 4),
('adddailycollection', 'cashiersales', 'Add Daily Collection', 7),
('addhouse', 'accomodation', 'Add House', 1),
('addroom', 'accomodation', 'Add Room', 3),
('addstock', 'productlist', 'Add stock', 4),
('addstock', 'products', 'addstock', 4),
('advancebooking', 'accomodation', 'advance booking', 11),
('all', 'cashiersales', 'View all Cashier sales', 4),
('allcompalin', 'complain', 'View Others Complain', 11),
('allleaves ', 'humanresource', 'View all leaves', 20),
('allocate', 'humanresource', 'Allocate Money', 5),
('approve', 'humanresource', 'Make Approval', 2),
('approve', 'purchases', 'Approve Purchase order', 22),
('approveorders', 'ecommerce', 'Approve New orders', 7),
('assignrooms', 'accomodation', 'Asign Cleaning rooms', 7),
('assigntask', 'task', 'Assign Task', 10),
('backdatesales', 'sales', 'Back date sales', 17),
('bioattendance', 'humanresource', 'Biometric Attendance', 30),
('budget', 'purchases', 'View Budget', 10),
('bulk', 'productlist', 'Upload bulk stock', 1),
('bulk', 'products', 'bulk', 5),
('card', 'accomodation', 'Sale in Visa Card', 2),
('card', 'sales', 'Card Sales', 7),
('cash', 'accomodation', 'Sale in Cash', 2),
('cash', 'sales', 'Sell in Cash', 3),
('cashiersales', 'cashiersales', 'View Sales', 5),
('change', 'password', 'change', 1),
('changepayment', 'accomodation', 'Change payment', 9),
('changeserialstatus', 'productlist', 'Change Serial Status', 20),
('changestatus', 'recorddelivery', 'Change Status', 6),
('changetaxstatus', 'sales', 'Change Tax Status', 30),
('changeuomonsales', 'sales', 'Change Unit Of Measurement', 33),
('checkin', 'accomodation', 'View Room window', 4),
('checkinroom', 'accomodation', 'Check in Rooms', 2),
('checkoutcustomerwithbalance', 'accomodation', 'Check out customer with balance', 20),
('checkoutroom', 'accomodation', 'Check out Room', 3),
('cheque', 'accomodation', 'Sale in Cheque/Bank', 2),
('cheque', 'sales', 'Cheque/Bank sales', 8),
('ClaimDamaged', 'recorddelivery', 'Change to Claim Damaged', 17),
('ClaimOK', 'recorddelivery', 'Cahange to Claim OK', 16),
('Claimraised', 'recorddelivery', 'Change to Claim raised', 15),
('cleanrooms', 'accomodation', 'Clean Rooms', 4),
('clear', 'viewreturnsales', 'Clear Sales', 5),
('clearallsales', 'cashiersales', 'Clear all sales for others', 10),
('clearpayments', 'sales', 'Clear/Add payments', 7),
('closebill', 'sales', ' Close Bill', 6),
('closeexpense', 'incomeexpenses', 'Close Expense', 3),
('config', 'accomodation', 'Accommodation Settings', 33),
('credit', 'accomodation', 'Sale in Credit', 2),
('credit', 'sales', 'Credit sales', 10),
('creditnote', 'sales', 'Credit Note', 8),
('customerregister', 'accomodation', 'Customer Register', 10),
('dailycollections', 'accomodation', 'Daily Collections', 56),
('dailypayments', 'accomodation', 'View Daily Payments', 10),
('dailysales', 'accomodation', ' Daily Sales', 1),
('delete', 'assets', 'Delete', 5),
('delete', 'bankdeposits', 'delete', 3),
('delete', 'branch', 'Delete Branch', 5),
('delete', 'callcenter', 'Delete calls', 5),
('delete', 'cashiersales', 'Delete Sales', 4),
('delete', 'complain', 'Delete Complain', 11),
('delete', 'config', 'delete', 0),
('delete', 'damagedproducts', 'delete', 3),
('delete', 'deals', 'delete', 3),
('delete', 'documents', 'delete', 3),
('delete', 'ecommerce', 'delete', 3),
('delete', 'events', 'delete', 3),
('delete', 'grouping', 'delete', 3),
('delete', 'humanresource', 'Delete Expense Request Form', 3),
('delete', 'incomingstock', 'delete', 3),
('delete', 'incomingstore', 'Delete incoming', 3),
('delete', 'peoplecategory', 'delete', 3),
('delete', 'productlist', 'Delete Products', 4),
('delete', 'products', 'delete', 3),
('delete', 'productscategory', 'delete', 3),
('delete', 'purchases', 'delete', 3),
('delete', 'recorddelivery', 'Delete Delivery', 5),
('delete', 'reports', 'Delete sales', 3),
('delete', 'sales', 'delete', 3),
('delete', 'sendsms', 'delete', 3),
('delete', 'task', 'delete', 3),
('delete', 'taskscategory', 'delete', 3),
('delete', 'users', 'delete', 3),
('delete', 'viewreturnsales', 'delete', 3),
('delete', 'wholesale', 'delete', 2),
('deleteallroles', 'users', 'Delete all Roles', 5),
('deletebank', 'accounting', 'Delete Bank Account', 2),
('deletedailycollections', 'cashiersales', 'Delete Daily Collections', 9),
('deleteglaccount', 'accounting', 'Delete GL Account', 4),
('deleteorder', 'products', 'Delete Order', 5),
('deletepeople', 'members', 'Delete Contacts', 5),
('Delivered', 'recorddelivery', 'Change to Delivered', 14),
('detailedvatinvoice', 'income', 'Show Detailed Vat Invoice', 5),
('discount', 'sales', 'Print Discount', 5),
('dispatch', 'products', 'Dispatch Products', 6),
('Dispatched', 'recorddelivery', 'Change to Dispatched', 10),
('displaycustomers', 'sales', 'Display customers using buttons', 5),
('dontprint', 'sales', 'Display Dont Print Button', 15),
('dontshowprofit', 'reports', 'Don Not Show Profit', 10),
('download', 'reports', 'download', 2),
('editmpesa', 'cashiersales', 'Enter Mpesa Amount Directly', 3),
('editmpesadate', 'cashiersales', 'Edit Mpesa Entry date', 5),
('editopenclosestock', 'productlist', 'Update Closing and Opening stock', 10),
('editsellingprice', 'sales', 'Change Selling Price', 7),
('editstocktaken', 'productlist', 'Change closed and stock taken', 9),
('entermpesacode', 'cashiersales', 'Enter Mpesa Code', 3),
('FailedDelivery', 'recorddelivery', 'Change to Failed Delivery', 12),
('givediscount', 'accomodation', 'Give Discount', 4),
('giveloyalityponts', 'sales', 'Give Poinsts', 30),
('housekeeping', 'accomodation', 'House Keeping', 9),
('leaseitems', 'sales', 'Lease Items', 30),
('leavesetup', 'humanresource', 'Add Leave setup', 8),
('Logout', 'sales', 'Log out After printing', 5),
('managecustomer', 'accomodation', 'Manager Customer', 22),
('managehotel', 'accomodation', 'Manage Hotel', 6),
('managerental', 'accomodation', 'Manage Rental Houses', 8),
('more', 'lowstocklist', 'View more', 6),
('more', 'productlist', 'View Added stock', 2),
('more', 'products', 'more', 4),
('moresales', 'sales', 'Add More Sales', 4),
('moresales', 'viewreturnsales', 'Add more Sales', 5),
('move', 'productlist', 'Move stock/ Break/Distribute', 2),
('mpesa', 'accomodation', 'Sale in mpesa', 2),
('mpesa', 'sales', 'Sale in Mpesa', 6),
('mpesabalance', 'sales', 'Bank /Mpesa Balance', 5),
('mpesapendingreport', 'cashiersales', 'View All Pending Mpesa Report', 20),
('mpesaverifiedreport', 'cashiersales', 'View All Verified Mpesa Report', 21),
('openclosestock', 'productlist', 'Open and Close stock', 8),
('order', 'sales', 'User Order Button', 6),
('points', 'accomodation', 'Sale in Loyality Points', 2),
('points', 'sales', 'Loyality Point sales', 9),
('Post Bank Deposits', 'accomodation', 'bankdeposits', 6),
('postexpense', 'accomodation', 'Post Expense', 5),
('postgeneraltask', 'task', 'Post General Task', 5),
('postrentalexpenses', 'incomeexpenses', 'Post rental Expeses', 20),
('postspecifictask', 'task', 'Post Specific Task', 3),
('posttaskforothers', 'task', 'Post task for others', 11),
('price', 'products', 'change price', 7),
('printbill', 'sales', ' Print Bill', 6),
('printreceipt', 'sales', 'Print Receipt', 1),
('productcode', 'config', 'Display Product code in receipt', 5),
('productdiscount', 'sales', 'Give discount Product', 6),
('recordcoins', 'sales', 'Record Savings/Coins', 26),
('removeallstock', 'products', 'View all outgoing stock', 7),
('removestock', 'products', 'Move consumable stock', 6),
('report', 'recorddelivery', 'Delivery Report', 9),
('reprint', 'sales', 'Reprint Receipt', 5),
('return', 'viewreturnsales', 'Return Sales', 4),
('ReturnedandReceived', 'recorddelivery', 'Change to Returned and Received', 13),
('reversempesa', 'cashiersales', 'Reverse Mpesa', 9),
('sale', 'sales', 'sale', 4),
('sale', 'wholesale', 'sale', 0),
('salesbeyondbprice', 'sales', 'Can sell below set s.price', 9),
('salesorder', 'purchases', 'Sales Order', 10),
('select', 'sales', 'Select Customers', 5),
('selectmessage', 'sales', 'Select Order Message', 1),
('selectroom', 'sales', 'Select Room', 12),
('selecttable', 'sales', 'Select Table', 35),
('setup', 'ecommerce', 'Setup E-commerce', 6),
('showdefaultserials', 'purchases', 'Generate with default Serial Numbers', 20),
('stocktaking', 'productlist', 'Do stock Taking', 8),
('transfer', 'productlist', 'Transfer Products', 3),
('transfersms', 'sendsms', 'Transfer sms to others', 5),
('upadate', 'callcenter', 'Update', 2),
('update', 'assets', 'Update', 2),
('update', 'bankdeposits', 'update', 2),
('update', 'branch', 'Update Branch', 3),
('update', 'complain', 'Update Complain', 6),
('update', 'config', 'update', 2),
('update', 'damagedproducts', 'update', 2),
('update', 'deals', 'update', 2),
('update', 'documents', 'update', 2),
('update', 'ecommerce', 'Upadate Data', 2),
('update', 'events', 'update', 2),
('update', 'grouping', 'update', 2),
('update', 'humanresource', 'Update Expense Request Form', 2),
('update', 'incomeexpenses', 'update', 3),
('update', 'incomingstock', 'update', 2),
('update', 'lowproducts', 'update', 1),
('update', 'loyalitycards', 'update', 2),
('update', 'members', 'update', 2),
('update', 'peoplecategory', 'update', 2),
('update', 'productlist', 'Update Product', 6),
('update', 'products', 'update', 2),
('update', 'productscategory', 'update', 2),
('update', 'profile', 'update', 1),
('update', 'purchases', 'update', 2),
('update', 'recorddelivery', 'Update Delivery', 3),
('update', 'reports', 'update sales', 4),
('update', 'sales', 'update', 2),
('update', 'sendsms', 'update', 2),
('update', 'task', 'update', 2),
('update', 'taskscategory', 'update', 2),
('update', 'users', 'update', 2),
('update', 'viewreturnsales', 'update', 2),
('update', 'wholesale', 'update', 4),
('updatebuyingprice', 'purchases', 'update buying price', 4),
('updatecharges', 'accomodation', 'Update Room Charges', 4),
('updateclosedexpenses', 'incomeexpenses', 'Edit closed expenses', 4),
('updateclosedinvoice', 'purchases', 'update closed invoice', 6),
('updatedailycollections', 'cashiersales', 'Update Daily Collection', 9),
('updatehouse', 'accomodation', 'Update House', 5),
('updatepaymentmode', 'sales', 'Update Payment Mode', 7),
('updateroom', 'accomodation', 'Update  Room', 5),
('updatesellingprice', 'purchases', 'update selling price', 5),
('updatestock', 'productlist', 'Update Stock (Cl.Stock)', 2),
('view', 'accounting', 'View Accounting', 4),
('view', 'accountingreports', 'view', 1),
('view', 'branch', 'View Branch', 2),
('view', 'callcenter', 'View Calls', 3),
('view', 'complain', 'View Complain', 5),
('view', 'displayreport', 'Display Report', 1),
('view', 'humanresource', 'View Expense Request Form', 4),
('View', 'income', 'View', 1),
('view', 'incomingstock', 'View Incoming store products', 2),
('view', 'incomingstore', 'View Incoming store products', 4),
('view', 'lowstocklist', 'View', 6),
('view', 'productlist', 'View Products', 5),
('view', 'recorddelivery', 'View Delivery', 2),
('view', 'reports', 'view', 1),
('viewall', 'deals', 'View other people''s deals', 5),
('viewall', 'reports', 'View all Branches', 6),
('viewall', 'task', 'View other people''s tasks', 2),
('viewallcollections', 'cashiersales', 'View Others Daily Collection', 16),
('viewalldocuments', 'documents', 'View all Documents', 5),
('viewallpayroll', 'humanresource', 'View Payroll For everyone', 5),
('viewbills', 'incomeexpenses', 'View Bills', 6),
('viewbprice', 'productlist', 'Dont View Bprice', 88),
('viewbprice', 'products', 'Dont View Bprice', 88),
('viewbuyingprice', 'sales', 'view buying price', 7),
('viewcreditors', 'incomeexpenses', 'VIew creditors', 8),
('viewdailycollections', 'cashiersales', 'View Daily Collection', 8),
('viewdebtors', 'incomeexpenses', 'View Deptors', 7),
('viewdirectpurchases', 'purchases', 'View Direct Purchase', 8),
('viewexpense', 'incomeexpenses', 'View Expense', 6),
('viewhouse', 'accomodation', 'View House', 1),
('vieworders', 'ecommerce', 'View Orders', 4),
('viewothersgeneraltask', 'task', 'View Others General Task', 9),
('viewothersspecifictask', 'task', 'View Others Specific Task', 7),
('viewpurchase', 'purchases', 'Purchase Order', 9),
('viewquotation', 'purchases', 'View Quotation', 7),
('viewreports', 'accomodation', 'View Reports', 22),
('viewroomcleaned', 'accomodation', 'View Room Cleaned', 33),
('viewrooms', 'accomodation', 'View All Rooms', 1),
('viewserials', 'productlist', 'View serial Number', 20),
('viewserials', 'purchases', 'View serial Numbers', 8),
('viewtill', 'cashiersales', 'View Till Collections', 8),
('voucher', 'accomodation', 'Sale in Voucher', 2),
('voucher', 'sales', 'Gift Voucher sales', 9),
('wiewinvoices', 'income', 'View all invoices', 3),
('wiewinvoices', 'incomeexpenses', 'View all invoices', 5);

-- --------------------------------------------------------

--
-- Table structure for table `moneydocuments`
--

CREATE TABLE IF NOT EXISTS `moneydocuments` (
  `id` int(50) NOT NULL,
  `name` text NOT NULL,
  `imageid` varchar(50) NOT NULL,
  `user` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mpesasales`
--

CREATE TABLE IF NOT EXISTS `mpesasales` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `userid` int(20) NOT NULL,
  `companyid` int(5) NOT NULL,
  `dateposted` varchar(30) NOT NULL,
  `paymentstatus` varchar(10) NOT NULL,
  `branch` int(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nation`
--

CREATE TABLE IF NOT EXISTS `nation` (
  `id` int(11) NOT NULL,
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nation`
--

INSERT INTO `nation` (`id`, `code`, `name`, `description`) VALUES
(1, 'KE', 'Kenya', ''),
(2, 'CA', 'Canada', ''),
(3, 'AF', 'Afghanistan', ''),
(4, 'AL', 'Albania', ''),
(5, 'DZ', 'Algeria', ''),
(6, 'DS', 'American Samoa', ''),
(7, 'AD', 'Andorra', ''),
(8, 'AO', 'Angola', ''),
(9, 'AI', 'Anguilla', ''),
(10, 'AQ', 'Antarctica', ''),
(11, 'AG', 'Antigua and/or Barbuda', ''),
(12, 'AR', 'Argentina', ''),
(13, 'AM', 'Armenia', ''),
(14, 'AW', 'Aruba', ''),
(15, 'AU', 'Australia', ''),
(16, 'AT', 'Austria', ''),
(17, 'AZ', 'Azerbaijan', ''),
(18, 'BS', 'Bahamas', ''),
(19, 'BH', 'Bahrain', ''),
(20, 'BD', 'Bangladesh', ''),
(21, 'BB', 'Barbados', ''),
(22, 'BY', 'Belarus', ''),
(23, 'BE', 'Belgium', ''),
(24, 'BZ', 'Belize', ''),
(25, 'BJ', 'Benin', ''),
(26, 'BM', 'Bermuda', ''),
(27, 'BT', 'Bhutan', ''),
(28, 'BO', 'Bolivia', ''),
(29, 'BA', 'Bosnia and Herzegovina', ''),
(30, 'BW', 'Botswana', ''),
(31, 'BV', 'Bouvet Island', ''),
(32, 'BR', 'Brazil', ''),
(33, 'IO', 'British lndian Ocean Territory', ''),
(34, 'BN', 'Brunei Darussalam', ''),
(35, 'BG', 'Bulgaria', ''),
(36, 'BF', 'Burkina Faso', ''),
(37, 'BI', 'Burundi', ''),
(38, 'KH', 'Cambodia', ''),
(39, 'CM', 'Cameroon', ''),
(40, 'CV', 'Cape Verde', ''),
(41, 'KY', 'Cayman Islands', ''),
(42, 'CF', 'Central African Republic', ''),
(43, 'TD', 'Chad', ''),
(44, 'CL', 'Chile', ''),
(45, 'CN', 'China', ''),
(46, 'CX', 'Christmas Island', ''),
(47, 'CC', 'Cocos (Keeling) Islands', ''),
(48, 'CO', 'Colombia', ''),
(49, 'KM', 'Comoros', ''),
(50, 'CG', 'Congo', ''),
(51, 'CK', 'Cook Islands', ''),
(52, 'CR', 'Costa Rica', ''),
(53, 'HR', 'Croatia (Hrvatska)', ''),
(54, 'CU', 'Cuba', ''),
(55, 'CY', 'Cyprus', ''),
(56, 'CZ', 'Czech Republic', ''),
(57, 'DK', 'Denmark', ''),
(58, 'DJ', 'Djibouti', ''),
(59, 'DM', 'Dominica', ''),
(60, 'DO', 'Dominican Republic', ''),
(61, 'TP', 'East Timor', ''),
(62, 'EC', 'Ecuador', ''),
(63, 'EG', 'Egypt', ''),
(64, 'SV', 'El Salvador', ''),
(65, 'GQ', 'Equatorial Guinea', ''),
(66, 'ER', 'Eritrea', ''),
(67, 'EE', 'Estonia', ''),
(68, 'ET', 'Ethiopia', ''),
(69, 'FK', 'Falkland Islands (Malvinas)', ''),
(70, 'FO', 'Faroe Islands', ''),
(71, 'FJ', 'Fiji', ''),
(72, 'FI', 'Finland', ''),
(73, 'FR', 'France', ''),
(74, 'FX', 'France, Metropolitan', ''),
(75, 'GF', 'French Guiana', ''),
(76, 'PF', 'French Polynesia', ''),
(77, 'TF', 'French Southern Territories', ''),
(78, 'GA', 'Gabon', ''),
(79, 'GM', 'Gambia', ''),
(80, 'GE', 'Georgia', ''),
(81, 'DE', 'Germany', ''),
(82, 'GH', 'Ghana', ''),
(83, 'GI', 'Gibraltar', ''),
(84, 'GR', 'Greece', ''),
(85, 'GL', 'Greenland', ''),
(86, 'GD', 'Grenada', ''),
(87, 'GP', 'Guadeloupe', ''),
(88, 'GU', 'Guam', ''),
(89, 'GT', 'Guatemala', ''),
(90, 'GN', 'Guinea', ''),
(91, 'GW', 'Guinea-Bissau', ''),
(92, 'GY', 'Guyana', ''),
(93, 'HT', 'Haiti', ''),
(94, 'HM', 'Heard and Mc Donald Islands', ''),
(95, 'HN', 'Honduras', ''),
(96, 'HK', 'Hong Kong', ''),
(97, 'HU', 'Hungary', ''),
(98, 'IS', 'Iceland', ''),
(99, 'IN', 'India', ''),
(100, 'ID', 'Indonesia', ''),
(101, 'IR', 'Iran (Islamic Republic of)', ''),
(102, 'IQ', 'Iraq', ''),
(103, 'IE', 'Ireland', ''),
(104, 'IL', 'Israel', ''),
(105, 'IT', 'Italy', ''),
(106, 'CI', 'Ivory Coast', ''),
(107, 'JM', 'Jamaica', ''),
(108, 'JP', 'Japan', ''),
(109, 'JO', 'Jordan', ''),
(110, 'KZ', 'Kazakhstan', ''),
(111, 'US', 'United States ', ''),
(112, 'KI', 'Kiribati', ''),
(113, 'KP', 'Korea, Democratic People''s Republic of', ''),
(114, 'KR', 'Korea, Republic of', ''),
(115, 'XK', 'Kosovo', ''),
(116, 'KW', 'Kuwait', ''),
(117, 'KG', 'Kyrgyzstan', ''),
(118, 'LA', 'Lao People''s Democratic Republic', ''),
(119, 'LV', 'Latvia', ''),
(120, 'LB', 'Lebanon', ''),
(121, 'LS', 'Lesotho', ''),
(122, 'LR', 'Liberia', ''),
(123, 'LY', 'Libyan Arab Jamahiriya', ''),
(124, 'LI', 'Liechtenstein', ''),
(125, 'LT', 'Lithuania', ''),
(126, 'LU', 'Luxembourg', ''),
(127, 'MO', 'Macau', ''),
(128, 'MK', 'Macedonia', ''),
(129, 'MG', 'Madagascar', ''),
(130, 'MW', 'Malawi', ''),
(131, 'MY', 'Malaysia', ''),
(132, 'MV', 'Maldives', ''),
(133, 'ML', 'Mali', ''),
(134, 'MT', 'Malta', ''),
(135, 'MH', 'Marshall Islands', ''),
(136, 'MQ', 'Martinique', ''),
(137, 'MR', 'Mauritania', ''),
(138, 'MU', 'Mauritius', ''),
(139, 'TY', 'Mayotte', ''),
(140, 'MX', 'Mexico', ''),
(141, 'FM', 'Micronesia, Federated States of', ''),
(142, 'MD', 'Moldova, Republic of', ''),
(143, 'MC', 'Monaco', ''),
(144, 'MN', 'Mongolia', ''),
(145, 'ME', 'Montenegro', ''),
(146, 'MS', 'Montserrat', ''),
(147, 'MA', 'Morocco', ''),
(148, 'MZ', 'Mozambique', ''),
(149, 'MM', 'Myanmar', ''),
(150, 'NA', 'Namibia', ''),
(151, 'NR', 'Nauru', ''),
(152, 'NP', 'Nepal', ''),
(153, 'NL', 'Netherlands', ''),
(154, 'AN', 'Netherlands Antilles', ''),
(155, 'NC', 'New Caledonia', ''),
(156, 'NZ', 'New Zealand', ''),
(157, 'NI', 'Nicaragua', ''),
(158, 'NE', 'Niger', ''),
(159, 'NG', 'Nigeria', ''),
(160, 'NU', 'Niue', ''),
(161, 'NF', 'Norfork Island', ''),
(162, 'MP', 'Northern Mariana Islands', ''),
(163, 'NO', 'Norway', ''),
(164, 'OM', 'Oman', ''),
(165, 'PK', 'Pakistan', ''),
(166, 'PW', 'Palau', ''),
(167, 'PA', 'Panama', ''),
(168, 'PG', 'Papua New Guinea', ''),
(169, 'PY', 'Paraguay', ''),
(170, 'PE', 'Peru', ''),
(171, 'PH', 'Philippines', ''),
(172, 'PN', 'Pitcairn', ''),
(173, 'PL', 'Poland', ''),
(174, 'PT', 'Portugal', ''),
(175, 'PR', 'Puerto Rico', ''),
(176, 'QA', 'Qatar', ''),
(177, 'RE', 'Reunion', ''),
(178, 'RO', 'Romania', ''),
(179, 'RU', 'Russian Federation', ''),
(180, 'RW', 'Rwanda', ''),
(181, 'KN', 'Saint Kitts and Nevis', ''),
(182, 'LC', 'Saint Lucia', ''),
(183, 'VC', 'Saint Vincent and the Grenadines', ''),
(184, 'WS', 'Samoa', ''),
(185, 'SM', 'San Marino', ''),
(186, 'ST', 'Sao Tome and Principe', ''),
(187, 'SA', 'Saudi Arabia', ''),
(188, 'SN', 'Senegal', ''),
(189, 'RS', 'Serbia', ''),
(190, 'SC', 'Seychelles', ''),
(191, 'SL', 'Sierra Leone', ''),
(192, 'SG', 'Singapore', ''),
(193, 'SK', 'Slovakia', ''),
(194, 'SI', 'Slovenia', ''),
(195, 'SB', 'Solomon Islands', ''),
(196, 'SO', 'Somalia', ''),
(197, 'ZA', 'South Africa', ''),
(198, 'GS', 'South Georgia South Sandwich Islands', ''),
(199, 'ES', 'Spain', ''),
(200, 'LK', 'Sri Lanka', ''),
(201, 'SH', 'St. Helena', ''),
(202, 'PM', 'St. Pierre and Miquelon', ''),
(203, 'SD', 'Sudan', ''),
(204, 'SR', 'Suriname', ''),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands', ''),
(206, 'SZ', 'Swaziland', ''),
(207, 'SE', 'Sweden', ''),
(208, 'CH', 'Switzerland', ''),
(209, 'SY', 'Syrian Arab Republic', ''),
(210, 'TW', 'Taiwan', ''),
(211, 'TJ', 'Tajikistan', ''),
(212, 'TZ', 'Tanzania, United Republic of', ''),
(213, 'TH', 'Thailand', ''),
(214, 'TG', 'Togo', ''),
(215, 'TK', 'Tokelau', ''),
(216, 'TO', 'Tonga', ''),
(217, 'TT', 'Trinidad and Tobago', ''),
(218, 'TN', 'Tunisia', ''),
(219, 'TR', 'Turkey', ''),
(220, 'TM', 'Turkmenistan', ''),
(221, 'TC', 'Turks and Caicos Islands', ''),
(222, 'TV', 'Tuvalu', ''),
(223, 'UG', 'Uganda', ''),
(224, 'UA', 'Ukraine', ''),
(225, 'AE', 'United Arab Emirates', ''),
(226, 'GB', 'United Kingdom', ''),
(227, 'UM', 'United States minor outlying islands', ''),
(228, 'UY', 'Uruguay', ''),
(229, 'UZ', 'Uzbekistan', ''),
(230, 'VU', 'Vanuatu', ''),
(231, 'VA', 'Vatican City State', ''),
(232, 'VE', 'Venezuela', ''),
(233, 'VN', 'Vietnam', ''),
(234, 'VG', 'Virigan Islands (British)', ''),
(235, 'VI', 'Virgin Islands (U.S.)', ''),
(236, 'WF', 'Wallis and Futuna Islands', ''),
(237, 'EH', 'Western Sahara', ''),
(238, 'YE', 'Yemen', ''),
(239, 'YU', 'Yugoslavia', ''),
(240, 'ZR', 'Zaire', ''),
(241, 'ZM', 'Zambia', ''),
(242, 'ZW', 'Zimbabwe', ''),
(243, '', 'ugali', '			\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `newstock`
--

CREATE TABLE IF NOT EXISTS `newstock` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `date` varchar(50) NOT NULL,
  `item_id1` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'newstock',
  `companyid` varchar(100) NOT NULL,
  `invoice_number` varchar(30) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `buyingprice` decimal(10,2) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '1',
  `balance` varchar(30) NOT NULL,
  `stockfrom` varchar(50) NOT NULL,
  `stockto` varchar(30) NOT NULL,
  `item_id` varchar(30) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `discount` varchar(10) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `tax` varchar(30) NOT NULL,
  `sellingprice` varchar(11) NOT NULL,
  `vat` varchar(50) NOT NULL,
  `taxable` varchar(50) NOT NULL,
  `vatrate` varchar(50) NOT NULL,
  `serial` varchar(30) NOT NULL,
  `itemstatus` varchar(30) NOT NULL DEFAULT 'received',
  `updatedby` int(11) NOT NULL,
  `updatedat` datetime NOT NULL,
  `uom` varchar(30) NOT NULL,
  `uomqty` varchar(30) NOT NULL DEFAULT '0',
  `branchid` int(11) NOT NULL DEFAULT '1',
  `buyingpriceinclusive` decimal(10,2) DEFAULT NULL,
  `taxtype` varchar(20) NOT NULL DEFAULT 'Inclusive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newupgrade`
--

CREATE TABLE IF NOT EXISTS `newupgrade` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `companyid` int(11) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `exactdate` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'new'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newupgrade`
--

INSERT INTO `newupgrade` (`id`, `name`, `companyid`, `description`, `phone`, `email`, `exactdate`, `comment`, `status`) VALUES
(1, 'General systems', 1, '', '', '', '', '', 'new'),
(2, 'E-commerce', 1, '', '', '', '', '', 'new'),
(3, 'Biometric', 1, '', '', '', '', '', 'new'),
(4, 'Website', 1, '', '', '', '', '', 'new'),
(5, 'PMS', 1, '', '', '', '', '', 'new'),
(6, 'Bulk sms', 1, '', '', '', '', '', 'new'),
(7, 'Pos', 1, '', '', '', '', '', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `nhif`
--

CREATE TABLE IF NOT EXISTS `nhif` (
  `id` int(50) NOT NULL,
  `start` decimal(10,2) NOT NULL,
  `end` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `branchid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `category` varchar(20) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhif`
--

INSERT INTO `nhif` (`id`, `start`, `end`, `amount`, `branchid`, `companyid`, `status`, `category`, `userid`) VALUES
(1, '0.00', '5999.00', '150.00', 0, 1, 'active', 'employee', 1),
(2, '6000.00', '7999.00', '300.00', 0, 1, 'active', 'employee', 1),
(3, '8000.00', '11999.00', '400.00', 0, 1, 'active', 'employee', 1),
(4, '12000.00', '14999.00', '500.00', 0, 1, 'active', 'employee', 1),
(5, '15000.00', '19999.00', '600.00', 0, 1, 'active', 'employee', 1),
(6, '20000.00', '24999.00', '750.00', 0, 1, 'active', 'employee', 1),
(7, '25000.00', '29999.00', '850.00', 0, 1, 'active', 'employee', 1),
(8, '30000.00', '34999.00', '900.00', 0, 1, 'active', 'employee', 1),
(9, '35000.00', '39000.00', '950.00', 0, 1, 'active', 'employee', 1),
(10, '40000.00', '44999.00', '1000.00', 0, 1, 'active', 'employee', 1),
(11, '45000.00', '49000.00', '1100.00', 0, 1, 'active', 'employee', 1),
(12, '50000.00', '59999.00', '1200.00', 0, 1, 'active', 'employee', 1),
(13, '60000.00', '69999.00', '1300.00', 0, 1, 'active', 'employee', 1),
(14, '70000.00', '79999.00', '1400.00', 0, 1, 'active', 'employee', 1),
(15, '80000.00', '89999.00', '1500.00', 0, 1, 'active', 'employee', 1),
(16, '90000.00', '99999.00', '1600.00', 0, 1, 'active', 'employee', 1),
(17, '100000.00', '99999999.00', '1700.00', 0, 1, 'active', 'employee', 1),
(18, '0.00', '0.00', '500.00', 0, 1, 'active', 'employer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nssf`
--

CREATE TABLE IF NOT EXISTS `nssf` (
  `id` int(11) NOT NULL,
  `start` decimal(10,2) NOT NULL,
  `end` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `branchid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `category` varchar(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `tire1` decimal(10,2) NOT NULL,
  `tire2` decimal(10,2) NOT NULL,
  `tire1tire2` decimal(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nssf`
--

INSERT INTO `nssf` (`id`, `start`, `end`, `amount`, `branchid`, `companyid`, `status`, `category`, `userid`, `tire1`, `tire2`, `tire1tire2`) VALUES
(1, '0.00', '3000.00', '180.00', 0, 1, 'active', 'employee', 1, '180.00', '0.00', '180.00'),
(2, '3000.00', '4500.00', '270.00', 0, 1, 'active', 'employee', 1, '270.00', '0.00', '270.00'),
(3, '4500.00', '6000.00', '360.00', 0, 1, 'active', 'employee', 1, '360.00', '0.00', '360.00'),
(4, '6000.00', '10000.00', '360.00', 0, 1, 'active', 'employee', 1, '360.00', '240.00', '600.00'),
(5, '10000.00', '14000.00', '360.00', 0, 1, 'active', 'employee', 1, '360.00', '480.00', '840.00'),
(6, '14000.00', '18000.00', '360.00', 0, 1, 'active', 'employee', 1, '360.00', '720.00', '1080.00'),
(7, '18000.00', '20000.00', '360.00', 0, 1, 'active', 'employee', 1, '360.00', '720.00', '1080.00'),
(8, '20000.00', '100000.00', '360.00', 0, 1, 'active', 'employee', 1, '360.00', '720.00', '1080.00'),
(9, '100000.00', '500000.00', '360.00', 0, 1, 'active', 'employee', 1, '360.00', '720.00', '1080.00');

-- --------------------------------------------------------

--
-- Table structure for table `offdays`
--

CREATE TABLE IF NOT EXISTS `offdays` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `offday` varchar(30) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `createdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of non working days';

-- --------------------------------------------------------

--
-- Table structure for table `offtypes`
--

CREATE TABLE IF NOT EXISTS `offtypes` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createdate` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offtypes`
--

INSERT INTO `offtypes` (`id`, `name`, `createdate`) VALUES
(1, 'All day is off', '2018-05-17 04:40:12am'),
(2, 'Morning is off', '2018-05-17 04:41:13am'),
(3, 'Afternoon is off', '2018-05-17 04:41:30am');

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE IF NOT EXISTS `orderlist` (
  `id` int(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `exactime` varchar(50) NOT NULL,
  `batchid` varchar(50) NOT NULL,
  `itemid` varchar(30) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `companyid` int(11) NOT NULL,
  `branchid` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outgoingstock`
--

CREATE TABLE IF NOT EXISTS `outgoingstock` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `total` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'newstock',
  `companyid` varchar(100) NOT NULL,
  `invoice_number` varchar(30) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `buyingprice` varchar(30) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'shop',
  `comments` text NOT NULL,
  `branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rmanyala@jkuat.ac.ke', '55addf31b644939f3e4e858a70d3fe997eeef74149f54eca8e593f9c077becea', '2016-07-02 02:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `paye`
--

CREATE TABLE IF NOT EXISTS `paye` (
  `id` int(11) NOT NULL,
  `start` decimal(10,2) NOT NULL,
  `end` decimal(15,2) NOT NULL,
  `amt` decimal(10,2) NOT NULL,
  `branchid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `percentage` decimal(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paye`
--

INSERT INTO `paye` (`id`, `start`, `end`, `amt`, `branchid`, `companyid`, `status`, `percentage`) VALUES
(1, '0.00', '24000.00', '24000.00', 1, 1, 'active', '10.00'),
(2, '24001.00', '40667.00', '16666.00', 1, 1, 'active', '15.00'),
(3, '40668.00', '57333.00', '16665.00', 1, 1, 'active', '20.00'),
(4, '57333.00', '1000000000.00', '57333.00', 1, 1, 'active', '25.00');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethodes`
--

CREATE TABLE IF NOT EXISTS `paymentmethodes` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `dateposted` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `companyid` varchar(30) NOT NULL,
  `type` text NOT NULL,
  `balance` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentmethodes`
--

INSERT INTO `paymentmethodes` (`id`, `name`, `description`, `status`, `dateposted`, `userid`, `companyid`, `type`, `balance`) VALUES
(1, 'MOBILE MONEY', '', 'active', '2018-03-24 04:57:04am', '1', '1', '', ''),
(2, 'MPESA', 'MPESA', 'active', '2018-03-24 04:57:18am', '1', '1', '1', ''),
(3, 'CASH', '', 'active', '2018-03-24 04:59:50am', '1', '1', '', ''),
(4, 'BANK', 'BANK', 'active', '2018-03-24 05:00:12am', '1', '1', '', ''),
(5, 'CARD', '', 'active', '2018-03-26 14:34:44pm', '1', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(100) NOT NULL,
  `paidto` varchar(100) NOT NULL,
  `paiby` varchar(100) NOT NULL,
  `paiddate` varchar(100) NOT NULL,
  `todate` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `approvedby` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `receiptno` varchar(100) NOT NULL DEFAULT 'no',
  `comments` text NOT NULL,
  `idno` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paymentsection`
--

CREATE TABLE IF NOT EXISTS `paymentsection` (
  `id` int(40) NOT NULL,
  `methodid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `companyid` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentsection`
--

INSERT INTO `paymentsection` (`id`, `methodid`, `name`, `description`, `createdat`, `updatedat`, `userid`, `companyid`) VALUES
(8, '2', 'KCB Bank', 'KCB Bank', '2016-04-20 10:39:59', '', '3', '3'),
(9, '2', 'Equity Bank', 'Equity Bank', '2016-04-20 10:40:10', '', '3', '3'),
(10, '4', 'cash', 'CASH', '2016-04-20 10:40:34', '', '3', '3'),
(11, '3', 'Lipa rent', '', '2016-04-20 10:40:48', '', '3', '3'),
(12, '1', 'Airtel Money', 'Airtel Money', '2016-04-20 10:41:17', '', '3', '3'),
(13, '1', 'M-pesa', 'M-pesa', '2016-04-20 10:41:32', '', '3', '3'),
(15, '6', 'Coparent', 'Coparent', '2016-05-25 04:21:55', '', '3', '3'),
(16, '2', 'Unaitas', 'Unaitas', '2017-12-16 06:51:45', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE IF NOT EXISTS `payroll` (
  `id` int(100) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nohours` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nodays` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nodaysyearly` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `annualsalary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monthlysalary` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dailysalary` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `vat` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `payee` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nssf` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nihf` text COLLATE utf8_unicode_ci NOT NULL,
  `employeeid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `advance` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updatedat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `companyid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `other` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loan` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `id` int(10) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `image_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'accommodation',
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `company` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` text COLLATE utf8_unicode_ci NOT NULL,
  `idno` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updatedat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `companyid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entrydate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jobstatus` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `department` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `passport` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ethnicity` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `religion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `salarystartdate` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `salaryreviewdate` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `bankname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `bankaccount` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paymentmode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `probationdate` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `relief` decimal(10,2) NOT NULL,
  `leavegroup` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `manager` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `marital` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `smstype` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `totalsms` decimal(10,2) NOT NULL,
  `apiaccount_id` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `service` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `county` int(11) NOT NULL,
  `province` int(11) NOT NULL,
  `box` int(11) NOT NULL,
  `town` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updatedate` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `recoverpassword` int(11) NOT NULL,
  `createddate` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `kra` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nssf` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nhif` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `supplierbalance` decimal(10,2) NOT NULL,
  `balanceuploaded` int(11) DEFAULT '0',
  `savedcoins` decimal(10,2) NOT NULL,
  `savedpoints` decimal(10,2) NOT NULL,
  `customerlimit` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `limitamount` decimal(10,2) NOT NULL,
  `dropdown` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `lastbalancedate` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `transactionid` int(11) NOT NULL,
  `accountname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `accountno` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `certificate` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `shares` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `certificateno` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `renewaldetails` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salesperson` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `firstname`, `surname`, `lastname`, `phone`, `email`, `password`, `address_1`, `gender`, `city`, `zip`, `country`, `comments`, `image_id`, `category`, `status`, `company`, `account`, `website`, `idno`, `balance`, `userid`, `createdate`, `updatedat`, `companyid`, `entrydate`, `jobstatus`, `salary`, `department`, `dob`, `passport`, `ethnicity`, `religion`, `salarystartdate`, `salaryreviewdate`, `bankname`, `bankaccount`, `paymentmode`, `method`, `probationdate`, `number`, `relief`, `leavegroup`, `manager`, `marital`, `smstype`, `totalsms`, `apiaccount_id`, `photo`, `code`, `service`, `usertype`, `username`, `county`, `province`, `box`, `town`, `updatedate`, `recoverpassword`, `createddate`, `rate`, `kra`, `nssf`, `nhif`, `paid`, `supplierbalance`, `balanceuploaded`, `savedcoins`, `savedpoints`, `customerlimit`, `limitamount`, `dropdown`, `lastbalancedate`, `transactionid`, `accountname`, `accountno`, `certificate`, `shares`, `certificateno`, `renewaldetails`, `salesperson`) VALUES
(1, 'Robisearch', 'Manyala', 'robert', '254789927564', 'robisearch@gmail.com', '12345678', '', 'female', '', '', '', '', NULL, 'user', '1', 'Robisearch LTD', '', '', '', '-6620.00', '1', '2020-08-18', '', '1', '2020-04-13', 'Permanent', '20000.00', '', '2020-05-11', '', '', '', '2020-04-13', '2020-04-21', 'JKUAT KCB', '775879333', 'Monthly', '2', '2020-04-30', '900', '0.00', '', '', 'Single', '1', '67.00', 1, '', '', 'yes', 'admin', '', 0, 0, 0, '', '2019-01-26', 0, '2019-03-10', '0.00', '2342342234234', '3446666', '3446666', 'Yes', '2835.00', 0, '0.00', '3.99', 'no', '0.00', '', '2020-08-12 05:42:30', 0, '', '', '', '', '', NULL, NULL),
(2, 'Default', '', '', '254789927564', '', '', '4444', 'female', '', '2021-06-22', '1 ', '', NULL, 'member', '1', 'Customer A', '', '', '', '-454038.20', '1', '2020-07-21 13:47:04', '', '1', '2020-06-22', '', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', '', '', '0.00', 0, '', '', '', 'user', '', 0, 0, 0, '', '', 0, '', '0.00', '', '', '', '', '0.00', 0, '490.00', '300.27', 'no', '0.00', 'yes', '2020-08-13 05:00:18', 0, '', '', '', '', '', '', 'Kenga'),
(3, 'Nyambura', '', 'Nyambura', '254789927564', '', '', '', 'female', '', '', '1 ', '', NULL, 'supplier', '1', 'Default', '', '', '', '252600.00', '1', '2020-08-06 07:31:56', '', '1', '', '', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', '', '', '0.00', 0, '', '', '', 'user', '', 0, 0, 0, '', '', 0, '', '0.00', '', '', '', '', '93000.00', 0, '0.00', '0.00', 'no', '0.00', 'yes', '2020-08-06 15:48:12', 0, '', '', '', '', '', '', ''),
(4, 'Cashier', 'Cashier', NULL, 'Cashier', 'Cashier@gmail.com', '1111', '', 'female', '', '', '', '', NULL, 'user', '1', NULL, '', '', 'Cashier', '38950.00', '', '2020-07-20', '', '1', '', '', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', '', '', '0.00', 0, '', 'Cashier', 'no', 'user', '', 0, 0, 0, '', '', 0, '', NULL, '', '', '', '', '6000.00', 0, '0.00', '0.00', 'no', '0.00', '', '2020-08-18 05:01:26', 0, '', '', '', '', '', NULL, NULL),
(5, 'james Danniel', '', '', '254789927564', '', '', '', 'Male', '', '', '1 ', '', '9306391595236923', 'accomodation', '1', '', '', '', '234234324', '5323.80', '1', '2020-07-20 12:22:25', '', '1', '', '', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', '', '', '0.00', 0, '', '', '', 'user', '', 47, 0, 0, '', '', 0, '', NULL, '', '', '', '', '0.00', 0, '0.00', '0.00', 'no', '0.00', 'yes', '2020-08-14 13:56:08', 0, '', '', '', '', '', NULL, NULL),
(6, 'robisearch', '', '', '254718667391', '', '', 'ss', 'female', '', '', '1 ', '', NULL, 'member', '1', 'Manyala', '', '', 'ss', '1170.00', '1', '2020-08-13 05:30:03', '', '1', '', '', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', '', '', '0.00', 0, '', '', '', 'user', '', 0, 0, 0, '', '', 0, '', '0.00', '', '', '', '', '0.00', 0, '0.00', '0.00', 'no', '0.00', 'yes', '2020-08-13 05:30:05', 0, '', '', '', '', '', '', ''),
(14, '25ssss', '', NULL, '254714584582', '', '', '233332323', 'female', '', '2021-08-11', '1', '', NULL, 'member', '1', 'xxxxxxxx', '', '', '', '1150.00', '1', '2020-08-11 12:35:55', '', '1', '2020-08-11', '', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', '', '', '0.00', 0, '', '', '', 'user', '', 0, 0, 0, '', '', 0, '', NULL, '', '', '', '', '0.00', 0, '0.00', '0.00', 'no', '0.00', 'yes', '2020-08-18 04:52:59', 0, '', '', '', '', '', NULL, NULL),
(15, ' `type`', '', ' `companyid`', ' `description`) VALUES', NULL, '', '', NULL, '', '', '', '', NULL, 'accommodation', '1', NULL, '', '', ' `userid`', '0.00', '1', '2020-08-12 16:13:15', '', '1', '', '', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', '', '', '0.00', 0, '', '', '', 'user', '', 0, 0, 0, '', '', 0, '', NULL, '', '', '', '', '0.00', 0, '0.00', '0.00', 'no', '0.00', 'yes', '', 2147483647, '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE IF NOT EXISTS `periods` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `moduleid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`moduleid`, `userid`) VALUES
('accomodation', 1),
('accounting', 1),
('accountingreports', 1),
('assets', 1),
('bankdeposits', 1),
('banktransfer', 1),
('biometricrecords', 1),
('branch', 1),
('callcenter', 1),
('cashiersales', 1),
('complain', 1),
('config', 1),
('damagedproducts', 1),
('deals', 1),
('departments', 1),
('displayreport', 1),
('documents', 1),
('ecommerce', 1),
('events', 1),
('grouping', 1),
('humanresource', 1),
('income', 1),
('incomeexpenses', 1),
('incomingstock', 1),
('incomingstore', 1),
('journalentry', 1),
('labourrecords', 1),
('leavemanagement', 1),
('lowproducts', 1),
('lowstocklist', 1),
('members', 1),
('password', 1),
('payroll', 1),
('payrollsetup', 1),
('productlist', 1),
('products', 1),
('productscategory', 1),
('profile', 1),
('purchases', 1),
('recorddelivery', 1),
('reports', 1),
('sales', 1),
('sendsms', 1),
('task', 1),
('taskscategory', 1),
('users', 1),
('viewreturnsales', 1),
('wholesale', 1),
('cashiersales', 4),
('password', 4),
('purchases', 4),
('sales', 4);

-- --------------------------------------------------------

--
-- Table structure for table `permissionsactions`
--

CREATE TABLE IF NOT EXISTS `permissionsactions` (
  `id` int(11) NOT NULL,
  `moduleid` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `actionid` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20840 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissionsactions`
--

INSERT INTO `permissionsactions` (`id`, `moduleid`, `userid`, `actionid`) VALUES
(19166, 'sales', '4', 'printreceipt'),
(19167, 'sales', '4', 'add'),
(19168, 'sales', '4', 'update'),
(19169, 'sales', '4', 'cash'),
(19170, 'sales', '4', 'sale'),
(19171, 'sales', '4', 'select'),
(19172, 'sales', '4', 'order'),
(19173, 'sales', '4', 'productdiscount'),
(19174, 'sales', '4', 'mpesa'),
(19175, 'sales', '4', 'clearpayments'),
(19176, 'sales', '4', 'editsellingprice'),
(19177, 'sales', '4', 'card'),
(19178, 'sales', '4', 'updatepaymentmode'),
(19179, 'sales', '4', 'creditnote'),
(19180, 'sales', '4', 'cheque'),
(19181, 'sales', '4', 'points'),
(19182, 'sales', '4', 'voucher'),
(19183, 'sales', '4', 'credit'),
(19184, 'sales', '4', 'dontprint'),
(19185, 'sales', '4', 'recordcoins'),
(19186, 'sales', '4', 'changetaxstatus'),
(19187, 'sales', '4', 'giveloyalityponts'),
(19188, 'cashiersales', '4', 'cashiersales'),
(19189, 'purchases', '4', 'add'),
(19190, 'purchases', '4', 'update'),
(19191, 'purchases', '4', 'delete'),
(19192, 'purchases', '4', 'updatebuyingprice'),
(19193, 'purchases', '4', 'updatesellingprice'),
(19194, 'purchases', '4', 'viewquotation'),
(19195, 'purchases', '4', 'viewdirectpurchases'),
(19196, 'purchases', '4', 'viewserials'),
(19197, 'purchases', '4', 'viewpurchase'),
(19198, 'purchases', '4', 'budget'),
(19199, 'purchases', '4', 'salesorder'),
(19200, 'purchases', '4', 'showdefaultserials'),
(19201, 'purchases', '4', 'approve'),
(19202, 'password', '4', 'change'),
(20566, 'sales', '1', 'printreceipt'),
(20567, 'sales', '1', 'add'),
(20568, 'sales', '1', 'update'),
(20569, 'sales', '1', 'cash'),
(20570, 'sales', '1', 'delete'),
(20571, 'sales', '1', 'sale'),
(20572, 'sales', '1', 'moresales'),
(20573, 'sales', '1', 'reprint'),
(20574, 'sales', '1', 'select'),
(20575, 'sales', '1', 'mpesabalance'),
(20576, 'sales', '1', 'Logout'),
(20577, 'sales', '1', 'productdiscount'),
(20578, 'sales', '1', 'printbill'),
(20579, 'sales', '1', 'mpesa'),
(20580, 'sales', '1', 'closebill'),
(20581, 'sales', '1', 'viewbuyingprice'),
(20582, 'sales', '1', 'clearpayments'),
(20583, 'sales', '1', 'editsellingprice'),
(20584, 'sales', '1', 'card'),
(20585, 'sales', '1', 'updatepaymentmode'),
(20586, 'sales', '1', 'creditnote'),
(20587, 'sales', '1', 'cheque'),
(20588, 'sales', '1', 'salesbeyondbprice'),
(20589, 'sales', '1', 'points'),
(20590, 'sales', '1', 'voucher'),
(20591, 'sales', '1', 'credit'),
(20592, 'sales', '1', 'dontprint'),
(20593, 'sales', '1', 'recordcoins'),
(20594, 'sales', '1', 'changetaxstatus'),
(20595, 'sales', '1', 'giveloyalityponts'),
(20596, 'wholesale', '1', 'sale'),
(20597, 'wholesale', '1', 'add'),
(20598, 'wholesale', '1', 'delete'),
(20599, 'wholesale', '1', 'update'),
(20600, 'cashiersales', '1', 'entermpesacode'),
(20601, 'cashiersales', '1', 'editmpesa'),
(20602, 'cashiersales', '1', 'all'),
(20603, 'cashiersales', '1', 'delete'),
(20604, 'cashiersales', '1', 'cashiersales'),
(20605, 'cashiersales', '1', 'editmpesadate'),
(20606, 'cashiersales', '1', 'adddailycollection'),
(20607, 'cashiersales', '1', 'viewdailycollections'),
(20608, 'cashiersales', '1', 'viewtill'),
(20609, 'cashiersales', '1', 'deletedailycollections'),
(20610, 'cashiersales', '1', 'reversempesa'),
(20611, 'cashiersales', '1', 'updatedailycollections'),
(20612, 'cashiersales', '1', 'clearallsales'),
(20613, 'cashiersales', '1', 'viewallcollections'),
(20614, 'cashiersales', '1', 'mpesapendingreport'),
(20615, 'cashiersales', '1', 'mpesaverifiedreport'),
(20616, 'recorddelivery', '1', 'add'),
(20617, 'recorddelivery', '1', 'view'),
(20618, 'recorddelivery', '1', 'update'),
(20619, 'recorddelivery', '1', 'delete'),
(20620, 'recorddelivery', '1', 'changestatus'),
(20621, 'recorddelivery', '1', 'report'),
(20622, 'recorddelivery', '1', 'Dispatched'),
(20623, 'recorddelivery', '1', 'FailedDelivery'),
(20624, 'recorddelivery', '1', 'ReturnedandReceived'),
(20625, 'recorddelivery', '1', 'Delivered'),
(20626, 'recorddelivery', '1', 'Claimraised'),
(20627, 'recorddelivery', '1', 'ClaimOK'),
(20628, 'recorddelivery', '1', 'ClaimDamaged'),
(20629, 'purchases', '1', 'add'),
(20630, 'purchases', '1', 'update'),
(20631, 'purchases', '1', 'delete'),
(20632, 'purchases', '1', 'updatebuyingprice'),
(20633, 'purchases', '1', 'updatesellingprice'),
(20634, 'purchases', '1', 'updateclosedinvoice'),
(20635, 'purchases', '1', 'viewquotation'),
(20636, 'purchases', '1', 'viewdirectpurchases'),
(20637, 'purchases', '1', 'viewserials'),
(20638, 'purchases', '1', 'viewpurchase'),
(20639, 'purchases', '1', 'budget'),
(20640, 'purchases', '1', 'salesorder'),
(20641, 'purchases', '1', 'showdefaultserials'),
(20642, 'purchases', '1', 'approve'),
(20643, 'viewreturnsales', '1', 'add'),
(20644, 'viewreturnsales', '1', 'update'),
(20645, 'viewreturnsales', '1', 'delete'),
(20646, 'viewreturnsales', '1', 'return'),
(20647, 'viewreturnsales', '1', 'clear'),
(20648, 'viewreturnsales', '1', 'moresales'),
(20649, 'income', '1', 'View'),
(20650, 'income', '1', 'add'),
(20651, 'income', '1', 'wiewinvoices'),
(20652, 'income', '1', 'detailedvatinvoice'),
(20653, 'incomeexpenses', '1', 'add'),
(20654, 'incomeexpenses', '1', 'closeexpense'),
(20655, 'incomeexpenses', '1', 'update'),
(20656, 'incomeexpenses', '1', 'updateclosedexpenses'),
(20657, 'incomeexpenses', '1', 'wiewinvoices'),
(20658, 'incomeexpenses', '1', 'viewbills'),
(20659, 'incomeexpenses', '1', 'viewdebtors'),
(20660, 'incomeexpenses', '1', 'viewcreditors'),
(20661, 'incomeexpenses', '1', 'postrentalexpenses'),
(20662, 'accomodation', '1', 'viewhouse'),
(20663, 'accomodation', '1', 'viewrooms'),
(20664, 'accomodation', '1', 'dailysales'),
(20665, 'accomodation', '1', 'addhouse'),
(20666, 'accomodation', '1', 'credit'),
(20667, 'accomodation', '1', 'cheque'),
(20668, 'accomodation', '1', 'mpesa'),
(20669, 'accomodation', '1', 'checkinroom'),
(20670, 'accomodation', '1', 'points'),
(20671, 'accomodation', '1', 'cash'),
(20672, 'accomodation', '1', 'card'),
(20673, 'accomodation', '1', 'voucher'),
(20674, 'accomodation', '1', 'checkoutroom'),
(20675, 'accomodation', '1', 'addroom'),
(20676, 'accomodation', '1', 'updatecharges'),
(20677, 'accomodation', '1', 'checkin'),
(20678, 'accomodation', '1', 'cleanrooms'),
(20679, 'accomodation', '1', 'givediscount'),
(20680, 'accomodation', '1', 'addcharges'),
(20681, 'accomodation', '1', 'postexpense'),
(20682, 'accomodation', '1', 'updatehouse'),
(20683, 'accomodation', '1', 'updateroom'),
(20684, 'accomodation', '1', 'Post Bank Deposits'),
(20685, 'accomodation', '1', 'managehotel'),
(20686, 'accomodation', '1', 'assignrooms'),
(20687, 'accomodation', '1', 'managerental'),
(20688, 'accomodation', '1', 'housekeeping'),
(20689, 'accomodation', '1', 'changepayment'),
(20690, 'accomodation', '1', 'customerregister'),
(20691, 'accomodation', '1', 'dailypayments'),
(20692, 'accomodation', '1', 'advancebooking'),
(20693, 'accomodation', '1', 'checkoutcustomerwithbalance'),
(20694, 'accomodation', '1', 'managecustomer'),
(20695, 'accomodation', '1', 'viewreports'),
(20696, 'accomodation', '1', 'accommodationreceiptionist'),
(20697, 'accomodation', '1', 'config'),
(20698, 'accomodation', '1', 'viewroomcleaned'),
(20699, 'accomodation', '1', 'dailycollections'),
(20700, 'branch', '1', 'add'),
(20701, 'branch', '1', 'view'),
(20702, 'branch', '1', 'update'),
(20703, 'branch', '1', 'delete'),
(20704, 'members', '1', 'add'),
(20705, 'members', '1', 'update'),
(20706, 'users', '1', 'add'),
(20707, 'users', '1', 'update'),
(20708, 'users', '1', 'delete'),
(20709, 'users', '1', 'deleteallroles'),
(20710, 'productscategory', '1', 'add'),
(20711, 'productscategory', '1', 'update'),
(20712, 'productscategory', '1', 'delete'),
(20713, 'productlist', '1', 'bulk'),
(20714, 'productlist', '1', 'move'),
(20715, 'productlist', '1', 'updatestock'),
(20716, 'productlist', '1', 'more'),
(20717, 'productlist', '1', 'transfer'),
(20718, 'productlist', '1', 'addstock'),
(20719, 'productlist', '1', 'delete'),
(20720, 'productlist', '1', 'view'),
(20721, 'productlist', '1', 'update'),
(20722, 'productlist', '1', 'add'),
(20723, 'productlist', '1', 'openclosestock'),
(20724, 'productlist', '1', 'stocktaking'),
(20725, 'productlist', '1', 'editstocktaken'),
(20726, 'productlist', '1', 'editopenclosestock'),
(20727, 'productlist', '1', 'changeserialstatus'),
(20728, 'productlist', '1', 'viewserials'),
(20729, 'products', '1', 'add'),
(20730, 'products', '1', 'update'),
(20731, 'products', '1', 'delete'),
(20732, 'products', '1', 'more'),
(20733, 'products', '1', 'addstock'),
(20734, 'products', '1', 'deleteorder'),
(20735, 'products', '1', 'bulk'),
(20736, 'products', '1', 'dispatch'),
(20737, 'products', '1', 'removestock'),
(20738, 'products', '1', 'price'),
(20739, 'products', '1', 'removeallstock'),
(20740, 'incomingstock', '1', 'add'),
(20741, 'incomingstock', '1', 'update'),
(20742, 'incomingstock', '1', 'view'),
(20743, 'incomingstock', '1', 'delete'),
(20744, 'incomingstore', '1', 'add'),
(20745, 'incomingstore', '1', 'delete'),
(20746, 'incomingstore', '1', 'view'),
(20747, 'lowstocklist', '1', 'add'),
(20748, 'lowstocklist', '1', 'more'),
(20749, 'lowstocklist', '1', 'view'),
(20750, 'lowproducts', '1', 'add'),
(20751, 'lowproducts', '1', 'update'),
(20752, 'damagedproducts', '1', 'add'),
(20753, 'damagedproducts', '1', 'update'),
(20754, 'damagedproducts', '1', 'delete'),
(20755, 'assets', '1', 'add'),
(20756, 'assets', '1', 'update'),
(20757, 'assets', '1', 'delete'),
(20758, 'accounting', '1', 'deletebank'),
(20759, 'accounting', '1', 'deleteglaccount'),
(20760, 'accounting', '1', 'view'),
(20761, 'bankdeposits', '1', 'add'),
(20762, 'bankdeposits', '1', 'update'),
(20763, 'bankdeposits', '1', 'delete'),
(20764, 'banktransfer', '1', 'add'),
(20765, 'journalentry', '1', 'add'),
(20766, 'accountingreports', '1', 'view'),
(20767, 'departments', '1', 'add'),
(20768, 'payrollsetup', '1', 'add'),
(20769, 'labourrecords', '1', 'add'),
(20770, 'leavemanagement', '1', 'add'),
(20771, 'biometricrecords', '1', 'add'),
(20772, 'payroll', '1', 'add'),
(20773, 'reports', '1', 'view'),
(20774, 'reports', '1', 'download'),
(20775, 'reports', '1', 'delete'),
(20776, 'reports', '1', 'update'),
(20777, 'reports', '1', 'viewall'),
(20778, 'displayreport', '1', 'view'),
(20779, 'grouping', '1', 'add'),
(20780, 'grouping', '1', 'update'),
(20781, 'grouping', '1', 'delete'),
(20782, 'sendsms', '1', 'add'),
(20783, 'sendsms', '1', 'update'),
(20784, 'sendsms', '1', 'delete'),
(20785, 'sendsms', '1', 'transfersms'),
(20786, 'documents', '1', 'add'),
(20787, 'documents', '1', 'update'),
(20788, 'documents', '1', 'delete'),
(20789, 'documents', '1', 'viewalldocuments'),
(20790, 'humanresource', '1', 'add'),
(20791, 'humanresource', '1', 'update'),
(20792, 'humanresource', '1', 'approve'),
(20793, 'humanresource', '1', 'delete'),
(20794, 'humanresource', '1', 'view'),
(20795, 'humanresource', '1', 'allocate'),
(20796, 'humanresource', '1', 'viewallpayroll'),
(20797, 'humanresource', '1', 'leavesetup'),
(20798, 'humanresource', '1', 'allleaves '),
(20799, 'humanresource', '1', 'bioattendance'),
(20800, 'taskscategory', '1', 'add'),
(20801, 'taskscategory', '1', 'update'),
(20802, 'taskscategory', '1', 'delete'),
(20803, 'task', '1', 'add'),
(20804, 'task', '1', 'viewall'),
(20805, 'task', '1', 'update'),
(20806, 'task', '1', 'delete'),
(20807, 'task', '1', 'postspecifictask'),
(20808, 'task', '1', 'postgeneraltask'),
(20809, 'task', '1', 'viewothersspecifictask'),
(20810, 'task', '1', 'viewothersgeneraltask'),
(20811, 'task', '1', 'assigntask'),
(20812, 'task', '1', 'posttaskforothers'),
(20813, 'callcenter', '1', 'add'),
(20814, 'callcenter', '1', 'upadate'),
(20815, 'callcenter', '1', 'view'),
(20816, 'callcenter', '1', 'delete'),
(20817, 'deals', '1', 'add'),
(20818, 'deals', '1', 'update'),
(20819, 'deals', '1', 'delete'),
(20820, 'deals', '1', 'viewall'),
(20821, 'complain', '1', 'add'),
(20822, 'complain', '1', 'view'),
(20823, 'complain', '1', 'update'),
(20824, 'complain', '1', 'allcompalin'),
(20825, 'complain', '1', 'delete'),
(20826, 'events', '1', 'add'),
(20827, 'events', '1', 'update'),
(20828, 'events', '1', 'delete'),
(20829, 'password', '1', 'change'),
(20830, 'profile', '1', 'update'),
(20831, 'ecommerce', '1', 'add'),
(20832, 'ecommerce', '1', 'update'),
(20833, 'ecommerce', '1', 'delete'),
(20834, 'ecommerce', '1', 'vieworders'),
(20835, 'ecommerce', '1', 'setup'),
(20836, 'ecommerce', '1', 'approveorders'),
(20837, 'config', '1', 'delete'),
(20838, 'config', '1', 'add'),
(20839, 'config', '1', 'update');

-- --------------------------------------------------------

--
-- Table structure for table `plot`
--

CREATE TABLE IF NOT EXISTS `plot` (
  `id` int(40) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `agentid` varchar(100) NOT NULL,
  `landlordid` varchar(100) NOT NULL,
  `totalhouse` varchar(100) NOT NULL,
  `country` varchar(40) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `userid` varchar(100) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `accountno` varchar(100) NOT NULL,
  `commission` varchar(100) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1',
  `tax` decimal(10,2) NOT NULL,
  `bank` text NOT NULL,
  `branch` text NOT NULL,
  `penalty` decimal(10,2) NOT NULL,
  `category` varchar(30) NOT NULL DEFAULT 'rental',
  `branchid` int(11) NOT NULL,
  `penaltytype` varchar(30) NOT NULL DEFAULT 'percentage',
  `areas` varchar(30) NOT NULL DEFAULT 'yes',
  `coparent` varchar(30) NOT NULL DEFAULT 'yes',
  `water` varchar(30) NOT NULL DEFAULT 'yes',
  `garbage` varchar(30) NOT NULL DEFAULT 'yes',
  `power` varchar(30) NOT NULL DEFAULT 'yes',
  `showpenalty` varchar(30) NOT NULL,
  `partial` varchar(30) NOT NULL DEFAULT '',
  `vat2` decimal(10,0) DEFAULT '0',
  `invoicedate` varchar(10) NOT NULL DEFAULT '01',
  `penaltydate` varchar(10) NOT NULL DEFAULT '10',
  `duedate` varchar(30) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plot`
--

INSERT INTO `plot` (`id`, `code`, `name`, `location`, `agentid`, `landlordid`, `totalhouse`, `country`, `createdat`, `updatedat`, `description`, `userid`, `accountname`, `accountno`, `commission`, `companyid`, `status`, `tax`, `bank`, `branch`, `penalty`, `category`, `branchid`, `penaltytype`, `areas`, `coparent`, `water`, `garbage`, `power`, `showpenalty`, `partial`, `vat2`, `invoicedate`, `penaltydate`, `duedate`) VALUES
(1, '', 'JUJA', 'JUJA', '3 ', '3 ', '50', '1 ', '2020-07-14 09:21:48', '', '', '1', '', '', '', '1', '1', '0.00', '', '', '10.00', 'accommodation', 1, 'percentage', 'no', 'no', 'no', 'no', 'no', 'no', 'no', NULL, '01', '10', '10'),
(2, '', 'KATUNDA', 'MOMBASA', '4 ', '3 ', '5', '1 ', '2020-07-29 06:25:55', '2020-07-29 06:25:55', '', '1', '', '', '', '1', '1', '14.00', '', '', '10.00', 'rental', 1, 'percentage ', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'no', NULL, '01', '31', '10');

-- --------------------------------------------------------

--
-- Table structure for table `plotcharges`
--

CREATE TABLE IF NOT EXISTS `plotcharges` (
  `id` int(100) NOT NULL,
  `chargeid` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `plotno` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `order` int(10) NOT NULL,
  `plotcharges` int(5) NOT NULL DEFAULT '1',
  `companyid` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plotcharges`
--

INSERT INTO `plotcharges` (`id`, `chargeid`, `description`, `plotno`, `cost`, `status`, `createdat`, `updatedat`, `userid`, `order`, `plotcharges`, `companyid`) VALUES
(1, '1 ', '', '2', '0', 'active', '2020-07-20 12:21:02', '', '', 0, 1, 1),
(2, '2 ', '', '2', '0', 'active', '2020-07-20 12:21:16', '', '', 0, 1, 1),
(3, '11 ', '', '2', '150', 'active', '2020-07-20 12:21:28', '', '', 0, 1, 1),
(4, '5 ', '', '2', '200', 'active', '2020-07-20 12:21:43', '', '', 0, 1, 1),
(5, '4 ', '', '2', '0', 'active', '2020-07-28 06:43:57', '', '', 0, 1, 1),
(6, '12 ', '', '1', '0', 'active', '2020-08-06 06:32:41', '', '', 0, 1, 1),
(7, '13 ', '', '1', '0', 'active', '2020-08-06 06:32:53', '', '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `createdat` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedat` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `description`, `createdat`, `updatedat`, `total`) VALUES
(1, 'HOD', 'HOD', '2020-08-08 07:40:57am', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `postrecharge`
--

CREATE TABLE IF NOT EXISTS `postrecharge` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `userid` int(20) NOT NULL,
  `companyid` int(5) NOT NULL,
  `dateposted` varchar(30) NOT NULL,
  `paymentstatus` varchar(10) NOT NULL,
  `branch` int(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `balance` double(10,2) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `balancebefore` decimal(10,2) DEFAULT NULL,
  `units` decimal(10,2) NOT NULL,
  `code` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `business` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE IF NOT EXISTS `productcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` int(11) NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `maincategory` varchar(30) NOT NULL,
  `commission` varchar(20) NOT NULL DEFAULT '0',
  `shipping` varchar(20) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'Percentage'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productlist`
--

CREATE TABLE IF NOT EXISTS `productlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `supplier` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_included` int(10) NOT NULL DEFAULT '14',
  `buyingprice` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sellingprice` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `promoprice` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wholesaleprice` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reorderevel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `imgid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT '0',
  `is_service` int(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `qty` decimal(10,2) NOT NULL,
  `dateposted` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `companyid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `expdate` date NOT NULL,
  `shortname` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `store` text COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pcs',
  `producttype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Inventory',
  `vattype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'VATABLE',
  `orderamount` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'mainitem',
  `taxtype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Inclusive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(30) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `supplier` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_included` int(10) NOT NULL DEFAULT '14',
  `buyingprice` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sellingprice` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `promoprice` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wholesaleprice` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reorderevel` int(50) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `imgid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT '0',
  `is_service` int(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `qty` decimal(10,2) NOT NULL,
  `dateposted` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `companyid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `store` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `expdate` date NOT NULL,
  `shortname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `uom` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pcs',
  `producttype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Inventory',
  `assetaccount` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `salesaccount` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `expenseaccount` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `vattype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'VATABLE',
  `orderamount` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'mainitem',
  `taxtype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Inclusive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposal`
--

CREATE TABLE IF NOT EXISTS `proposal` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `companyid` int(11) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `version` varchar(50) NOT NULL,
  `package` varchar(50) NOT NULL,
  `exactdate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
  `id` int(20) NOT NULL,
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, '1', 'Central', 'Central', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '2', 'Coast', 'Coast', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '3', 'Eastern', 'Eastern', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '4', 'Nairobi', 'Nairobi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '5', 'North Eastern', 'North Eastern', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '6', 'Nyanza', 'Nyanza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '7', 'Rift valley', 'Rift valley', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '8', 'Western', 'Western', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE IF NOT EXISTS `purchaseorder` (
  `id` int(11) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `orderdate` varchar(30) NOT NULL,
  `ordernumber` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `userid` varchar(30) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `orderedby` text NOT NULL,
  `shippingto` text NOT NULL,
  `canceldate` varchar(30) NOT NULL,
  `deliverymethod` varchar(30) NOT NULL,
  `fob` text NOT NULL,
  `terms` text NOT NULL,
  `deliverydate` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'p.o',
  `amount` decimal(10,2) NOT NULL,
  `companyid` varchar(30) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `fromdate` varchar(30) NOT NULL,
  `paiddate` varchar(30) NOT NULL,
  `updateddate` varchar(30) NOT NULL,
  `updatedid` varchar(30) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `vattype` varchar(10) NOT NULL,
  `vat` varchar(20) NOT NULL,
  `taxable` decimal(10,2) NOT NULL,
  `vatrate` varchar(20) NOT NULL,
  `paid` varchar(20) NOT NULL,
  `transactionstatus` varchar(20) NOT NULL DEFAULT 'open',
  `remarks` text NOT NULL,
  `entrydate` varchar(20) NOT NULL,
  `branchid` int(11) NOT NULL,
  `controller` int(11) NOT NULL,
  `approvalstatus` varchar(30) NOT NULL DEFAULT 'new',
  `branchto` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorderlist`
--

CREATE TABLE IF NOT EXISTS `purchaseorderlist` (
  `id` int(30) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `salestype` varchar(100) NOT NULL,
  `sprice` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `dateposted` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `user` varchar(50) NOT NULL,
  `bprice` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'cash',
  `tax` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `maincategory` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` varchar(30) DEFAULT 'new',
  `branch` varchar(30) NOT NULL,
  `ordersales` varchar(20) NOT NULL DEFAULT 'new',
  `unit` varchar(10) NOT NULL,
  `totalweight` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE IF NOT EXISTS `quotation` (
  `id` int(30) NOT NULL,
  `supplier` text NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `orderdate` varchar(30) NOT NULL,
  `ordernumber` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `userid` varchar(30) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `orderedby` text NOT NULL,
  `shippingto` text NOT NULL,
  `canceldate` varchar(30) NOT NULL,
  `deliverymethod` varchar(30) NOT NULL,
  `fob` text NOT NULL,
  `terms` text NOT NULL,
  `deliverydate` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'new',
  `amount` varchar(30) NOT NULL,
  `companyid` varchar(30) NOT NULL,
  `preparedby` varchar(30) NOT NULL,
  `weight` varchar(10) NOT NULL DEFAULT 'No',
  `branchid` int(30) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`id`, `supplier`, `invoice`, `orderdate`, `ordernumber`, `description`, `userid`, `createdate`, `orderedby`, `shippingto`, `canceldate`, `deliverymethod`, `fob`, `terms`, `deliverydate`, `status`, `amount`, `companyid`, `preparedby`, `weight`, `branchid`) VALUES
(1, 'ok', '11597400081', '2020-08-14 13:14:42', '', '', '1', '2020-08-14 13:26:04', 'ROBERT', '', '2020-08-14 13:14:42', '', '', 'eee', '', 'new', '73800', '1', '1', 'No', 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE IF NOT EXISTS `receipt` (
  `id` int(40) NOT NULL,
  `plotno` varchar(60) NOT NULL,
  `houseno` varchar(40) NOT NULL,
  `tenantid` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `paymentstatus` varchar(40) NOT NULL,
  `paymentmode` varchar(40) NOT NULL,
  `transactioncode` varchar(100) DEFAULT NULL,
  `approvedby` varchar(60) NOT NULL,
  `approvaldate` varchar(60) NOT NULL,
  `overpayment` varchar(40) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `companyid` varchar(100) NOT NULL,
  `paidby` varchar(50) NOT NULL,
  `exactime` varchar(30) NOT NULL,
  `paymentcode` varchar(30) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `branchid` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recharge`
--

CREATE TABLE IF NOT EXISTS `recharge` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `userid` int(20) NOT NULL,
  `companyid` int(5) NOT NULL,
  `dateposted` varchar(30) NOT NULL,
  `paymentstatus` varchar(10) NOT NULL,
  `branch` int(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `balance` double(10,2) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `balancebefore` decimal(10,2) NOT NULL,
  `units` decimal(10,2) NOT NULL,
  `code` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `business` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recharge`
--

INSERT INTO `recharge` (`id`, `amount`, `userid`, `companyid`, `dateposted`, `paymentstatus`, `branch`, `type`, `description`, `balance`, `rate`, `balancebefore`, `units`, `code`, `phone`, `business`) VALUES
(1, '150.00', 1, 1, '2020-08-03 09:13:09pm', '', 0, '', '', 150.00, '1.00', '0.00', '150.00', '4444888', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` int(50) NOT NULL,
  `country` varchar(60) NOT NULL,
  `type` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `category` varchar(30) NOT NULL,
  `contact` varchar(60) NOT NULL,
  `place` varchar(60) NOT NULL,
  `occurancedate` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `postedtime` varchar(60) NOT NULL,
  `userid` varchar(60) NOT NULL,
  `img_id` varchar(60) NOT NULL,
  `updatedtime` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roomcharges`
--

CREATE TABLE IF NOT EXISTS `roomcharges` (
  `id` int(11) NOT NULL,
  `roomid` varchar(40) NOT NULL,
  `plotno` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  `createdat` varchar(100) NOT NULL,
  `updatedat` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `companyid` varchar(30) NOT NULL,
  `chargeid` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomcharges`
--

INSERT INTO `roomcharges` (`id`, `roomid`, `plotno`, `cost`, `status`, `createdat`, `updatedat`, `userid`, `name`, `companyid`, `chargeid`) VALUES
(1, '4', '2', '5000', '', '2020-07-20 12:23:50pm', '', '1', '', '1', '1 '),
(2, '5', '2', '3000', '', '2020-07-20 12:24:18pm', '', '1', '', '1', '1 '),
(3, '6', '2', '10000', '', '2020-07-20 12:24:33pm', '', '1', '', '1', '1 '),
(4, '7', '2', '1500', '', '2020-07-29 10:24:44am', '', '1', '', '1', '1 '),
(5, '7', '2', '5000', '', '2020-07-29 10:24:49am', '', '1', '', '1', '2 '),
(6, '7', '2', '1500', '', '2020-07-29 10:24:56am', '', '1', '', '1', '5 '),
(7, '1', '1', '2000', '', '2020-08-06 06:33:22am', '', '1', '', '1', '13 '),
(8, '2', '1', '1500', '', '2020-08-06 06:33:31am', '', '1', '', '1', '12 '),
(9, '2', '1', '50000', '', '2020-08-06 06:33:36am', '', '1', '', '1', '13 '),
(10, '3', '1', '5000', '', '2020-08-06 06:33:47am', '', '1', '', '1', '12 ');

-- --------------------------------------------------------

--
-- Table structure for table `roomsales`
--

CREATE TABLE IF NOT EXISTS `roomsales` (
  `id` int(11) NOT NULL,
  `plotno` int(11) NOT NULL,
  `houseno` varchar(20) NOT NULL,
  `customerid` int(20) DEFAULT NULL,
  `dateposted` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `userid` int(20) NOT NULL,
  `companyid` int(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'New',
  `description` text NOT NULL,
  `updatedat` varchar(30) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `branch` int(11) NOT NULL,
  `invoice` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE IF NOT EXISTS `salary` (
  `id` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `companyid` int(15) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `pay` decimal(10,2) NOT NULL,
  `deductions` decimal(10,2) NOT NULL,
  `bonus` decimal(10,2) NOT NULL,
  `bankname` varchar(20) NOT NULL,
  `bankaccount` varchar(30) NOT NULL,
  `method` varchar(20) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `netsalry` decimal(10,2) NOT NULL,
  `gross` decimal(10,2) NOT NULL,
  `memberid` int(11) NOT NULL,
  `salaryyear` varchar(20) NOT NULL,
  `paymentmode` varchar(30) NOT NULL,
  `slarymonth` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `relief` decimal(10,2) NOT NULL,
  `salaryid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salarycharges`
--

CREATE TABLE IF NOT EXISTS `salarycharges` (
  `id` int(11) NOT NULL,
  `code` int(20) NOT NULL,
  `name` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'Minus',
  `amountmode` varchar(20) NOT NULL,
  `qtymode` varchar(20) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `unit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(30) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(20) NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL,
  `dateposted` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `cash` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `salestype` varchar(50) NOT NULL,
  `maindiscount` varchar(20) DEFAULT NULL,
  `discountedtotal` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL DEFAULT '1',
  `card` varchar(30) NOT NULL,
  `voucher` varchar(30) NOT NULL,
  `credit` varchar(30) NOT NULL,
  `points` varchar(30) NOT NULL,
  `mpesa` varchar(50) NOT NULL,
  `cheque` varchar(50) NOT NULL,
  `ordersales` varchar(20) DEFAULT 'printed',
  `description` text NOT NULL,
  `mytable` varchar(30) NOT NULL,
  `maincategory` varchar(30) DEFAULT NULL,
  `creditnote` varchar(30) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `paymentstatus` varchar(10) NOT NULL DEFAULT 'No',
  `updatedby` varchar(10) NOT NULL,
  `updatedat` varchar(50) NOT NULL,
  `plotno` varchar(20) NOT NULL,
  `houseno` varchar(20) NOT NULL,
  `baddebt` varchar(30) NOT NULL,
  `tax1` varchar(30) NOT NULL,
  `tax2` varchar(30) NOT NULL,
  `cardnumber` varchar(50) DEFAULT NULL,
  `savedcoins` decimal(10,2) NOT NULL,
  `savedpoints` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salesreport`
--

CREATE TABLE IF NOT EXISTS `salesreport` (
  `id` int(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `dateposted` varchar(50) NOT NULL,
  `user` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `reportdate` varchar(50) NOT NULL,
  `recommendation` text NOT NULL,
  `controller` varchar(40) NOT NULL,
  `companyid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE IF NOT EXISTS `sales_order` (
  `id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `salestype` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `dateposted` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `user` varchar(50) NOT NULL,
  `bprice` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'cash',
  `tax` decimal(10,2) NOT NULL,
  `sprice` varchar(100) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `maincategory` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` varchar(30) DEFAULT 'new',
  `branch` varchar(30) NOT NULL,
  `ordersales` varchar(20) NOT NULL DEFAULT 'new',
  `uom` varchar(30) NOT NULL,
  `sales` varchar(30) NOT NULL,
  `updatedat` varchar(50) NOT NULL,
  `updatedby` varchar(10) NOT NULL,
  `taxindicator` varchar(10) NOT NULL DEFAULT 'yes',
  `serial` varchar(50) DEFAULT NULL,
  `tax2` varchar(20) NOT NULL,
  `discountype` varchar(20) NOT NULL,
  `discountvalue` varchar(20) NOT NULL,
  `vattype` varchar(20) NOT NULL,
  `taxable` varchar(50) NOT NULL,
  `uomqty` varchar(30) NOT NULL DEFAULT '0',
  `stockbefore` varchar(30) NOT NULL,
  `stockafter` varchar(30) NOT NULL,
  `taxtype` varchar(30) NOT NULL DEFAULT 'Inclusive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `serials`
--

CREATE TABLE IF NOT EXISTS `serials` (
  `id` int(11) NOT NULL,
  `itemid` varchar(50) NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'new',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `code` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `qty` decimal(10,4) NOT NULL,
  `buyingprice` decimal(10,2) NOT NULL,
  `sellingprice` decimal(10,2) NOT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `serial` varchar(50) NOT NULL,
  `otherserial` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `batchno` int(11) NOT NULL,
  `myid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `serialstocktaking`
--

CREATE TABLE IF NOT EXISTS `serialstocktaking` (
  `id` int(10) NOT NULL,
  `code` varchar(50) NOT NULL,
  `open` decimal(10,2) NOT NULL,
  `added` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `branchid` int(10) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'open',
  `userid` int(30) NOT NULL,
  `companyid` int(30) NOT NULL,
  `startdate` varchar(30) NOT NULL,
  `closedate` varchar(10) NOT NULL,
  `updatedby` int(10) NOT NULL,
  `postedtime` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'open',
  `maincategory` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL,
  `sellingprice` varchar(20) NOT NULL,
  `buyingprice` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE IF NOT EXISTS `sms` (
  `id` int(30) NOT NULL,
  `contact` varchar(60) NOT NULL,
  `postedtime` varchar(40) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `smscount` int(11) NOT NULL,
  `messageId` int(11) NOT NULL,
  `response` text NOT NULL,
  `cost` int(11) NOT NULL,
  `bulkId` varchar(100) NOT NULL,
  `qty` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `contact`, `postedtime`, `message`, `status`, `userid`, `companyid`, `smscount`, `messageId`, `response`, `cost`, `bulkId`, `qty`) VALUES
(1, '254715667777', '2020-07-09 05:39:55pm', 'Welcome Nakumat.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(2, '254722811724', '2020-07-20 01:03:25pm', 'Kindly pay your rent by 21st June 2020. From XYz Company', 'active', '1', '1', 0, 0, '', 0, '', ''),
(3, '+254796883745', '2020-08-03 09:14:21pm', 'This is to inform you to check email for urgent action immediately.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(4, '254790975000', '2020-08-04 06:47:37am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position\r\nand done with your school as well as if you can avail yourself immediately. You should  send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(5, '254795526120', '2020-08-04 06:47:37am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position\r\nand done with your school as well as if you can avail yourself immediately. You should  send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(6, '254729208238', '2020-08-04 06:47:37am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position\r\nand done with your school as well as if you can avail yourself immediately. You should  send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(7, '254719554632', '2020-08-04 06:47:37am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position\r\nand done with your school as well as if you can avail yourself immediately. You should  send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(8, '254705999443', '2020-08-04 06:47:37am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position\r\nand done with your school as well as if you can avail yourself immediately. You should  send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(9, '254716130793', '2020-08-04 06:47:37am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position\r\nand done with your school as well as if you can avail yourself immediately. You should  send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(10, '254704678645', '2020-08-04 06:47:37am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position\r\nand done with your school as well as if you can avail yourself immediately. You should  send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(11, '254718067296', '2020-08-04 06:47:37am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position\r\nand done with your school as well as if you can avail yourself immediately. You should  send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(12, '254705468026', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(13, '254700834718', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(14, '254717364114', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(15, '254706166778', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(16, '254706166778', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(17, '254725315511', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(18, '254703870775', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(19, '254703870775', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(20, '254725851278', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(21, '254703600611', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(22, '254715663916', '2020-08-04 06:49:06am', 'Good morning, ROBISEARCH LTD would want to you to join our digital marketing team. Kindly call back(0718667391) from 7am if you are interested in this position and done with your school as well as if you can avail yourself immediately. You should send your application too through: info@robisearch.com by today. Kind Regards.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(23, '254789927564', '2020-08-06 07:08:24am', 'Hi! This is to inform you that room No 102 has been sold by   Manyala for Ksh. 1500.at  06/08/2020 07:08Kindly login to confirm from the system.Automatic sms.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(24, '254789927564', '2020-08-06 07:10:29am', 'Hi! This is to inform you that room No.103 has been sold by Manyala for Ksh. 5000. at  06/08/2020 07:10 Kindly login to confirm from the system.Automatic sms.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(25, '254789927564', '2020-08-06 07:12:03am', 'Hi! This is to inform you that room No.102 has been sold by Manyala for Ksh. 1500. at  06/08/2020 07:12am Kindly login to confirm from the system.Automatic sms.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(26, '254789927564', '2020-08-06 07:14:27am', 'Hi! This is to inform you that room No.102 has been sold by Manyala for Ksh.1500 on  06/08/2020 07:14am. Kindly login to confirm from the system.Automatic sms.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(27, '254789927564', '2020-08-06 07:30:52am', 'Dear ! You have been invoiced Ksh.5350 for Hs No.201 on  2020-08-06. Your total balance is Ksh.  234050 . Kindly ensure you pay your rent bills before .2020-08-06 to avoid penalty.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(28, '254789927564', '2020-08-06 07:34:31am', 'Dear ! You have been invoiced Ksh.5350 for Hs No.201 on  06/08/2020. Your total balance is Ksh.239400 . Kindly ensure you pay your rent bills before 06/08/2020 to avoid penalty.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(29, '254789927564', '2020-08-06 07:38:58am', 'Dear Nyambura! You have been invoiced Ksh.5350 for Hs No.201 on  06/08/2020. Your total balance is Ksh.244750 . Kindly ensure you pay your rent bills before 06/08/2020 to avoid penalty.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(30, '254789927564', '2020-08-08 07:42:52am', 'Dear Robisearch, Robisearch Manyala has applied for  2193.50 on 08/08/2020 07:42 regarding SSS. Check your erp for approval.', 'active', '1', '1', 0, 0, '', 0, '', ''),
(31, '254789927564', '2020-08-13 05:15:15am', 'Hello, this is to inform you that your invoice worth Ksh 360.00 with Receipt No 3   and  REF No 11597283993 has been generated. Click this link to print your Digital invoice: http://127.0.0.1:86/pos.robisearch.com/pintreceipt?refnumber=11597283993', 'active', '1', '1', 0, 0, '', 0, '', ''),
(32, '254789927564', '2020-08-13 05:41:30am', 'Hello, this is to inform you that your invoice worth Ksh 1,170.00 with Invoice No 4   and  REF No 11597285730 due on 28/08/2020  has been generated. Thank you for shopping with us. Click this link to print your Digital invoice: http://127.0.0.1:86/pos.robisearch.com/printinvoice?refnumber=11597285730', 'active', '1', '1', 0, 0, '', 0, '', ''),
(33, '254789927564', '2020-08-13 05:46:05am', 'Hello, this is to inform you that your invoice worth Ksh 1,170.00 with Invoice No 4   and  REF No 11597285730 due on 28/08/2020  has been generated. Thank you for shopping with us. Click this link to print your Digital invoice: http://127.0.0.1:86/pos.robisearch.com/printinvoice?refnumber=11597285730', 'active', '1', '1', 0, 0, '', 0, '', ''),
(34, '254789927564', '2020-08-13 05:46:32am', 'Hello, this is to inform you that your invoice worth Ksh 1,170.00 with Invoice No 4   and  REF No 11597285730 due on 28/08/2020  has been generated. Thank you for shopping with us. Click this link to print your Digital invoice: http://127.0.0.1:86/pos.robisearch.com/printinvoice?refnumber=11597285730', 'active', '1', '1', 0, 0, '', 0, '', ''),
(35, '254789927564', '2020-08-13 05:51:31am', 'Hello, this is to inform you that your invoice worth Ksh 1,170.00 with Invoice No 4   and  REF No 11597285730 due on 28/08/2020  has been generated. Thank you for shopping with us. Click this link to print your Digital invoice: http://127.0.0.1:86/pos.robisearch.com/printinvoice?refnumber=11597285730', 'active', '1', '1', 0, 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `smsconfig`
--

CREATE TABLE IF NOT EXISTS `smsconfig` (
  `id` int(30) NOT NULL,
  `username` text NOT NULL,
  `apikey` text NOT NULL,
  `from` varchar(50) NOT NULL,
  `link` text NOT NULL,
  `businessname` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `contactperson` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact2` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `currencysymbol` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `tax1rate` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax2rate` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `returnpolicy` text NOT NULL,
  `logo` text NOT NULL,
  `paymenttypes` text NOT NULL,
  `country` varchar(50) NOT NULL,
  `totalsms` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `updatedat` varchar(50) NOT NULL,
  `display1` varchar(5) NOT NULL,
  `display2` varchar(5) NOT NULL,
  `maindiscount` varchar(10) NOT NULL DEFAULT 'no',
  `receiptdescription` varchar(5) NOT NULL DEFAULT 'yes',
  `deadline` text NOT NULL,
  `tillno` text NOT NULL,
  `invoicedetails` text NOT NULL,
  `barcode` varchar(3) NOT NULL DEFAULT 'no',
  `deadlinedetails` text NOT NULL,
  `businesskey` text NOT NULL,
  `display` varchar(30) NOT NULL,
  `fromdate` varchar(30) NOT NULL,
  `todate` varchar(30) NOT NULL,
  `starttime` varchar(30) NOT NULL,
  `duetime` varchar(30) NOT NULL,
  `view` text NOT NULL,
  `receipt` varchar(50) NOT NULL,
  `mode` varchar(30) NOT NULL,
  `feedback` text NOT NULL,
  `sendfeedback` varchar(10) NOT NULL,
  `dublicate` varchar(10) NOT NULL,
  `smscompany` varchar(30) NOT NULL DEFAULT 'Infobip',
  `newuser` varchar(30) NOT NULL,
  `newpassword` varchar(30) NOT NULL,
  `senderid` varchar(30) NOT NULL,
  `leftoverview` text NOT NULL,
  `rightoverview` text NOT NULL,
  `assetaccount` varchar(50) NOT NULL,
  `salesaccount` varchar(50) NOT NULL,
  `expenseaccount` varchar(50) NOT NULL,
  `starthappyhour` varchar(20) NOT NULL,
  `endhappyhourse` varchar(20) NOT NULL,
  `statushappyhour` varchar(20) NOT NULL,
  `salesmethod` varchar(20) NOT NULL,
  `plot` int(11) NOT NULL DEFAULT '10',
  `defautpage` varchar(255) NOT NULL DEFAULT 'user/home',
  `ecommerce` varchar(10) NOT NULL DEFAULT 'deactivate'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smsconfig`
--

INSERT INTO `smsconfig` (`id`, `username`, `apikey`, `from`, `link`, `businessname`, `contact`, `location`, `email`, `code`, `description`, `contactperson`, `password`, `contact2`, `address`, `currencysymbol`, `tax1`, `tax1rate`, `tax2`, `tax2rate`, `website`, `returnpolicy`, `logo`, `paymenttypes`, `country`, `totalsms`, `userid`, `updatedat`, `display1`, `display2`, `maindiscount`, `receiptdescription`, `deadline`, `tillno`, `invoicedetails`, `barcode`, `deadlinedetails`, `businesskey`, `display`, `fromdate`, `todate`, `starttime`, `duetime`, `view`, `receipt`, `mode`, `feedback`, `sendfeedback`, `dublicate`, `smscompany`, `newuser`, `newpassword`, `senderid`, `leftoverview`, `rightoverview`, `assetaccount`, `salesaccount`, `expenseaccount`, `starthappyhour`, `endhappyhourse`, `statushappyhour`, `salesmethod`, `plot`, `defautpage`, `ecommerce`) VALUES
(1, '76', '0763a9ef91068d1723cf54a8b95bf1c5fc003cbb3a84ebe2f24d5ae9bb8f4318', 'Robisearch', '', '<H1 style="margin:0px;">DLIGHT LTD</H1>\r\nP.O BOX 159-50404 JUJA\r\nTELEPHONE:0738637711\r\nTILL NO::0708325411', '254738637711', 'BUMALA', 'support@robisearch.com', 'ROBISEARCHPOS', 'TRILOK  LIMITED<BR>	\r\nP.O BOX 1157-50205  Webuye Kenya<BR>	\r\nPHONE:0707283352; Pin No:A011559638G<BR>		\r\n', 'KJ WINES', 'e7bd1efe6cee0b56cf3b31d7fb5d01c7', '254708325411', '522522', 'Ksh', 'VAT', '14', '14', '2', 'RO0001', '  Goods once sold will not be returned ,Prices inclusive of vat where applicable, <br>We appreciate your valuable business', '2020-07-081594227653.jpg', '1', '1 ', '', '1', '2020-08-14 13:59:49', 'yes', 'no', 'no', 'no', 'OIEA5ak8Sr6f/lR0Q7Hqmpv/8MQ8GTTTeJ5jAIrmCM1x17DakUPy5XBtYlt5uHmK4UDlhACJ0+TjK3D+wXN1Vw==', '<center><h1>PAYBILL NO:924780</h1></center>', '<h3>Terms and Conditions.</h3>\r\n1. Period of warranty is strictly 1 Year .<br>\r\n', 'no', 'You were to renew your account by 11/7/2019 and you have not yet paid. Kindly send your money to our paybil no:522522  and Acc No:117121120 then system will continue working correctly', 'QVhr11LHmZ2px/k5UaE4oC5hGcS3l0voHUFYo3wYrthicTibclB4pF/xxr6djYDko+vE/m+twAbsOTn+oVhSwgcQC/HKhDOvXLj90Z2Ukzkv9U3tyzp77pcoK2/GEeTu', '100', 'Current', 'Current', '00:00', '23:59', 'Retail', 'One Without Automatic Logout', 'Before Receipt', 'thank you for shopping with us. From Robisearch LTD.', 'yes', 'yes', 'Advanta', 'ROBISEARCH', 'Robisearch@2018', 'ROBISEARCH', '<b>About Robisearch Ltd</b><br>\r\nRobisearch Ltd is an ICT youth based company that begun in 2011 as a result of innovations that transform lives globally. We are innovator behind Biometric lands system and digital birth card system that could help fight terrorisms. We are a member of the Nairobi Chambers (KNCCI) organization and AGPO. We offer attachment /internships opportunity to 60 students on annual basis as a way of creating job opportunity to youths in Kenya. We have great experience in dealing with customers having handled over 500 customers’ country wide. Some of services are:<p class="text-center">\r\n<h3>OUR SERVICES</h3>\r\nBelow are some of our services and solutions:<br>\r\n•	Biometric system for schools and business : Price= From Ksh.50,000<br>\r\n•	Bulk Sms services(Bulksms ChapChap) : Price= From Ksh.5,000<br>\r\n•	Best Erp/Point of Sale/ Inventory Control Software : Price= From Ksh.50,000<br>\r\n•	Property Management software that conforms to the Big 4 government agenda. : Price= From Ksh.100,000<br>\r\n\r\nNOTE: You can give discount upto 20% of the above selling price.\r\n</p>\r\n\r\n<p>\r\nOur Vision<br>\r\nTransforming the world through innovation<br>\r\nOur Mission<br>\r\nTo be the best ICT company offering innovate services globally.\r\nBiometric Systems rely mostly on information about a person to identify the person in such a way that specific data about unique biological traits are relied upon to work effectively.\r\nThe biometric School attendance system. This is an innovative system which is used by schools to track student movements. The system sends sms alert to the parents whenever students checks in and out of the schools. The system is also used as digital register to record students and staff attendances instead of manual signing of class register as well as managing payroll based on attendance. The system is also being used by business owners to get sms alert whenever employees checks in and out of the office. There are so many schools using this system and we recommend the same to any school and business. Some of them are JKUAT,Pumwani Hosiptal, Loreto Girls Kiambu,Mandera boys, Kwale boys, Kipsigis girls. Kericho TTC etc.\r\n<br>\r\n\r\n<br>Point of Sale(ROBIPOS) manages sales for any sales related businesses. This system helps business owners to track their daily sales and profit using their phones wherever they are. It has Lipa Na MPESA real time and sms alert. Sms is automatically sends to the computer whenever customer pays through any mobile payment. Also the customer gets automatic thank you message upon payment.\r\nThis system has been integrated with many modules that manages day to day transactions in our client’s business. The system has many functionalities but not limited to the following: Inventory tracking, sales management, customer management, products management, receipting, human resource, accounting module and can real-time Lipa na Mpesa module. \r\nThe sales management system can be used in diverse businesses like wholesales, boutiques, electrical and electronics, minimarts, supermarkets, cosmetic shops, jeweler shops and any retail businesses.\r\nOur POS system helps <br>\r\n?	Improve our customer’s experience by serving them in a fast and convenient way<br>\r\n?	Management of stock<br>\r\n?	 Presentable documents such as receipts, orders and reports are issued to customers of our clients.<br>\r\n?	Storage and retrieval of documents is made easier<br>\r\n?	Accuracy; scanning is more accurate than punching in numbers from a sticker or expecting the cashier to manually remember what each item costs.\r\n?	Analysis ;<br>\r\n?	 POS let our clients manage inventory, flag items for reorder and analyze sales patterns.<br>\r\nBulksms ChapChap is a bulk sms software which can be used to send sms/reminders to customers. It’s the most feasible and essential strategy to target a mass audience as a marketing and communication tool. Whether launching a new product or would like a nationwide announcement, or whether you want to remind people of a certain meeting or deal, our bulk sms manages all the requirements from start to finish.  The system can be used by anybody to manage their dairies since you can store all your appointments and activities then system will send you sms whenever that time reaches.  \r\nOur bulk sms comes with advantages such as;<br>\r\n?	Instant delivery of messages<br>\r\n?	 Flexible platform that can send over 10,000 sms once<br>\r\n?	The systems comes with a reminder to notify one of any pending deals<br>\r\n?	Sms can be stored, easily forwarded or tracked using delivery reports<br>\r\n?	Lower cost and time to be delivered than a phone call.<br>\r\n?	It is more reliable than emailing as the chances of the recipient reading the message is very high<br>\r\n?	Limitless market potential<br>\r\nOur clients include;Bulk sms: JKUAT, Elimu TV, Uwezo Fund, Moi forces Academy<br>\r\nBiometric: JKUAT, Orero Boys, Kayole High school<br>\r\nPoint of sale: Luna Park, Victoria Falls, Garrison Teachers College, Ndumia Group<br>\r\nwww.robisearch.com<br>\r\nhttp://www.bulksmschapchap.com/<br>\r\n\r\n\r\n</p>\r\n<p>\r\nFeel free to contact us: <br>\r\n<a href="http://www.robisearch.com/">www.robisearch.com</a> <br>\r\nEmail :info@robisearch.com<br>\r\nPhone: 0780655987<br>\r\nPhone: 0716413386<br>\r\nOur Offices are Nairobi-Nara and   Juja town<br>\r\n Experiencing any problem? Send an email to  <a href="mailto:info@robisearch.com">info@robisearch.com</a>  or <a href="mailto:robisearch@gmail.com">robisearch@gmail.com</a>  or follow  us on <a href="https://www.facebook.com/Robiearch?fref=ts">Facebook</a> or  on <a href="https://twitter.com/robisearch">Twitter.</a> . You can also view more on <a href="http://www.robisearch.com/"> our website</a>\r\n\r\n</p></b>\r\n   ', '<B> Reseller/Agent Benefits</b>\r\n	<br>\r\n1. Earn Commisiions <br>\r\n2. Get best offers <br>\r\n3. Get Incentives <br>\r\n	\r\n					<B> Reseller/Agent Categories</b>\r\n					We pay according to your effort hence it is based on commission.<br>\r\n					1. You will get 10% of what you sell on Monthly basis if you make between 1-5 sales per month.<br>\r\n					2. You will get 20% of what you sell on Monthly basis if you make between 6-20 sales per month.<br>\r\n					3. You will get 30% of what you sell on Monthly basis if you make above 21 sales per month.<br>\r\n', '1110', '4000', '5500', '14:00', '23:59', 'no', 'General', 10, 'user/viewsales', 'activate');

-- --------------------------------------------------------

--
-- Table structure for table `smstemplate`
--

CREATE TABLE IF NOT EXISTS `smstemplate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smstemplate`
--

INSERT INTO `smstemplate` (`id`, `name`, `description`, `createdate`, `status`, `userid`, `updatedate`, `companyid`) VALUES
(1, 'Closing Day1', 'Your daughter has been released for December holiday today.1', '2020-04-25 09:20:01am', 'active', '1', '', '1'),
(2, 'Opening Day', 'Your Daughter Has Just Arrived To School ', '2019-02-23 10:17:16am', 'active', '1', '', '1'),
(3, 'Closing Day', 'Your daughter has been released for December holiday today.', '2018-10-24 05:51:21pm', 'active', '1', '', '1'),
(4, 'MIDTERM', 'Parents/Guardians who came for Thanks Giving day will be allowed to leave with their daughters for half-term, others will leave on 17/02/19.', '2019-02-16 02:32:21pm', 'active', '1', '', '1'),
(5, 'Opening Day', 'Almost all the students turned up from April Holiday recess', '2019-04-30 04:30:08pm', 'active', '1', '', '1'),
(6, 'Board meeting', 'There will  be a board meeting for the directors.', '2019-05-18 03:02:06pm', 'active', '1', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sms_in`
--

CREATE TABLE IF NOT EXISTS `sms_in` (
  `id` int(11) NOT NULL,
  `sms_text` varchar(1600) DEFAULT NULL,
  `sender_number` varchar(50) DEFAULT NULL,
  `sent_dt` datetime DEFAULT NULL,
  `code` varchar(15) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `msisdn` int(20) NOT NULL DEFAULT '0',
  `used` int(5) NOT NULL DEFAULT '0',
  `exactime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `splitbill`
--

CREATE TABLE IF NOT EXISTS `splitbill` (
  `id` int(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `dateposted` varchar(50) NOT NULL,
  `batchid` varchar(50) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `companyid` int(11) NOT NULL,
  `branchid` int(11) NOT NULL,
  `batchno` int(11) NOT NULL,
  `description` text NOT NULL,
  `salesid` int(11) NOT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `originalinvoice` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `splitbillmaster`
--

CREATE TABLE IF NOT EXISTS `splitbillmaster` (
  `id` int(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `dateposted` varchar(50) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `companyid` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  `batchno` int(11) NOT NULL,
  `description` text NOT NULL,
  `originalinvoice` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statement`
--

CREATE TABLE IF NOT EXISTS `statement` (
  `id` int(30) NOT NULL,
  `account` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `crateddate` varchar(30) NOT NULL,
  `debit` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `balance` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `companyid` varchar(20) NOT NULL,
  `paymentmethodes` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `amount` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `refno` varchar(30) NOT NULL,
  `vatable` varchar(30) NOT NULL,
  `vat` varchar(30) NOT NULL,
  `tax` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Waiting Approval'),
(3, 'Approved'),
(4, 'Rejected'),
(5, 'Pending'),
(6, 'Returned');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `open` decimal(10,2) NOT NULL,
  `added` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `sold` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `totalamount` decimal(10,2) NOT NULL,
  `branchid` varchar(20) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'open',
  `userid` int(30) NOT NULL,
  `companyid` int(30) NOT NULL,
  `startdate` varchar(30) NOT NULL,
  `closedate` varchar(10) NOT NULL,
  `updatedby` int(10) NOT NULL,
  `postedtime` varchar(30) NOT NULL,
  `unsold` varchar(50) NOT NULL,
  `returned` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stocktaking`
--

CREATE TABLE IF NOT EXISTS `stocktaking` (
  `id` int(10) NOT NULL,
  `code` varchar(50) NOT NULL,
  `open` decimal(10,2) NOT NULL,
  `added` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `branchid` int(10) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'open',
  `userid` int(30) NOT NULL,
  `companyid` int(30) NOT NULL,
  `startdate` varchar(30) NOT NULL,
  `closedate` varchar(10) NOT NULL,
  `updatedby` int(10) NOT NULL,
  `postedtime` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'open',
  `maincategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `id` int(30) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `supplier` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_included` int(1) NOT NULL DEFAULT '0',
  `buyingprice` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sellingprice` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `promoprice` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wholesaleprice` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reorderevel` int(50) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `imgid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `override_default_tax` int(1) NOT NULL DEFAULT '0',
  `is_service` int(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `qty` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateposted` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `companyid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `store` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `expdate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `orderamount` text COLLATE utf8_unicode_ci NOT NULL,
  `shortname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `maincategory` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE IF NOT EXISTS `suggestions` (
  `id` int(50) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `postedtime` varchar(60) NOT NULL,
  `userid` varchar(60) NOT NULL,
  `img_id` varchar(60) NOT NULL,
  `updatedtime` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `title`, `description`, `postedtime`, `userid`, `img_id`, `updatedtime`, `status`) VALUES
(1, 'POS', 'best', '2019-07-12 05:44:51am', '1', '', '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE IF NOT EXISTS `supervisor` (
  `id` int(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `department` varchar(50) NOT NULL,
  `startdate` varchar(30) NOT NULL,
  `enddate` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `employeeno` int(30) NOT NULL,
  `createdate` varchar(30) NOT NULL,
  `userid` int(30) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'active',
  `companyid` int(11) NOT NULL DEFAULT '1',
  `branchid` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`id`, `title`, `department`, `startdate`, `enddate`, `description`, `employeeno`, `createdate`, `userid`, `status`, `companyid`, `branchid`) VALUES
(1, '1', '1', '2020-08-08', '2020-08-08', '', 1, '2020-08-08 07:42:07am', 1, 'active', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE IF NOT EXISTS `tables` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taskdata`
--

CREATE TABLE IF NOT EXISTS `taskdata` (
  `id` int(30) NOT NULL,
  `description` text,
  `date` varchar(50) NOT NULL,
  `taskid` varchar(50) DEFAULT NULL,
  `userid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Submitted',
  `companyid` varchar(100) NOT NULL,
  `challanges` text NOT NULL,
  `recommendation` text NOT NULL,
  `updatedby` int(11) NOT NULL,
  `comments` text NOT NULL,
  `updateddate` varchar(30) NOT NULL,
  `mykey` varchar(50) DEFAULT NULL,
  `exactdate` varchar(20) NOT NULL,
  `branchid` int(11) NOT NULL,
  `achieved` varchar(30) NOT NULL,
  `updatedat` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taskdata`
--

INSERT INTO `taskdata` (`id`, `description`, `date`, `taskid`, `userid`, `status`, `companyid`, `challanges`, `recommendation`, `updatedby`, `comments`, `updateddate`, `mykey`, `exactdate`, `branchid`, `achieved`, `updatedat`) VALUES
(1, 'test', '2020-07-15 07:21:00', '2', '1', 'Submitted', '1', 'test', '', 0, '', '', '86425731594786606', '2020-07-15', 0, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(30) NOT NULL,
  `taskowner` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `fromdate` varchar(100) NOT NULL,
  `todate` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `priority` varchar(100) NOT NULL,
  `notification` varchar(100) NOT NULL DEFAULT 'yes',
  `repeated` varchar(100) NOT NULL DEFAULT 'no',
  `comments` text NOT NULL,
  `dateposted` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `branchid` int(11) NOT NULL,
  `measurements` varchar(30) NOT NULL DEFAULT 'pc',
  `target` varchar(30) NOT NULL,
  `achived` varchar(30) NOT NULL,
  `exactdate` varchar(30) NOT NULL,
  `updatedby` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `taskowner`, `subject`, `fromdate`, `todate`, `contact`, `status`, `controller`, `priority`, `notification`, `repeated`, `comments`, `dateposted`, `userid`, `category`, `companyid`, `branchid`, `measurements`, `target`, `achived`, `exactdate`, `updatedby`) VALUES
(1, '4', 'Leave management', '2020-07-15 06:56:17', '2020-07-15 17:00:00', 'Cashier', 'New', '1', 'High', '31421581594785377', 'No', 'ddd', '2020-07-15 06:56:32', '1', '3', '1', 1, 'Pc', '233', '', '', 0),
(2, '1', 'xxx', '2020-07-28 07:16:46', '2020-07-28 17:00:00', '0718667391', 'Pending', '1', 'High', '86425731594786606', 'No', 'xxx', '2020-07-15 07:17:53', '1', '2', '1', 1, 'No', '20', '', '2020-07-15 07:21:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasktype`
--

CREATE TABLE IF NOT EXISTS `tasktype` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `mode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasktype`
--

INSERT INTO `tasktype` (`id`, `description`, `name`, `createdate`, `status`, `userid`, `updatedate`, `companyid`, `mode`) VALUES
(1, '', 'TECHNICAL', '2018-10-18 17:40:27', 'active', '1', '', '1', ''),
(2, '', 'Customer Training', '2019-11-22 16:10:15', 'active', '1', '', '1', 'no'),
(3, '', 'Attendance', '2019-11-22 16:10:23', 'active', '1', '', '1', 'pct');

-- --------------------------------------------------------

--
-- Table structure for table `taskupdates`
--

CREATE TABLE IF NOT EXISTS `taskupdates` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `nextstep` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'newstock',
  `type` text NOT NULL,
  `companyid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tillcollection`
--

CREATE TABLE IF NOT EXISTS `tillcollection` (
  `id` int(11) NOT NULL,
  `dateposted` varchar(100) NOT NULL,
  `addedby` int(100) NOT NULL,
  `approvedby` varchar(30) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `userid` int(20) NOT NULL,
  `companyid` int(20) NOT NULL,
  `branch` int(11) NOT NULL,
  `collecteddate` varchar(30) NOT NULL,
  `short` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE IF NOT EXISTS `timer` (
  `id` int(11) NOT NULL,
  `startdate` varchar(30) NOT NULL,
  `enddate` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `createdat` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `hour` varchar(50) NOT NULL,
  `station` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `product` varchar(50) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `customer` varchar(50) NOT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uom`
--

CREATE TABLE IF NOT EXISTS `uom` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `code` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom`
--

INSERT INTO `uom` (`id`, `name`, `description`, `createdate`, `status`, `userid`, `updatedate`, `companyid`, `code`) VALUES
(1, 'Piece', 'pc', '2020-06-22 06:18:43', 'active', '1', '', '1', 'pc'),
(2, 'No Units', 'No Units', '2018-03-29 06:40:47am', 'active', '1', '', '1', 'NOU'),
(3, 'Dozen', 'Dozen', '2018-03-29 06:42:29am', 'active', '1', '', '1', 'dz'),
(4, 'Bar', 'Bar', '2018-03-29 06:43:15am', 'active', '1', '', '1', 'BR'),
(5, 'Packets', 'Packets', '2018-03-29 06:36:08am', 'active', '1', '', '1', 'pcks'),
(6, 'Kilograms', 'Kilograms', '2018-03-29 07:14:40am', 'active', '1', '', '1', 'Kg'),
(7, 'Litre', 'Litre', '2018-03-29 07:14:57am', 'active', '1', '', '1', 'ltr'),
(8, 'Half ', 'hlf', '2018-03-30 12:34:29pm', 'active', '1', '', '1', 'pcs'),
(9, 'sheet', '', '2018-03-30 12:35:21pm', 'active', '1', '', '1', 'sht'),
(10, 'Bale', '', '2018-03-30 12:40:40pm', 'active', '1', '', '1', 'BL'),
(11, 'Box', '', '2018-03-30 12:40:58pm', 'active', '1', '', '1', 'bx'),
(12, 'full', '', '2018-08-04 11:35:29am', 'active', '1', '', '1', 'full'),
(13, 'refill', '', '2018-08-04 11:36:06am', 'active', '1', '', '1', 'ref'),
(14, '1/4', '', '2018-11-20 09:14:48', 'active', '1', '', '1', '16'),
(15, 'Feet', '', '2020-06-09 10:21:14', 'active', '1', '', '1', 'ft'),
(16, 'PIPES', '', '2020-06-09 19:12:05', 'active', '1', '', '1', 'PIPES'),
(17, 'Monthly', '', '2020-06-26 07:19:19', 'active', '1', '', '1', 'Monthly'),
(18, 'Daily', '', '2020-06-26 07:19:31', 'active', '1', '', '1', 'Daily'),
(19, 'Weekly', '', '2020-06-26 07:19:44', 'active', '1', '', '1', 'Weekly'),
(20, 'Yearly', '', '2020-06-26 07:19:56', 'active', '1', '', '1', 'Yearly');

-- --------------------------------------------------------

--
-- Table structure for table `uomproducts`
--

CREATE TABLE IF NOT EXISTS `uomproducts` (
  `id` int(11) NOT NULL,
  `uom` varchar(50) NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `userid` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `code` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `price` varchar(30) NOT NULL,
  `brice` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upgrade`
--

CREATE TABLE IF NOT EXISTS `upgrade` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `companyid` int(11) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `version` varchar(50) NOT NULL,
  `package` varchar(50) NOT NULL,
  `exactdate` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'active',
  `userid` int(10) DEFAULT NULL,
  `entrydate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounttype`
--
ALTER TABLE `accounttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activityloggs`
--
ALTER TABLE `activityloggs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admintable`
--
ALTER TABLE `admintable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advance`
--
ALTER TABLE `advance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advancepayment`
--
ALTER TABLE `advancepayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idno` (`idno`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alldocuments`
--
ALTER TABLE `alldocuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allpayments`
--
ALTER TABLE `allpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approvals`
--
ALTER TABLE `approvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asignrooms`
--
ALTER TABLE `asignrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignbranches`
--
ALTER TABLE `assignbranches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract` (`branchid`),
  ADD KEY `employee` (`employeeno`),
  ADD KEY `type` (`status`);

--
-- Indexes for table `assigntask`
--
ALTER TABLE `assigntask`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract` (`branchid`),
  ADD KEY `employee` (`employeeid`),
  ADD KEY `type` (`status`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batchlist`
--
ALTER TABLE `batchlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookroom`
--
ALTER TABLE `bookroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulkdispatch`
--
ALTER TABLE `bulkdispatch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `callcenter`
--
ALTER TABLE `callcenter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque`
--
ALTER TABLE `cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaindata`
--
ALTER TABLE `complaindata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constants`
--
ALTER TABLE `constants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactdetails`
--
ALTER TABLE `contactdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `county`
--
ALTER TABLE `county`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerfiscalyear`
--
ALTER TABLE `customerfiscalyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customersupplierbalance`
--
ALTER TABLE `customersupplierbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailycharges`
--
ALTER TABLE `dailycharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailycollections`
--
ALTER TABLE `dailycollections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailytasks`
--
ALTER TABLE `dailytasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract` (`branchid`),
  ADD KEY `type` (`status`);

--
-- Indexes for table `damages`
--
ALTER TABLE `damages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debitcredit`
--
ALTER TABLE `debitcredit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distribution`
--
ALTER TABLE `distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_accounts`
--
ALTER TABLE `email_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeecharges`
--
ALTER TABLE `employeecharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeepayments`
--
ALTER TABLE `employeepayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fingers`
--
ALTER TABLE `fingers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fiscalyear`
--
ALTER TABLE `fiscalyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followups`
--
ALTER TABLE `followups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glaccounts`
--
ALTER TABLE `glaccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glfiscalyear`
--
ALTER TABLE `glfiscalyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glgroups`
--
ALTER TABLE `glgroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grouping`
--
ALTER TABLE `grouping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupleavedays`
--
ALTER TABLE `groupleavedays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract` (`group`),
  ADD KEY `employee` (`employeeno`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `housekeeping`
--
ALTER TABLE `housekeeping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labour`
--
ALTER TABLE `labour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landlord`
--
ALTER TABLE `landlord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lease`
--
ALTER TABLE `lease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leavegroup`
--
ALTER TABLE `leavegroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `changed_by` (`updatedby`),
  ADD KEY `change_date` (`updateddate`);

--
-- Indexes for table `leavetypes`
--
ALTER TABLE `leavetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loggs`
--
ALTER TABLE `loggs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyalitycards`
--
ALTER TABLE `loyalitycards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_giftcards_ibfk_1` (`customer_id`);

--
-- Indexes for table `maincategory`
--
ALTER TABLE `maincategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainmenu`
--
ALTER TABLE `mainmenu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_lang_key` (`name`);

--
-- Indexes for table `mainservices`
--
ALTER TABLE `mainservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_lang_key` (`name`);

--
-- Indexes for table `modulesactions`
--
ALTER TABLE `modulesactions`
  ADD PRIMARY KEY (`actionid`,`moduleid`),
  ADD KEY `phppos_modules_actions_ibfk_1` (`moduleid`);

--
-- Indexes for table `moneydocuments`
--
ALTER TABLE `moneydocuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesasales`
--
ALTER TABLE `mpesasales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nation`
--
ALTER TABLE `nation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newstock`
--
ALTER TABLE `newstock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newupgrade`
--
ALTER TABLE `newupgrade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhif`
--
ALTER TABLE `nhif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nssf`
--
ALTER TABLE `nssf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offdays`
--
ALTER TABLE `offdays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `contract` (`groupid`);

--
-- Indexes for table `offtypes`
--
ALTER TABLE `offtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outgoingstock`
--
ALTER TABLE `outgoingstock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `paye`
--
ALTER TABLE `paye`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentmethodes`
--
ALTER TABLE `paymentmethodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentsection`
--
ALTER TABLE `paymentsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`),
  ADD KEY `first_name` (`type`),
  ADD KEY `last_name` (`designation`),
  ADD KEY `email` (`paytype`),
  ADD KEY `phppos_people_ibfk_1` (`dailysalary`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `first_name` (`firstname`),
  ADD KEY `last_name` (`lastname`),
  ADD KEY `email` (`email`),
  ADD KEY `phppos_people_ibfk_1` (`image_id`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`moduleid`,`userid`),
  ADD KEY `person_id` (`userid`);

--
-- Indexes for table `permissionsactions`
--
ALTER TABLE `permissionsactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plot`
--
ALTER TABLE `plot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plotcharges`
--
ALTER TABLE `plotcharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postrecharge`
--
ALTER TABLE `postrecharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productlist`
--
ALTER TABLE `productlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_items_ibfk_1` (`supplier`),
  ADD KEY `name` (`name`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_items_ibfk_2` (`imgid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phppos_items_ibfk_1` (`supplier`),
  ADD KEY `name` (`name`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_items_ibfk_2` (`imgid`);

--
-- Indexes for table `proposal`
--
ALTER TABLE `proposal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice` (`invoice`);

--
-- Indexes for table `purchaseorderlist`
--
ALTER TABLE `purchaseorderlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice` (`invoice`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recharge`
--
ALTER TABLE `recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomcharges`
--
ALTER TABLE `roomcharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomsales`
--
ALTER TABLE `roomsales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salarycharges`
--
ALTER TABLE `salarycharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesreport`
--
ALTER TABLE `salesreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serials`
--
ALTER TABLE `serials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `serialstocktaking`
--
ALTER TABLE `serialstocktaking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smsconfig`
--
ALTER TABLE `smsconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smstemplate`
--
ALTER TABLE `smstemplate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_in`
--
ALTER TABLE `sms_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `splitbill`
--
ALTER TABLE `splitbill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `splitbillmaster`
--
ALTER TABLE `splitbillmaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement`
--
ALTER TABLE `statement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocktaking`
--
ALTER TABLE `stocktaking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_number` (`code`),
  ADD KEY `phppos_items_ibfk_1` (`supplier`),
  ADD KEY `name` (`name`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `phppos_items_ibfk_2` (`imgid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taskdata`
--
ALTER TABLE `taskdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasktype`
--
ALTER TABLE `tasktype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taskupdates`
--
ALTER TABLE `taskupdates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tillcollection`
--
ALTER TABLE `tillcollection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice` (`invoice`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uom`
--
ALTER TABLE `uom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uomproducts`
--
ALTER TABLE `uomproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upgrade`
--
ALTER TABLE `upgrade`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounttype`
--
ALTER TABLE `accounttype`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `activityloggs`
--
ALTER TABLE `activityloggs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admintable`
--
ALTER TABLE `admintable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `advance`
--
ALTER TABLE `advance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `alldocuments`
--
ALTER TABLE `alldocuments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `allpayments`
--
ALTER TABLE `allpayments`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `approvals`
--
ALTER TABLE `approvals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asignrooms`
--
ALTER TABLE `asignrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `assignbranches`
--
ALTER TABLE `assignbranches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `batchlist`
--
ALTER TABLE `batchlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bookroom`
--
ALTER TABLE `bookroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bulkdispatch`
--
ALTER TABLE `bulkdispatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `callcenter`
--
ALTER TABLE `callcenter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cheque`
--
ALTER TABLE `cheque`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `constants`
--
ALTER TABLE `constants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contactdetails`
--
ALTER TABLE `contactdetails`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `county`
--
ALTER TABLE `county`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customerfiscalyear`
--
ALTER TABLE `customerfiscalyear`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customersupplierbalance`
--
ALTER TABLE `customersupplierbalance`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dailycharges`
--
ALTER TABLE `dailycharges`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dailycollections`
--
ALTER TABLE `dailycollections`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dailytasks`
--
ALTER TABLE `dailytasks`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `damages`
--
ALTER TABLE `damages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `debitcredit`
--
ALTER TABLE `debitcredit`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `distribution`
--
ALTER TABLE `distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_accounts`
--
ALTER TABLE `email_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employeecharges`
--
ALTER TABLE `employeecharges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employeepayments`
--
ALTER TABLE `employeepayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fingers`
--
ALTER TABLE `fingers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fiscalyear`
--
ALTER TABLE `fiscalyear`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `followups`
--
ALTER TABLE `followups`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glaccounts`
--
ALTER TABLE `glaccounts`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `glfiscalyear`
--
ALTER TABLE `glfiscalyear`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `glgroups`
--
ALTER TABLE `glgroups`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `grouping`
--
ALTER TABLE `grouping`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groupleavedays`
--
ALTER TABLE `groupleavedays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `housekeeping`
--
ALTER TABLE `housekeeping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `labour`
--
ALTER TABLE `labour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `landlord`
--
ALTER TABLE `landlord`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lease`
--
ALTER TABLE `lease`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leavegroup`
--
ALTER TABLE `leavegroup`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leavetypes`
--
ALTER TABLE `leavetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `loggs`
--
ALTER TABLE `loggs`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loyalitycards`
--
ALTER TABLE `loyalitycards`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `maincategory`
--
ALTER TABLE `maincategory`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mainservices`
--
ALTER TABLE `mainservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mpesasales`
--
ALTER TABLE `mpesasales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `newstock`
--
ALTER TABLE `newstock`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `newupgrade`
--
ALTER TABLE `newupgrade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `nhif`
--
ALTER TABLE `nhif`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `nssf`
--
ALTER TABLE `nssf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `offdays`
--
ALTER TABLE `offdays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `offtypes`
--
ALTER TABLE `offtypes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `outgoingstock`
--
ALTER TABLE `outgoingstock`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paye`
--
ALTER TABLE `paye`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `paymentmethodes`
--
ALTER TABLE `paymentmethodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paymentsection`
--
ALTER TABLE `paymentsection`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissionsactions`
--
ALTER TABLE `permissionsactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20840;
--
-- AUTO_INCREMENT for table `plot`
--
ALTER TABLE `plot`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `plotcharges`
--
ALTER TABLE `plotcharges`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `postrecharge`
--
ALTER TABLE `postrecharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productcategory`
--
ALTER TABLE `productcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productlist`
--
ALTER TABLE `productlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `proposal`
--
ALTER TABLE `proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchaseorderlist`
--
ALTER TABLE `purchaseorderlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roomcharges`
--
ALTER TABLE `roomcharges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `roomsales`
--
ALTER TABLE `roomsales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salarycharges`
--
ALTER TABLE `salarycharges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `serials`
--
ALTER TABLE `serials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `serialstocktaking`
--
ALTER TABLE `serialstocktaking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `smstemplate`
--
ALTER TABLE `smstemplate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sms_in`
--
ALTER TABLE `sms_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `splitbill`
--
ALTER TABLE `splitbill`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `splitbillmaster`
--
ALTER TABLE `splitbillmaster`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `statement`
--
ALTER TABLE `statement`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stocktaking`
--
ALTER TABLE `stocktaking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `taskdata`
--
ALTER TABLE `taskdata`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `taskupdates`
--
ALTER TABLE `taskupdates`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tillcollection`
--
ALTER TABLE `tillcollection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uom`
--
ALTER TABLE `uom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `uomproducts`
--
ALTER TABLE `uomproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `upgrade`
--
ALTER TABLE `upgrade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
