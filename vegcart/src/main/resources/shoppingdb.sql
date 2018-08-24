-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.45 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for shoppingdb
CREATE DATABASE IF NOT EXISTS `shoppingdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `shoppingdb`;

-- Dumping structure for table shoppingdb.admin_user_details
CREATE TABLE IF NOT EXISTS `admin_user_details` (
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingdb.admin_user_details: ~0 rows (approximately)
DELETE FROM `admin_user_details`;
/*!40000 ALTER TABLE `admin_user_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_details` ENABLE KEYS */;

-- Dumping structure for table shoppingdb.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `mobile` varchar(15) NOT NULL,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `password` varchar(50) NOT NULL,
  `delivery_address` text NOT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingdb.customer: 2 rows
DELETE FROM `customer`;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`mobile`, `active`, `password`, `delivery_address`) VALUES
	('9619679476', 'Y', 'vivek', 'Vrundava'),
	('123456789', 'Y', 'vivek', '                                    \r\n          test1                          '),
	('7718896687', 'Y', '12345', 'DAKC                         ');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table shoppingdb.customer_order
CREATE TABLE IF NOT EXISTS `customer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_mobile` varchar(20) NOT NULL,
  `discount` double NOT NULL,
  `discount_type` enum('Rupees','Percentage') NOT NULL,
  `order_date` datetime NOT NULL,
  `order_status` enum('Recieved','Delivered') NOT NULL DEFAULT 'Recieved',
  `product_actual_quantity` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price_per_unit` double NOT NULL,
  `product_standard_quantity` int(11) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `customer_address` text NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingdb.customer_order: 18 rows
DELETE FROM `customer_order`;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` (`id`, `customer_mobile`, `discount`, `discount_type`, `order_date`, `order_status`, `product_actual_quantity`, `product_name`, `product_price_per_unit`, `product_standard_quantity`, `product_unit`, `total_amount`, `customer_address`, `vendor_id`) VALUES
	(1, '9619679476', 12, 'Rupees', '2018-08-23 18:06:36', 'Delivered', 1, 'tamato', 34, 250, 'gram', 22, 'vv', 3),
	(2, '9619679476', 12, 'Rupees', '2018-08-23 18:06:36', 'Recieved', 1, 'califlower', 34, 250, 'gram', 22, 'vv', 3),
	(3, '9619679476', 12, 'Rupees', '2018-08-23 18:30:23', 'Recieved', 1, 'tamato', 34, 250, 'gram', 22, 'vv', 3),
	(4, '9619679476', 12, 'Rupees', '2018-08-23 18:30:23', 'Recieved', 1, 'califlower', 34, 250, 'gram', 22, 'vv', 3),
	(5, '9619679476', 12, 'Rupees', '2018-08-23 18:45:07', 'Recieved', 1, 'potato', 34, 250, 'gram', 22, 'vv', 3),
	(6, '9619679476', 12, 'Rupees', '2018-08-23 18:45:07', 'Recieved', 1, 'brocli', 34, 250, 'gram', 22, 'vv', 1),
	(7, '9619679476', 12, 'Rupees', '2018-08-23 18:48:02', 'Recieved', 1, 'tamato', 34, 250, 'gram', 22, 'vv', 1),
	(8, '9619679476', 12, 'Rupees', '2018-08-23 18:50:26', 'Recieved', 1, 'potato', 34, 250, 'gram', 22, 'vv', 1),
	(9, '9619679476', 12, 'Rupees', '2018-08-23 18:50:26', 'Recieved', 1, 'brocli', 34, 250, 'gram', 22, 'vv', 1),
	(10, '9619679476', 12, 'Rupees', '2018-08-23 19:00:46', 'Recieved', 1, 'califlower', 34, 250, 'gram', 22, 'vv', 1),
	(11, '9619679476', 12, 'Rupees', '2018-08-23 19:00:46', 'Recieved', 1, 'brocli', 34, 250, 'gram', 22, 'vv', 1),
	(12, '9619679476', 12, 'Rupees', '2018-08-23 19:01:12', 'Recieved', 1, 'brocli', 34, 250, 'gram', 22, 'vv', 1),
	(13, '9619679476', 12, 'Rupees', '2018-08-23 19:01:12', 'Recieved', 1, 'califlower', 34, 250, 'gram', 22, 'vv', 1),
	(14, '9619679476', 12, 'Rupees', '2018-08-23 19:08:01', 'Recieved', 1, 'tamato', 34, 250, 'gram', 22, 'vv', 1),
	(15, '9619679476', 12, 'Rupees', '2018-08-23 19:08:01', 'Recieved', 1, 'potato', 34, 250, 'gram', 22, 'vv', 1),
	(16, '9619679476', 12, 'Rupees', '2018-08-23 19:22:52', 'Recieved', 1, 'tamato', 34, 250, 'gram', 22, 'vv', 1),
	(17, '9619679476', 12, 'Rupees', '2018-08-23 19:22:52', 'Recieved', 1, 'potato', 34, 250, 'gram', 22, 'vv', 1),
	(18, '9619679476', 12, 'Rupees', '2018-08-23 19:30:06', 'Recieved', 1, 'califlower', 34, 250, 'gram', 22, 'vv', 1),
	(19, '123456789', 12, 'Rupees', '2018-08-24 17:26:25', 'Recieved', 1, 'tamato', 34, 250, 'gram', 22, '                                    \r\n          test1                          ', 3),
	(20, '123456789', 12, 'Rupees', '2018-08-24 17:26:25', 'Recieved', 1, 'califlower', 34, 250, 'gram', 22, '                                    \r\n          test1                          ', 3),
	(21, '7718896687', 12, 'Rupees', '2018-08-24 17:41:39', 'Delivered', 1, 'tamato', 34, 250, 'gram', 22, 'DAKC                         ', 3),
	(22, '7718896687', 12, 'Rupees', '2018-08-24 17:41:39', 'Recieved', 1, 'potato', 34, 250, 'gram', 22, 'DAKC                         ', 3);
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;

-- Dumping structure for table shoppingdb.customer_order_history
CREATE TABLE IF NOT EXISTS `customer_order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_mobile` varchar(20) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `discount` double NOT NULL,
  `discount_type` enum('Rupees','Percentage') NOT NULL,
  `order_date` datetime NOT NULL,
  `order_status` enum('Delivered') NOT NULL DEFAULT 'Delivered',
  `product_actual_quantity` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price_per_unit` double NOT NULL,
  `product_standard_quantity` int(11) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingdb.customer_order_history: 0 rows
DELETE FROM `customer_order_history`;
/*!40000 ALTER TABLE `customer_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_order_history` ENABLE KEYS */;

-- Dumping structure for table shoppingdb.product_master
CREATE TABLE IF NOT EXISTS `product_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `product_image` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingdb.product_master: 2 rows
DELETE FROM `product_master`;
/*!40000 ALTER TABLE `product_master` DISABLE KEYS */;
INSERT INTO `product_master` (`id`, `active`, `product_image`, `product_name`) VALUES
	(1, 'Y', 'products/featured/3.jpg', 'Tamato'),
	(2, 'Y', 'products/vegtables/2.jpg', 'Tamato');
/*!40000 ALTER TABLE `product_master` ENABLE KEYS */;

-- Dumping structure for table shoppingdb.shopping_cart
CREATE TABLE IF NOT EXISTS `shopping_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_mobile` varchar(20) NOT NULL,
  `discount` double NOT NULL,
  `discount_type` enum('Rupees','Percentage') NOT NULL DEFAULT 'Rupees',
  `product_actual_quantity` int(11) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price_per_unit` double NOT NULL,
  `product_standard_quantity` int(11) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingdb.shopping_cart: 0 rows
DELETE FROM `shopping_cart`;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;

-- Dumping structure for table shoppingdb.unit_master
CREATE TABLE IF NOT EXISTS `unit_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `unit_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingdb.unit_master: 0 rows
DELETE FROM `unit_master`;
/*!40000 ALTER TABLE `unit_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit_master` ENABLE KEYS */;

-- Dumping structure for table shoppingdb.vendor
CREATE TABLE IF NOT EXISTS `vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `vendor_mobile` varchar(15) NOT NULL,
  `vendor_name` varchar(50) NOT NULL,
  `vendor_password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendor_mobile` (`vendor_mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingdb.vendor: 1 rows
DELETE FROM `vendor`;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` (`id`, `active`, `vendor_mobile`, `vendor_name`, `vendor_password`) VALUES
	(3, 'Y', '123456789', 'vivek', 'vivek');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;

-- Dumping structure for table shoppingdb.vendor_product_entry
CREATE TABLE IF NOT EXISTS `vendor_product_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount` double NOT NULL,
  `discount_type` enum('Rupees','Percentage') NOT NULL DEFAULT 'Rupees',
  `product_avialability` enum('IN STOCK','OUT OF STOCK') NOT NULL DEFAULT 'IN STOCK',
  `product_image` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` double NOT NULL,
  `product_standard_quantity` int(11) NOT NULL,
  `product_unit` varchar(100) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingdb.vendor_product_entry: 6 rows
DELETE FROM `vendor_product_entry`;
/*!40000 ALTER TABLE `vendor_product_entry` DISABLE KEYS */;
INSERT INTO `vendor_product_entry` (`id`, `discount`, `discount_type`, `product_avialability`, `product_image`, `product_name`, `product_price`, `product_standard_quantity`, `product_unit`, `vendor_id`) VALUES
	(1, 12, 'Rupees', 'IN STOCK', 'vegtables/2.jpg', 'tamato', 34, 250, 'gram', 3),
	(2, 12, 'Rupees', 'IN STOCK', 'vegtables/3.jpg', 'potato', 34, 250, 'gram', 3),
	(3, 12, 'Rupees', 'IN STOCK', 'vegtables/4.jpg', 'califlower', 34, 250, 'gram', 3),
	(4, 12, 'Rupees', 'IN STOCK', 'vegtables/5.jpg', 'brocli', 34, 250, 'gram', 3),
	(5, 12, 'Rupees', 'IN STOCK', 'vegtables/6.jpg', 'califlower', 34, 250, 'gram', 3),
	(15, 12, 'Rupees', 'IN STOCK', 'vegtables/7.jpg', 'garlic', 34, 250, 'gram', 3);
/*!40000 ALTER TABLE `vendor_product_entry` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
