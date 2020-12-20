-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 20, 2020 at 09:53 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'Manish', 'manishkumar@gmail.com', 'manish123', '0'),
(3, 'Rizwan', 'rizwan@gmail.com', '$2y$10$Z1DnKbJRDFUTHMI7y1vSqeU3.Y9cgDyC4AeWx4.ucH34z/mkzL2E.', '0'),
(4, 'Ajay Kumar', 'ajay@gmail.com', '$2y$10$UGzx/ODNB4ZSFruRF8BN2eC/NNE.6MBhfTTYKtUo.k4ZVHZFD85DO', '0'),
(5, 'Rizwan', 'rizwankhan@gmail.com', '$2y$10$qZ0OoyX8bhAVxDFM/fx8leZSZwlyq15c1C/KTnaqDLSx6eCDJ0VpC', '0'),
(6, 'Faizan', 'faizan@gmail.com', '$2y$10$Ll2.sETLuB8sdhh1LRK4e.cQqn4CtTEudFg.exhf76D6rGzSOwWNm', '0'),
(7, 'Ajay Kumar', 'ajaykumar@gmail.com', '$2y$10$8GlkawEDsNrOQr8Vgv0GceD/MhVpHAXM4xqtMo0.SUaHFXe03MRdi', '0'),
(8, 'kashif hussain', 'kashif@gmail.com', '$2y$10$zeMgcmlbmvKxku0vtxzgMuYxOEDgDZ358ZuVdPfSsp2QoHAgU3kbu', '0'),
(11, 'Manish', 'manish1@gmail.com', 'manish123', '0'),
(12, 'sean', 'seanbrocks2@gmail.com', '$2y$10$YGpMTb3eahw2fw39sGousOs25yG3S1ewv6XAUcByn0hXX34jQUXVG', '0'),
(13, 'Nitesh', 'k173676@nu.edu.pk', '$2y$10$0tj6cIiacMgw2UBorKigKe0DI.eOAFjZqsB36lIcQuU3dVTDdNmCa', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Hooker Furniture'),
(7, 'Outfitters'),
(8, 'West point'),
(9, 'Dawlance'),
(10, 'Black Decker'),
(11, 'Fotile'),
(12, 'GREE'),
(13, 'ABCD');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(9, 102, '::1', 3, 1),
(10, 84, '::1', 3, 1),
(13, 6, '::1', 3, 1),
(14, 9, '::1', 3, 1),
(15, 1, '::1', 4, 1),
(16, 9, '::1', 4, 1),
(17, 6, '::1', 4, 1),
(18, 8, '::1', 4, 1),
(19, 1, '::1', 3, 1),
(21, 1, '::1', 5, 3),
(22, 76, '::1', 5, 1),
(23, 98, '::1', 5, 1),
(24, 99, '::1', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Ladies Wearss'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Furnitures'),
(6, 'Home Appliances'),
(12, 'Mobiles'),
(13, 'Laptop'),
(14, 'KITCHEN APPLIANCES'),
(15, 'Air Conditioners');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_cat` (`product_cat`),
  KEY `fk_product_brand` (`product_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 12, 2, 'Samsung Dous 2', 192, 2, 'Samsung Dous 2 sgh ', 'samsung mobile.jpg', 'samsung mobile electronics'),
(2, 12, 3, 'iPhone 5s', 368, 2, 'iphone 5s', 'iphone mobile.jpg', 'mobile iphone apple'),
(6, 12, 3, 'Iphone11', 5378, 6, 'smart phone', '1575031538_GUEST_5676cb10-7c72-4df7-bc04-cc57bcf1e7c2.jpg', 'iphone11'),
(8, 12, 3, 'Iphone X', 378, 50, 'Excellent', '1575032460_apple-iphone-x-64gb-1y-myshop-pakistan02.jpg', 'iphonex'),
(9, 12, 2, 'Samsung galaxy5', 378, 50, 'Excellent', '1575032742_81RhT3GofXL._SL1500_.jpg', 'samsung galaxy5'),
(32, 6, 4, 'Book Shelf', 307, 2, 'book shelf', 'furniture-book-shelf-250x250.jpg', 'book shelf furniture'),
(33, 6, 2, 'Refrigerator', 303, 2, 'Refrigerator', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'refrigerator samsung'),
(34, 6, 13, 'Emergency Light', 329, 2, 'Emergency Light', 'emergency light.JPG', 'emergency light'),
(36, 6, 5, 'Iron', 31, 2, 'gj', 'iron.JPG', 'iron'),
(37, 6, 5, 'LED TV', 31, 2, 'LED TV', 'images (4).jpg', 'led tv lg'),
(47, 5, 6, 'Chair', 6, 5, 'comfortable seat.', '1575065628_Chair.jpg', 'Chair'),
(76, 5, 6, 'Hooker Sofa', 31, 5, 'Three seater', '1575065886_ss373-03-096-silo.jpg', 'Hooker Sofa'),
(77, 5, 6, 'Hooker Door Console Table', 39, 4, 'xyz', '1575065975_hooker-furniture-sanctuary-king-upholstered-bedroom-set.jpg', 'Hooker Door Console Table'),
(78, 5, 6, 'True vintage drawer hooker', 329, 5, 'asx', '1575066029_True+Vintage+6+Drawer+Lingerie+Chest.jpg', 'True vintage drawer hooker'),
(80, 5, 6, 'Piece wall group hooker', 225, 6, 'axa', '1575066136_1702-70222-99.jpg', 'Piece wall group hooker'),
(81, 5, 6, 'Bedroom bed hooker', 329, 5, 'sad', '1575066199_hooker-furniture-sanctuary-king-upholstered-bedroom-set.jpg', 'Bedroom bed hooker'),
(82, 3, 7, 'Shirt', 2, 4, 'Shirt', '1575067432_outfitters_ss_2018_540_06.jpg', 'Shirt'),
(83, 3, 7, 'Shirt', 3, 4, 'Shirt', '1575067483_outfitters-2801-3179356-1-zoom.jpg', 'Shirt'),
(84, 2, 7, 'Kurti', 4, 5, 'Kurti', '1575067529_Outfitters-Western-Style-Dresses-Summer-Collection-2018-2019-36.jpg', 'Kurti'),
(85, 2, 7, 'Kurti', 4, 3, 'Kurti', '1575067567_Latest-Western-Style-Outfitters-Winter-Dresses-for-Girls-2016-8.jpeg', 'Kurti'),
(87, 4, 7, 'full baby suit', 4, 4, 'full baby suit', '1575067898_6-12-months-lumodi1-looks-united-original-imaf55z5usgagywq.jpeg', 'full baby suit'),
(88, 4, 7, 'junior baby shirt', 1, 3, 'junior baby shirt', '1575068091_Outfitters-Junior-Winter-Dresses-2013-For-Kids-4.jpg', 'junior baby shirt'),
(89, 13, 1, 'HP laptop i300', 39, 4, 'i4, 4gb ram , 1tb hard', '1575068293_6YZ24PA-1_T1560485428.png', 'HP laptop i300'),
(90, 13, 1, 'HP Probook laptop I500', 115, 3, 'asa', '1575068386_HP+Probook+440+G5+Core+i7+8th+Generation+Laptop+8GB+DDR4+1TB+HDD+Price+in+Pakistan,+Specifications,+Features,+Reviews_-_18018.png', 'HP Probook laptop I500'),
(91, 12, 2, 'Samsung note 10', 39, 6, 'Samsung note 10', '1575099909_SamsungGalaxyNote10-b.jpg', 'Samsung note 10'),
(92, 6, 8, 'Chopper Blender', 8, 5, 'Suitable For: Meat, Beans, Vegetables', '1575102236_westpoint_chopper_blender_wf-4971_15000_3.jpg', 'Chopper Blender'),
(93, 6, 8, 'westpoint-blender G3', 5, 4, 'westpoint-blender G3', '1575102372_westpoint_blender_dry_chopper_mill_wf-302_15000_2.jpg', 'westpoint-blender G3'),
(94, 14, 8, 'Electric Tea Kettle  (WF-1108)', 4, 3, 'Westpoint Electric Tea Kettle 1 Ltr (WF-1108)', '1575102747_westpoint_electric_kettle_wf-1108_150000_4.jpg', 'Electric Tea Kettle  (WF-1108)'),
(104, 12, 3, 'Iphone 12', 1500, 5, 'Iphone 12', '1608371016_download.jpg', 'apple,iphone12,mobile');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa'),
(3, 'Nitesh', 'kumar', 'nit12@gmail.com', 'cfaac199600b79ed054c169860f4d912', '3312532352', 'teen talwar', 'dharki'),
(4, 'manish', 'kumar', 'manish.kataria564@gmail.com', '394f7582652c067ee2ebab0b6f7647bd', '3312532352', 'abcd', 'dbca'),
(5, 'Sean', 'Brocks', 'seanbrocks2@gmail.com', '25f9e794323b453885f5181f1b624d0b', '1234567891', 'saddar', 'saddar');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
