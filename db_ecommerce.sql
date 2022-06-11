-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 09:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagein`
--

INSERT INTO `messagein` (`Id`, `SendTime`, `ReceiveTime`, `MessageFrom`, `MessageTo`, `SMSC`, `MessageText`, `MessageType`, `MessageParts`, `MessagePDU`, `Gateway`, `UserId`) VALUES
(1, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL),
(2, '2017-11-02 05:19:34', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0303,54204D4D5300018739060350524F585932000187340603687474703A2F2F31302E3130322E36312E3233383A383030322F00010101', NULL, NULL, NULL, NULL, NULL),
(3, '2017-11-02 05:19:14', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0201,6C062F1F2DB69180923646443032463643313042394231363544354242413143304143413232424334343239453236423600030B6A00C54503312E310001C6560187070603534D41525420494E5445524E4554000101C65501871106034E4150475052535F330001871006AB0187070603534D41525420494E5445524E455400', NULL, NULL, NULL, NULL, NULL),
(4, '2017-11-02 05:19:19', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0202,0187140187080603696E7465726E65740001870906890101C600015501873606037732000187070603534D41525420494E5445524E45540001872206034E4150475052535F330001C65901873A0603687474703A2F2F6D2E736D6172742E636F6D2E7068000187070603484F4D450001871C01010101', NULL, NULL, NULL, NULL, NULL),
(5, '2017-11-02 05:19:24', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0301,6D062F1F2DB69180923432373832413042464145313131463335303137323744303141433530304134373930423843334500030B6A00C54503312E310001C6560187070603534D415254204D4D53000101C65501871106034E4150475052535F320001871006AB0187070603534D415254204D4D530001870806036D6D730001', NULL, NULL, NULL, NULL, NULL),
(6, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(1, '2018-01-27 20:38:08', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2018-01-27 20:39:06', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2018-01-27 20:49:14', NULL, 300, NULL, '09305235027', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2018-01-27 20:50:56', NULL, 300, NULL, '09508767867', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2018-02-09 17:52:26', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2018-02-09 17:54:27', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2018-02-09 17:55:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2018-02-09 17:59:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2018-02-09 18:00:12', NULL, 200, NULL, '+639486457414', 'yes', NULL, NULL, '1:+639486457414:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2018-02-09 18:01:12', NULL, 200, NULL, '+639486457414', 'Test to send', NULL, NULL, '1:+639486457414:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2018-02-09 18:02:58', NULL, 200, NULL, '+639486457414', 'FROM JANNO : Confirmed', NULL, NULL, '1:+639486457414:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2018-02-09 18:05:22', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2018-02-09 18:08:14', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2018-02-09 18:21:41', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2018-04-01 22:17:34', NULL, 300, NULL, '09123586545', 'Your code is .6048', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2018-04-01 22:18:20', NULL, 300, NULL, '09123586545', 'Your code is .9305', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2018-04-01 22:20:15', NULL, 300, NULL, '09123586545', 'Your code is .2924', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2018-04-01 22:42:36', NULL, 300, NULL, '09123586545', 'Your code is .6938', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2018-04-02 00:40:53', NULL, 300, NULL, '9956112920', 'Your code is .7290', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2018-04-02 00:42:14', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2018-04-02 00:43:46', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2018-04-02 00:45:56', NULL, 300, NULL, '09956112920', 'Your code is .6988', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2018-04-02 00:47:17', NULL, 300, NULL, '09956112920', 'Your code is .4380', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2018-04-02 00:48:53', NULL, 200, NULL, '639956112920', 'Your code is .5936', NULL, NULL, '1:639956112920:129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2018-04-02 00:50:29', NULL, 200, NULL, '639956112920', 'Your code is .5349', NULL, NULL, '1:639956112920:130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2018-04-02 00:53:32', NULL, 200, NULL, '639956112920', 'Your code is', NULL, NULL, '1:639956112920:131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2018-04-02 00:54:43', NULL, 200, NULL, '639956112920', 'Your code is 3407', NULL, NULL, '1:639956112920:132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, '2017', 1, 178, 'PROID', 10),
(2, '0', 1, 104, 'ordernumber', 0);

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
(28, 'liver disease', 0),
(29, 'Kidney disease', 0),
(30, 'Women disease', 0),
(31, 'Pediatric', 0),
(32, 'Neurological diseases', 0),
(33, 'skin diseases', 0),
(34, 'Constipation and diarrhea diseases', 0),
(35, 'Depression diseases', 0),
(36, 'Cold and flu diseases', 0),
(37, 'respiratory system diseases', 0),
(38, 'Nervous system diseases', 0),
(39, 'Gastrointestinal diseases', 0),
(40, 'Allergic diseases', 0),
(41, 'Cough and cold diseases', 0),
(42, 'Diabetes', 0),
(43, 'Cardiovascular diseases', 0),
(44, 'Urinary and genital diseases', 0),
(45, 'Stomach diseases', 0),
(49, 'Blood diseases', 0);

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
(1, 'janobe', 'Palacios', '', '321', 'Coloso Street', 'brgy. 1', 'Kabankalan City', 'Negros Occidental', 'Philippines', '0000-00-00', 'Male', '+639956112920', '', 6111, 'kenjie@yahoo.com', '1dd4efc811372cd1efe855981a8863d10ddde1ca', 'customer_image/a1157016c5d8272126380b27a59e2e7e.jpg', 1, '2015-11-26'),
(2, 'Mark Anthony', 'Geasin', '', '1234', 'paglaom', 'dancalan', 'ilog', 'negros occ', 'philippines', '0000-00-00', '', '091023333234', '', 6111, 'bboy', '0377588176145a8f0d837ff6e9bf0c1616268387', 'customer_image/10801930_959054964122877_391305007291646162_n.jpg', 1, '2015-11-26'),
(3, 'Jano', 'Palacios', '', '12312', 's', 'brgy 1', 'kabankalan city', 'negross occidental', 'philippines', '0000-00-00', 'Male', '21312312312', '', 6111, 'jan', '53199fa57fdf5676d03d89fbdd26e69a927766fc', 'customer_image/Tropical-Beach-Wallpaper.jpg', 1, '2017-12-08'),
(4, 'Jamei', 'Laveste', '', '', '', '', 'kabankalan city', '', '', '0000-00-00', 'Female', '362656556', '', 0, 'jame', 'f144dcce05af4d40fa0aeba34b05f4472472a4de', 'customer_image/1351064148bpguarhW.jpg', 1, '2018-01-23'),
(5, 'Jeanniebe', 'Palacios', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Female', '+639486457414', '', 0, 'bebe', 'd079a1c06803587ea09bff3f44a567e19169e7b5', '', 1, '2018-02-09'),
(6, 'Janry', 'Tan', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Male', '0234234', '', 0, 'jan', '0271c5467994a9e88e01be5b7e1f5f43d0ab93d2', '', 1, '2018-04-01'),
(7, 'Jake', 'Cuenca', '', '', '', '', 'Kabankalan City', '', '', '0000-00-00', 'Male', '639305235027', '', 0, 'jake', '403ba16f713c8371eef121530a922824be29b68a', '', 1, '2018-04-16'),
(8, 'Jake', 'Tam', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Male', '021312312', '', 0, 'j', '30e1fe53111f7e583c382596a32885fd27283970', '', 1, '2018-09-23'),
(9, 'Annie', 'Paredes', '', '', '', '', 's', '', '', '0000-00-00', 'Female', '12312312', '', 0, 'an', 'aa46142b604e671794a84129896d4dec508dec81', 'customer_image/shirt2.jpg', 1, '2019-08-20'),
(10, 'Mohamed', 'Taher Khattab', '', '', '', '', 'Egypt', '', '', '0000-00-00', 'Male', '1554876837', '', 0, 'mama', 'fcf858447d764aa71a9e4ea69d88d35e4832306f', 'customer_image/Photo MIND.jpg', 1, '2020-04-30'),
(11, 'm', 't', '', '', '', '', 'Egypt', '', '', '0000-00-00', 'Male', '01091794114', '', 0, 'mahmoud', 'fcf858447d764aa71a9e4ea69d88d35e4832306f', 'customer_image/Photo MIND.jpg', 1, '2020-05-03'),
(12, 'mohamed elsaied', 'kasem', '', '', '', '', 'cairo', '', '', '0000-00-00', 'Male', '010', '', 0, 'mkm', 'fcf858447d764aa71a9e4ea69d88d35e4832306f', '', 1, '2020-05-03'),
(13, 'mohamed', 'kasem', '', '', '', '', 'egypt', '', '', '0000-00-00', 'Male', '051', '', 0, 'mkm', 'fcf858447d764aa71a9e4ea69d88d35e4832306f', '', 1, '2020-05-03'),
(14, 'mohamed', 'kasem', '', '', '', '', 'egypt', '', '', '0000-00-00', 'Male', '10', '', 0, 'mohamed', 'aa676c4f31c1662be73bf76a488f58d495dba4fa', '', 1, '2020-05-03'),
(15, 'mahmoud', 'taher', '', '', '', '', 'Egypt', '', '', '0000-00-00', 'Male', '55', '', 0, 'mahmoud', 'da13fd4e549734356e3ef1fa7a779abca829e51e', '', 1, '2020-05-03'),
(16, 'mahmoud', 'taher', '', '', '', '', 'Egypt', '', '', '0000-00-00', 'Male', '55', '', 0, 'mahmoud', 'da13fd4e549734356e3ef1fa7a779abca829e51e', '', 1, '2020-05-03'),
(17, 'mahmoud', 'taher', '', '', '', '', 'Egypt', '', '', '0000-00-00', 'Male', '55', '', 0, 'mahmoud', 'da13fd4e549734356e3ef1fa7a779abca829e51e', '', 1, '2020-05-03'),
(18, 'mahmoud', 'taher', '', '', '', '', 'Egypt', '', '', '0000-00-00', 'Male', '55', '', 0, 'mahmoud', 'da13fd4e549734356e3ef1fa7a779abca829e51e', '', 1, '2020-05-03'),
(19, 'ahmed', 'singer', '', '', '', '', 'giza', '', '', '0000-00-00', 'Male', '55', '', 0, 'ahmed', '82e19fa12aab7cfc718a002fc82c0f074bf070e7', '', 1, '2020-05-03'),
(20, 'hhhh', 'hhhhh', '', '', '', '', 'gg', '', '', '0000-00-00', 'Male', '5555', '', 0, 'g', 'a38562bde1afd9013955906e9a5520d50925eedb', '', 1, '2020-05-03'),
(21, 'hhhh', 'hhhhh', '', '', '', '', 'gg', '', '', '0000-00-00', 'Male', '5555', '', 0, 'g', 'a38562bde1afd9013955906e9a5520d50925eedb', '', 1, '2020-05-03'),
(22, 'z', 'z', '', '', '', '', 'z', '', '', '0000-00-00', 'Male', '655', '', 0, 'z', '23aa667a74a65343dfe41a015dae1c9208bb972e', '', 1, '2020-05-03'),
(28, 'f', 'f', '', '', '', '', 'egypt', '', '', '0000-00-00', 'Male', '01091794114', '', 0, 'f', '1be4f31339809e84dd33e292af10670705b2e913', 'customer_image/Photo MIND.jpg', 1, '2020-05-06'),
(29, 'asd', 'qwe', '', '', '', '', 'cairo', '', '', '0000-00-00', 'Male', '0147852369', '', 0, 'asd', '96fb7aa73445529983a89a34f4a6b3635b0ff4a5', 'customer_image/download.jfif', 1, '2020-05-09');

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
(1, 201737, 4, 476, 93, 0),
(2, 201740, 3, 447, 93, 0),
(3, 201738, 1, 199, 94, 0),
(4, 201739, 2, 578, 95, 0),
(5, 201741, 1, 89, 95, 0),
(6, 201740, 1, 149, 96, 0),
(7, 201744, 1, 40, 97, 0),
(8, 201745, 5, 425, 97, 0),
(9, 201744, 1, 40, 98, 0),
(10, 201745, 1, 85, 99, 0),
(11, 201747, 1, 15, 100, 0),
(12, 201744, 1, 40, 101, 0),
(13, 201745, 1, 85, 102, 0),
(14, 201744, 1, 40, 102, 0),
(15, 201744, 6, 240, 103, 0),
(16, 201745, 1, 85, 103, 0),
(17, 201748, 1, 27, 103, 0);

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
(201737, 'KILY Korean Casual Sleeveless Dress Printed Dress 5a0019                      ', '', 5, 100, 119, 12, 'uploaded_photos/korean.jpeg', 'Available', 'janobe', ''),
(201738, 'terno top and pants korean fashion boho terno summer terno for women  ', '', 3, 150, 199, 12, 'uploaded_photos/terno.jpg', 'Available', 'janobe', ''),
(201739, '4Color Menâ€²S Denim Pants STRETCHABLE Skinny Black/Blue', '', 3, 250, 289, 18, 'uploaded_photos/jeans.jpg', 'Available', 'janobe', ''),
(201740, 'SIMPLE Fashion Men`S Casual T Shirt Short Sleeve Round neck Top', '', 0, 100, 149, 18, 'uploaded_photos/shirt.jpg', 'Available', 'janobe', ''),
(201741, 'ICM #T146 BESTSELLER TOPS TSHIRT FOR MEN', '', 3, 50, 89, 18, 'uploaded_photos/shirt2.jpg', 'Available', 'janobe', ''),
(201742, 'CJY-001 Coat Rack Creative Simple CoatRack Bedroom Wardrobe (Gray)', '', 4, 250, 287, 14, 'uploaded_photos/bed.jpeg', 'Available', 'janobe', ''),
(201743, 'Dell laptop', '', 5, 100, 50, 5, 'uploaded_photos/images (2).jpg', 'Available', 'Toshiba', '01098986655'),
(201744, 'The price is 40 pounds, which is a pacemaker, and contains alpha-blockers that work to reduce heartbeats thus reducing blood pumping to the body, and also reduces the renal excretion of renin so the pressure decreases, the pressure on the heart decreases,', '', 0, 40, 40, 20, 'uploaded_photos/2(1).jpg', 'Available', 'Concor 5', '1'),
(201745, 'Atacand Plus 16 / 12.5 mg of medications useful for the heart muscle, but the price of 14 tablets is 85 pounds and contains the active ingredient candesartan and hydrochlorothiazide.\r\n\r\n                                            Candesartan reduces the e', '', 2, 85, 85, 20, 'uploaded_photos/2.jpg', 'Available', '2', '2'),
(201746, 'Disflatyl tablets are considered effective medications and tablets to eliminate many problems with the digestive system. Examples of these problems are swelling and infections that many people may be exposed to. This medicine is a popular drug and a rich ', '', 10, 21.5, 21.5, 21, 'uploaded_photos/3(1).png', 'Available', '3', '3'),
(201747, 'Rantaj is one of the best medicines that work to treat reflux and treat ulcers. It contains Ranitidine, which is known to be effective, and which closes the histamine in the body. Thus, the percentage of acid secretion resulting from the stomach, which is', '', 9, 15, 15, 21, 'uploaded_photos/3.jpg', 'Available', '4', '4'),
(201748, 'Tablets: The correct dose for Norton tablets is usually one tablet three times daily.', '', 9, 27, 27, 22, 'uploaded_photos/4.jpg', 'Available', '5', '5'),
(201749, 'One of the most powerful and famous drugs that treat peripheral nerve inflammation, Methycobal is a drug that is very effective in treating diseases that affect the peripheral nerves. This medicine belongs to the family of vitamin B12 medicines that provi', '', 10, 58.5, 58.5, 22, 'uploaded_photos/4(1).jpg', 'Available', '6', '6'),
(201750, 'Lutensen is used to treat high blood pressure and to treat diabetic nephropathy, thanks to its captopril content, which relaxes blood vessels and, consequently, to low blood pressure.', '', 10, 11, 11, 23, 'uploaded_photos/6.jpg', 'Available', '7', '7'),
(201751, 'Inderal is a drug for treating angina and it is characterized by a hypotensive effect by reducing the production of the heart and its use is due to the treatment of angina by reducing and reducing the work of the left ventricle and the consumption of oxyg', '', 10, 17.25, 17.25, 23, 'uploaded_photos/6(1).jpg', 'Available', '8', '8'),
(201752, 'Ferosac is one of the intravenous infusions and the active substance in it is hemamex and it has a strong effect on the body and works on iron metabolism, and the injection works to transfer iron in the blood plasma and this has a fundamental role in iron', '', 10, 18, 18, 24, 'uploaded_photos/7(1).jpg', 'Available', '9', '9'),
(201753, 'Vit G is one of the best medicines that contain many vitamins, which in turn regenerates the muscular and organic activity of the body, and it helps the body to get rid of the state of inactivity and stress that it afflicts, and it is also among the drugs', '', 10, 27.5, 27.5, 24, 'uploaded_photos/7.jpg', 'Available', '10', '10'),
(201755, 'Dostinex is used to inhibit the prolactin hormone, which is known as the woman\'s milk hormone and is taken to stop the generation of milk in women or to treat fertility problems in men.', '', 10, 91, 91, 25, 'uploaded_photos/8.jpg', 'Available', '11', '11'),
(201756, 'Pigmanorm cream is one of the most powerful creams that are used in treating all of the deep pigmentations, especially like melasma and other pigments. Also, all studies have proven that the cream does not contain one active substance but it contains thre', '', 10, 220, 180, 25, 'uploaded_photos/8(1).jpg', 'Available', '12', '12'),
(201757, 'Econopred Plus is a drop used in the treatment of allergic conditions and eye infections as it contains prednisolone as an active substance belonging to a class of medications called corticosteroids (cortisone derivatives) as it prevents the inflammatory ', '', 10, 21.5, 21.5, 26, 'uploaded_photos/9.jpg', 'Available', '13', '13'),
(201758, 'OPTIFLOX drops are used to treat eye and ear infections, which are caused by many different types of bacteria, and cause many different diseases of the eye and ear, as they contain a very effective substance and ofloxacin works as a very effective substan', '', 10, 9.5, 9.5, 26, 'uploaded_photos/9(1).png', 'Available', '14', '14'),
(201760, 'Lutensen is used to treat high blood pressure and to treat diabetic nephropathy, thanks to the fact that it contains captopril, which relaxes blood vessels and, consequently, low blood pressure                      ', '', 50, 11, 11, 49, 'uploaded_photos/Lotensine.jpg', 'Available', 'Lutensen', ''),
(201761, 'Inderal is a drug for treating angina and it has an antihypertensive effect by reducing the production of the heart and its use is due to the treatment of angina by reducing and reducing the work of the left ventricle and the consumption of oxygen which l', '', 50, 17.25, 17.25, 49, 'uploaded_photos/Inderal.jpg', 'Available', 'Inderal ', ''),
(201762, 'Tablets  Diosemaks  Diosimax 600 mg used to treat patients with hemorrhoids and strengthen veins and blood vessels and increase the resistance of the small blood vessels contains a substance Diosmin effective in strengthening the venous circulation.', '', 50, 33, 33, 49, 'uploaded_photos/Diosimax.jpg', 'Available', 'Diosimax 600', ''),
(201763, 'Tablets are used Dafrcks  Dafrex  as a treatment for vascular insufficiency and tonic capillaries, where he works to strengthen the components of the blood vessels and small blood vessels and veins, it is used to treat bleeding caused by the weakness of t', '', 50, 24.75, 24.75, 49, 'uploaded_photos/Dafrex.jpg', 'Available', 'Dafrex Tablets', ''),
(201764, 'Cabotene tablets are an effective treatment for high blood pressure because they contain captopril which is the active substance and this substance is considered a competitive inhibitor of the enzyme converted to angiotensin as it works to prevent its tra', '', 50, 12, 12, 49, 'uploaded_photos/Capoten.png', 'Available', 'Capoten', ''),
(201765, 'The  daflon 500  one of the drugs that treat hemorrhoids, and has a lot of uses , including its ability to strengthen blood vessels and veins, also treated in the treatment of the abundance of the menstrual cycle, so it contains several very important mat', '', 50, 32.25, 32.25, 49, 'uploaded_photos/Daflon.png', 'Available', 'Daflon', ''),
(201766, 'Drug Ruakol  Rowachol is available in the form of capsules used in the treatment of disorders resulting from the liver and gallbladder , and when using Ruakol properly , it leads to prevent stagnation of liquid bile because it works to increase the activi', '', 50, 12, 12, 28, 'uploaded_photos/Rowachol.jpg', 'Available', 'Rowachol', ''),
(201767, 'The drug dossen - DOSIN of effective drugs that address high pressure due to the presence of the active ingredient doxazosin that helps to avoid the occurrence of various complications that occur to many people with high pressure, one of the drugs that co', '', 100, 18, 18, 29, 'uploaded_photos/DOSIN.jpg', 'Available', 'DOSIN', ''),
(201768, 'Lasix contains the active substance Forsemide that is used as a diuretic, as it prevents the body from absorbing a large amount of salts and is transferred with water to the urine used in the treatment of heart failure and kidney failure by getting rid of', '', 100, 15, 15, 29, 'uploaded_photos/Lasix.jpg', 'Available', 'Lasix', ''),
(201769, 'Cystone  is the   tablets responsible for increasing the volume of blood flow through the kidneys, thus increasing the ability of the kidneys to filter and purify the blood, and therefore it helps to kill the bacteria present in the urinary tract. the bod', '', 100, 26.75, 26.75, 29, 'uploaded_photos/Cystone.png', 'Available', 'Cystone', ''),
(201770, 'Herbana is one of the medicines that contain a mixed collection of certain herbs in a concentrated form, and it is not harmful to the nature of its substances, and is safe for young children during lactation as well as the mother, and its capsules are cha', '', 100, 31.5, 31.5, 30, 'uploaded_photos/Herbana.jpg', 'Available', 'Herbana', ''),
(201771, 'Dostinex is used to inhibit the prolactin hormone, which is known as the woman\'s milk hormone, and is taken to stop the generation of milk in women or to treat fertility problems in men', '', 100, 91, 91, 30, 'uploaded_photos/Dostinex.jpg', 'Available', 'Dostinex', ''),
(201772, 'Intennal is one of the effective drugs that are used to eliminate intestinal bacteria, all negative and positive types, it is a strong intestinal antiseptic,  used to eliminate diarrhea of ??all kinds as well. This drug is also a very safe drug that can b', '', 100, 21, 21, 31, 'uploaded_photos/ANTINAL.jpg', 'Available', 'ANTINAL', ''),
(201773, 'The Kinakomb  (ointment - cream) of the most powerful drugs used to treat skin rashes and abrasion, available from him ointment and cream, treats all kinds of skin diseases such as eczema and severe itching.', '', 100, 12.75, 12.75, 0, 'uploaded_photos/KENACOMB.jpg', 'Available', 'KENACOMB', ''),
(201774, 'The Kinakomb  (ointment - cream) of the most powerful drugs used to treat skin rashes and abrasion, available from him ointment and cream, treats all kinds of skin diseases such as eczema and severe itching.', '', 100, 12.75, 12.75, 31, 'uploaded_photos/KENACOMB.jpg', 'Available', 'KENACOMB', ''),
(201775, 'A drug used Spazoumora  Spasmofree effective treatment for colic and is available as tablets, syrups, and ampoule, and Boss is a multi - drug effect, acts as acetylcholine which consists of the active ingredient , a substance Timonium methyl sulfate 10 mg', '', 100, 9, 9, 31, 'uploaded_photos/Spasmofree.jpg', 'Available', 'Spasmofree', ''),
(201776, 'Elbavit buffett  treatment is used as a group of vitamins and minerals rich in biotin and used for all ages to provide the body with energy and as an appetite suppressant in children.', '', 100, 17, 17, 31, 'uploaded_photos/Elbavit.jpg', 'Available', 'Elbavit', ''),
(201777, 'Nazonex uses a   cortisone spray to treat conditions of nasal infections such as sinus infections and nasal mucous membranes of the nose and is also used as a preventive agent against seasonal allergic rhinitis.', '', 100, 60, 60, 0, 'uploaded_photos/Nasonex.jpg', 'Available', 'Nasonex', ''),
(201778, 'It is used  Fevadol as a treatment to relieve pain and Hypocholesterolemic special heat at the teething stage in children and in cases of flu also, available in the form of pills and syrup.', '', 100, 3.85, 3.85, 0, 'uploaded_photos/Fevadol.jpg', 'Available', 'Fevadol', ''),
(201779, 'It is used  Fevadol as a treatment to relieve pain and Hypocholesterolemic special heat at the teething stage in children and in cases of flu also, available in the form of pills and syrup.', '', 100, 3.85, 3.85, 31, 'uploaded_photos/Fevadol.jpg', 'Available', 'Fevadol', ''),
(201780, 'Diginorm is a treatment used to open appetite and is very effective in treating conditions such as dyspepsia in children thanks to the group of enzymes that help in the digestion, available in the form of syrup for children or tablets.', '', 100, 9, 9, 31, 'uploaded_photos/Digenorm.jpg', 'Available', 'Digenorm', ''),
(201781, 'One of the most powerful and famous drugs that treat peripheral nerve inflammation, Methycobal is a drug that is highly effective in treating diseases that affect the peripheral nerves. This medicine belongs to the family of vitamin B12 medicines that pro', '', 100, 58.5, 58.5, 32, 'uploaded_photos/Methycobal.jpg', 'Available', 'Methycobal', ''),
(201782, 'For the treatment of nerve inflammation that is produced in diabetics and for the treatment of nerve conditions resulting from spinal cord injuries, it is available in the form of hard capsules.', '', 200, 74, 74, 32, 'uploaded_photos/Andogablin.jpg', 'Available', 'Andogablin', ''),
(201783, 'Terpalpsi is used as an anti-epileptic and sedative for nerve cramps, and it works to prevent the formation of epileptic seizures and prevent cerebral seizures by inhibiting certain processes that help control the formation of epileptic seizures, Tralepsi', '', 150, 77, 77, 32, 'uploaded_photos/Tiralepsy.jpg', 'Available', 'Tiralepsy', ''),
(201784, 'Tryritol is one of the medications that works to treat some types of seizures, such as epilepsy, as it mainly benefits epilepsy patients and can be used with other medicines to treat this disease or individually, and it is classified as an antiepileptic o', '', 150, 22.5, 22.5, 32, 'uploaded_photos/Tegretol.jpg', 'Available', 'Tegretol', ''),
(201785, 'Solotec  is one of the drugs used in the treatment of depression, as it contains the active substance Sertraline. The medicine belongs to the family of selective serotonin reuptake inhibitors, which works to increase the proportion of serotonin in the ner', '', 120, 35, 35, 32, 'uploaded_photos/Solotik.jpg', 'Available', 'Solotik', ''),
(201786, 'Neuroton is a  tablet, injection, and is one of the most popular medications to improve the functions of the nervous system because it contains vitamin B complex, which has an effective effect on  the human nervous', '', 200, 27, 27, 32, 'uploaded_photos/Neuroton.jpg', 'Available', 'Neuroton', ''),
(201787, 'Thiotaside is one of the drugs that are used in the treatment of nerve inflammation that is caused by diabetes, and also treats the optic nerve, as it is used in the treatment of many special cases for men, the most important of which is poor fertility, a', '', 200, 67.5, 67.5, 32, 'uploaded_photos/Thiotacid.jpg', 'Available', 'Thiotacid', ''),
(201788, 'Lobra is one of the drugs used in the treatment of depression,  as it contains the active substance \"Citalopram\", which belongs to the family of \"selective serotonin recovery inhibitors\", which works to increase the percentage of seritonin outside the cel', '', 300, 95.35, 95.35, 32, 'uploaded_photos/Lopra.jpg', 'Available', 'Lopra', ''),
(201789, 'Deltafit B12 is a nutritional supplement for the treatment of vitamin B12 deficiency that nourishes the nervous and visual system, and creates and regenerates red blood cells, thereby preventing anemia; increases the body’s energy, and vitamin B12 deficie', '', 1000, 19, 19, 32, 'uploaded_photos/Deltavit B12.jpg', 'Available', 'Deltavit B12', ''),
(201790, 'There is no doubt that the drug clindamycin Clindamycin is an antibiotic widely cream area which is one of the strongest creams that help kill bacteria and germs , which helps get rid of the non - occurrence of bacterial infection, which also contains the', '', 400, 17, 17, 33, 'uploaded_photos/Clindamycin.jpg', 'Available', 'Clindamycin', ''),
(201791, 'Fucicort is a cream that treats infections that occur in the skin and skin, it is one of the creams that treat redness in the skin, it is among the list of anti-biotic creams, which are used in the treatment of many skin diseases, because it contains the ', '', 400, 24.5, 24.5, 33, 'uploaded_photos/Fucicort.jpg', 'Available', 'Fucicort', ''),
(201792, 'Known as a drug Beravan Pirafene scientific Klorvinramen in his name, which is considered one of the drugs within the anti antihistamine who shall in turn relieve symptoms caused by histamine , is classified as medicine in the pharmaceutical treatment of ', '', 500, 12, 12, 33, 'uploaded_photos/Pirafene.jpg', 'Available', 'Pirafene', ''),
(201793, 'Betamed cream is used to treat itching and all the infections that exist in the skin and it contains the active substances betamethasone which contains the hormone of the adrenal cortex , and this substance is used and helps in the treatment of all infect', '', 500, 5, 5, 33, 'uploaded_photos/Betamed.jpg', 'Available', 'Betamed', ''),
(201794, 'Medication Dcilor Deslor medications that deal with allergies and skin itching, it is a component of the material Dsloratadin, which is an anti-histamine , whereupon reducing the effect of histamine found the body, but he knows the severe and rapid are ef', '', 700, 15, 15, 33, 'uploaded_photos/Deslor.jpg', 'Available', 'Deslor', ''),
(201795, 'Betamethasone cream is one of the important types of therapeutic creams that are used in the treatment of itchy skin and all infections that occur in the skin. It is also used in the treatment of all cases of skin infections and itching. For infections, i', '', 300, 6, 6, 33, 'uploaded_photos/Betamethasone.gif', 'Available', 'Betamethasone', ''),
(201796, 'Eka cream or M cream is one of the most important creams that are used in the treatment of itching and all skin infections and it is one of the most famous types of cortisone creams and the active substance is mometasone furat, and also is what is used la', '', 250, 25, 25, 33, 'uploaded_photos/Elica M Cream.jpg', 'Available', 'Elica M Cream', ''),
(201797, 'Lamisil tablets contain anti-fungal terbinafine, which treats various types of fungal infections. In this article, we will learn about its dose, method of use, side effects, and more.', '', 200, 26.4, 26.4, 33, 'uploaded_photos/LAMISIL.jpg', 'Available', 'LAMISIL', ''),
(201798, 'Flucoral capsules 150 belong to the triazole family of antifungals, which stop the multiplication of candida and cryptococcus fungi.', '', 700, 17.52, 17.52, 33, 'uploaded_photos/FLUCORAL.jpg', 'Available', 'FLUCORAL', ''),
(201799, 'Lamifene is a topical topical anti-fungicide , which prevents the formation of cell walls in fungi. In this article, we will learn about its dose, method of use, side effects and other information that interests you.', '', 800, 9, 9, 33, 'uploaded_photos/LAMIFEN.jpg', 'Available', 'LAMIFEN', ''),
(2017100, 'Kapect is one of the effective drugs for treating diarrhea and acute gastro-intestinal ailments that many people suffer from. The drug contains many effective substances such as kaolin and clay, which each work to treat diarrhea by reducing spasms in the ', '', 600, 4.25, 4.25, 34, 'uploaded_photos/Kapect.jpg', 'Available', 'Kapect', ''),
(2017101, 'The drug Antosed Entocid is one of the most popular medicines that treat diarrhea and working to kill amoebae and bacteria that cause diarrhea and is also an effective treatment of bacterial infections that cause diarrhea, affects the gastrointestinal tra', '', 250, 10, 10, 34, 'uploaded_photos/Entocid.jpg', 'Available', 'Entocid', ''),
(2017102, 'SANA LAX tablets are used to treat constipation as a laxative, as it stimulates colon movement within only 6 to 12 hours after using the dose.', '', 400, 2.5, 2.5, 34, 'uploaded_photos/Senna Lax.jpg', 'Available', 'Senna Lax', ''),
(2017103, 'Idronax, also known as \"Reboxetine\", is an antidepressant drug with a distinct mechanism of action. It selectively affects the neurotransmitter (Norepinephrine), inhibits its reabsorption into brain cells, and thus the level of norepinephrine increases, a', '', 700, 25, 25, 35, 'uploaded_photos/Edronax.jpg', 'Available', 'Edronax', ''),
(2017104, 'Lustral belongs to a group of antidepressants known as selective serotonin reuptake inhibitors ( SSRIs ), which contains the active substance Sertraline, which in turn is based on the reabsorption of serotonin (which is a natural brain substance that help', '', 50, 112, 112, 35, 'uploaded_photos/Lustral.jpg', 'Available', 'Lustral', ''),
(2017105, 'One of the drugs used in the treatment of depression is the medicine that belongs to the family of \"selective serotonin reuptake inhibitors\", which works to increase the percentage of neurotransmitters (seritonin and noradrenaline) in the nervous system, ', '', 900, 78.5, 78.5, 0, 'uploaded_photos/Efexor XR.jpg', 'Available', 'Efexor XR', ''),
(2017106, 'Quetta belongs to a group of drugs called \"antipsychotic\" that contains \"Quetiapine\" as an active substance that plays its primary role in binding to specific receptors in the brain (such as dopamine-4 receptors, histamine-1 receptors, and seritonin recep', '', 400, 121.5, 121.5, 35, 'uploaded_photos/Quetta.jpg', 'Available', 'Quetta', ''),
(2017107, 'Medicine Satafin used Hypocholesterolemic heat and analgesic and anti-inflammatory, which contains active substances in the treatment of a paracetamol and Alobaobrovin , also used to treat colds and flu , and sinus infections.', '', 800, 5.5, 5.5, 36, 'uploaded_photos/CETAFEN.jpg', 'Available', 'CETAFEN', ''),
(2017108, 'Congestal medicine is used as an antipyretic and pain reliever and for the treatment of colds and influenza as it contains active substances in the treatment of paracetamol, chlorpheniramine and pseudoephedrine , and is also used in the treatment of cold,', '', 600, 9.5, 9.5, 36, 'uploaded_photos/CONGESTAL.jpg', 'Available', 'CONGESTAL', ''),
(2017109, 'Comtrex  contributes to the treatment of severe colds in humans, as it contains ( Sudafedrine hydrochloride and  brompheniramine maleate ) and each of them is an effective substance that helps relieve colds in humans.\r\n\r\nThere are those who called it (ace', '', 850, 30, 30, 36, 'uploaded_photos/COMTREX.jpg', 'Available', 'COMTREX', ''),
(2017110, 'Scientific name: - Ambroxol.\r\nThe primary use of mecosulfan is an expectorant syrup and its solvent, and is also used in cases of coughing and coughing .', '', 640, 8, 8, 36, 'uploaded_photos/Mucosolvan.jpg', 'Available', 'Mucosolvan', ''),
(2017111, 'Antiflow is one of the medicines that contain active substances that work to relieve pain and reduce high body temperature, as it is classified as a strong anti-inflammatory, and the most important active substances include ibuprofen , and sodium ephedrin', '', 360, 12.75, 12.75, 36, 'uploaded_photos/Antiflu.jpg', 'Available', 'Antiflu', ''),
(2017112, 'Nose drops may be used to relieve congestion due to sinusitis or chronic or seasonal allergies , and may help get rid of hay fever symptoms, which are known as inflammation of the nose in the spring, and there is an active ingredient in this drug known as', '', 550, 3.5, 3.5, 0, 'uploaded_photos/Balkis.jpg', 'Available', 'Balkis', ''),
(2017113, 'Nose drops may be used to relieve congestion due to sinusitis or chronic or seasonal allergies , and may help get rid of hay fever symptoms, which are known as inflammation of the nose in the spring, and there is an active ingredient in this drug known as', '', 550, 3.5, 3.5, 36, 'uploaded_photos/Balkis.jpg', 'Available', 'Balkis', ''),
(2017114, 'Petro Tablets are effective medications to reduce high fever, treat headaches , severe cold symptoms that are accompanied by itching, headache and dizziness. These tablets are made from safe active substances if a person is allergic to aspirin as it does ', '', 180, 18, 18, 36, 'uploaded_photos/Petro.jpg', 'Available', 'Petro', ''),
(2017115, 'Rinostop is one of the famous drugs for treating severe colds and influenza, due to the active substances that enter the drug, which helped reduce symptoms of the cold and reduce the incidence of severe oral congestion. The nose works to reduce congestion', '', 450, 6, 6, 36, 'uploaded_photos/Rinostop.png', 'Available', 'Rinostop', ''),
(2017116, 'Cold Free Tablet is a famous cold medicine, which is characterized by its strong pharmacological effect in controlling the severity of symptoms of colds and influenza and relieving colds and congestion. The medicine is prescribed by many otolaryngologists', '', 660, 19.5, 19.5, 36, 'uploaded_photos/COLD FREE.png', 'Available', 'COLD FREE', ''),
(2017117, 'Medicine Satafin used Hypocholesterolemic heat and analgesic and anti-inflammatory, which contains active substances in the treatment of a paracetamol and Alobaobrovin , also used to treat colds and flu , and sinus infections.', '', 700, 5.5, 5.5, 37, 'uploaded_photos/CETAFEN.jpg', 'Available', 'CETAFEN', ''),
(2017118, 'Varcosulfine is  available in two forms: syrup and capsules, which are used as a strong cough treatment, expectorant, and dissolving phlegm. It also works as an enlarged bronchial medicine thanks to its powerful, fast-acting active substances.', '', 900, 7.5, 7.5, 37, 'uploaded_photos/Farcosolvin.jpg', 'Available', 'Farcosolvin', ''),
(2017119, 'Caudelar is a syrup used to treat dry cough, as the drug consists of a comprehensive combination of dextromethorphan hydrobromide, phenylephrine hydrochloride and chlorpheniramine, which in turn relieves the dry cough accompanied by a cold and is also acc', '', 800, 8.25, 8.25, 37, 'uploaded_photos/Codilar Syrup.jpg', 'Available', 'Codilar Syrup', ''),
(2017120, 'Salbutamol is absorbed through the gut where it metabolizes first in the liver or in the stomach wall. It is excreted through the urine as metabolites and some of it may be excreted in the stool.\r\nAmmonium chloride is absorbed through the gut and then the', '', 600, 5.25, 5.25, 37, 'uploaded_photos/Farcolin.jpg', 'Available', 'Farcolin', ''),
(2017121, 'The drug terasulfide (syrup - tablets)  acts as an expectorant of sputum and works to dissolve the nasal mucus, which consists of the bronchial tubes and is characterized by that it contains the strongest components to dissolve and expel phlegm, available', '', 450, 13.5, 13.5, 37, 'uploaded_photos/Ultrasolv.jpg', 'Available', 'Ultrasolv', ''),
(2017122, 'Drug Mvlonid - Miflonide is a medicine containing the active substance called Bodisonad BUDESONIDE of which belong to the class of drugs known as steroidogenic corticosteroids , a derivative of cortisone, a medication that helps to prevent the release of ', '', 120, 92.5, 92.5, 37, 'uploaded_photos/Miflonide.jpg', 'Available', 'Miflonide', ''),
(2017123, 'Aminophylline is considered to be an enlarged bronchodilator, and the drug contains many active substances, including methylxanthine, theophylline and di-ethylene, which reduce respiratory distress, and also treats all asthma and helps relieve bronchial s', '', 320, 5.7, 5.7, 37, 'uploaded_photos/Aminophylline.jpg', 'Available', 'Aminophylline', ''),
(2017124, 'The scientific name of the drug Aerius is Loratadine, as it is considered one of the medicines that work as antihistamine receptors. It is known that histamine may cause symptoms of allergies such as itching and sneezing, as well as cases of eye fatigue a', '', 450, 77, 77, 37, 'uploaded_photos/Aerius.jpg', 'Available', 'Aerius', ''),
(2017125, 'ARTIZ tablets are one of the most important anti-allergic tablets and they are among the drugs that are used in the treatment of allergies and the active substance in it is called “citrazine” which belongs to the category of drugs that are called antihist', '', 450, 38.25, 38.25, 37, 'uploaded_photos/ARTIZ.jpg', 'Available', 'ARTIZ', ''),
(2017126, 'Terpalpsi is used as an anti-epileptic and sedative for nerve cramps, and it works to prevent the formation of epileptic seizures and prevent cerebral seizures by inhibiting certain processes that help control the formation of epileptic seizures, Tralepsi', '', 580, 77, 77, 38, 'uploaded_photos/Tiralepsy.jpg', 'Available', 'Tiralepsy', ''),
(2017127, 'This medicine is considered one of the most popular medications for depression . This medicine is considered one of the best powerful antidepressants. This drug contains many important active substances that are amitriptyline, which is known to be very ef', '', 650, 21.25, 21.25, 38, 'uploaded_photos/Tryptizole.jpg', 'Available', 'Tryptizole', ''),
(2017128, 'Citalogin  is one of the drugs used to treat depression , and some other conditions. The medicine belongs to the family of \"selective serotonin inhibitors\" as it contains Citalopram as an active substance, which works to increase the percentage of seriton', '', 450, 85.8, 85.8, 38, 'uploaded_photos/Citalogen.jpg', 'Available', 'Citalogen', ''),
(2017129, 'Neuroton is a  tablet, injection, and is one of the most popular medications to improve the functions of the nervous system because it contains vitamin B complex, which has an effective effect on  the human nervous system .', '', 750, 27, 27, 38, 'uploaded_photos/Neuroton.jpg', 'Available', 'Neuroton', ''),
(2017130, 'Thiotaside is one of the drugs that are used in the treatment of nerve inflammation that is caused by diabetes, and also treats the optic nerve, as it is used in the treatment of many special cases for men, the most important of which is poor fertility, a', '', 750, 67.5, 67.5, 38, 'uploaded_photos/Thiotacid.jpg', 'Available', 'Thiotacid', ''),
(2017131, 'Zolam is one of the most famous drugs used in the Arab world at the present time for its rapid efficacy and non-dangerous side effects in circulating doses and we will explain all the properties and details of Zolam with you now. And that works to calm do', '', 850, 5.75, 5.75, 38, 'uploaded_photos/ZOLAM.jpg', 'Available', 'ZOLAM', ''),
(2017132, 'Gastromotel tablets contain domperidone, which regulates the movement of the stomach and colon. In this article, we will learn about its dose, method of use, side effects, and more.', '', 350, 10, 10, 39, 'uploaded_photos/GASTROMOTIL.png', 'Available', 'GASTROMOTIL', ''),
(2017133, 'Dombidone is 10 mg of digestive medications that regulate stomach and colon movement, and in this article we will highlight its dosage, method of use, side effects and other information that may be of interest to you.', '', 350, 12.6, 12.6, 39, 'uploaded_photos/DOMPIDONE.jpg', 'Available', 'DOMPIDONE', ''),
(2017134, 'Metoclopramide injection, which contains the active ingredient with the same name, is one of the most common treatments used for vomiting. In this article we will learn more about the uses, dosages, and side effects of this medicine.', '', 550, 8, 8, 39, 'uploaded_photos/METOCLOPRAMIDE.jpg', 'Available', 'METOCLOPRAMIDE', ''),
(2017135, 'Smecta is one of the most popular medications used to treat diarrhea, which is suitable for adults and children. Smecta contains the active ingredient di-octahydral smectite which encapsulates and removes viruses, bacteria and toxins in the digestive syst', '', 550, 11, 11, 39, 'uploaded_photos/SMECTA.jpg', 'Available', 'SMECTA', ''),
(2017136, 'The Triton grain of most drugs used in the treatment of organ diseases of the digestive  (it is antispasmodic and extenders non muscles involuntarily) , such as: irritable bowel syndrome and stop bowel movement after the surgical procedure, and we will ta', '', 500, 36, 36, 39, 'uploaded_photos/TRITONE.jpg', 'Available', 'TRITONE', ''),
(2017137, 'Intennal is one of the effective drugs that are used to eliminate intestinal bacteria, all negative and positive types, it is a strong intestinal antiseptic,  used to eliminate diarrhea of ??all kinds as well. This drug is also a very safe drug that can b', '', 300, 10.5, 10.5, 39, 'uploaded_photos/ANTINAL.jpg', 'Available', 'ANTINAL', ''),
(2017138, ' Hestan  is used  to treat allergies as it contains \"Chlorpheniramine\" as an active substance, which belongs to a class of medicines called the anti-sleepy antihistamines, and it works by locking the histamine receptors in different body tissues.\r\n\r\nThe s', '', 400, 6.1, 6.1, 40, 'uploaded_photos/Histan.jpg', 'Available', 'Histan', ''),
(2017139, 'Allergetin works to treat allergic rhinitis and paranasal sinuses, and the drug contains pseudoephedrine in addition to containing clofeniramine, as pseudoephedrine works to reduce congestion that occurs due to the expansion of the blood vessels that feed', '', 300, 22.8, 22.8, 40, 'uploaded_photos/Allergetin.jpg', 'Available', 'Allergetin', ''),
(2017140, 'Allergy varies and differs in its symptoms, some of which appear in the form of rashes, including what appears in the form of runny nose, tear eyes and itching, and others, but Telfast remains one of the most powerful and well-known anti-allergic drugs an', '', 300, 20, 20, 40, 'uploaded_photos/TELFAST.jpg', 'Available', 'TELFAST', ''),
(2017141, 'Clearist capsules are a well-known drug in their major pharmacological effect in reducing symptoms of colds and influenza from colds, runny nose and some symptoms of allergic rhinitis and sneezing. The drug is prescribed by many internal, ENT doctors for ', '', 500, 21, 21, 40, 'uploaded_photos/CLEAREST.png', 'Available', 'CLEAREST', ''),
(2017142, 'Alervin tablets contain the substance fexofenadine, which belongs to the family of anti-allergic drugs, and is used to relieve allergy symptoms such as itching and cold, and we will shed light in this article on its dose, method of use, and others.', '', 600, 24, 24, 40, 'uploaded_photos/ALLERFEN.jpg', 'Available', 'ALLERFEN', ''),
(2017143, 'Evastin is a syrup that is one of the most common anti-allergic drugs that does not cause drowsiness. Ibastin does not cross into the brain. In this article, we will shed light on its use, dosage, side effects and other information that interests you.', '', 1200, 14.4, 14.4, 40, 'uploaded_photos/EVASTINE.jpg', 'Available', 'EVASTINE', ''),
(2017144, 'Caudelar is a syrup used to treat dry cough, as the drug consists of a comprehensive combination of dextromethorphan hydrobromide, phenylephrine hydrochloride and chlorpheniramine, which in turn relieves the dry cough accompanied by a cold and is also acc', '', 600, 8.25, 8.25, 41, 'uploaded_photos/Codilar Syrup.jpg', 'Available', 'Codilar Syrup', ''),
(2017145, 'Mycosulfan is a syrup used to treat respiratory disorders and dysfunctions, as it works to dissolve secretions as a result of that thick phlegm comes out from the bronchial tubes, and the drug then reduces coughing and spotting.', '', 700, 8, 8, 41, 'uploaded_photos/Mucosolvan.jpg', 'Available', 'Mucosolvan', ''),
(2017146, 'It is used as a dietary supplement to treat cough and cough.', '', 800, 14.25, 14.25, 41, 'uploaded_photos/Guava.jpg', 'Available', 'Guava', ''),
(2017147, 'The drug terasulfide (syrup - tablets)  acts as an expectorant of sputum and works to dissolve the nasal mucus, which consists of the bronchial tubes and is characterized by that it contains the strongest components to dissolve and expel phlegm, available', '', 500, 13.5, 13.5, 41, 'uploaded_photos/Ultrasolv.jpg', 'Available', 'Ultrasolv', ''),
(2017148, 'It is only in the form of a syrup used orally.', '', 600, 17.25, 17.25, 41, 'uploaded_photos/Ivypront.jpg', 'Available', 'Ivypront', ''),
(2017149, 'The medicine is used to treat coughing and works as an expectorant and anti-allergic. The medicine is formulated every small spoon of (5 milliliter) contains: -\r\n\r\n1- Terbutaline Sulfate (1.5) mg.\r\n2- Diphenhydramine Hydrochloride (14) mg.\r\n3- Glyceryl Gu', '', 450, 9, 9, 41, 'uploaded_photos/Osipect.jpg', 'Available', 'Osipect', ''),
(2017150, 'Lantus injection is a long-acting insulin. Insulin is known to be a hormone that is secreted in the body and works to reduce the level of sugar in the blood. It also works by receptors that control the metabolism of carbohydrates and protein as well as fa', '', 200, 560, 560, 42, 'uploaded_photos/Lantus.jpeg', 'Available', 'Lantus', ''),
(2017151, ' Infokana is one of the effective and fast drugs in treating and regulating sugar in the body, and it is characterized by its contain of glucose, which is known for its positive and effective effect in reducing blood sugar, and we will get to know more th', '', 300, 436, 436, 42, 'uploaded_photos/Invokana.jpg', 'Available', 'Invokana', ''),
(2017152, 'Amophage is one of the medications for treating diabetes, which is exposed to human infection as a result of a lack of production of sugar cells that are found in the blood, and it is one of the powerful and effective sugar treatment drugs. Through this a', '', 150, 10.5, 10.5, 42, 'uploaded_photos/Amophage.jpg', 'Available', 'Amophage', ''),
(2017153, 'Amaryl works to treat type 2 diabetes, due to the composition of this drug from the active substance Glymbride, which follows the group of drugs sulfonylureas, and we will learn through this article more about the properties of the drug and the specific d', '', 400, 46.5, 46.5, 42, 'uploaded_photos/Amaryl.jpg', 'Available', 'Amaryl', ''),
(2017154, 'Glucovance\'s treatment for sugar consists of gelbenclamide, which stimulates insulin secretion, and metformin, which reduces blood sugar levels, making diabetics stable', '', 300, 28.5, 28.5, 42, 'uploaded_photos/GLUCOVANCE.jpg', 'Available', 'GLUCOVANCE', ''),
(2017155, 'Janovia is a 100 mg tablet, one of the most popular medications for the treatment of type 2 diabetes. It is usually used as part of a treatment plan. In this article, we will highlight its dose, method of use, side effects, and more.', '', 100, 308, 308, 42, 'uploaded_photos/JANUVIA.jpg', 'Available', 'JANUVIA', ''),
(2017156, 'Concor is one of the drugs used to treat high blood pressure , angina, and is used to treat arrhythmias, acute myocardial infarction in addition to coronary heart treatment as the drug belongs to beta receptors, and it contains Bisoprolol as an active sub', '', 150, 40.5, 40.5, 43, 'uploaded_photos/Concor.jpg', 'Available', 'Concor', ''),
(2017157, 'Inderal is a drug for treating angina and it is characterized by a hypotensive effect by reducing the production of the heart and its use is due to the treatment of angina by reducing and reducing the work of the left ventricle and the consumption of oxyg', '', 100, 13.5, 13.5, 43, 'uploaded_photos/Inderal.jpg', 'Available', 'Inderal', ''),
(2017158, 'Is a drug Otilol- Atelol  of drugs that deal with high blood pressure , and doctors prescription in the incidence of cases Balzbhat chest, as Otilol known scientifically as Atnolol, it may be this drug is able to treat many cases become weak and lack of h', '', 100, 10, 10, 43, 'uploaded_photos/Atelol.jpg', 'Available', 'Atelol', ''),
(2017159, 'The drug Cialis (Cialis) of effective drugs that address erectile dysfunction in men because it contains the active ingredient tadalafil they discourage hormone your penis and help prevent blood vessels from relaxing for the erection of sexual and memoriz', '', 200, 172, 172, 43, 'uploaded_photos/Cialis.jpg', 'Available', 'Cialis', ''),
(2017160, 'Aspirin consists of acetylsalicylic acid, which belongs to non-steroidal anti-inflammatory drugs, and plays an effective role in reducing pain and inflammation and reducing heat, and is also used to prevent blood clots and heart diseases by increasing blo', '', 300, 18, 18, 43, 'uploaded_photos/ASPIRIN ASPIRIN.jpg', 'Available', 'ASPIRIN ASPIRIN', ''),
(2017161, 'Norma-Cole is one of the nutritional supplements that contain garlic and red rice yeast, and is used in the treatment of many vascular diseases.', '', 400, 21, 21, 43, 'uploaded_photos/NORMA-CHOL.jpg', 'Available', 'NORMA-CHOL', ''),
(2017162, 'The  daflon 500  one of the drugs that treat hemorrhoids, and has a lot of uses , including its ability to strengthen blood vessels and veins, also treated in the treatment of the abundance of the menstrual cycle, so it contains several very important mat', '', 350, 32.25, 32.25, 44, 'uploaded_photos/Daflon 500.png', 'Available', 'Daflon 500', ''),
(2017163, 'The drug dossen - DOSIN of effective drugs that address high pressure due to the presence of the active ingredient doxazosin that helps to avoid the occurrence of various complications that occur to many people with high pressure, one of the drugs that co', '', 120, 12, 12, 44, 'uploaded_photos/DOSIN.jpg', 'Available', 'DOSIN', ''),
(2017164, 'The drug Cialis (Cialis) of effective drugs that address erectile dysfunction in men because it contains the active ingredient tadalafil they discourage hormone your penis and help prevent blood vessels from relaxing for the erection of sexual and memoriz', '', 170, 172, 172, 44, 'uploaded_photos/Cialis.jpg', 'Available', 'Cialis', ''),
(2017165, 'Flutamide is a hormonal anti-cancer drug that is mainly used to treat late prostate cancer. It works as an anti-androgen, which reduces testosterone secretion from the testicle and also prevents its binding to receptors on the surface of prostate cancer c', '', 480, 480, 480, 44, 'uploaded_photos/FLUTAMIDE.jpg', 'Available', 'FLUTAMIDE', ''),
(2017166, 'Nexium is an antacid and stomach ulcer drug, the active ingredient of Esomeprazole , which inhibits the proton pump that creates hydrochloric acid and secretes it in the stomach.', '', 400, 224, 224, 45, 'uploaded_photos/Nexium.jpg', 'Available', 'Nexium', ''),
(2017167, 'Just Reg is a treatment used to treat digestive and intestinal disorders of all kinds, such as cramps and bloating, available in the form of tablets, syrups, muscle injections, and anal cones.\r\n\r\nThe active substance: -  trampotene, which works to regulat', '', 700, 13.8, 13.8, 45, 'uploaded_photos/Gast Reg.jpg', 'Available', 'Gast Reg', ''),
(2017168, 'Lanzor is a medicine for treating stomach ulcers and reflux esophagus. Lanzor contains the active ingredient \"Lansoprazole\", which is a substance that inhibits the proton pump, which is found on the cells of the stomach wall; thus reducing the production ', '', 500, 35, 35, 45, 'uploaded_photos/Lanzor.jpg', 'Available', 'Lanzor', ''),
(2017169, 'Rantidol  is a drug used to treat stomach ulcers and duodenum, as it contains Ranitidine as an active substance. It belongs to antihistamine H2 drugs, which inhibits gastric secretion from acid and pepsin, and thus helps in treating acidity, stomach ulcer', '', 600, 16, 16, 45, 'uploaded_photos/Rantidol.jpg', 'Available', 'Rantidol', ''),
(2017170, 'Is a drug Digest Aaza- Digest Eze  of the best medicine treatment for digestive problems and bloating that occur in the abdomen, this drug is a drug security for many people, this is due to contain some of the safe natural ingredients which are material b', '', 500, 25.25, 25.25, 45, 'uploaded_photos/Digest Eze.jpg', 'Available', 'Digest Eze', ''),
(2017171, 'Nospasm is an anti-spasmolytic drug, and it in turn relaxes the muscles in the wall of the stomach and intestines, and thus reduces muscle contractions and thus reduces the pain that results when the cramping condition occurs, and medicine may be known by', '', 400, 12, 12, 45, 'uploaded_photos/Nospasm.jpg', 'Available', 'Nospasm', ''),
(2017172, 'The  daflon 500  one of the drugs that treat hemorrhoids, and has a lot of uses , including its ability to strengthen blood vessels and veins, also treated in the treatment of the abundance of the menstrual cycle, so it contains several very important mat', '', 300, 32.25, 32.25, 49, 'uploaded_photos/Daflon 500.png', 'Available', 'Daflon 500', ''),
(2017173, 'Cabotene tablets are an effective treatment for high blood pressure because they contain captopril which is the active substance and this substance is considered a competitive inhibitor of the enzyme converted to angiotensin as it works to prevent its tra', '', 100, 12, 12, 49, 'uploaded_photos/Capoten.png', 'Available', 'Capoten', ''),
(2017174, 'Tablets are used Dafrcks  Dafrex  as a treatment for vascular insufficiency and tonic capillaries, where he works to strengthen the components of the blood vessels and small blood vessels and veins, it is used to treat bleeding caused by the weakness of t', '', 240, 24.75, 24.75, 49, 'uploaded_photos/Dafrex Tablets.jpg', 'Available', 'Dafrex Tablets', ''),
(2017175, 'Tablets  Diosemaks  Diosimax 600 mg used to treat patients with hemorrhoids and strengthen veins and blood vessels and increase the resistance of the small blood vessels contains a substance Diosmin effective in strengthening the venous circulation.', '', 330, 33, 33, 49, 'uploaded_photos/Diosimax 600.jpg', 'Available', 'Diosimax 600', ''),
(2017176, 'Inderal is a drug for treating angina and it is characterized by a hypotensive effect by reducing the production of the heart and its use is due to the treatment of angina by reducing and reducing the work of the left ventricle and the consumption of oxyg', '', 130, 13.5, 13.5, 49, 'uploaded_photos/Inderal.jpg', 'Available', 'Inderal', ''),
(2017177, 'Lutensen is used to treat high blood pressure and to treat diabetic nephropathy, thanks to the fact that it contains captopril, which relaxes blood vessels and, consequently, low blood pressure.', '', 110, 11, 11, 0, 'uploaded_photos/Lotensine.jpg', 'Available', 'Lotensine', '');

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
(3, 201739, 0, 289, 0, 0),
(4, 201740, 0, 149, 0, 0),
(5, 201741, 0, 89, 0, 0),
(6, 201742, 0, 287, 0, 0),
(7, 201743, 0, 50, 0, 0),
(8, 201744, 0, 40, 0, 0),
(9, 201745, 0, 85, 0, 0),
(10, 201746, 0, 21.5, 0, 0),
(11, 201747, 0, 15, 0, 0),
(12, 201748, 0, 27, 0, 0),
(13, 201749, 0, 58.5, 0, 0),
(14, 201750, 0, 11, 0, 0),
(15, 201751, 0, 17.25, 0, 0),
(16, 201752, 0, 18, 0, 0),
(17, 201753, 0, 27.5, 0, 0),
(19, 201755, 0, 91, 0, 0),
(20, 201756, 0, 180, 0, 0),
(21, 201757, 0, 21.5, 0, 0),
(22, 201758, 0, 9.5, 0, 0),
(23, 201759, 0, 50, 0, 0),
(24, 201760, 0, 11, 0, 0),
(25, 201761, 0, 17.25, 0, 0),
(26, 201762, 0, 33, 0, 0),
(27, 201763, 0, 24.75, 0, 0),
(28, 201764, 0, 12, 0, 0),
(29, 201765, 0, 32.25, 0, 0),
(30, 201766, 0, 12, 0, 0),
(31, 201767, 0, 18, 0, 0),
(32, 201768, 0, 15, 0, 0),
(33, 201769, 0, 26.75, 0, 0),
(34, 201770, 0, 31.5, 0, 0),
(35, 201771, 0, 91, 0, 0),
(36, 201772, 0, 21, 0, 0),
(37, 201773, 0, 12.75, 0, 0),
(38, 201774, 0, 12.75, 0, 0),
(39, 201775, 0, 9, 0, 0),
(40, 201776, 0, 17, 0, 0),
(41, 201777, 0, 60, 0, 0),
(42, 201778, 0, 3.85, 0, 0),
(43, 201779, 0, 3.85, 0, 0),
(44, 201780, 0, 9, 0, 0),
(45, 201781, 0, 58.5, 0, 0),
(46, 201782, 0, 74, 0, 0),
(47, 201783, 0, 77, 0, 0),
(48, 201784, 0, 22.5, 0, 0),
(49, 201785, 0, 35, 0, 0),
(50, 201786, 0, 27, 0, 0),
(51, 201787, 0, 67.5, 0, 0),
(52, 201788, 0, 95.35, 0, 0),
(53, 201789, 0, 19, 0, 0),
(54, 201790, 0, 17, 0, 0),
(55, 201791, 0, 24.5, 0, 0),
(56, 201792, 0, 12, 0, 0),
(57, 201793, 0, 5, 0, 0),
(58, 201794, 0, 15, 0, 0),
(59, 201795, 0, 6, 0, 0),
(60, 201796, 0, 25, 0, 0),
(61, 201797, 0, 26.4, 0, 0),
(62, 201798, 0, 17.52, 0, 0),
(63, 201799, 0, 9, 0, 0),
(64, 2017100, 0, 4.25, 0, 0),
(65, 2017101, 0, 10, 0, 0),
(66, 2017102, 0, 2.5, 0, 0),
(67, 2017103, 0, 25, 0, 0),
(68, 2017104, 0, 112, 0, 0),
(69, 2017105, 0, 78.5, 0, 0),
(70, 2017106, 0, 121.5, 0, 0),
(71, 2017107, 0, 5.5, 0, 0),
(72, 2017108, 0, 9.5, 0, 0),
(73, 2017109, 0, 30, 0, 0),
(74, 2017110, 0, 8, 0, 0),
(75, 2017111, 0, 12.75, 0, 0),
(76, 2017112, 0, 3.5, 0, 0),
(77, 2017113, 0, 3.5, 0, 0),
(78, 2017114, 0, 18, 0, 0),
(79, 2017115, 0, 6, 0, 0),
(80, 2017116, 0, 19.5, 0, 0),
(81, 2017117, 0, 5.5, 0, 0),
(82, 2017118, 0, 7.5, 0, 0),
(83, 2017119, 0, 8.25, 0, 0),
(84, 2017120, 0, 5.25, 0, 0),
(85, 2017121, 0, 13.5, 0, 0),
(86, 2017122, 0, 92.5, 0, 0),
(87, 2017123, 0, 5.7, 0, 0),
(88, 2017124, 0, 77, 0, 0),
(89, 2017125, 0, 38.25, 0, 0),
(90, 2017126, 0, 77, 0, 0),
(91, 2017127, 0, 21.25, 0, 0),
(92, 2017128, 0, 85.8, 0, 0),
(93, 2017129, 0, 27, 0, 0),
(94, 2017130, 0, 67.5, 0, 0),
(95, 2017131, 0, 5.75, 0, 0),
(96, 2017132, 0, 10, 0, 0),
(97, 2017133, 0, 12.6, 0, 0),
(98, 2017134, 0, 8, 0, 0),
(99, 2017135, 0, 11, 0, 0),
(100, 2017136, 0, 36, 0, 0),
(101, 2017137, 0, 10.5, 0, 0),
(102, 2017138, 0, 6.1, 0, 0),
(103, 2017139, 0, 22.8, 0, 0),
(104, 2017140, 0, 20, 0, 0),
(105, 2017141, 0, 21, 0, 0),
(106, 2017142, 0, 24, 0, 0),
(107, 2017143, 0, 14.4, 0, 0),
(108, 2017144, 0, 8.25, 0, 0),
(109, 2017145, 0, 8, 0, 0),
(110, 2017146, 0, 14.25, 0, 0),
(111, 2017147, 0, 13.5, 0, 0),
(112, 2017148, 0, 17.25, 0, 0),
(113, 2017149, 0, 9, 0, 0),
(114, 2017150, 0, 560, 0, 0),
(115, 2017151, 0, 436, 0, 0),
(116, 2017152, 0, 10.5, 0, 0),
(117, 2017153, 0, 46.5, 0, 0),
(118, 2017154, 0, 28.5, 0, 0),
(119, 2017155, 0, 308, 0, 0),
(120, 2017156, 0, 40.5, 0, 0),
(121, 2017157, 0, 13.5, 0, 0),
(122, 2017158, 0, 10, 0, 0),
(123, 2017159, 0, 172, 0, 0),
(124, 2017160, 0, 18, 0, 0),
(125, 2017161, 0, 21, 0, 0),
(126, 2017162, 0, 32.25, 0, 0),
(127, 2017163, 0, 12, 0, 0),
(128, 2017164, 0, 172, 0, 0),
(129, 2017165, 0, 480, 0, 0),
(130, 2017166, 0, 224, 0, 0),
(131, 2017167, 0, 13.8, 0, 0),
(132, 2017168, 0, 35, 0, 0),
(133, 2017169, 0, 16, 0, 0),
(134, 2017170, 0, 25.25, 0, 0),
(135, 2017171, 0, 12, 0, 0),
(136, 2017172, 0, 32.25, 0, 0),
(137, 2017173, 0, 12, 0, 0),
(138, 2017174, 0, 24.75, 0, 0),
(139, 2017175, 0, 33, 0, 0),
(140, 2017176, 0, 13.5, 0, 0),
(141, 2017177, 0, 11, 0, 0);

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
(1, 'Kabankalan City', 'Brgy. 1', 50),
(2, 'Himamaylan City', 'Brgy. 1', 70);

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
(1, '2019-08-21 06:24:24', 9, 93, 0, 0, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0),
(3, '2019-08-21 06:27:09', 9, 94, 70, 269, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2019-08-21 00:00:00', 1, 0),
(4, '2020-04-30 10:16:01', 10, 95, 0, 667, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0),
(6, '2020-04-30 10:32:26', 10, 96, 0, 149, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0),
(7, '2020-05-03 01:21:55', 11, 97, 0, 465, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2020-05-03 00:00:00', 0, 0),
(9, '2020-05-03 01:24:39', 11, 98, 50, 90, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2020-05-03 00:00:00', 0, 0),
(10, '2020-05-03 02:12:46', 14, 99, 0, 85, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0),
(11, '2020-05-03 02:14:07', 14, 100, 0, 15, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2020-05-06 00:00:00', 0, 0),
(12, '2020-05-06 05:38:21', 27, 101, 0, 40, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2020-05-06 00:00:00', 0, 0),
(13, '2020-05-06 05:56:33', 28, 102, 0, 125, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2020-05-06 00:00:00', 0, 0),
(15, '2020-05-09 02:45:15', 29, 103, 0, 352, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0);

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
(126, 'MKM', 'mahmoud', 'd69ae10091c728a28525c2a353d2538707f5e876', 'Administrator', 'photos/Photo MIND.jpg');

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
(2, 9, 201742, '2019-08-21', '0'),
(3, 14, 201744, '2020-05-03', '0'),
(4, 28, 201744, '2020-05-06', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

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
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
