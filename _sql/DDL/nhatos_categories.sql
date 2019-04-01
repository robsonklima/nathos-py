-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: nhatos
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `confidence` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `categories_project_id_idx` (`project_id`),
  CONSTRAINT `fk_categories_project_id` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (12,13,'Computers & Electronics',0.53,NULL),(13,13,'Software',0.53,NULL),(14,13,'Business & Industrial',0.5,NULL),(24,27,'Health',0.95,NULL),(25,27,'Nutrition',0.95,NULL),(26,27,'Vitamins & Supplements',0.95,NULL),(28,32,'Business & Industrial',0.6,NULL),(29,32,'Finance',0.51,NULL),(32,39,'Finance',0.66,NULL),(33,39,'Banking',0.66,NULL),(34,42,'Law & Government',0.64,NULL),(35,42,'Legal',0.64,NULL),(47,58,'Law & Government',0.62,NULL),(48,58,'Government',0.62,NULL),(49,58,'People & Society',0.51,NULL),(50,62,'Finance',0.8,NULL),(51,62,'Investing',0.8,NULL),(52,62,'Currencies & Foreign Exchange',0.8,NULL),(67,82,'Finance',0.64,NULL),(68,82,'Business & Industrial',0.62,NULL),(69,83,'Business & Industrial',0.5,NULL),(71,89,'Computers & Electronics',0.7,NULL),(72,89,'Software',0.7,NULL),(75,97,'People & Society',0.58,NULL),(104,128,'Computers & Electronics',0.63,NULL),(113,141,'Finance',0.78,NULL),(114,141,'Accounting & Auditing',0.78,NULL),(116,143,'Business & Industrial',0.95,NULL),(117,143,'Computers & Electronics',0.94,NULL),(118,143,'Enterprise Technology',0.94,NULL),(119,143,'Data Management',0.94,NULL),(120,146,'Finance',0.58,NULL),(121,146,'Credit & Lending',0.58,NULL),(143,161,'Internet & Telecom',0.54,NULL),(146,171,'Finance',0.64,NULL),(147,176,'Finance',0.57,NULL),(148,176,'Banking',0.57,NULL),(149,176,'Business & Industrial',0.54,NULL),(151,182,'Business & Industrial',0.65,NULL),(152,182,'Computers & Electronics',0.55,NULL),(154,185,'Finance',0.63,NULL),(155,185,'Accounting & Auditing',0.63,NULL),(156,185,'Tax Preparation & Planning',0.63,NULL),(157,186,'Arts & Entertainment',0.62,NULL),(158,188,'Finance',0.62,NULL),(159,188,'Credit & Lending',0.62,NULL),(160,188,'Credit Cards',0.62,NULL),(161,189,'Arts & Entertainment',0.52,NULL),(162,190,'Business & Industrial',0.88,NULL),(163,192,'Finance',0.72,NULL),(164,198,'Business & Industrial',0.67,NULL),(165,202,'Computers & Electronics',0.65,NULL),(166,202,'Business & Industrial',0.54,NULL),(167,208,'Computers & Electronics',0.5,NULL),(168,212,'Computers & Electronics',0.84,NULL),(169,212,'Enterprise Technology',0.84,NULL),(170,212,'Business & Industrial',0.7,NULL),(171,212,'Business Services',0.7,NULL),(172,212,'E-Commerce Services',0.7,NULL),(173,212,'Computers & Electronics',0.64,NULL),(174,212,'Programming',0.64,NULL),(175,212,'Science',0.55,NULL),(176,212,'Computer Science',0.55,NULL),(177,213,'Finance',0.86,NULL),(178,213,'Accounting & Auditing',0.86,NULL),(179,214,'Sports',0.66,NULL),(180,214,'Team Sports',0.66,NULL),(185,224,'Finance',0.56,NULL),(188,234,'Law & Government',0.89,NULL),(189,234,'Legal',0.89,NULL),(190,235,'Finance',0.85,NULL),(191,235,'Banking',0.85,NULL),(193,240,'Business & Industrial',0.73,NULL),(194,240,'Computers & Electronics',0.68,NULL),(208,265,'Business & Industrial',0.65,NULL),(210,271,'Finance',0.58,NULL),(211,271,'Credit & Lending',0.58,NULL),(212,271,'Loans',0.58,NULL),(219,285,'Finance',0.66,NULL),(220,285,'Credit & Lending',0.66,NULL),(221,289,'Jobs & Education',0.78,NULL),(222,289,'Jobs',0.78,NULL),(223,289,'Job Listings',0.78,NULL),(224,289,'Business & Industrial',0.56,NULL),(227,298,'Finance',0.55,NULL),(228,298,'Credit & Lending',0.55,NULL),(229,298,'Loans',0.55,NULL),(232,305,'Autos & Vehicles',0.99,NULL),(235,310,'Finance',0.74,NULL),(236,312,'Finance',0.76,NULL),(237,312,'Credit & Lending',0.76,NULL),(240,316,'Finance',0.54,NULL),(241,316,'Accounting & Auditing',0.54,NULL),(244,323,'Business & Industrial',0.83,NULL),(248,325,'Business & Industrial',0.62,NULL),(249,326,'Finance',0.51,NULL),(256,337,'Finance',0.75,NULL),(264,353,'Arts & Entertainment',0.88,NULL),(265,353,'TV & Video',0.88,NULL),(266,353,'TV Shows & Programs',0.88,NULL),(267,353,'People & Society',0.74,NULL),(269,356,'Computers & Electronics',0.67,NULL),(270,356,'Science',0.64,NULL),(271,356,'Computer Science',0.64,NULL),(319,408,'Business & Industrial',0.54,NULL),(347,443,'Business & Industrial',0.51,NULL),(348,443,'Business Services',0.51,NULL),(349,443,'E-Commerce Services',0.51,NULL),(359,458,'Business & Industrial',0.88,NULL),(365,118,'Finance',0.64,NULL),(373,179,'Business & Industrial',0.67,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-31 16:50:07
