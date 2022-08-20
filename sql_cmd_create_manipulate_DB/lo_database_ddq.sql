-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: TBD
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Drop all lo_ tables
--
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `lo_orders_products`;
DROP TABLE IF EXISTS `lo_orders`;
DROP TABLE IF EXISTS `lo_products`;
DROP TABLE IF EXISTS `lo_customers`;
DROP TABLE IF EXISTS `lo_genders`;
DROP TABLE IF EXISTS `lo_activities`;
DROP TABLE IF EXISTS `lo_orders`;
SET FOREIGN_KEY_CHECKS = 1;


--
-- Table structure for table `lo_customers`
--

DROP TABLE IF EXISTS `lo_customers`;
CREATE TABLE `lo_customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(255) NOT NULL,
  `customer_firstname` varchar(255),
  `customer_lastname` varchar(255),
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lo_customers`
--

LOCK TABLES `lo_customers` WRITE;
INSERT INTO `lo_customers` VALUES
(1, 'kevinww@gmail.com', 'Kevin', 'Williams'),
(2, 'brightday@gmail.com', 'Betty', 'Smith'),
(3, 'James@abc.com', 'James', 'Martin'),
(4, 'eknight99@gmail.com', 'Elizabeth', 'Knight'),
(5, 'gogoholiday@hotmail.com', 'Jeff', 'Carter'),
(6, 'bigboyneargolf@gmail.com', 'Gavin', 'Wong'),
(7, 'likebedcomfy@gmail.com', 'Tingting', 'Lai'),
(8, 'roberinvan@gmail.com', 'Robert', 'Lewis');
UNLOCK TABLES;

--
-- Table structure for table `lo_genders`
--

DROP TABLE IF EXISTS `lo_genders`;
CREATE TABLE `lo_genders` (
  `gender_id` int NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lo_genders`
--

LOCK TABLES `lo_genders` WRITE;
INSERT INTO `lo_genders` VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Unisex');
UNLOCK TABLES;

--
-- Table structure for table `lo_activities`
--

DROP TABLE IF EXISTS `lo_activities`;
CREATE TABLE `lo_activities` (
  `activity_id` int NOT NULL AUTO_INCREMENT,
  `activity_description` varchar(255) NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lo_activities`
--

LOCK TABLES `lo_activities` WRITE;
INSERT INTO `lo_activities` VALUES
(1, 'Skiing'),
(2, 'Biking'),
(3, 'Golfing'),
(4, 'Rock Climbing'),
(5, 'Workout'),
(6, 'Paddle Boarding');
UNLOCK TABLES;

--
-- Table structure for table `lo_products`
--

DROP TABLE IF EXISTS `lo_products`;
CREATE TABLE `lo_products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(1255),
  `gender_id` int NULL,
  `activity_id` int,
  `product_price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `lo_products_fk_1` FOREIGN KEY (`gender_id`) REFERENCES `lo_genders` (`gender_id`),
  CONSTRAINT `lo_products_fk_2` FOREIGN KEY (`activity_id`) REFERENCES `lo_activities` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lo_products`
--

LOCK TABLES `lo_products` WRITE;
INSERT INTO `lo_products` VALUES
(1, 'SMITH Snow Helmet', 'The Smith Maze ski and snowboard helmet makes sure you have the latest safety innovations including MIPS™ for exploring the whole mountain. And because no amount of technology will help you if you don\'t wear your helmet, it features our lightest-weight de', 1, 1, '132.99'),
(2, 'SMITH Snow Goggles', 'The Smith Squad MAG™ combines the ease of the best-in-class Smith MAG™ interchangeable system with the iconic design of the semi-frameless Squad. The MAG™ system features six magnetic contact points and two locking mechanisms, a simple push lever releases', 1, 1, '210.00'),
(8, 'Salomon S/Force 7 Skis + M11 GW Bindings', 'Are you a carving connoisseur who demands a clean corduroy canvas on which to paint your masterpiece? The Salomon S/Force 7 Skis + M11 GW Bindings should be top of your list. These carving specialists are smooth, stable, and deliciously grippy, with a ful', 2, 1, '499.99'),
(9, 'CALLAWAY WARBIRD GOLF CLUB SE', 'The Callaway Warbird golf club set is perfect for the casual golfer or any high handicappers looking to lower their score.', 1, 3, '899.00'),
(10, 'TaylorMade SIM Max Irons', 'Push your performance level to the limit when you play the TaylorMade SIM Max Irons. The innovative Speed Bridge structural design afforded TaylorMade the ability to create its most flexible thru-slot Speed Pocket ever, resulting in more ball speed than ever before. Advanced ECHO® Damping provides higher ball speeds while reducing low-frequency vibrations for optimal feel. System Progressive Inverted Cone Technology maximizes the sweet spot to promote straighter shots on impacts across the face.', 1, 3, '780.00'),
(11, 'Callaway Women\'s Epic Max Driver', 'The Epic Max is about to change the industry forever, combining max ball speed (thanks to the new Jailbreak A.I Speed Frame) and maximum forgiveness due to the high MOI and adjustable weighting.', 2, 3, '587.97'),
(12, 'MIRROR Basic', 'This isn\'t just a mirror. It\'s a cardio class, it\'s a yoga studio, it\'s a boxing ring, it\'s your new personal trainer, and it\'s so much more.', 3, 5, '1495.00'),
(13, 'Marcy Smith Machine / Cage System with Pull-Up Bar and Landmine Station', 'The Marcy Smith Machine / Cage System - SM-4033 takes everything you use at a commercial gym and molds it into a single multi-gym unit for home use. Interested in building a garage home gym? The SM-4033 is one (giant) piece of home gym equipment that includes almost everything you can think of for strength training.  The Smith Machine portion of the SM-4033 allows you to safely squat and bench press without the need for a spotter. The pulley system works with the arm presses, seated rowing cable, and cable crossovers to deliver an intense workout once thought to only be available at the gym.  To add body weight training, the SM-4033 Smith Machine includes many Power Tower features. Use the multi-grip pull-up bar for pull-ups, chin-ups, etc. Complete dips using the height adjustable dip handles.  The SM-4033 bench provides countless exercises. The weight bench back pad adjusts between -27 degrees and 76 degrees to pinpoint different muscles during your workouts. ', 3, 5, '1999.99'),
(14, 'Petzl GRIGRI® Assisted Braking Belay Device', 'The GRIGRI is a belay device with assisted braking designed for belaying both in the gym and at the crag. Compact and lightweight, it can be used with single ropes from 8.5 to 11 mm.', 3, 4, '99.98'),
(15, 'La Sportiva Finale Climbing Shoes', 'The all-around La Sportiva Finale climbing shoes can help novice climbers move to the next level at the crag, in the gym or out bouldering thanks to sticky outsoles and a neutral design.', 1, 4, '105.00'),
(16, 'Black Diamond 9.9mm Non-Dry Rope', '', 3, 4, '109.00'),
(17, 'MIRROR Weights', 'Ergonomically designed pair of connected weights featuring a matte chrome finish and precision casting. Each dumbbell has a non-slip grip, rubber surround, and will pair seamlessly to your Mirror.', 3, 5, '199.98'),
(18, 'MIRROR Ankle Weights', 'Designed with a soft-touch premium finish, this pair of pillow-like ankle weights will allow you to add a comfortable resistance to your workouts and will pair seamlessly to your Mirror. ', 3, 5, '60.00');
UNLOCK TABLES;

--
-- Table structure for table `lo_stores`
--

DROP TABLE IF EXISTS `lo_stores`;
CREATE TABLE `lo_stores` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `store_email` varchar(258) NOT NULL,
  `store_phone` varchar(258) NOT NULL,
  `store_country` varchar(258) NOT NULL,
  `store_street` varchar(258) NOT NULL,
  `store_city` varchar(258) NOT NULL,
  `store_state` varchar(258),
  `store_zip` varchar(258),
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lo_stores`
--

LOCK TABLES `lo_stores` WRITE;
INSERT INTO `lo_stores` VALUES
(1, 'seattle@luluorange.com', '206-855-6565', 'USA', '600 Pine St Space', 'Seattle', 'WA', '98500'),
(2, 'van@luluorange.com', '604-874-1234', 'Canada', '855 Robson St', 'Vancouver', 'BC', 'V8B 6Y4'),
(3, 'toronto@luluorange.com', '416-999-5678', 'Canada', '318 Queen St W, Toronto', 'Toronto', 'ON', 'M5V 2A5'),
(4, 'sf@luluorange.com', '415-999-9877', 'USA', '845 Market St ', 'San Francisco', 'CA', '94100'),
(5, 'portland@luluorange.com', '503-888-5833', 'USA', '9585 Southwest Washington Square Road', 'Portland', 'OR', '97225');
UNLOCK TABLES;

--
-- Table structure for table `lo_orders`
--
DROP TABLE IF EXISTS `lo_orders`;
CREATE TABLE `lo_orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `store_id` int,
  `order_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  CONSTRAINT `lo_orders_fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `lo_customers` (`customer_id`),
  CONSTRAINT `lo_orders_fk_store` FOREIGN KEY (`store_id`) REFERENCES `lo_stores` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lo_orders`
--

LOCK TABLES `lo_orders` WRITE;
INSERT INTO `lo_orders` VALUES
(1, 1, 1, '2021-01-01 00:00:01'),
(2, 2, 2, '2021-01-01 00:00:01'),
(3, 3, 3, '2021-01-01 00:00:01'),
(4, 4, 4, '2021-01-01 00:00:01'),
(5, 5, 5, '2021-01-01 00:00:01'),
(6, 6, 1, '2021-01-01 00:00:01'),
(7, 7, 2, '2021-01-01 00:00:01');
UNLOCK TABLES;

--
-- Table structure for table `lo_orders`
--
DROP TABLE IF EXISTS `lo_orders_products`;
CREATE TABLE `lo_orders_products` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `selling_price` DECIMAL(6,2) not NULL,
  PRIMARY KEY (`order_id`, `product_id`),
  CONSTRAINT `lo_orders_products_order_id` FOREIGN KEY (`order_id`) REFERENCES `lo_orders` (`order_id`),
  CONSTRAINT `lo_orders_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `lo_products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lo_orders_products`
--

LOCK TABLES `lo_orders_products` WRITE;
INSERT INTO `lo_orders_products` VALUES
(1, 1, 1, 132.99),
(1, 2, 2, 210),
(1, 8, 1, 499.99),
(2, 8, 1, 499.99),
(2, 1, 2, 264),
(3, 9, 1, 889.99),
(4, 10, 1, 699.99),
(5, 11, 1, 587.99),
(6, 12, 1, 1495),
(7, 13, 1, 1999.99),
(7, 14, 1, 99.99),
(7, 15, 1, 105),
(7, 16, 1, 109),
(7, 17, 1, 199.99),
(7, 18, 1, 60);
UNLOCK TABLES;
