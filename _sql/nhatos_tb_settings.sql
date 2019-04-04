CREATE DATABASE  IF NOT EXISTS `nhatos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nhatos`;
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
-- Table structure for table `tb_settings`
--

DROP TABLE IF EXISTS `tb_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_settings` (
  `only_projects_same_size` int(1) DEFAULT NULL,
  `only_projects_same_methodology` int(1) DEFAULT NULL,
  `distance_accepted_between_requirements` float DEFAULT NULL,
  `difference_accepted_between_projects_percentage` float DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_settings`
--

LOCK TABLES `tb_settings` WRITE;
/*!40000 ALTER TABLE `tb_settings` DISABLE KEYS */;
INSERT INTO `tb_settings` VALUES (0,0,112,0,'2019-04-02 19:07:05'),(1,1,112,49,'2019-04-02 19:07:05'),(1,1,25,49,'2019-04-02 19:07:05'),(1,1,63,24,'2019-04-02 19:07:05'),(0,1,92,35,'2019-04-02 19:07:05'),(0,1,92,35,'2019-04-02 19:07:05'),(0,1,148,18,'2019-04-02 19:07:05'),(1,1,145,49,'2019-04-02 19:08:12'),(1,1,145,49,'2019-04-02 19:45:17'),(1,1,145,49,'2019-04-02 20:05:41'),(1,1,108,49,'2019-04-02 20:20:38'),(1,1,100,50,'2019-04-02 20:44:50'),(1,1,100,50,'2019-04-02 20:44:54'),(1,1,79,50,'2019-04-04 10:13:14'),(1,1,100,50,'2019-04-04 10:13:19'),(1,1,100,50,'2019-04-04 10:19:50');
/*!40000 ALTER TABLE `tb_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-04 10:25:22
