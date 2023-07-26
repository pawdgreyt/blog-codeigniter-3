-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for blog
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blog`;

-- Dumping structure for table blog.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table blog.categories: ~3 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `user_id`) VALUES
	(1, 'Business', 1),
	(2, 'Technology', 1),
	(4, 'Adventure', 2);

-- Dumping structure for table blog.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table blog.comments: ~1 rows (approximately)
INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
	(1, 15, 'Pao', 'pao@email.com', 'Great Post!', '2023-07-17 02:32:13');

-- Dumping structure for table blog.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `body` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `post_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table blog.posts: ~4 rows (approximately)
INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
	(1, 1, 1, 'Post One', 'post-one', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In suscipit augue a purus sollicitudin egestas. Cras eros turpis, lobortis vitae augue egestas, posuere laoreet ligula. Nullam commodo ante nec libero faucibus, ac finibus metus tempor. Aenean augue ante, placerat in imperdiet venenatis, tempor ut turpis. Quisque in dapibus risus. Mauris augue felis, venenatis a euismod sit amet, iaculis eget leo. Vestibulum dolor nisi, rhoncus non nulla vitae, fringilla scelerisque nulla. Cras accumsan justo eget lectus pretium maximus et eget erat. Vestibulum sem nisl, imperdiet nec mauris at, luctus viverra velit. Integer vulputate magna a nisi sagittis viverra.\r\n', 'noimage.png', '2023-07-14 06:12:04'),
	(2, 1, 1, 'Post Two', 'posts-two', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In suscipit augue a purus sollicitudin egestas. Cras eros turpis, lobortis vitae augue egestas, posuere laoreet ligula. Nullam commodo ante nec libero faucibus, ac finibus metus tempor. Aenean augue ante, placerat in imperdiet venenatis, tempor ut turpis. Quisque in dapibus risus. Mauris augue felis, venenatis a euismod sit amet, iaculis eget leo. Vestibulum dolor nisi, rhoncus non nulla vitae, fringilla scelerisque nulla. Cras accumsan justo eget lectus pretium maximus et eget erat. Vestibulum sem nisl, imperdiet nec mauris at, luctus viverra velit. Integer vulputate magna a nisi sagittis viverra.', 'noimage.png', '2023-07-14 06:15:02'),
	(15, 2, 1, 'Shopify Blog', 'Shopify-Blog', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget felis efficitur, semper turpis vitae, dapibus sapien. Donec eros nibh, commodo in arcu ac, elementum bibendum orci. Curabitur blandit tempor elit ac faucibus. Duis fringilla quam vitae diam posuere maximus. Sed ut sem vitae libero feugiat faucibus. Nam a massa vitae risus tempus accumsan. Nam fringilla odio et turpis luctus, vel lacinia ipsum viverra.</p>\r\n\r\n<p>Nunc nisi sapien, maximus et hendrerit et, venenatis eget mi. Donec posuere condimentum metus, faucibus molestie dui finibus quis. Aenean consectetur scelerisque rutrum. Nunc tristique molestie ligula at commodo. Vivamus accumsan aliquam ultricies. Pellentesque dictum augue in arcu mollis pharetra. Nulla tempus eu magna eget vulputate. Sed sollicitudin volutpat bibendum. Donec eget mauris vitae mauris consequat sodales. Nam viverra iaculis ipsum sit amet porttitor.</p>\r\n', 'S.png', '2023-07-14 09:45:42'),
	(16, 2, 2, 'Test', 'Test', '<p>Norem Ipsum</p>\r\n', 'noimage.png', '2023-07-20 02:48:29');

-- Dumping structure for table blog.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `register_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table blog.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
	(1, 'Paolo', '123123', 'pao@email.com', 'paolo', '1a1dc91c907325c69271ddf0c944bc72', '2023-07-17 03:10:47'),
	(2, 'IT', '2132', 'pogi@email.com', 'it', '1a1dc91c907325c69271ddf0c944bc72', '2023-07-20 02:44:40');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
