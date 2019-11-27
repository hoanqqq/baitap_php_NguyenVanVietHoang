-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2019 at 11:32 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ban_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner` varchar(300) DEFAULT NULL,
  `url_banner` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner`, `url_banner`) VALUES
(1, 'https://salt.tikicdn.com/cache/w584/ts/banner/5b/3e/75/9e0774ecb969bda4cca8456232ab166d.png', 'http://google.com'),
(2, 'https://salt.tikicdn.com/cache/w584/ts/banner/1f/41/fc/760ad0751b6bf63e9ba4b84ecdc543e3.png', 'http://google.com'),
(3, 'https://salt.tikicdn.com/cache/w584/ts/banner/ff/c5/d2/641364653fb57905e34726bdb70fecb8.png', 'http://google.com'),
(4, 'https://salt.tikicdn.com/cache/w584/ts/banner/2d/be/7f/5f48891ffa61b08306e89ba3db502ff3.png', 'http://google.com'),
(5, 'https://salt.tikicdn.com/cache/w584/ts/banner/5b/3e/75/9e0774ecb969bda4cca8456232ab166d.png', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `url_banner` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(300) CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `banner`, `url_banner`, `name`, `image`, `parent_id`) VALUES
(1, 'https://salt.tikicdn.com/cache/w885/ts/banner/4f/c5/6d/51c17d32763911ec9b9df75daed53e73.png', 'http://google.com', 'Thời trang', 'https://theme.hstatic.net/1000225975/1000415979/14/icon_menu_6_active.png?v=53', NULL),
(2, 'https://salt.tikicdn.com/cache/w885/ts/banner/06/7e/e0/07bacb27d8c4959c86f3f9133e9f5f9e.jpg', 'http://google.com', 'Điện tử', 'https://banner2.cleanpng.com/20180331/tze/kisspng-computer-icons-electronics-icon-design-symbol-electronics-5abfb3a2389f73.0693158515225128022319.jpg', NULL),
(3, 'https://previews.123rf.com/images/alenast/alenast1703/alenast170300071/74405441-site-banner-template-for-makeup-artist-studio-site-header-business-card-brochure-and-flyer-watercolo.jpg', 'http://google.com', 'Làm đẹp', 'https://cdn2.iconfinder.com/data/icons/flat-cosmetic-symbols/91/Cosmetic_Flat_02-512.png', NULL),
(4, NULL, NULL, 'Điện thoại', 'https://cdn3.iconfinder.com/data/icons/new-apple-product/24/iphone_8_plus_front-512.png', 2),
(5, NULL, NULL, 'laptop', 'https://images.vexels.com/media/users/3/157564/isolated/preview/d7d05c7c1070e49a5385019c254901a6-simple-laptop-icon-by-vexels.png', 2),
(6, NULL, NULL, 'Áo', 'https://iconsgalore.com/wp-content/uploads/2018/10/t-shirt-1-featured.png', 1),
(7, NULL, NULL, 'Quần', 'https://cdn2.iconfinder.com/data/icons/glyphie-1/40/pants_cloth_trousers_clothing-512.png', 1),
(8, NULL, NULL, 'make up', 'https://cdn0.iconfinder.com/data/icons/beauty-28/64/beauty-makeup-lipstick-cosmetics-512.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `image` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `image`) VALUES
(1, 1, 'https://www.ohlins.com/app/uploads/2018/10/%C3%96-T-shirt-Blue_11301-XX_1280x1280px-737x737.jpg'),
(2, 3, 'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v19-pla-280-mockups_2.jpg?auto=format&bg=F4F4F3&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-1.1.0&mark=rawpixel-watermark.png&markalpha=90&markpad=13&markscale=10&markx=25&q=75&usm=15&vib=3&w=1200&s=f737a1a4cc873dda37febbd99ed78772'),
(3, 4, 'https://image.winudf.com/v2/image1/Y29tLmNyaXM4Ny5jcmlvc19jYXJib25fc2NyZWVuXzBfMTU2MDgzMjYzN18wMTA/screen-0.jpg?fakeurl=1&type=.jpg'),
(4, 5, 'https://sassytownhouseliving.com/wp-content/uploads/2016/01/10-Things-To-Need-To-Know-Before-Your-Next-Makeup-Purchase-2.jpg'),
(5, 2, 'https://www.ohlins.com/app/uploads/2016/08/%C3%96-T-shirt-Black_11302-XX_1280x1280-737x737.jpg'),
(6, 6, 'https://cdn.24h.com.vn/upload/1-2018/images/2018-03-31/1522464922-280-2-1522213333-width660height440.jpg'),
(7, 7, 'http://media.doisongphapluat.com/529/2019/9/2/samsung-galaxy-fold-xuat-hien-tro-lai-vao-tuan-toi_1.jpg'),
(8, 8, 'https://i.pinimg.com/originals/24/8f/1d/248f1deb69c513b52ef56c4e9647ff89.jpg'),
(9, 9, 'https://www.rossignol.com/media/catalog/product/cache/272a12418dcc886a2c88473a7e30b215/r/l/rlhwp11_280_b_rgb72dpi_1.jpg'),
(10, 10, 'https://i.ytimg.com/vi/gnq6W3FvIwo/maxresdefault.jpg'),
(11, 11, 'https://sassytownhouseliving.com/wp-content/uploads/2016/01/10-Things-To-Need-To-Know-Before-Your-Next-Makeup-Purchase-Sassy-Townhouse-Living-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `deal` int(11) NOT NULL DEFAULT '0',
  `category_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `deal`, `category_id`) VALUES
(1, 'Áo Quần 1', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ducimus provident libero quae hic ullam dolorum modi sapiente odit illo, temporibus asperiores reiciendis blanditiis perferendis laudantium possimus voluptas, suscipit sunt. Saepe?', 193000, 30, 1),
(2, 'Áo Quần 2', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ducimus provident libero quae hic ullam dolorum modi sapiente odit illo, temporibus asperiores reiciendis blanditiis perferendis laudantium possimus voluptas, suscipit sunt. Saepe?', 230000, 10, 1),
(3, 'Điện tử 1', 'Dell Laptops. Dell is a computer technology company based in Round Rock, Texas, United States, that develops, sells, repairs and supports computers and related products and services. The company had briefly stepped into making Android smartphones but it shuttered its initiative.', 1200000, 10, 2),
(4, 'Điện tử 2', 'A smartphone is a cellular telephone with an integrated computer and other features not originally associated with telephones such as an operating system, web browsing, and the ability to run software applications.', 23000000, 5, 2),
(5, 'Làm đẹp 1', 'Cosmetics that are applied to the face to enhance one\'s appearance may be called makeup which include lipstick, mascara, eye shadow, foundation, blush, and bronzer, among other products. ... This broad definition includes any material intended for use as a ingredient of a cosmetic product.\r\n', 640000, 20, 3),
(6, 'Điện tử 3', 'A smartphone is a cellular telephone with an integrated computer and other features not originally associated with telephones such as an operating system, web browsing, and the ability to run software applications.', 65200000, 20, 2),
(7, 'Điện tử 4', 'A smartphone is a cellular telephone with an integrated computer and other features not originally associated with telephones such as an operating system, web browsing, and the ability to run software applications.', 32600000, 10, 2),
(8, 'Áo Quần 3', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ducimus provident libero quae hic ullam dolorum modi sapiente odit illo, temporibus asperiores reiciendis blanditiis perferendis laudantium possimus voluptas, suscipit sunt. Saepe?', 300000, 10, 1),
(9, 'Áo Quần 4', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ducimus provident libero quae hic ullam dolorum modi sapiente odit illo, temporibus asperiores reiciendis blanditiis perferendis laudantium possimus voluptas, suscipit sunt. Saepe?', 500000, 30, 1),
(10, 'Làm đẹp 2', 'Cosmetics that are applied to the face to enhance one\'s appearance may be called makeup which include lipstick, mascara, eye shadow, foundation, blush, and bronzer, among other products. ... This broad definition includes any material intended for use as a ingredient of a cosmetic product.\r\n', 300000, 30, 3),
(11, 'Làm đẹp 3', 'Cosmetics that are applied to the face to enhance one\'s appearance may be called makeup which include lipstick, mascara, eye shadow, foundation, blush, and bronzer, among other products. ... This broad definition includes any material intended for use as a ingredient of a cosmetic product.\r\n', 350000, 20, 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
