-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:53 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'test', '098f6bcd4621d373cade4e832627b4f6', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `pid` int(100) DEFAULT NULL,
  `deliverydate` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `quantity` varchar(100) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `pid`, `deliverydate`, `message`, `Status`, `quantity`, `PostingDate`) VALUES
(1, 'ravi21@gmail.com', 75, '3rd June 2020', 'Check for faulty products. .', 0, '1', '2020-06-01 19:11:06'),
(2, 'priyanka32@gmail.com', 80, '11th May, 2020', 'Please provide with proper protection and a bag as well. ', 0, '1', '2020-06-01 19:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(39, 'CG', '2020-06-01 15:57:07', NULL),
(40, 'Philips', '2020-06-01 15:57:13', NULL),
(41, 'Unknown', '2020-06-01 15:57:23', NULL),
(42, 'Fantech', '2020-06-01 15:57:29', NULL),
(43, 'JBL', '2020-06-01 15:57:33', NULL),
(44, 'LG', '2020-06-01 15:57:37', NULL),
(45, 'Godrej', '2020-06-01 15:57:42', NULL),
(46, 'Vivetek', '2020-06-01 15:57:48', NULL),
(47, 'Quick', '2020-06-01 15:57:53', NULL),
(48, 'Vivibright', '2020-06-01 15:58:05', NULL),
(49, 'Acer', '2020-06-01 15:58:09', NULL),
(50, 'Asus', '2020-06-01 15:58:12', NULL),
(51, 'Dell', '2020-06-01 15:58:16', NULL),
(52, 'Amplifi', '2020-06-01 15:58:20', NULL),
(53, 'Tp-Link', '2020-06-01 15:58:25', NULL),
(54, 'Crompton', '2020-06-01 15:58:35', NULL),
(55, 'HP', '2020-06-01 15:58:45', NULL),
(56, 'LG', '2020-06-01 15:58:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Golbazar ', 'bibeklama@gmail.com', '9841232343');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Terry Grey ', 'terry21@gmail.com', '9842323221', 'Really, thankful for years of services from you.', '2020-05-16 14:53:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																								<p align="justify"><font size="2"><strong><span style="color: rgb(153, 0, 0);">Term and Conditions:</span></strong></font></p><p align="justify"><font size="2"><strong><span style="color: rgb(153, 0, 0);">* The contents displayed in www.onlinelectronics.com are solely a copyright property and any duplications or misuse of the product will be held illegal and necessary actions will be taken.&nbsp;</span></strong></font></p><p align="justify"><font size="2"><strong><span style="color: rgb(153, 0, 0);"><br></span></strong></font></p><p align="justify"><br></p>\r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '																				<p align="justify" style=""><span style="font-weight: 700; color: rgb(153, 0, 0); font-size: small;">Privacy and Policies:</span></p><p align="justify" style=""><span style="color: rgb(153, 0, 0); font-size: small; font-weight: 700;">*For the purpose of account creation in onlineelectronics.com some details regarding the customer are collected which are kept safely and are kept confidently for misuse in the future.&nbsp;</span></p><p align="justify" style=""><span style="color: rgb(153, 0, 0); font-size: small; font-weight: 700;">* Users inactive for more than 1 year are automatically deleted along with there personal information.&nbsp;</span></p>\r\n										\r\n										'),
(3, 'About Us ', 'aboutus', '																																																																						<p align="justify" style="font-size: 14px;"><font size="2"><strong><span style="color: rgb(153, 0, 0);">Who are We?</span></strong></font></p><p align="justify" style="font-size: 14px;"><font size="2"><strong><span style="color: rgb(153, 0, 0);">We are multi-vendor platform for cool and useful technologies which provides a large variety of electronic appliances that are used in the home to the official environment. Please feel free to search your dream electric product and we will provide our best to comply with your requirements.&nbsp;</span></strong></font></p><p align="justify" style="font-size: 14px;"><font size="2"><strong><span style="color: rgb(153, 0, 0);">Thank You.&nbsp;</span></strong></font></p><span class="uiv2-happy-shop" style="text-align: center; margin: 22px 0px 0px; padding: 0px; color: rgb(109, 110, 113); font-family: &quot;Roboto Slab&quot;, serif; width: 470px; display: block;"><br></span>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																																																																																<div class="muiv2-ques" style="padding: 5px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(231, 225, 225); border-left-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; font-family: latoregular; margin: 5px 10px !important;"><h1 style="text-align: justify; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; padding-bottom: 4px !important; font-family: roboto !important;"><p align="justify" style="color: rgb(62, 63, 58); font-size: 14px; font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"><font size="2"><strong><span style="color: rgb(153, 0, 0);">What is required for the user registration on this website?</span></strong></font></p><p align="justify" style="color: rgb(62, 63, 58); font-size: 14px; font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"><font size="2"><strong><span style="color: rgb(153, 0, 0);">Basic information like the user''s name, contact number, and email addresses are collected through a signup form.</span></strong></font></p><p align="justify" style="color: rgb(62, 63, 58); font-size: 14px; font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"><font size="2"><strong><span style="color: rgb(153, 0, 0);">Is each product in this website supplied directly from vendors or through a mediating agent?</span></strong></font></p><p align="justify" style="color: rgb(62, 63, 58); font-size: 14px; font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"><font size="2"><strong><span style="color: rgb(153, 0, 0);">No, each product is supplied from our verified and trustworthy vendor which we have been connected for years.&nbsp;</span></strong></font></p></h1><h1 style="margin-top: 0px; margin-bottom: 0px; color: rgb(62, 63, 58); background: transparent; text-align: justify; padding-top: 0px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: none; font-family: roboto !important; padding-bottom: 4px !important;"><div><span style="color: rgb(153, 0, 0); font-size: small; font-weight: 700;">Is this website protected from modern malware and is it prone to viruses?</span></div><div><span style="color: rgb(153, 0, 0); font-size: small; font-weight: 700;">No, this website is protected with proper encryption, and each information about the customer is placed encrypted that is complex for penetrations.&nbsp;</span></div></h1><h1 style="text-align: justify; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; padding-bottom: 4px !important; font-family: roboto !important;"><div style=""><br></div></h1></div><p></p>										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `BrandName` int(100) DEFAULT NULL,
  `ProductOverview` longtext,
  `Price` int(11) DEFAULT NULL,
  `BestBefore` varchar(100) DEFAULT NULL,
  `MadeYear` int(6) DEFAULT NULL,
  `PaymentType` varchar(100) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `ProductName`, `BrandName`, `ProductOverview`, `Price`, `BestBefore`, `MadeYear`, `PaymentType`, `Vimage1`) VALUES
(75, 'AC', 39, 'CG Air Conditioner 3 Ton Cassete', 201390, '2 year gurantee', 2018, 'Cash', 'p1.jpg'),
(76, 'Viva Collection', 41, 'Viva Collection 300 Watt Blender and Juicer', 7595, '5 years Warranty', 2015, 'Cash', 'p3.jpg'),
(77, 'Gaming Headset', 42, 'Fantech Gaming Headset HG13 Chief With Microphone ', 2939, '6 Months warranty from purchase date', 2018, 'Cash', 'p4.jpg'),
(78, 'Internet Security ', 47, 'Quick Heal Internet Security 3 Pcs, 1 Year (DVD)', 2116, '1 Year after purchase date', 2020, 'Cash', 'p9.jpg'),
(79, 'Cooktop ', 41, 'Induction Cooktop - Easy & Fast Cooking ', 2999, '6 Months warranty', 2019, 'Cash', 'p10.jpg'),
(80, 'Aspire 3 A315-53 Laptop', 49, 'Aspire 3 A315-53 Laptop (Intel Crore i3-7020U 7th Gen / 4 GB, 1 TB / Windows 10 Home 64 bit / Integrated Graphic Full HD 15.6 Inch) ', 48483, '1 Year warranty after purchase date', 2018, 'Cash', 'p12.jpg'),
(81, 'Asus GT 710 ', 50, 'Asus GT 710 2 GB DDR3 64 Bit Dual Slot, Passive Low Profile Graphics Cards', 8125, '3 months replacement guarantee', 2018, 'Cash', 'p13.jpg'),
(82, 'Dell Inspiron 3493 ', 51, 'Dell Inspiron 3493 i5 10TH Gen/ 4 GB RAM / 128 GB SSD + 500 GB/ 14" HD Screen ', 61155, '1 Year warranty after purchase date', 2019, 'Cash', 'p14.jpg'),
(83, 'Amplifie 40"', 52, 'Amplifie 40" Display HD LED Television (99 CM)', 35999, '1 Year warranty after purchase date', 2018, 'Cash', 'p15.jpg'),
(84, 'Quick Heal Internet Security', 47, 'Quick Heal Internet Security Latest Version - 1 User (CD/DVD)', 834, '1 Year warranty after purchase date', 2018, 'Cash', 'p16.jpg'),
(85, 'TP-Link 300 Mbps', 53, 'Tp- Link 300 Mbps Wireless N Router TL-WR841N', 2266, '6 moths warranty after purchase date', 2019, 'Cash', 'p17.jpg'),
(86, 'Smart LED 40" Television (99 cm )', 52, 'HD Smart LED 40" Television (99 cm )', 45999, '1 Year warranty after purchase date', 2018, 'Cash', 'p18.jpg'),
(87, 'Ultra HD Smart LED 55" Television ', 52, 'Amplifi Ultra HD Smart LED 55" Television (140 cm)', 94999, '1 Year warranty after purchase date', 2019, 'Cash', 'p19.jpg'),
(88, 'Mixer (750 Watt)', 54, 'Crompton Greaves Mixer, Grinder with 3 Jars (White) (750-watt)\r\n', 7819, '1 Year warranty after purchase date', 2019, 'Cash', 'p21.jpg'),
(89, '5 Input Ethernet Switch | Splitter', 53, 'TP- Link 5 Port Fast Ethernet Switch | Desktop Ethernet Switch | Desktop Ethernet Splitter | Ethernet Hub | Plug and Play | Fanless Quiet | Umanaged (TL-SF1005D), White ', 999, '1 Year warranty after purchase date', 2018, 'Cash', 'p22.jpg'),
(90, 'Wireless USB Adapter ', 53, 'High Gain Wireless USB Adapter TL-WN722N', 2510, '1 Year warranty after purchase date', 2018, 'Cash', 'p23.jpg'),
(91, 'Antivirus Pro ', 47, 'Quick Heal Antivirus Pro Latest Version - 1 PC, 1 Year (CD/DVD)', 449, '1 Year warranty after purchase date', 2019, 'Cash', 'p24.jpg'),
(92, 'TP - Link 24 - Port 10 / 100 Mbps Switch', 53, 'TP - Link 24 - Port 10 / 100 Mbps Desktop/ Rackmount Switch TL-SF1024D', 5330, '1 Year warranty after purchase date', 2019, 'Cash', 'p25.jpg'),
(93, 'Total Security Antivirus', 47, 'Quick Heal Total Security Latest Version - 3 PC, 1 Year ', 1283, '1 Year subscription after purchase date', 2020, 'Cash', 'p26.jpg'),
(94, 'HD Portable LED Projector', 48, 'ViviBright GP80 1800LM 1920x1080 HD Portable LED Projector ', 13558, '1 Year warranty after purchase date', 2019, 'Cash', 'p27.jpg'),
(95, 'HP Color Printer (Black)', 55, 'HP 415 All-in-One Ink Tank Wireless Color Printer (Black) ', 23125, '1 Year warranty after purchase date', 2019, 'Cash', 'p28.jpg'),
(96, 'Acer Laptop ', 49, 'Acer AMD Dual, 4 GB RAM, 500 GB HardDisk, 14" Display', 31336, '1 Year warranty after purchase date', 2019, 'Cash', 'p29.jpg'),
(97, '16 Port 10/ 100 Mbps Desktop Switch ', 53, 'TP- Link 16 Port 10/ 100 Mbps Desktop Switch TL-SF1016D', 2665, '1 Year warranty after purchase date', 2019, 'Cash', 'p30.jpg'),
(98, 'LG Washing Machine', 44, 'LG Front Load Washing Machine - 7 kg', 70000, '1 Year warranty after purchase date', 2019, 'Cash', 'p31.jpg'),
(99, '32" Display HD LED Television (80 cm)', 52, 'Amplifi 32" Display HD LED Television (80 CM) ', 23999, '1 Year warranty after purchase date', 2019, 'Cash', 'p32.jpg'),
(100, 'Dual Band Wireless Wi-Fi Router ', 53, 'TP-Link Archer C20 AC750 Dual Band Wireless, Wifi up to 433 Mbps/5 Ghz + 300 Mbps / 2.4 GHz. Supports Parental Control Guest WiFi, Router', 3666, '1 Year warranty after purchase date', 2019, 'Cash', 'p34.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'daneils21@gmail.com', '2020-05-16 12:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'daniels21@gmail.com', 'Best Online Electronics site i have discovered till now. \r\n\r\n', '2020-05-16 14:06:07', 1),
(4, 'priya11@gmail.com', 'Well, hats up for the delivery services and excellent CSR. ', '2020-05-16 14:38:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(8, 'Priya', 'priya11@gmail.com', '00c66aaf5f2c3f49946f15c1ad2ea0d3', '9841223345', NULL, NULL, NULL, NULL, '2020-05-25 16:13:46', NULL),
(9, 'ravi21@gmail.com', 'ravi21@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9842332232', NULL, NULL, NULL, NULL, '2020-06-01 19:10:31', NULL),
(10, 'Priyanka Sharma', 'priyanka32@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9811232342', NULL, NULL, NULL, NULL, '2020-06-01 19:27:10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
