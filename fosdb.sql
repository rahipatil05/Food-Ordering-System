-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2025 at 12:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `foodorderdetails`
--

CREATE TABLE `foodorderdetails` (
  `id` int(5) NOT NULL,
  `regno` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `subj` varchar(250) NOT NULL,
  `message` varchar(999) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 9989878909, 'test@gmail.com', 'e6e061838856bf47e1de730719fb2609', '2023-03-03 05:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Itallian', '2023-03-03 20:10:08'),
(4, 'Thai', '2023-03-03 20:10:08'),
(5, 'South Indian', '2023-03-03 20:10:08'),
(6, 'North Indian', '2023-03-03 20:10:08'),
(7, 'Desserts', '2023-03-03 20:10:08'),
(8, 'Starters', '2023-03-03 20:10:08'),
(9, 'Chinease', '2023-03-03 20:10:08'),
(10, 'Test Food ', '2023-03-03 20:10:08'),
(11, 'Japan Food', '2023-03-16 12:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`) VALUES
(1, 'Italian', 'Corn Pizza', '190', 'A cheesy delight topped with sweet, juicy corn and a crispy crust, perfect for any pizza lover!', '6bc7dbbfef5058fa14b260f1bcb6d8c7.jpg', 'Medium'),
(2, 'Italian', 'parota', '120', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet;', '39c0cfa00c8e75e1e509120d9f15de95.jpg', 'Regular'),
(3, 'Italian', 'Biriyani', '220', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet', '45157aea829a98f7bbd8c76f0ac9535c.jpg', 'Large'),
(4, 'Italian', 'Egg Noodles', '150', 'Soft, flavorful noodles enriched with eggs, perfect for stir-fried, soupy, or spicy dishes.', '56b25551a7670ff8617bad94280c3811jpeg', 'Medium'),
(5, 'Italian', 'Veg Extravaganza Pizza', '440', 'A loaded delight with a medley of fresh veggies, tangy sauce, and gooey cheese on a crispy crust!', 'd2c9569270d732ede9b3b960e6752daa.jpg', 'Large'),
(6, 'North Indian', 'Chana Masala', '120', 'To make this chana masala we start with a trio of ingredients found in most Indian curriesâ€“onion, garlic, and ginger. ', '4929a6a9f31b7b8c15799cc7e9b38af1.jpg', 'Full'),
(7, 'North Indian', 'Rajma Masala', '125', 'Rajma Masala is a much loved spicy curry in most Indian Households.                               	', '6049e7b9e0ca9936d7d7d441b5b7f92d.jpg', 'Full'),
(8, 'South Indian', 'Dosa', '85', 'Dosa  are served hot along with sambar, a stuffing of potatoes, and chutney.                             	', '7df9f686752d652a4f354cdba2b2b047.png', 'Regular'),
(9, 'South Indian', 'Idli', '75', 'Idli are a type of savoury rice cake, originating from the Indian subcontinent and served coconut chutney.                                         	', 'a91d67f17bc85d8587d186a500044575.jpg', '2 pcs'),
(10, 'South Indian', 'Vada', '60', 'Medu vada served with hot shambhar and coconut chutney ', '66d5785b3c99179f5a5bb7d7d94636dd.jpg', '2 pcs'),
(11, 'North Indian', 'Chole Bhature', '120', 'Chole Bhuture is a combination of chana masala (spicy white chickpeas) and bhatura,                                                	', 'a6aac77073c3002d8a9e2fbf98b2a90d.jpg', '2 pcs'),
(12, 'North Indian', 'Aloo paratha', '85', ' Aloo paratha is served with butter, chutney, or Indian pickles in different parts of northern and western India.                                                 	', '8cc336b118e1feb503f9a54f3bdcdf1b.jpg', '2 pieces'),
(13, 'North Indian', 'Mix Pratha', '85', 'veg paratha soft, healthy and delicious whole wheat parathas made with mix vegetables. ... this no onion no garlic veg paratha recipe is pretty flexible.                                               	', '4b4f0a570c7f36f0db9e4f8e7fa60442.jpg', '2 pieces'),
(14, 'North Indian', 'Paneer Paratha.', '95', 'paneer paratha. paneer paratha is an indian flat bread made with cottage cheese stuffing. paneer paratha are popular breakfast recipe in punjabi homes.                                                 	', 'a19b8b7095ad0c23ddd95a28c3f85268.jpg', '2 pieces'),
(15, 'Chinease', 'Hakka Noodle', '120', 'Hakka Noodle is one our famous food which is made up by our homemade masale.                                               	', 'f8f34e70f13c6d9e982640e3b39f317b.jpg', 'full'),
(16, 'Chinese', 'Veg Chowmin', '120', 'Veg Chowmien full Plate                                                 	', '927f5a1c2bcfff25ff8a936fa98d5f2f.jpg', 'Full'),
(17, 'Japan Food', 'Japanese Noodles', '225', '               Very tasty                                  	', '415f72e51035cf9e0c4d5b951ea49960.jpg', '1kg');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '111500378', 'Order Confrimed', 'Order Confirmed', '2023-03-03 05:00:53', NULL),
(2, '111500378', 'Food is preparing', 'Food being Prepared', '2023-03-03 05:00:53', NULL),
(3, '111500378', 'Food delivered sucessfully', 'Food Delivered', '2023-03-03 05:00:53', NULL),
(4, '409347008', 'Food delivered on time', 'Food Delivered', '2023-03-16 12:25:25', NULL),
(5, '807868432', 'No need', 'Order Cancelled', '2023-03-16 12:26:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(1, '1', '409347008', 'H5534 ', 'XYZ Streer', 'ABC Area', 'test Landmark', 'Chennai', '2023-03-03 05:00:53', 'Food Delivered'),
(2, '3', '111500378', 'H 52312', 'XYZ Street', 'Maduravoyal', 'ABC Landmark', 'Chennai', '2023-03-03 05:00:53', 'Food Delivered'),
(3, '4', '807868432', '19', '9TH CROSS STREET', 'CHENNAI', 'Tamilnadu', 'Chennai', '2023-03-16 11:57:18', 'Order Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `FoodQty` int(11) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `FoodQty`, `IsOrderPlaced`, `OrderNumber`) VALUES
(1, '1', '8', 1, 1, '409347008'),
(2, '1', '7', 1, 1, '409347008'),
(3, '3', '1', 1, 1, '111500378'),
(4, '3', '5', 2, 1, '111500378'),
(5, '4', '8', 1, 1, '807868432'),
(7, '5', '1', 1, 1, '570063537'),
(8, '5', '2', 1, 1, '570063537'),
(9, '5', '2', 4, NULL, NULL),
(10, '5', '2', 1, NULL, NULL),
(11, '5', '2', 1, NULL, NULL),
(12, '6', '1', 1, 1, '615389464'),
(13, '7', '1', 1, 1, '734665820');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Anandraj', 'Kanniyappan', 'test@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '2023-03-03 05:00:53'),
(3, 'Test', 'User', 'testuser@gmail.com', 1236547890, 'f925916e2754e5e03f75dd58a5733251', '2023-03-03 05:00:53'),
(4, 'anandraj', 'Kanniyappan', 'dmtanand@gmail.com', 8248440907, '31ad2f10870bb5e4c517357bf9f95e58', '2023-03-16 11:53:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foodorderdetails`
--
ALTER TABLE `foodorderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foodorderdetails`
--
ALTER TABLE `foodorderdetails`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
