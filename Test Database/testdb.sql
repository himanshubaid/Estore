-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2022 at 07:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `first_name`, `last_name`, `password`) VALUES
(1, 'Aditya', 'Bhardwaj', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total` int(20) NOT NULL,
  `order_id` int(20) NOT NULL,
  `autoincrement` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`product_id`, `user_id`, `quantity`, `total`, `order_id`, `autoincrement`) VALUES
(4, 1, 1, 500, 1, 1),
(4, 1, 10, 5000, 2, 2),
(4, 1, 1, 500, 3, 3),
(4, 1, 1, 500, 4, 4),
(13, 1, 1, 2500, 5, 5),
(13, 1, 4, 10000, 6, 6),
(11, 1, 4, 23996, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total` int(20) NOT NULL,
  `autoincrement` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`product_id`, `user_id`, `quantity`, `total`, `autoincrement`) VALUES
(13, 1, 1, 2500, 4),
(12, 1, 1, 5999, 5),
(15, 1, 4, 2268, 6),
(5, 1, 4, 20000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Redgear'),
(4, 'Zebronics'),
(5, 'Keyboard'),
(6, 'Headphones'),
(7, 'CPU');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_code` varchar(50) NOT NULL,
  `money` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_code`, `money`) VALUES
('1122', 10000),
('1123', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `status`) VALUES
(1, 1, 'delivered'),
(2, 1, 'delivered'),
(3, 1, 'pending'),
(4, 1, 'pending'),
(5, 1, 'pending'),
(6, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `category_id` int(10) NOT NULL,
  `date_added` datetime NOT NULL,
  `description` varchar(2000) NOT NULL,
  `price` int(10) NOT NULL,
  `icon_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `date_added`, `description`, `price`, `icon_name`) VALUES
(4, 'Logitech B170 Wireless Mouse', 2, '2019-05-04 12:25:00', 'Reliable Wireless Connection : Enjoy a wireless connection up to 10m away thanks to a plug-and-forget USB mini-receiver', 500, '1.jpg'),
(5, 'STRIFF Adjustable Laptop Stand ', 1, '2019-05-12 12:08:47', 'FOLDABLE, PORTABLE, LIGHTWEIGHT: The Carnation Laptop Stand has a thin, hard plastic frame. It can be easily folded and carried around. Durable enough to withstand the weight of up to 55 lbs (25kg).', 5000, '2.jpg'),
(6, 'Wired RGB Wired Headphones', 6, '2019-05-12 12:10:07', 'Sound Quality: Redgear Cloak comes equipped with 50mm Driver with Enhanced audio bass and clarity which dramatically improves your in-game sound experience. Inline Remote : No', 6000, '3.jpg'),
(7, 'Zebronics Zeb-Companion', 5, '2019-05-12 12:10:40', 'Keyboard Interface USB (Nano receiver) Total No.of Keys 104\nCompanion 107 is a wireless keyboard and mouse combo that comes with a nano receiver built for home/office use. Plug and Play\nMouse Interface USB (Nano Receiver) Resolution 1200 DPI No. of Buttons 3', 800, '4.jpg'),
(8, 'Gaming Mouse with LED Effect(Black)', 2, '2019-05-12 12:11:39', 'Gaming mouse: ZEB-Transformer-M premium gaming mouse is designed for gamers who want the perfect fusion of high DPI, precision gaming along with LED lights.', 800, '5.jpg'),
(9, 'Zebronics ZEB-90HB USB Hub', 4, '2019-05-12 12:11:54', '4-Port USB 2.0 Hub. Cable length 50 cm\nUseful for Laptops, PC & Computers, Mac book\nPocket Sized, Easy to Carry\nPlug & Play', 800, '6.jpg'),
(10, 'Logitech K480 Wireless Multi-Device Keyboard', 5, '2019-05-12 12:13:32', 'Type on Any Device: A new type of wireless computer keyboard for your desk that also works with your tablet and smartphone; connect with any Bluetooth-enabled device with external keyboard support.', 800, '7.jpg'),
(11, 'Redgear Pro Wireless Gamepad', 3, '2019-05-12 12:16:03', 'Gamepad comes equipped with2.4GHz wireless technology and supports up to 10 metres range, an ideal choice for those looking to enjoy your favourite games without the hassle of cables and wires.\nThe built-in lithium-ion battery in the gamepad can provide', 5999, '8.jpg'),
(12, 'Redgear A-15 Wired Gaming Mouse', 2, '2019-05-12 12:16:36', 'Compatibility: Redgear A15 is compatible with PCs, laptops, notebooks and other devices with a similar input.', 5999, '9.jpg'),
(13, 'APC Back-UPS BX600C-IN 600VA / 360W', 7, '2019-05-12 12:16:54', 'Compact Design Line Interactive UPS with Load Capacity of 360Watts / 600VA. Output Frequency (sync to mains) : 47 - 63 Hz Sync to mains', 2500, '10.jpg'),
(14, 'HP 14(2021) 10th Gen', 1, '2022-11-05 17:29:14', 'Free upgrade to Windows 11 when available* Disclaimer-*The Windows 11 upgrade will be delivered late 2021 into 2022. Timing varies by device. Certain features require specific hardware.', 299, '11.jpg'),
(15, 'Redgear MP35 Speed-Type Gaming Mousepad', 3, '2022-11-05 17:30:00', 'Speed-type surface mousepad is designed with the use of great technology and craftsmanship especially for professional gamers. Non-slip rubber base', 567, '12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userss`
--

CREATE TABLE `userss` (
  `user_id` int(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` varchar(34) NOT NULL,
  `wallet` int(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userss`
--

INSERT INTO `userss` (`user_id`, `first_name`, `last_name`, `password`, `wallet`, `address`) VALUES
(1, 'Aditya', 'Bhardwaj', '12345678', 932736, 'Ranchi'),
(2, 'Priyanshu', 'Vyas', '12345678', 5000, 'Rajasthan'),
(3, 'Himanshu', 'Baid', '12345678', 8000, 'Gujrat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`autoincrement`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`autoincrement`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_code`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `autoincrement` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `autoincrement` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
