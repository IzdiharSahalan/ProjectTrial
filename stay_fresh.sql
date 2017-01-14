-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.50-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.5119
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table stay_fresh.administrator
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `Admin_Name` varchar(50) NOT NULL,
  `Admin_Password` varchar(50) NOT NULL,
  `Admin_Email` varchar(25) NOT NULL,
  `Admin_Phone` varchar(12) NOT NULL,
  `Admin_Gender` varchar(7) NOT NULL,
  `Admin_Birthdate` date NOT NULL,
  PRIMARY KEY (`Admin_Email`),
  UNIQUE KEY `Admin_Email` (`Admin_Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stay_fresh.administrator: ~1 rows (approximately)
DELETE FROM `administrator`;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` (`Admin_Name`, `Admin_Password`, `Admin_Email`, `Admin_Phone`, `Admin_Gender`, `Admin_Birthdate`) VALUES
	('Anas Jazni', '0cc175b9c0f1b6a831c399e269772661', 'anas.jazni@gmail.com', '0123456789', 'male', '2016-09-05');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;

-- Dumping structure for table stay_fresh.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Customer_ID` varchar(25) NOT NULL,
  `Customer_Name` varchar(25) NOT NULL,
  `Customer_Address` varchar(100) NOT NULL,
  `Customer_Password` varchar(50) NOT NULL,
  `Customer_Gender` text NOT NULL,
  `Customer_Birthdate` date NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Customer_ID`),
  UNIQUE KEY `Customer_ID` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stay_fresh.customer: ~2 rows (approximately)
DELETE FROM `customer`;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`Customer_ID`, `Customer_Name`, `Customer_Address`, `Customer_Password`, `Customer_Gender`, `Customer_Birthdate`, `Created_at`) VALUES
	('customer@gmail.com', 'Anas ', '60, taman pulai jaya\r\nJalan Langgar,\r\n05460, Alor Star Kedah\r\n', '0cc175b9c0f1b6a831c399e269772661', 'Male', '1997-07-08', '2016-09-02 20:29:15'),
	('limyechyi@gmail.com', 'Lim  Ye Chyi', '60, taman pulai jaya\r\nJalan Langgar', 'e18c254556207f6f478813c5c1d57371', 'Male', '2011-09-28', '2016-09-16 17:34:25');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table stay_fresh.fruits
DROP TABLE IF EXISTS `fruits`;
CREATE TABLE IF NOT EXISTS `fruits` (
  `Fruits_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Fruits_Name` text NOT NULL,
  `Fruits_Price` decimal(3,2) NOT NULL,
  `Fruits_Toppings` text NOT NULL,
  `Fruit_Image` text NOT NULL,
  `Fruits_Stock` int(10) NOT NULL,
  PRIMARY KEY (`Fruits_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table stay_fresh.fruits: ~12 rows (approximately)
DELETE FROM `fruits`;
/*!40000 ALTER TABLE `fruits` DISABLE KEYS */;
INSERT INTO `fruits` (`Fruits_ID`, `Fruits_Name`, `Fruits_Price`, `Fruits_Toppings`, `Fruit_Image`, `Fruits_Stock`) VALUES
	(5, 'Apple', 2.55, 'Kuah Rojak', 'apples.jpg', 10),
	(6, 'Apple', 2.50, 'Kuah Assam', 'apples.jpg', 10),
	(7, 'Strawberry', 2.50, 'Kuah Rojak', 'Strawberry.jpg', 10),
	(8, 'Strawberry', 2.50, 'Kuah Assam', 'stawberry.jpg', 15),
	(9, 'Watermelon', 2.50, 'Kuah Rojak', 'Watermelon.jpg', 10),
	(10, 'Watermelon', 2.50, 'Kuah Assam', 'Watermelon.jpg', 10),
	(11, 'Apple Rose', 2.50, 'Kuah Rojak', 'jambu air.jpg', 10),
	(12, 'Apple Rose', 2.50, 'Kuah Assam', 'jambu air.jpg', 10),
	(13, 'Guava', 2.50, 'Kuah Rojak', 'guava.jpg', 10),
	(14, 'Guava', 2.50, 'Kuah Assam', 'guava.jpg', 10),
	(15, 'Mango', 2.50, 'Kuah Rojak', 'mango.jpg', 10),
	(16, 'Mango', 2.50, 'Kuah Assam', 'mango.jpg', 10);
/*!40000 ALTER TABLE `fruits` ENABLE KEYS */;

-- Dumping structure for table stay_fresh.juices
DROP TABLE IF EXISTS `juices`;
CREATE TABLE IF NOT EXISTS `juices` (
  `Juices_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Juice_Name` text NOT NULL,
  `Juices_Price` float(3,2) NOT NULL,
  `Juices_Type` text NOT NULL,
  `Juice_Image` text NOT NULL,
  `Juices_Stock` int(100) NOT NULL,
  PRIMARY KEY (`Juices_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table stay_fresh.juices: ~12 rows (approximately)
DELETE FROM `juices`;
/*!40000 ALTER TABLE `juices` DISABLE KEYS */;
INSERT INTO `juices` (`Juices_ID`, `Juice_Name`, `Juices_Price`, `Juices_Type`, `Juice_Image`, `Juices_Stock`) VALUES
	(1, 'Blueberry', 3.90, 'Smoothie', 'Blueberry.jpg', 14),
	(2, 'Blueberry', 2.55, 'Blended Ice', 'Blueberry.jpg', 10),
	(3, 'Grape', 2.50, 'Smoothie', 'Grape.jpg', 10),
	(4, 'Grape', 2.50, 'Blended Ice', 'Grape.jpg', 10),
	(5, 'Kiwi', 2.50, 'Smoothie', 'Kiwi juice.jpg', 10),
	(6, 'Kiwi', 2.50, 'Blended Ice', 'Kiwi juice.jpg', 10),
	(7, 'Raspberry', 2.50, 'Smoothie', 'Raspberry.jpg', 10),
	(8, 'Raspberry', 2.50, 'Blended Ice', 'Raspberry.jpg', 10),
	(9, 'Strawberry', 2.50, 'Smoothie', 'Strawberry juice.jpg', 10),
	(10, 'Strawberry', 2.50, 'Blended Ice', 'Strawberry juice.jpg', 10),
	(11, 'Watermelon', 2.50, 'Smoothie', 'Watermelon juice.jpg', 10),
	(12, 'Watermelon', 2.50, 'Blended Ice', 'Watermelon juice.jpg', 10);
/*!40000 ALTER TABLE `juices` ENABLE KEYS */;

-- Dumping structure for table stay_fresh.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `Order_ID` varchar(10) NOT NULL,
  `Order_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Order_Price` decimal(10,2) NOT NULL,
  `Order_Quantity` int(10) NOT NULL,
  `Payment_Method` varchar(30) NOT NULL,
  `Customer_ID` varchar(30) NOT NULL,
  `Fruits_Id` varchar(30) NOT NULL,
  `Juices_ID` varchar(30) NOT NULL,
  `Current_Address` text NOT NULL,
  `Verified_Payment` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stay_fresh.orders: ~6 rows (approximately)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`Order_ID`, `Order_Date`, `Order_Price`, `Order_Quantity`, `Payment_Method`, `Customer_ID`, `Fruits_Id`, `Juices_ID`, `Current_Address`, `Verified_Payment`) VALUES
	('omt96', '2016-09-21 03:30:58', 7.50, 3, 'CIMB clicks', 'anas.jazni@gmail.com', '6', '', 'Address', '0'),
	('bvC57', '2016-09-29 02:52:52', 32.95, 2, 'CIMB clicks', 'customer@gmail.com', '5', '', 'Some address', '1'),
	('bvC57', '2016-09-29 02:52:52', 32.95, 1, 'CIMB clicks', 'customer@gmail.com', '6', '', 'Some address', '1'),
	('bvC57', '2016-09-29 02:52:52', 32.95, 5, 'CIMB clicks', 'customer@gmail.com', '7', '', 'Some address', '1'),
	('bvC57', '2016-09-29 02:52:52', 32.95, 2, 'CIMB clicks', 'customer@gmail.com', '', '1', 'Some address', '1'),
	('bvC57', '2016-09-29 02:52:52', 32.95, 2, 'CIMB clicks', 'customer@gmail.com', '', '4', 'Some address', '1');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table stay_fresh.payment
DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `Payment_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Payment_Method` varchar(30) NOT NULL,
  `Payment_Amount` decimal(10,2) NOT NULL,
  `Order_ID` varchar(50) NOT NULL,
  `Payment_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Buyer_Name` varchar(100) NOT NULL,
  `Buyer_Email` varchar(100) NOT NULL,
  PRIMARY KEY (`Payment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table stay_fresh.payment: ~3 rows (approximately)
DELETE FROM `payment`;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`Payment_ID`, `Payment_Method`, `Payment_Amount`, `Order_ID`, `Payment_Time`, `Buyer_Name`, `Buyer_Email`) VALUES
	(1, 'CIMB click', 7.50, '0', '2016-09-21 05:21:01', 'Anas ', 'anas.jazni@gmail.com'),
	(2, 'CIMB click', 7.50, '0', '2016-09-21 05:28:05', 'Anas ', 'anas.jazni@gmail.com'),
	(3, 'CIMB click', 7.50, '0', '2016-09-21 05:34:49', 'Anas ', 'anas.jazni@gmail.com'),
	(4, 'CIMB clicks', 32.95, 'bvC57', '2016-09-29 03:21:43', 'Anas ', 'customer@gmail.com'),
	(5, 'CIMB clicks', 7.50, 'omt96', '2016-09-29 14:00:23', '', 'anas.jazni@gmail.com'),
	(6, 'CIMB clicks', 32.95, 'bvC57', '2016-09-29 14:02:15', 'Anas ', 'customer@gmail.com'),
	(7, 'CIMB clicks', 7.50, 'omt96', '2016-09-29 14:02:28', '', 'anas.jazni@gmail.com'),
	(8, 'CIMB clicks', 32.95, 'bvC57', '2016-09-29 14:30:38', 'Anas ', 'customer@gmail.com'),
	(9, 'CIMB clicks', 32.95, 'bvC57', '2016-09-29 14:32:41', 'Anas ', 'customer@gmail.com');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
