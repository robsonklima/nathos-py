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
  PRIMARY KEY (`category_id`),
  KEY `categories_project_id_idx` (`project_id`),
  CONSTRAINT `categories_project_id` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,1,'Internet & Telecom',0.82),(2,1,'Mobile & Wireless',0.82),(3,1,'Computers & Electronics',0.58),(4,3,'Business & Industrial',0.6),(5,4,'Finance',0.7),(6,6,'Internet & Telecom',0.69),(7,6,'Service Providers',0.69),(8,7,'Finance',0.69),(9,7,'Investing',0.69),(10,11,'Business & Industrial',0.65),(11,12,'Finance',0.7),(12,13,'Computers & Electronics',0.53),(13,13,'Software',0.53),(14,13,'Business & Industrial',0.5),(15,15,'Business & Industrial',0.6),(16,16,'Business & Industrial',0.81),(17,16,'Computers & Electronics',0.52),(18,16,'Enterprise Technology',0.52),(19,19,'Finance',0.61),(20,19,'Investing',0.61),(21,24,'Business & Industrial',0.81),(22,24,'Business Operations',0.81),(23,25,'Finance',0.6),(24,27,'Health',0.95),(25,27,'Nutrition',0.95),(26,27,'Vitamins & Supplements',0.95),(27,31,'Computers & Electronics',0.61),(28,32,'Business & Industrial',0.6),(29,32,'Finance',0.51),(30,37,'Finance',0.7),(31,37,'Accounting & Auditing',0.7),(32,39,'Finance',0.66),(33,39,'Banking',0.66),(34,42,'Law & Government',0.64),(35,42,'Legal',0.64),(36,43,'Business & Industrial',0.71),(37,45,'Business & Industrial',0.63),(38,46,'Finance',0.56),(39,47,'Internet & Telecom',0.55),(40,47,'Email & Messaging',0.55),(41,53,'Reference',0.54),(42,53,'Humanities',0.54),(43,53,'History',0.54),(44,55,'Finance',0.5),(45,55,'Investing',0.5),(46,56,'Business & Industrial',0.51),(47,58,'Law & Government',0.62),(48,58,'Government',0.62),(49,58,'People & Society',0.51),(50,62,'Finance',0.8),(51,62,'Investing',0.8),(52,62,'Currencies & Foreign Exchange',0.8),(53,69,'Business & Industrial',0.64),(54,69,'Law & Government',0.52),(55,70,'Finance',0.7),(56,73,'Computers & Electronics',0.83),(57,73,'Business & Industrial',0.55),(58,75,'Business & Industrial',0.68),(59,76,'Finance',0.51),(60,76,'Banking',0.51),(61,77,'Finance',0.86),(62,77,'Accounting & Auditing',0.86),(63,81,'Finance',0.53),(64,81,'Investing',0.53),(65,81,'Finance',0.51),(66,81,'Financial Planning & Management',0.51),(67,82,'Finance',0.64),(68,82,'Business & Industrial',0.62),(69,83,'Business & Industrial',0.5),(70,88,'Finance',0.61),(71,89,'Computers & Electronics',0.7),(72,89,'Software',0.7),(73,92,'Business & Industrial',0.53),(74,92,'Business Operations',0.53),(75,97,'People & Society',0.58),(76,98,'Finance',0.5),(77,98,'Accounting & Auditing',0.5),(78,99,'Computers & Electronics',0.86),(79,101,'Computers & Electronics',0.66),(80,101,'Business & Industrial',0.65),(81,103,'Law & Government',0.61),(82,103,'Government',0.61),(83,104,'Finance',0.85),(84,104,'Credit & Lending',0.85),(85,104,'Finance',0.85),(86,104,'Insurance',0.85),(87,109,'Finance',0.6),(88,110,'Business & Industrial',0.57),(89,112,'Arts & Entertainment',0.82),(90,112,'Music & Audio',0.82),(91,113,'Finance',0.91),(92,114,'Business & Industrial',0.62),(93,117,'People & Society',0.69),(94,117,'Social Issues & Advocacy',0.69),(95,117,'Green Living & Environmental Issues',0.69),(96,118,'Finance',0.64),(97,121,'Finance',0.57),(98,121,'Credit & Lending',0.57),(99,122,'Computers & Electronics',0.57),(100,124,'Business & Industrial',0.69),(101,125,'Computers & Electronics',0.52),(102,127,'Business & Industrial',0.71),(103,127,'Business Services',0.71),(104,128,'Computers & Electronics',0.63),(105,130,'Finance',0.68),(106,130,'Computers & Electronics',0.57),(107,130,'Business & Industrial',0.55),(108,135,'Business & Industrial',0.63),(109,135,'Finance',0.55),(110,136,'Finance',0.56),(111,136,'Credit & Lending',0.56),(112,140,'Finance',0.67),(113,141,'Finance',0.78),(114,141,'Accounting & Auditing',0.78),(115,142,'Computers & Electronics',0.5),(116,143,'Business & Industrial',0.95),(117,143,'Computers & Electronics',0.94),(118,143,'Enterprise Technology',0.94),(119,143,'Data Management',0.94),(120,146,'Finance',0.58),(121,146,'Credit & Lending',0.58),(122,147,'Science',0.71),(123,147,'Computer Science',0.71),(124,147,'Computers & Electronics',0.7),(125,147,'Programming',0.7),(126,148,'Science',0.57),(127,148,'Computer Science',0.57),(128,148,'Computers & Electronics',0.53),(129,148,'Programming',0.53),(130,149,'Business & Industrial',0.51),(131,149,'Business Operations',0.51),(132,151,'Internet & Telecom',0.73),(133,151,'Web Services',0.73),(134,151,'Business & Industrial',0.71),(135,151,'Business Services',0.71),(136,153,'Business & Industrial',0.79),(137,157,'Business & Industrial',0.71),(138,157,'Computers & Electronics',0.71),(139,157,'Enterprise Technology',0.71),(140,157,'Data Management',0.71),(141,159,'Finance',0.78),(142,159,'Banking',0.78),(143,161,'Internet & Telecom',0.54),(144,164,'Finance',0.56),(145,167,'Business & Industrial',0.76),(146,171,'Finance',0.64),(147,176,'Finance',0.57),(148,176,'Banking',0.57),(149,176,'Business & Industrial',0.54),(150,179,'Business & Industrial',0.67),(151,182,'Business & Industrial',0.65),(152,182,'Computers & Electronics',0.55),(153,183,'Finance',0.71),(154,185,'Finance',0.63),(155,185,'Accounting & Auditing',0.63),(156,185,'Tax Preparation & Planning',0.63),(157,186,'Arts & Entertainment',0.62),(158,188,'Finance',0.62),(159,188,'Credit & Lending',0.62),(160,188,'Credit Cards',0.62),(161,189,'Arts & Entertainment',0.52),(162,190,'Business & Industrial',0.88),(163,192,'Finance',0.72),(164,198,'Business & Industrial',0.67),(165,202,'Computers & Electronics',0.65),(166,202,'Business & Industrial',0.54),(167,208,'Computers & Electronics',0.5),(168,212,'Computers & Electronics',0.84),(169,212,'Enterprise Technology',0.84),(170,212,'Business & Industrial',0.7),(171,212,'Business Services',0.7),(172,212,'E-Commerce Services',0.7),(173,212,'Computers & Electronics',0.64),(174,212,'Programming',0.64),(175,212,'Science',0.55),(176,212,'Computer Science',0.55),(177,213,'Finance',0.86),(178,213,'Accounting & Auditing',0.86),(179,214,'Sports',0.66),(180,214,'Team Sports',0.66),(181,216,'Business & Industrial',0.64),(182,216,'Computers & Electronics',0.56),(183,216,'Enterprise Technology',0.56),(184,216,'Data Management',0.56),(185,224,'Finance',0.56),(186,226,'Finance',0.58),(187,233,'Finance',0.59),(188,234,'Law & Government',0.89),(189,234,'Legal',0.89),(190,235,'Finance',0.85),(191,235,'Banking',0.85),(192,239,'Finance',0.67),(193,240,'Business & Industrial',0.73),(194,240,'Computers & Electronics',0.68),(195,246,'Finance',0.53),(196,246,'Accounting & Auditing',0.53),(197,247,'Finance',0.57),(198,248,'Finance',0.76),(199,249,'Business & Industrial',0.64),(200,252,'Reference',0.55),(201,257,'Real Estate',0.7),(202,258,'Finance',0.74),(203,259,'Business & Industrial',0.59),(204,260,'Business & Industrial',0.81),(205,261,'Reference',0.55),(206,262,'Finance',0.63),(207,262,'Computers & Electronics',0.53),(208,265,'Business & Industrial',0.65),(209,270,'Finance',0.64),(210,271,'Finance',0.58),(211,271,'Credit & Lending',0.58),(212,271,'Loans',0.58),(213,272,'Finance',0.78),(214,272,'Credit & Lending',0.78),(215,273,'Law & Government',0.59),(216,274,'People & Society',0.52),(217,278,'Finance',0.53),(218,278,'Financial Planning & Management',0.53),(219,285,'Finance',0.66),(220,285,'Credit & Lending',0.66),(221,289,'Jobs & Education',0.78),(222,289,'Jobs',0.78),(223,289,'Job Listings',0.78),(224,289,'Business & Industrial',0.56),(225,290,'Finance',0.6),(226,294,'Business & Industrial',0.54),(227,298,'Finance',0.55),(228,298,'Credit & Lending',0.55),(229,298,'Loans',0.55),(230,300,'Science',0.56),(231,300,'Computers & Electronics',0.5),(232,305,'Autos & Vehicles',0.99),(233,308,'Finance',0.63),(234,308,'Accounting & Auditing',0.63),(235,310,'Finance',0.74),(236,312,'Finance',0.76),(237,312,'Credit & Lending',0.76),(238,314,'Computers & Electronics',0.51),(239,315,'Business & Industrial',0.51),(240,316,'Finance',0.54),(241,316,'Accounting & Auditing',0.54),(242,320,'Law & Government',0.8),(243,320,'Legal',0.8),(244,323,'Business & Industrial',0.83),(245,324,'Law & Government',0.62),(246,324,'Government',0.62),(247,324,'Courts & Judiciary',0.62),(248,325,'Business & Industrial',0.62),(249,326,'Finance',0.51),(250,327,'Computers & Electronics',0.55),(251,329,'Business & Industrial',0.78),(252,331,'Law & Government',0.85),(253,331,'Legal',0.85),(254,334,'Finance',0.65),(255,334,'Banking',0.65),(256,337,'Finance',0.75),(257,340,'Finance',0.61),(258,343,'Finance',0.87),(259,343,'Investing',0.87),(260,345,'Business & Industrial',0.56),(261,349,'Finance',0.52),(262,349,'Credit & Lending',0.52),(263,349,'Credit Reporting & Monitoring',0.52),(264,353,'Arts & Entertainment',0.88),(265,353,'TV & Video',0.88),(266,353,'TV Shows & Programs',0.88),(267,353,'People & Society',0.74),(268,355,'Business & Industrial',0.53),(269,356,'Computers & Electronics',0.67),(270,356,'Science',0.64),(271,356,'Computer Science',0.64),(272,358,'Finance',0.97),(273,358,'Accounting & Auditing',0.97),(274,362,'Business & Industrial',0.86),(275,362,'Computers & Electronics',0.59),(276,362,'Enterprise Technology',0.59),(277,368,'Business & Industrial',0.61),(278,372,'Business & Industrial',0.59),(279,375,'Business & Industrial',0.75),(280,375,'Computers & Electronics',0.63),(281,376,'Computers & Electronics',0.59),(282,376,'Software',0.59),(283,377,'Business & Industrial',0.75),(284,377,'Computers & Electronics',0.63),(285,380,'Computers & Electronics',0.63),(286,381,'Finance',0.72),(287,381,'Accounting & Auditing',0.72),(288,381,'Tax Preparation & Planning',0.72),(289,384,'Business & Industrial',0.61),(290,384,'Transportation & Logistics',0.61),(291,385,'Computers & Electronics',0.77),(292,385,'Software',0.77),(293,386,'Computers & Electronics',0.57),(294,386,'Software',0.57),(295,391,'Finance',0.92),(296,391,'Accounting & Auditing',0.92),(297,391,'Computers & Electronics',0.6),(298,391,'Software',0.6),(299,391,'Business & Productivity Software',0.6),(300,392,'Business & Industrial',0.87),(301,392,'Computers & Electronics',0.64),(302,394,'Computers & Electronics',0.6),(303,395,'Finance',0.95),(304,395,'Accounting & Auditing',0.95),(305,395,'Tax Preparation & Planning',0.95),(306,396,'Business & Industrial',0.77),(307,396,'Business Operations',0.77),(308,396,'Computers & Electronics',0.57),(309,396,'Software',0.57),(310,398,'Business & Industrial',0.7),(311,398,'Business Operations',0.7),(312,401,'Computers & Electronics',0.56),(313,401,'Computer Hardware',0.56),(314,401,'Computer Drives & Storage',0.56),(315,403,'Computers & Electronics',0.66),(316,403,'Business & Industrial',0.51),(317,407,'Finance',0.76),(318,407,'Banking',0.76),(319,408,'Business & Industrial',0.54),(320,410,'Business & Industrial',0.69),(321,412,'Business & Industrial',0.91),(322,412,'Business Operations',0.91),(323,412,'Finance',0.51),(324,412,'Accounting & Auditing',0.51),(325,415,'Business & Industrial',0.55),(326,415,'Business Services',0.55),(327,417,'Finance',0.55),(328,417,'Accounting & Auditing',0.55),(329,417,'Computers & Electronics',0.51),(330,417,'Software',0.51),(331,417,'Business & Productivity Software',0.51),(332,421,'Business & Industrial',0.72),(333,421,'Transportation & Logistics',0.72),(334,421,'Computers & Electronics',0.6),(335,425,'Business & Industrial',0.53),(336,431,'Finance',0.54),(337,432,'Arts & Entertainment',0.88),(338,434,'Computers & Electronics',0.82),(339,434,'Science',0.55),(340,434,'Computer Science',0.55),(341,437,'Finance',0.85),(342,437,'Accounting & Auditing',0.85),(343,437,'Computers & Electronics',0.51),(344,438,'Computers & Electronics',0.73),(345,442,'Law & Government',0.54),(346,442,'Legal',0.54),(347,443,'Business & Industrial',0.51),(348,443,'Business Services',0.51),(349,443,'E-Commerce Services',0.51),(350,450,'Law & Government',0.57),(351,452,'Arts & Entertainment',0.51),(352,452,'Performing Arts',0.51),(353,453,'Finance',0.76),(354,453,'Computers & Electronics',0.53),(355,453,'Software',0.53),(356,454,'Finance',0.65),(357,455,'Computers & Electronics',0.8),(358,455,'Business & Industrial',0.69),(359,458,'Business & Industrial',0.88),(360,460,'Finance',0.71),(361,463,'Arts & Entertainment',0.87),(362,464,'Business & Industrial',0.74),(363,464,'Printing & Publishing',0.74),(364,465,'Computers & Electronics',0.59);
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

-- Dump completed on 2019-01-22 12:45:28
