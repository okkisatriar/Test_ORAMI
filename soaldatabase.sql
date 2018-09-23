-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2018 at 05:46 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orami`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `price`) VALUES
(163, 'Chiken Kung Pao Small', '30000.00'),
(166, 'Ayam Bakar Small', '31000.00'),
(169, 'Chicken Katsu Small', '25000.00'),
(172, 'Beef Black Pepper Small', '36000.00'),
(178, 'Fish Ala Thai Small', '25000.00');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `payment_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `delivery_fee` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `delivery_datetime` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `payment_code`, `subtotal`, `discount`, `delivery_fee`, `total`, `is_paid`, `delivery_datetime`, `created_at`) VALUES
(1, 1, 'AA1', '86000.00', '0.00', '10000.00', '96000.00', 1, '2017-09-21 00:00:00', '2018-09-22 13:41:29'),
(2, 2, 'AA2', '286000.00', '28600.00', '0.00', '257400.00', 1, '2018-09-22 00:00:00', '2018-09-22 13:44:26'),
(3, 3, 'AA3', '62000.00', '0.00', '10000.00', '72000.00', 1, '2018-09-23 00:00:00', '2018-09-22 13:44:26'),
(4, 1, 'AA4', '50000.00', '0.00', '10000.00', '60000.00', 1, '2018-09-24 00:00:00', '2018-09-22 13:44:26'),
(5, 2, 'AA5', '300000.00', '30000.00', '0.00', '270000.00', 1, '2018-09-25 00:00:00', '2018-09-22 13:44:26'),
(6, 3, 'AA6', '620000.00', '20000.00', '0.00', '600000.00', 1, '2018-10-21 00:00:00', '2018-09-22 13:44:26'),
(7, 1, 'AA7', '161000.00', '0.00', '0.00', '161000.00', 1, '2018-10-22 00:00:00', '2018-09-22 13:44:26'),
(8, 2, 'AA8', '136000.00', '0.00', '0.00', '136000.00', 1, '2018-10-23 00:00:00', '2018-09-22 13:44:26'),
(9, 3, 'AA9', '31000.00', '0.00', '15000.00', '46000.00', 1, '2018-10-24 00:00:00', '2018-09-22 13:44:26'),
(10, 1, 'AA10', '61000.00', '15250.00', '15000.00', '61250.00', 1, '2018-10-25 00:00:00', '2018-09-22 13:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` int(10) NOT NULL,
  `purchase_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `price_each` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `item_id`, `price_each`, `qty`) VALUES
(1, 1, 178, '25000.00', 1),
(2, 1, 166, '31000.00', 1),
(3, 1, 163, '30000.00', 1),
(4, 2, 169, '25000.00', 9),
(5, 2, 178, '25000.00', 1),
(6, 2, 172, '36000.00', 1),
(7, 3, 166, '31000.00', 2),
(8, 4, 178, '25000.00', 1),
(9, 4, 169, '25000.00', 1),
(10, 5, 163, '30000.00', 10),
(11, 6, 166, '31000.00', 20),
(12, 7, 163, '30000.00', 1),
(13, 7, 166, '31000.00', 1),
(14, 7, 178, '25000.00', 4),
(15, 8, 163, '30000.00', 1),
(16, 8, 166, '31000.00', 1),
(17, 8, 178, '25000.00', 3),
(18, 9, 166, '31000.00', 1),
(19, 10, 163, '30000.00', 1),
(20, 10, 166, '31000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'Andi', 'andi@example.com'),
(2, 'Budi', 'budi@example.com'),
(3, 'Charlie', 'charlie@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_code` (`payment_code`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  ADD CONSTRAINT `purchase_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
