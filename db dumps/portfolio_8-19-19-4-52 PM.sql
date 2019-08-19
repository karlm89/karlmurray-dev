# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 104.248.187.228 (MySQL 5.7.27-0ubuntu0.18.04.1)
# Database: portfolio
# Generation Time: 2019-08-19 21:52:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table articles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;

INSERT INTO `articles` (`id`, `title`, `article_text`, `created_at`, `updated_at`, `category`, `featured_image`, `credit`)
VALUES
	(1,'Hello World','<p style=\"text-align: left;\">Here is a blog -- With Rich Text</p>\r\n<p style=\"text-align: left;\">-- If this is working you should see line breaks, and&nbsp;</p>\r\n<p style=\"text-align: center;\">this should be center aligned</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: right;\">This should be left aligned</p>\r\n<ul>\r\n<li style=\"text-align: left;\">This should be bullet pointed</li>\r\n</ul>\r\n<ol>\r\n<li>This</li>\r\n<li>should</li>\r\n<li>be&nbsp;</li>\r\n<li>numbered</li>\r\n</ol>\r\n<p><a title=\"Fwd Motion Studio\" href=\"https://fwdmotion.studio\" target=\"_blank\" rel=\"noopener\">https://fwdmotion.studio</a></p>\r\n<p>&nbsp;</p>','2019-08-14 05:44:02','2019-08-14 06:42:27','Getting Started','articles/August2019/aJkqA447bh7LJVytWzXP.jpg','Photo by <a href=\"https://unsplash.com/@cdr6934?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Chris Ried</a>');

/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),
	(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),
	(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),
	(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),
	(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),
	(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),
	(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
	(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),
	(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
	(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
	(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),
	(22,4,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(23,4,'title','text','Title',1,1,1,1,1,1,'{}',2),
	(24,4,'article_text','rich_text_box','Article Text',1,1,1,1,1,1,'{}',4),
	(25,4,'created_at','timestamp','Created At',0,1,0,0,0,0,'{}',7),
	(26,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),
	(27,6,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(28,6,'name','text','Name',0,1,1,1,1,1,'{}',2),
	(29,6,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),
	(30,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),
	(31,4,'category','text','Category',0,1,1,1,1,1,'{}',3),
	(32,4,'featured_image','image','Featured Image',1,1,1,1,1,1,'{}',5),
	(33,4,'credit','text','Credit',0,1,1,1,1,1,'{}',6),
	(34,7,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(35,7,'title','text','Title',1,1,1,1,1,1,'{}',2),
	(36,7,'stack','text','Stack',1,1,1,1,1,1,'{}',4),
	(37,7,'technologies','text','Technologies',1,1,1,1,1,1,'{}',5),
	(38,7,'client','text','Client',0,1,1,1,1,1,'{}',6),
	(39,7,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),
	(40,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),
	(41,8,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(42,8,'title','text','Title',1,1,1,1,1,1,'{}',2),
	(43,8,'type','text','Type',1,1,1,1,1,1,'{}',3),
	(44,8,'category','text','Category',0,1,1,1,1,1,'{}',4),
	(45,8,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),
	(46,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),
	(47,9,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(48,9,'testimonal','text','Testimonal',1,1,1,1,1,1,'{}',2),
	(49,9,'author','text','Author',1,1,1,1,1,1,'{}',3),
	(50,9,'image','text','Image',1,1,1,1,1,1,'{}',4),
	(51,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),
	(52,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),
	(53,7,'slug','text','Slug',1,1,1,1,1,1,'{}',3),
	(54,7,'image','image','Image',0,1,1,1,1,1,'{}',9),
	(55,7,'link','text','Link',0,1,1,1,1,1,'{}',10);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`)
VALUES
	(1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(4,'articles','articles','Article','Articles',NULL,'App\\Article',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-08-14 05:26:56','2019-08-14 06:43:02'),
	(6,'tags','tags','Tag','Tags',NULL,'App\\Tag',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-08-14 05:27:43','2019-08-14 05:27:43'),
	(7,'projects','projects','Project','Projects',NULL,'App\\Project',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-08-14 06:51:10','2019-08-19 21:45:16'),
	(8,'resources','resources','Resource','Resources',NULL,'App\\Resource',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-08-14 06:51:26','2019-08-14 06:51:26'),
	(9,'testimonials','testimonials','Testimonial','Testimonials',NULL,'App\\Testimonial',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-08-14 06:51:36','2019-08-14 06:51:36');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2019-08-14 05:26:28','2019-08-14 05:26:28','voyager.dashboard',NULL),
	(2,1,'Media','','_self','voyager-images',NULL,5,2,'2019-08-14 05:26:28','2019-08-14 06:53:47','voyager.media.index',NULL),
	(3,1,'Users','','_self','voyager-person',NULL,5,1,'2019-08-14 05:26:28','2019-08-14 06:53:44','voyager.users.index',NULL),
	(5,1,'Tools','','_self','voyager-tools',NULL,NULL,7,'2019-08-14 05:26:28','2019-08-14 06:53:47',NULL,NULL),
	(6,1,'Menu Builder','','_self','voyager-list',NULL,5,3,'2019-08-14 05:26:28','2019-08-14 06:53:47','voyager.menus.index',NULL),
	(7,1,'Database','','_self','voyager-data',NULL,5,4,'2019-08-14 05:26:28','2019-08-14 06:53:47','voyager.database.index',NULL),
	(8,1,'Compass','','_self','voyager-compass',NULL,5,5,'2019-08-14 05:26:28','2019-08-14 06:53:47','voyager.compass.index',NULL),
	(9,1,'BREAD','','_self','voyager-bread',NULL,5,6,'2019-08-14 05:26:28','2019-08-14 06:53:47','voyager.bread.index',NULL),
	(10,1,'Settings','','_self','voyager-settings',NULL,NULL,8,'2019-08-14 05:26:28','2019-08-14 06:53:47','voyager.settings.index',NULL),
	(11,1,'Hooks','','_self','voyager-hook',NULL,5,7,'2019-08-14 05:26:29','2019-08-14 06:53:47','voyager.hooks',NULL),
	(12,1,'Articles','','_self','voyager-news','#000000',NULL,2,'2019-08-14 05:26:56','2019-08-14 05:30:01','voyager.articles.index','null'),
	(13,1,'Tags','','_self','voyager-categories','#000000',NULL,4,'2019-08-14 05:27:43','2019-08-14 06:53:34','voyager.tags.index','null'),
	(14,1,'Projects','','_self','voyager-logbook','#000000',NULL,3,'2019-08-14 06:51:10','2019-08-14 06:54:05','voyager.projects.index','null'),
	(15,1,'Resources','','_self','voyager-bookmark','#000000',NULL,5,'2019-08-14 06:51:26','2019-08-14 06:56:55','voyager.resources.index','null'),
	(16,1,'Testimonials','','_self','voyager-logbook','#000000',NULL,6,'2019-08-14 06:51:36','2019-08-14 06:54:25','voyager.testimonials.index','null');

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2019-08-14 05:26:28','2019-08-14 05:26:28');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_voyager_user_fields',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_05_19_173453_create_menu_table',1),
	(6,'2016_10_21_190000_create_roles_table',1),
	(7,'2016_10_21_190000_create_settings_table',1),
	(8,'2016_11_30_135954_create_permission_table',1),
	(9,'2016_11_30_141208_create_permission_role_table',1),
	(10,'2016_12_26_201236_data_types__add__server_side',1),
	(11,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(12,'2017_01_14_005015_create_translations_table',1),
	(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(14,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(15,'2017_04_21_000000_add_order_to_data_rows_table',1),
	(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),
	(17,'2017_08_05_000000_add_group_to_settings_table',1),
	(18,'2017_11_26_013050_add_user_role_relationship',1),
	(19,'2017_11_26_015000_create_user_roles_table',1),
	(20,'2018_03_11_000000_add_user_settings',1),
	(21,'2018_03_14_000000_add_details_to_data_types_table',1),
	(22,'2018_03_16_000000_make_settings_value_nullable',1),
	(23,'2019_08_14_042448_create_articles_table',1),
	(24,'2019_08_14_042808_create_tags_table',1),
	(25,'2019_08_14_053103_add_category_to_articles',2),
	(26,'2019_08_14_053445_make_article_category_nullable',3),
	(27,'2019_08_14_055214_create_testimonials_table',4),
	(28,'2019_08_14_055235_create_projects_table',4),
	(29,'2019_08_14_055559_create_resources_table',4),
	(30,'2019_08_14_061506_add_featured_image_to_article',4),
	(31,'2019_08_14_063732_add_credit_for_featured_image_to_articles',5),
	(32,'2019_08_19_202259_add_slug_to_projects',6),
	(33,'2019_08_19_213742_add_image_and_link_to_projects',7);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`)
VALUES
	(1,'browse_admin',NULL,'2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(2,'browse_bread',NULL,'2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(3,'browse_database',NULL,'2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(4,'browse_media',NULL,'2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(5,'browse_compass',NULL,'2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(6,'browse_menus','menus','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(7,'read_menus','menus','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(8,'edit_menus','menus','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(9,'add_menus','menus','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(10,'delete_menus','menus','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(16,'browse_users','users','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(17,'read_users','users','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(18,'edit_users','users','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(19,'add_users','users','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(20,'delete_users','users','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(21,'browse_settings','settings','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(22,'read_settings','settings','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(23,'edit_settings','settings','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(24,'add_settings','settings','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(25,'delete_settings','settings','2019-08-14 05:26:28','2019-08-14 05:26:28'),
	(26,'browse_hooks',NULL,'2019-08-14 05:26:29','2019-08-14 05:26:29'),
	(27,'browse_articles','articles','2019-08-14 05:26:56','2019-08-14 05:26:56'),
	(28,'read_articles','articles','2019-08-14 05:26:56','2019-08-14 05:26:56'),
	(29,'edit_articles','articles','2019-08-14 05:26:56','2019-08-14 05:26:56'),
	(30,'add_articles','articles','2019-08-14 05:26:56','2019-08-14 05:26:56'),
	(31,'delete_articles','articles','2019-08-14 05:26:56','2019-08-14 05:26:56'),
	(32,'browse_tags','tags','2019-08-14 05:27:43','2019-08-14 05:27:43'),
	(33,'read_tags','tags','2019-08-14 05:27:43','2019-08-14 05:27:43'),
	(34,'edit_tags','tags','2019-08-14 05:27:43','2019-08-14 05:27:43'),
	(35,'add_tags','tags','2019-08-14 05:27:43','2019-08-14 05:27:43'),
	(36,'delete_tags','tags','2019-08-14 05:27:43','2019-08-14 05:27:43'),
	(37,'browse_projects','projects','2019-08-14 06:51:10','2019-08-14 06:51:10'),
	(38,'read_projects','projects','2019-08-14 06:51:10','2019-08-14 06:51:10'),
	(39,'edit_projects','projects','2019-08-14 06:51:10','2019-08-14 06:51:10'),
	(40,'add_projects','projects','2019-08-14 06:51:10','2019-08-14 06:51:10'),
	(41,'delete_projects','projects','2019-08-14 06:51:10','2019-08-14 06:51:10'),
	(42,'browse_resources','resources','2019-08-14 06:51:26','2019-08-14 06:51:26'),
	(43,'read_resources','resources','2019-08-14 06:51:26','2019-08-14 06:51:26'),
	(44,'edit_resources','resources','2019-08-14 06:51:26','2019-08-14 06:51:26'),
	(45,'add_resources','resources','2019-08-14 06:51:26','2019-08-14 06:51:26'),
	(46,'delete_resources','resources','2019-08-14 06:51:26','2019-08-14 06:51:26'),
	(47,'browse_testimonials','testimonials','2019-08-14 06:51:36','2019-08-14 06:51:36'),
	(48,'read_testimonials','testimonials','2019-08-14 06:51:36','2019-08-14 06:51:36'),
	(49,'edit_testimonials','testimonials','2019-08-14 06:51:36','2019-08-14 06:51:36'),
	(50,'add_testimonials','testimonials','2019-08-14 06:51:36','2019-08-14 06:51:36'),
	(51,'delete_testimonials','testimonials','2019-08-14 06:51:36','2019-08-14 06:51:36');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stack` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `technologies` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;

INSERT INTO `projects` (`id`, `title`, `stack`, `technologies`, `client`, `created_at`, `updated_at`, `slug`, `image`, `link`)
VALUES
	(1,'Waller County Fair','Laravel','Blah','Waller County Fair Association','2019-08-19 20:43:00','2019-08-19 21:52:28','wcfa','projects/August2019/sqOJKqhnRWWx5liG6Ohn.jpg','https://wallercountyfair.org');

/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;

INSERT INTO `resources` (`id`, `title`, `type`, `category`, `created_at`, `updated_at`)
VALUES
	(1,'Visual Studio Code','IDE / Text Editor',NULL,'2019-08-14 06:55:17','2019-08-14 06:55:17'),
	(2,'GitKracken','Source Code Manager (SCM)',NULL,'2019-08-14 06:56:14','2019-08-14 06:56:14');

/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2019-08-14 04:57:28','2019-08-14 04:57:28'),
	(2,'user','Normal User','2019-08-14 05:26:28','2019-08-14 05:26:28');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','Site Title','','text',1,'Site'),
	(2,'site.description','Site Description','Site Description','','text',2,'Site'),
	(3,'site.logo','Site Logo','','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),
	(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),
	(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table testimonials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `testimonials`;

CREATE TABLE `testimonials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `testimonal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;

INSERT INTO `testimonials` (`id`, `testimonal`, `author`, `image`, `created_at`, `updated_at`)
VALUES
	(1,'I contacted Karl as I was having issues with my social icons on my wordpress site. After shortly explaining my issue Karl knew exactly what the issue was and then went on to fix my problem very quickly. My website is now functioning exactly how I want it. I would highly recommend!','Dylan O\'Connell','#','2019-08-14 06:59:11','2019-08-14 06:59:11'),
	(2,'Karl was able to quickly assess our website for search engine optimization and other design issues. The changes he recommended were easy to implement and actually made our site load faster. I am very pleased with his recommendations and will continue to use his services in the future.','Javier Hidalgo','#','2019-08-14 07:02:35','2019-08-14 07:02:35'),
	(3,'Karl was very insightful, easy to work with and excellent at trouble shooting issues. He fixed code on my website and explained some easy SEO steps I could take.','Christy Murray','#','2019-08-14 07:03:13','2019-08-14 07:03:13'),
	(4,'I have worked with Karl several times as a friend but in the same capacity as my position as engineering manager at NetGalley (https://www.netgalley.com) with a bit of mentoring and feedback. Karl has taken on challenging implementations that have included configuring new MVC frameworks and integrating APIs, and I appreciate being able to contribute to his growth in skills and technical knowledge.  I encourage anyone to consider Karl to fulfill your software or web application engineering needs. He has a bredth of experience, and can quickly pick up new technologies to meet any challenge.','Isreal Carberry','#','2019-08-14 07:05:58','2019-08-14 07:05:58');

/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,1,'Karl','karl@karlmurray.dev','users/default.png',NULL,'$2y$10$03BxKQHeGOJppMt2KrJKke3JkZO24y07rqi6XZONPAQHlCRYnKC7G',NULL,NULL,'2019-08-14 04:57:28','2019-08-14 04:57:28');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
