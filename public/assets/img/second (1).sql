-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: nodejs
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` text,
  `meta_description` text,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (3,'testing ss','testing-ss','<p>dsfgfdgsfdg</p>',NULL,'2024-07-10 13:24:28','2024-08-06 10:10:48',1,'ffrrr','','',0),(9,'sdfsdfgsfdg','sdfsdfgsfdg','<h4>\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"</h4>\r\n<h5>\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</h5>\r\n<hr>\r\n<div id=\"Content\">\r\n<div id=\"bannerL\">\r\n<div id=\"lipsumcom_left_siderail\" align=\"center\" data-freestar-ad=\"__300x600\" data-google-query-id=\"CPvz2ZTW54cDFXONrAIdL9IqUA\">\r\n<div id=\"google_ads_iframe_/15184186,22440292294/lipsumcom_left_siderail_0__container__\" style=\"border: 0pt; width: 300px; height: 250px;\"></div>\r\n</div>\r\n</div>\r\n<div id=\"bannerR\">\r\n<div id=\"lipsumcom_right_siderail\" align=\"center\" data-freestar-ad=\"__300x600\" data-google-query-id=\"CPzz2ZTW54cDFXONrAIdL9IqUA\">\r\n<div id=\"google_ads_iframe_/15184186,22440292294/lipsumcom_right_siderail_0__container__\" style=\"border: 0pt; width: 300px; height: 250px;\"></div>\r\n</div>\r\n</div>\r\n<div id=\"Panes\">\r\n<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n</div>\r\n</div>',NULL,'2024-08-22 15:46:27','2024-08-09 10:12:55',4,'','','',1);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (2,'dfsg','<p>fff</p>',NULL,'2024-08-09 15:14:53',1);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` text,
  `meta_description` text,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'first blog','first-blog','<p>sdfgsdfg</p>','image_1722940536964_15095578651502090678element_image_3.jpg',NULL,'2024-08-06 10:35:36',1,'','','',1),(4,'first servicefff','first-service','<p>sdffgsfdg sdfgsfdgdsf</p>','image_1722951052584_15095578651502090678element_image_3.jpg',NULL,'2024-08-07 13:35:11',4,'','','',1),(5,'first service','first-service','<p>dsfg</p>','image_1723037684742_cute-little-karate-boy-free-vector.jpg',NULL,'2024-08-07 13:34:44',4,'','','',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `images` json DEFAULT NULL,
  `headings` json DEFAULT NULL,
  `paragraphs` json DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (7,'banner','[\"images_1737754597033_test.png\", \"images_1737754597034_test1.png\"]','[\"An unrivalled online Casino and Sportsbook\"]','[]','2025-01-24 21:36:37','2025-01-24 21:36:37',1),(8,'first component','[\"images_1737759541356_casino-hero-banner-382.avif\", \"images_1737759541358_casino-hero-banner-640.avif\", \"images_1737759541359_casino-hero-banner-750.avif\", \"images_1737759541361_casino-hero-banner-764.avif\"]','[\"Thousands of thrilling games.\\r\\nThousands of ways to win big.\"]','[]','2025-01-24 22:59:01','2025-01-25 09:05:59',1),(9,'second component','[\"images_1737795400837_sportsbook-hero-banner-382.avif\"]','[\"Thousands of thrilling games. \\r\\nThousands of ways to win big.\"]','[]','2025-01-25 08:56:40','2025-01-25 08:56:40',1),(10,'fourth component','[\"images_1737811840689_currency-btc.svg\", \"images_1737811840689_currency-eth.svg\", \"images_1737811840690_currency-usdt.svg\", \"images_1737811840690_currency-ltc.svg\"]','[\"Peace of mind across multiple crypto and local currencies\"]','[\"Experience safe deposits and instant withdrawals across 20 cryptocurrencies and 7 local currencies. All with no minimums, flexible payment methods and a secure online vault.\"]','2025-01-25 13:30:40','2025-01-25 13:42:49',1),(11,'fifth component','[]','[\"Wager more and see your rewards grow as a Stake VIP\", \"Bonuses every week\", \"Your own VIP host\", \"Level-up payouts\", \"Recent play bonuses\"]','[\"Step into a world of unique benefits, personalized service and exclusive bonuses, only as a Stake VIP.\", \"Every week of each month, you’ll be rewarded with a bonus based on your recent games. The more you bet, the higher the bonuses.\", \"Enjoy exclusive access to a dedicated VIP Host who will support and cater to your betting needs.\", \"Get paid each time you reach a new level. The higher you go, the better the level-ups get.\", \"Looking to win back your unsuccessful wagers? Stake offers money back on losses every time you level up.\"]','2025-01-26 09:25:32','2025-01-26 09:25:32',1),(12,'sixth component','[\"images_1737883934824_unauth-sponsorship-betting-partner-en.png\", \"images_1737884353212_unauth-sponsorship-main-partner-en.png\"]','[\"Meet our sponsorship partners\", \"UFC\", \"Everton\"]','[\"We proudly sponsor high profile athletes, teams and stars from across the globe to help support the passion and excitement of our communities.\", \"Our partnership with UFC provides unmatched betting experiences.\", \"Proud main partner with iconic moments and world-class betting.\"]','2025-01-26 09:32:14','2025-01-26 12:17:42',1),(13,'seventh component','[\"images_1737901728038_support.CmwmipsR.svg\"]','[\"Our help team speaks your language\"]','[\"Get 24/7 support from our live customer support team in your native language.\"]','2025-01-26 11:59:55','2025-01-26 14:28:48',1),(14,'eighth component','[\"images_1737901751895_unauth-stake-community-en.avif\"]','[\"Share your excitement with a thriving community\"]','[\"From beginners and casual players to high rollers and expert players, our community love to support one another. Get tips and tricks through our online chat, forums and more.\"]','2025-01-26 12:12:11','2025-01-26 14:29:11',1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `address` text,
  `fb_url` varchar(255) DEFAULT NULL,
  `google_url` varchar(255) DEFAULT NULL,
  `linkdin_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `favicon_icon` varchar(255) DEFAULT NULL,
  `default_meta_title` text,
  `default_meta_keyword` text,
  `default_meta_description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Digital future web solutions','testing@gmail.com','987987987','header_logo_1723206719665_dfweb.png','test jaipur','fb.com','g.com','l.com','t.com',NULL,NULL,NULL,'ertwert','wertw','erwt');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'first test','developer','<p>lorem lipsum</p>','image_1723212829466_15095578651502090678element_image_3.jpg',NULL,'2024-08-09 14:13:49',1);
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` text,
  `role` varchar(255) DEFAULT NULL,
  `reset_password_token` text,
  `reset_password_expire` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'vinay verma','admin155@gmail.com','$2a$10$vMUugr/GkBqgJipoMivXTulZQf/7FODFchMHmlX6SirGCxneaMSMm',NULL,'admin',NULL,NULL,NULL,NULL),(2,'vinay','vny1@gmail.com','$2a$10$WeJjNh.M9w.Qqo/XCfPe7.n97VGsYfyQjUOG.CawZdy2ADVEjyNXK',NULL,'user',NULL,NULL,NULL,NULL),(3,'developer','dev1@gmail.com','$2a$10$SCI86WR8StIr9LQ71aKpDuVIYDuhng5qi.kKxszB5gEYsq7xhtYUG',NULL,'user',NULL,NULL,NULL,NULL),(4,'developer AA','dev21@gmail.com','$2a$10$zLHYDMvgPFHFRjjNZOydS.o5jj3.c1EXioLdfKmK5FP/elanhQT5O',NULL,'admin',NULL,NULL,'2024-07-26 14:23:57','2024-07-26 14:23:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-31  1:24:14
