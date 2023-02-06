-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2023 at 05:42 AM
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
-- Database: `assignment-3`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dept_id` int NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(10, 'ACCOUNTING'),
(20, 'RESEARCH'),
(30, 'SALES'),
(40, 'OPERATIONS');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int NOT NULL,
  `dept_id` int NOT NULL,
  `mngr_id` int DEFAULT NULL,
  `salary` int NOT NULL,
  `emp_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `FK_dept_id` (`dept_id`),
  KEY `FK_mngr_id` (`mngr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `dept_id`, `mngr_id`, `salary`, `emp_name`) VALUES
(7369, 20, 7902, 800, 'SMITH'),
(7499, 30, 7698, 1600, 'ALLEN'),
(7521, 30, 7698, 1250, 'WARD'),
(7566, 20, 7839, 2975, 'JONES'),
(7698, 30, 7839, 2850, 'MARTIN'),
(7782, 10, 7839, 2450, 'BLAKE'),
(7788, 20, 7566, 3000, 'CLARK'),
(7839, 10, NULL, 5000, 'SCOTT'),
(7844, 30, 7698, 1500, 'KING'),
(7876, 20, 7788, 1100, 'TURNER'),
(7900, 30, 7698, 950, 'ADAMS'),
(7902, 20, 7566, 3000, 'JAMES'),
(7934, 10, 7782, 1300, 'FORD');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_mngr_id` FOREIGN KEY (`mngr_id`) REFERENCES `employee` (`emp_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
