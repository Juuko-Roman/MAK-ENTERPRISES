-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 03:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mak_enterprises`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `quantityInStock` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`, `quantityInStock`) VALUES
(1, 'long term', 'take long to manufacture', '2021-12-28 10:01:55', NULL, 4),
(2, 'Medium term', 'take average time to manufacture', '2021-12-28 11:41:22', NULL, 8),
(3, 'short term', 'take a very little time to manufacture', '2021-12-28 11:43:50', NULL, 32);

-- --------------------------------------------------------

--
-- Table structure for table `customerlog`
--

CREATE TABLE `customerlog` (
  `id` int(11) NOT NULL,
  `customerEmail` varchar(255) DEFAULT NULL,
  `customerip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerlog`
--

INSERT INTO `customerlog` (`id`, `customerEmail`, `customerip`, `loginTime`, `logout`, `status`) VALUES
(25, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-28 18:55:48', '29-12-2021 12:28:56 AM', 1),
(26, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-29 09:50:45', NULL, 1),
(27, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-29 17:44:11', '29-12-2021 11:16:40 PM', 1),
(28, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-29 17:46:50', NULL, 1),
(29, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-02 16:17:19', NULL, 1),
(30, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-04 21:13:11', NULL, 1),
(31, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-14 09:44:33', '14-01-2022 03:15:06 PM', 1),
(32, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-14 09:45:14', NULL, 1),
(33, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-18 13:28:45', NULL, 1),
(34, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-18 13:41:17', NULL, 1),
(35, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-18 14:20:31', NULL, 0),
(36, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-18 14:22:03', NULL, 1),
(37, 'juukoroman017@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-30 10:51:00', NULL, 0),
(38, 'juukoroman017@gmail.com', 0x3132372e302e302e3100000000000000, '2022-07-29 14:10:20', NULL, 0),
(39, 'juukoroman018@gmail.com', 0x3132372e302e302e3100000000000000, '2022-07-29 14:11:25', '29-07-2022 07:43:00 PM', 1),
(40, 'juukoroman018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-30 06:42:16', NULL, 1),
(41, 'juukoroman018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-30 19:17:34', NULL, 1),
(42, 'juukoroman018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-30 19:33:31', NULL, 1),
(43, 'juukoroman018@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-01 13:46:34', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `location`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'John Doe', NULL, NULL, 'johndoe@gmail.com', 1234567890, '1234', 'Kampala', 'kampala', 'Kampala', 7888, 'Kampala', 'kampala', 'Kampala', 7888, '2021-12-28 06:50:33', NULL),
(5, 'roman', NULL, NULL, 'juukoroman017@gmail.com', 754026504, 'c9bc423571478fabb9485ee4adfcee18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-28 18:55:31', NULL),
(6, 'Juuko Roman', NULL, NULL, 'juukoroman017@gmail.com', 754026504, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-18 14:21:09', NULL),
(7, 'roman', NULL, NULL, 'juukoroman018@gmail.com', 754026504, '81dc9bdb52d04dc20036dbd8313ed055', 'derr', 'hhgf', 'kjg', 0, '1', '4', '6', 7, '2022-07-29 14:11:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2017-01-24 16:21:18', '28-12-2021 05:21:38 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `likes`, `postingDate`, `updationDate`) VALUES
(31, 2, 1, 'Arabia Dining Table', 200000, 300000, NULL, 'Arabia_Dining_Table_TK_1.jpg', 'Arabia_Dining_Table_TK_2.jpg', 'Arabia_Dining_Table_TK_3.jpg', 6000, 'In Stock', 2, '2022-08-07 15:16:29', NULL),
(32, 2, 4, 'Baltoro Wardrobe White', 200000, 400000, NULL, 'Baltoro_Wardrobe_White_1.jpg', 'Baltoro_Wardrobe_White_2.png', 'Baltoro_Wardrobe_White_3.jpg', 4000, 'In Stock', 5, '2022-08-07 15:19:00', NULL),
(33, 1, 3, 'cozy bed', 200000, 300000, NULL, 'bed1_1.jpg', 'bed1_2.jpg', 'bed1_3.jpg', 6000, 'In Stock', 23, '2022-08-07 15:21:33', NULL),
(34, 1, 3, 'Floshy bed', 200000, 300000, NULL, 'bed2_1.jpeg', 'bed2_2.jpeg', 'bed2_3.jpeg', 6000, 'In Stock', 6, '2022-08-07 15:23:09', NULL),
(35, 1, 3, 'Hassy bed', 200000, 300000, NULL, 'bed3_1.jpg', 'bed3_2.jpg', 'bed3_3.jpg', 6000, 'In Stock', 8, '2022-08-07 15:24:22', NULL),
(36, 1, 3, 'Caprica Bed', 200000, 300000, NULL, 'Caprica_Bed_1.jpg', 'Caprica_Bed_2.jpg', 'Caprica_Bed_3.jpg', 6000, 'In Stock', 34, '2022-08-07 15:25:57', NULL),
(37, 3, 2, 'Chair Cosy velvet beige', 200000, 300000, NULL, 'Chair-Cosy-velvet-beige_1.png', 'Chair-Cosy-velvet-beige_2.jpeg', 'Chair-Cosy-velvet-beige_3.jpeg', 6000, 'In Stock', 22, '2022-08-07 15:28:18', NULL),
(38, 2, 1, 'Dyson Merch table', 200000, 300000, NULL, 'Dyson_Merch_1.jpg', 'Dyson_Merch_2.jpg', 'Dyson_Merch_3.jpg', 6000, 'In Stock', 20, '2022-08-07 15:30:05', NULL),
(39, 2, 1, 'Epsilon Coffe Table', 200000, 300000, NULL, 'Epsilon_Coffe_Table_MH_1.jpg', 'Epsilon_Coffe_Table_MH_2.jpg', 'Epsilon_Coffe_Table_MH_3.jpg', 6000, 'In Stock', 12, '2022-08-07 15:31:51', NULL),
(40, 1, 3, 'Florence Bed', 200000, 300000, NULL, 'Florence_Bed_1.jpg', 'Florence_Bed_2.jpg', 'Florence_Bed_3.jpg', 6000, 'In Stock', 10, '2022-08-07 15:33:53', NULL),
(41, 3, 2, 'Gordon Dining Chair', 200000, 300000, NULL, 'Gordon_Dining_Chair_1.jpg', 'Gordon_Dining_Chair_2.jpg', 'Gordon_Dining_Chair_3.jpg', 6000, 'In Stock', 8, '2022-08-07 15:35:14', NULL),
(42, 1, 3, 'Helena Upholstered King Size Bed', 200000, 300000, NULL, 'Helena_Upholstered_King_Size_Bed_1.jpg', 'Helena_Upholstered_King_Size_Bed_2.jpg', 'Helena_Upholstered_King_Size_Bed_3.jpg', 6000, 'In Stock', 11, '2022-08-07 15:36:50', NULL),
(43, 2, 1, 'Hilton Door 1 Drawer Wardrobe', 200000, 300000, NULL, 'Hilton_3_Door_1_Drawer_Wardrobe_finish_Spiced_acacia_merc_1.jpg', 'Hilton_3_Door_1_Drawer_Wardrobe_finish_Spiced_acacia_merc_2.jpg', 'Hilton_3_Door_1_Drawer_Wardrobe_finish_Spiced_acacia_3.jpg', 6000, 'In Stock', 13, '2022-08-07 15:38:15', NULL),
(44, 2, 1, 'Kivaha Coffee Table Lattice', 200000, 300000, NULL, 'Kivaha_Coffee_Table_Lattice_2.jpg', 'Kivaha_Coffee_Table_Lattice_1.jpg', 'Kivaha_Coffee_Table_Lattice_3.jpg', 6000, 'In Stock', 23, '2022-08-07 15:40:54', NULL),
(45, 2, 1, 'Lawson Seater Dining Table', 200000, 300000, NULL, 'Lawson_6_Seater_Dining_Table_1.jpg', 'Lawson_6_Seater_Dining_Table_2.jpg', 'Lawson_6_Seater_Dining_Table_3.jpg', 6000, 'In Stock', 19, '2022-08-07 15:42:04', NULL),
(46, 2, 4, 'Magellan Wardrobe Finish Teak', 200000, 300000, NULL, 'Magellan_Wardrobe_Finish_Teak_1.jpg', 'Magellan_Wardrobe_Finish_Teak_2.jpg', 'Magellan_Wardrobe_Finish_Teak_3.jpg', 6000, 'In Stock', 12, '2022-08-07 15:43:36', NULL),
(47, 3, 2, 'Martha Dining Chairs', 200000, 300000, NULL, 'Martha_Dining_Chairs_Teak_Wheat_Brown_1.png', 'Martha_Dining_Chairs_Teak_Wheat_Brown_2.png', 'Martha_Dining_Chairs_Teak_Wheat_Brown_3.png', 6000, 'In Stock', 15, '2022-08-07 15:44:46', NULL),
(48, 2, 1, 'Ryan Coffee Table', 200000, 300000, NULL, 'Ryan_Coffee_Table_Set_Velvet_Green_1.jpg', 'Ryan_Coffee_Table_Set_Velvet_Green_2.jpg', 'Ryan_Coffee_Table_Set_Velvet_Green_3.jpg', 6000, 'In Stock', 10, '2022-08-07 15:45:50', NULL),
(49, 3, 2, 'Thomson Chair revised', 200000, 300000, NULL, 'Thomson_Chair_Revised_Beige_1.jpg', 'Thomson_Chair_Revised_Beige_2.jpg', 'Thomson_Chair_Revised_Beige_3.jpg', 6000, 'In Stock', 17, '2022-08-07 15:47:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 2, 'TABLES', '2021-12-28 10:02:09', NULL),
(2, 3, 'CHAIRS', '2021-12-28 11:41:44', NULL),
(3, 1, 'BEDS', '2021-12-28 11:44:01', NULL),
(4, 2, 'WARD ROBES', '2022-07-30 19:10:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 15:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerlog`
--
ALTER TABLE `customerlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customerlog`
--
ALTER TABLE `customerlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
