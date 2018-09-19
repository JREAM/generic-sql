/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for generic
CREATE DATABASE IF NOT EXISTS `generic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `generic`;

-- Dumping structure for table generic.acl_roles
CREATE TABLE IF NOT EXISTS `acl_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table generic.acl_roles: ~5 rows (approximately)
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
INSERT INTO `acl_roles` (`id`, `name`, `description`) VALUES
	(1, 'owner', NULL),
	(2, 'admin', NULL),
	(3, 'manager', NULL),
	(4, 'customer', NULL),
	(5, 'guest', NULL);
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;

-- Dumping structure for table generic.acl_role_permissions
CREATE TABLE IF NOT EXISTS `acl_role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule` varchar(50) NOT NULL,
  `permission` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rule` (`rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.acl_role_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `acl_role_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_role_permissions` ENABLE KEYS */;

-- Dumping structure for table generic.acl_teams
CREATE TABLE IF NOT EXISTS `acl_teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.acl_teams: ~0 rows (approximately)
/*!40000 ALTER TABLE `acl_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_teams` ENABLE KEYS */;

-- Dumping structure for table generic.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table generic.categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'hardware', 'hardware', NULL, NULL, NULL),
	(2, 'software', 'software', NULL, NULL, NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table generic.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table generic.comment_reply
CREATE TABLE IF NOT EXISTS `comment_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.comment_reply: ~0 rows (approximately)
/*!40000 ALTER TABLE `comment_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_reply` ENABLE KEYS */;

-- Dumping structure for table generic.currency
CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortcode` varchar(3) NOT NULL,
  `full` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shortcode` (`shortcode`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table generic.currency: ~3 rows (approximately)
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` (`id`, `shortcode`, `full`) VALUES
	(1, 'usd', NULL),
	(2, 'cad', NULL),
	(3, 'aud', NULL);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;

-- Dumping structure for table generic.files
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(75) NOT NULL,
  `filetype` varchar(75) NOT NULL,
  `fullpath` varchar(200) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.files: ~0 rows (approximately)
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

-- Dumping structure for table generic.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `body` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.notifications: ~0 rows (approximately)
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table generic.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.pages: ~0 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Dumping structure for table generic.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned NOT NULL,
  `gateway_id` int(10) unsigned DEFAULT NULL,
  `method` enum('online','cash','check') DEFAULT NULL,
  `amount` decimal(8,2) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_payments_users` (`user_id`),
  KEY `FK_payments_products` (`product_id`),
  CONSTRAINT `FK_payments_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_payments_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Dumping structure for table generic.payment_currency
CREATE TABLE IF NOT EXISTS `payment_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(50) NOT NULL,
  `longname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shortname` (`shortname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.payment_currency: ~0 rows (approximately)
/*!40000 ALTER TABLE `payment_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_currency` ENABLE KEYS */;

-- Dumping structure for table generic.payment_gateway
CREATE TABLE IF NOT EXISTS `payment_gateway` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table generic.payment_gateway: ~2 rows (approximately)
/*!40000 ALTER TABLE `payment_gateway` DISABLE KEYS */;
INSERT INTO `payment_gateway` (`id`, `name`, `url`) VALUES
	(1, 'stripe', NULL),
	(2, 'paypal', NULL),
	(3, 'amazon_pay', NULL);
/*!40000 ALTER TABLE `payment_gateway` ENABLE KEYS */;

-- Dumping structure for table generic.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `keywords` text,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table generic.post_category
CREATE TABLE IF NOT EXISTS `post_category` (
  `post_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `post_id_category_id` (`post_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.post_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `post_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_category` ENABLE KEYS */;

-- Dumping structure for table generic.post_files
CREATE TABLE IF NOT EXISTS `post_files` (
  `post_id` int(10) unsigned NOT NULL,
  `file_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `post_id_file_id` (`post_id`,`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.post_files: ~0 rows (approximately)
/*!40000 ALTER TABLE `post_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_files` ENABLE KEYS */;

-- Dumping structure for table generic.post_tags
CREATE TABLE IF NOT EXISTS `post_tags` (
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `post_id_tag_id` (`post_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.post_tags: ~0 rows (approximately)
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;

-- Dumping structure for table generic.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.products: ~0 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table generic.product_category
CREATE TABLE IF NOT EXISTS `product_category` (
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `product_id_category_id` (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.product_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;

-- Dumping structure for table generic.projects
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `body` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.projects: ~0 rows (approximately)
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Dumping structure for table generic.project_files
CREATE TABLE IF NOT EXISTS `project_files` (
  `project_id` int(10) unsigned NOT NULL,
  `file_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `project_id_file_id` (`project_id`,`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.project_files: ~0 rows (approximately)
/*!40000 ALTER TABLE `project_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_files` ENABLE KEYS */;

-- Dumping structure for table generic.project_users
CREATE TABLE IF NOT EXISTS `project_users` (
  `user_id` int(10) unsigned NOT NULL,
  `project_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `project_id_user_id` (`project_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.project_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `project_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users` ENABLE KEYS */;

-- Dumping structure for table generic.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table generic.tags: ~0 rows (approximately)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `name`) VALUES
	(1, 'general'),
	(2, 'hobby'),
	(3, 'social-media');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping structure for table generic.tasks
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `assigner_id` int(10) unsigned DEFAULT NULL COMMENT 'If a different user assigned this task',
  `name` varchar(50) NOT NULL,
  `body` varchar(250) NOT NULL,
  `completed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `createdd_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.tasks: ~0 rows (approximately)
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;

-- Dumping structure for table generic.task_comments
CREATE TABLE IF NOT EXISTS `task_comments` (
  `task_id` int(10) unsigned NOT NULL,
  `comment_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `task_id_comment_id` (`task_id`,`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.task_comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `task_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_comments` ENABLE KEYS */;

-- Dumping structure for table generic.task_files
CREATE TABLE IF NOT EXISTS `task_files` (
  `task_id` int(10) unsigned NOT NULL,
  `file_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `task_id_file_id` (`task_id`,`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.task_files: ~0 rows (approximately)
/*!40000 ALTER TABLE `task_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_files` ENABLE KEYS */;

-- Dumping structure for table generic.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table generic.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `salt`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'John', 'Smiith', 'jsmith@none.com', '1', '1', NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table generic.user_files
CREATE TABLE IF NOT EXISTS `user_files` (
  `user_id` int(10) unsigned NOT NULL,
  `file_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_id_file_id` (`user_id`,`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.user_files: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_files` ENABLE KEYS */;

-- Dumping structure for table generic.user_notifications
CREATE TABLE IF NOT EXISTS `user_notifications` (
  `user_id` int(10) unsigned NOT NULL,
  `notification_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_id_notification_id` (`user_id`,`notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.user_notifications: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notifications` ENABLE KEYS */;

-- Dumping structure for table generic.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_id_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table generic.user_roles: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

-- Dumping structure for table generic.us_commonwealth
CREATE TABLE IF NOT EXISTS `us_commonwealth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortcode` varchar(2) DEFAULT NULL,
  `full` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shortcode` (`shortcode`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table generic.us_commonwealth: ~0 rows (approximately)
/*!40000 ALTER TABLE `us_commonwealth` DISABLE KEYS */;
INSERT INTO `us_commonwealth` (`id`, `shortcode`, `full`) VALUES
	(1, 'AS', 'American Samoa'),
	(2, 'DC', 'District of Columbia'),
	(3, 'FM', 'Federated States of Micronesia'),
	(4, 'GU', 'Guam'),
	(5, 'MH', 'Marshall Islands'),
	(6, 'MP', 'Northern Mariana Islands'),
	(7, 'PW', 'Palau'),
	(8, 'PR', 'Puerto Rico'),
	(9, 'VI', 'Virgin Islands');
/*!40000 ALTER TABLE `us_commonwealth` ENABLE KEYS */;

-- Dumping structure for table generic.us_states
CREATE TABLE IF NOT EXISTS `us_states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortcode` varchar(2) NOT NULL,
  `full` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shortcode` (`shortcode`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- Dumping data for table generic.us_states: ~50 rows (approximately)
/*!40000 ALTER TABLE `us_states` DISABLE KEYS */;
INSERT INTO `us_states` (`id`, `shortcode`, `full`) VALUES
	(1, 'AL', NULL),
	(2, 'AK', NULL),
	(3, 'AZ', NULL),
	(4, 'AR', NULL),
	(5, 'CA', NULL),
	(6, 'CO', NULL),
	(7, 'CT', NULL),
	(8, 'DE', NULL),
	(9, 'FL', NULL),
	(10, 'GA', NULL),
	(11, 'HI', NULL),
	(12, 'ID', NULL),
	(13, 'IL', NULL),
	(14, 'IN', NULL),
	(15, 'IA', NULL),
	(16, 'KS', NULL),
	(17, 'KY', NULL),
	(18, 'LA', NULL),
	(19, 'ME', NULL),
	(20, 'MD', NULL),
	(21, 'MA', NULL),
	(22, 'MI', NULL),
	(23, 'MN', NULL),
	(24, 'MS', NULL),
	(25, 'MO', NULL),
	(26, 'MT', NULL),
	(27, 'NE', NULL),
	(28, 'NV', NULL),
	(29, 'NH', NULL),
	(30, 'NJ', NULL),
	(31, 'NM', NULL),
	(32, 'NY', NULL),
	(33, 'NC', NULL),
	(34, 'ND', NULL),
	(35, 'OH', NULL),
	(36, 'OK', NULL),
	(37, 'OR', NULL),
	(38, 'PA', NULL),
	(39, 'RI', NULL),
	(40, 'SC', NULL),
	(41, 'SD', NULL),
	(42, 'TN', NULL),
	(43, 'TX', NULL),
	(44, 'UT', NULL),
	(45, 'VT', NULL),
	(46, 'VA', NULL),
	(47, 'WA', NULL),
	(48, 'WV', NULL),
	(49, 'WI', NULL),
	(50, 'WY', NULL);
/*!40000 ALTER TABLE `us_states` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
