-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2023 at 10:48 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `northwind`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int NOT NULL,
  `cust_name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `grade` int DEFAULT NULL,
  `salesman_id` int DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `FK_saleman_id` (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `cust_name`, `city`, `grade`, `salesman_id`) VALUES
(1, 'naruto', 'delhi', 100, 123),
(2, 'sakura', 'surat', 220, 124),
(3, 'susake', 'delhi', 300, 125),
(4, 'itachi', 'mumbai', 500, 126),
(5, 'dedhara', 'ahmedabad', NULL, NULL),
(6, 'shikimaru', 'vadodara', 650, 125),
(7, 'pain', 'surat', 120, 113),
(8, 'joraya', 'delhi', 10, 143),
(9, 'konahamaru', 'surat', 450, NULL),
(10, 'gojo', 'mumbai', 1000, 128),
(11, 'saratu', 'delhi', 560, 153),
(12, 'geto', 'vadodara', NULL, 163),
(13, 'suguru', 'gaziabad', 897, 126),
(14, 'nanami', 'vadodara', 370, 113),
(15, 'kambe', 'mumbai', NULL, 120),
(16, 'deisuke', 'delhi', 12, 143),
(17, 'hunter', 'gaziabad', 342, 153),
(18, 'ranke', 'gaziabad', NULL, 163),
(19, 'dami', 'surat', 123, 113),
(20, 'onlyone', 'delhi', NULL, NULL),
(21, 'pain', 'surat', 120, 113),
(22, 'joraya', 'delhi', 10, 143),
(23, 'konahamaru', 'surat', 450, 124),
(24, 'gojo', 'mumbai', 1000, 128),
(25, 'saratu', 'delhi', 345, NULL),
(26, 'geto', 'vadodara', 223, 163),
(27, 'suguru', 'gaziabad', 213, 126),
(28, 'nanami', 'vadodara', 56, 113),
(29, 'kambe', 'mumbai', NULL, 120),
(30, 'deisuke', 'delhi', 678, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ord_no` int NOT NULL,
  `purch_amt` int DEFAULT NULL,
  `ord_date` date DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `salesman_id` int DEFAULT NULL,
  PRIMARY KEY (`ord_no`),
  KEY `FK_customer_id` (`customer_id`),
  KEY `FK_salesman_id` (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ord_no`, `purch_amt`, `ord_date`, `customer_id`, `salesman_id`) VALUES
(1, 209, '2023-01-12', 1, 123),
(2, 29, '2022-10-12', 2, 124),
(3, 1209, '2022-11-12', 3, 125),
(4, 2039, '2020-02-22', NULL, 126),
(5, 2029, '2022-03-12', 5, 127),
(6, 2049, '2023-04-13', 6, 128),
(7, 2509, '2022-05-16', 7, 129),
(8, 2609, '2021-06-17', 8, NULL),
(9, 2079, '2022-07-19', 9, 113),
(10, 2809, '2022-08-22', 10, 143),
(11, 2709, '2022-09-27', 11, 153),
(12, 29, '2023-10-13', 12, 163),
(13, 9, '2021-12-17', 13, 123),
(14, 509, '2021-11-02', 14, 124),
(15, 279, '2021-07-15', 15, 125),
(16, 249, '2020-06-18', 16, 126),
(17, 239, '2022-05-19', 17, 127),
(18, 219, '2012-04-15', 18, NULL),
(19, 779, '2020-02-14', 19, 129),
(20, 129, '2022-01-11', NULL, 120),
(21, 2039, '2020-02-22', 1, 126),
(22, 2029, '2022-03-12', 2, 127),
(23, 2049, '2023-04-13', 3, 128),
(24, 2509, '2022-05-16', 4, 129),
(25, 2609, '2021-06-17', 5, 120),
(26, 2079, '2022-07-19', 6, 113),
(27, 2809, '2022-08-22', 7, 143),
(28, 2709, '2022-09-27', 11, 153),
(29, 29, '2023-10-13', 12, 163),
(30, 9, '2021-12-17', 13, 123),
(31, 509, '2021-11-02', 14, 124),
(32, 279, '2021-07-15', 15, 125),
(33, 249, '2020-06-18', 16, 126),
(34, 239, '2022-05-19', 17, 127),
(35, NULL, NULL, NULL, NULL),
(36, 779, '2020-02-14', 13, 129),
(37, 129, '2022-01-11', 24, 120),
(38, 2039, '2020-02-22', 4, 126),
(39, 2029, '2022-03-12', 5, 127),
(40, 2049, '2023-04-13', 6, 128),
(41, 2509, '2022-05-16', 7, 129),
(42, 2609, '2021-06-17', 8, 120),
(43, 2079, '2022-07-19', 9, 113),
(44, NULL, NULL, NULL, NULL),
(45, 2709, '2022-09-27', 11, 153),
(46, 29, '2023-10-13', 12, 163),
(47, 9, '2021-12-17', 13, 123),
(48, 509, '2021-11-02', 14, 124),
(49, 279, '2021-07-15', 15, 125),
(50, NULL, NULL, NULL, NULL),
(51, 239, '2022-05-19', 17, 127),
(52, 219, '2012-04-15', NULL, 128),
(53, 779, '2020-02-14', 19, 129),
(54, 129, '2022-01-11', 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(25) NOT NULL,
  `SupplierID` int NOT NULL,
  `CategoryID` int NOT NULL,
  `QuantityPerUnit` int NOT NULL,
  `UnitPrice` int NOT NULL,
  `UnitsInStock` int NOT NULL,
  `UnitsOnOrder` int NOT NULL,
  `ReorderLevel` int NOT NULL,
  `Discontinued` tinyint(1) NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
(123, 'clinic + shampoo', 32, 11, 2, 16, 34, 22, 10, 0),
(124, 'hair & shoulder', 34, 54, 8, 985, 52, 22, 11, 1),
(125, 'Loyera', 35, 56, 98, 4, 34, 25, 12, 0),
(126, 'Dove', 40, 78, 5, 54, 34, 272, 120, 0),
(127, 'Priyaa shampoo', 45, 78, 23, 86, 34, 422, 130, 0),
(128, 'Artii shoap', 76, 12, 85, 156, 34, 252, 210, 1),
(129, 'someone', 110, 89, 2, 176, 34, 122, 1220, 0),
(130, 'glory', 560, 42, 42, 216, 34, 282, 109, 0),
(131, 'oxy 12', 143, 50, 986, 156, 34, 223, 130, 1),
(132, 'clinic plus shampoo', 57, 68, 156, 76, 34, 12, 2110, 0),
(133, 'skybags', 784, 55, 935, 126, 34, 232, 1580, 1),
(201, 'Pears', 51, 20, 512, 16, 34, 22, 20, 0),
(202, 'Santoor', 52, 23, 12, 46, 24, 12, 30, 0),
(203, 'Cinthol', 53, 31, 222, 15, 74, 52, 40, 0),
(204, 'Vivel', 54, 34, 50, 43, 44, 20, 10, 1),
(205, 'Lux', 55, 13, 40, 61, 72, 25, 30, 0),
(206, 'Nivea', 56, 44, 33, 66, 47, 89, 50, 0),
(207, 'Lifeboy', 57, 45, 55, 15, 30, 23, 24, 0),
(208, 'himalaya', 58, 22, 75, 13, 39, 18, 60, 0),
(209, 'Medimix', 59, 11, 70, 11, 29, 70, 10, 1),
(210, 'Fiama', 60, 11, 85, 16, 30, 51, 34, 0),
(211, 'Savlon', 61, 11, 66, 66, 40, 54, 15, 1),
(323, 'jeevraj9', 32, 11, 2, 16, 34, 22, 10, 0),
(324, 'tandoori', 334, 4, 8, 85, 52, 22, 11, 1),
(325, 'gulabjammun', 34, 56, 8, 4, 34, 25, 12, 0),
(3126, 'kurama', 4, 78, 56, 5, 34, 272, 120, 0),
(31127, 'naruto', 5, 78, 23, 8, 34, 422, 130, 0),
(1238, 'sasuke', 75, 12, 84, 156, 34, 252, 210, 1),
(1329, 'sakura', 110, 893, 2, 16, 34, 122, 1220, 0),
(3130, 'sikigami', 50, 4342, 42, 26, 34, 282, 109, 0),
(331, 'beru', 143, 20, 9256, 156, 3, 223, 130, 1),
(332, 'jine hoo', 572, 612, 156, 6, 34, 12, 2110, 0),
(333, 'sudhama', 724, 45, 935, 16, 34, 232, 1580, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

DROP TABLE IF EXISTS `salesman`;
CREATE TABLE IF NOT EXISTS `salesman` (
  `salesman_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `commission` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`salesman_id`, `name`, `city`, `commission`) VALUES
(113, 'ratan', 'vadodara', '0.05'),
(120, 'varun', 'delhi', '0.10'),
(123, 'rahul', 'mumbai', '0.12'),
(124, 'gandhi', 'delhi', '0.13'),
(125, 'pretam', 'vadodara', '0.10'),
(126, 'vaddhi', 'mumbai', '0.05'),
(127, 'pragness', 'surat', '0.10'),
(128, 'anarkali', 'gaziabad', '0.08'),
(129, 'sweeta', 'surat', '0.09'),
(133, 'raj', 'surat', '0.02'),
(143, 'priya', 'delhi', '0.12'),
(153, 'radhika', 'mumbai', '0.02'),
(163, 'itachi', 'delhi', '0.13'),
(173, 'priya', 'delhi', '0.12'),
(183, 'radhika', 'mumbai', '0.02'),
(193, 'itachi', 'delhi', '0.13');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_saleman_id` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`salesman_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_salesman_id` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`salesman_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
