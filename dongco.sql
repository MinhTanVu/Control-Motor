-- MySQL dump 10.18  Distrib 10.3.27-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: dongco
-- ------------------------------------------------------
-- Server version	10.3.27-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dc`
--

DROP TABLE IF EXISTS `dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc` (
  `STT` mediumint(9) NOT NULL AUTO_INCREMENT,
  `x` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`STT`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc`
--

LOCK TABLES `dc` WRITE;
/*!40000 ALTER TABLE `dc` DISABLE KEYS */;
INSERT INTO `dc` VALUES (1,'h'),(2,'s'),(3,'s'),(4,'s'),(5,'r'),(6,'h'),(7,'s'),(8,'h'),(9,'r'),(10,'h'),(11,'s'),(12,'r'),(13,'h'),(14,'b'),(15,'s'),(16,'r'),(17,'h'),(18,'s'),(19,'r'),(20,'h'),(21,'s'),(22,'r'),(23,'h'),(24,'s'),(25,'m'),(26,'r'),(27,'b'),(28,'m'),(29,'s'),(30,'r'),(31,'m'),(32,'h'),(33,'b'),(34,'m'),(35,'h'),(36,'h'),(37,'f'),(38,'h'),(39,'s'),(40,'r'),(41,'h'),(42,'s'),(43,'r'),(44,'s'),(45,'r'),(46,'l'),(47,'m'),(48,'h'),(49,'f'),(50,'b'),(51,'m'),(52,'f'),(53,'b'),(54,'h'),(55,'s'),(56,'r'),(57,'h'),(58,'m'),(59,'h'),(60,'f'),(61,'b'),(62,'s'),(63,'r'),(64,'m'),(65,'l'),(66,'m'),(67,'r'),(68,'m'),(69,'h'),(70,'f'),(71,'b'),(72,'f'),(73,'s'),(74,'r'),(75,'m'),(76,'h'),(77,'b'),(78,'m'),(79,'l'),(80,'f'),(81,'s'),(82,'r'),(83,'m'),(84,'f'),(85,'s'),(86,'r'),(87,'h'),(88,'h'),(89,'r'),(90,'h'),(91,'s'),(92,'r'),(93,'m'),(94,'h'),(95,'h'),(96,'r'),(97,'l'),(98,'m'),(99,'h'),(100,'s'),(101,'r'),(102,'r'),(103,'r'),(104,'m'),(105,'h'),(106,'f'),(107,'b'),(108,'s'),(109,'r'),(110,'m'),(111,'h'),(112,'m'),(113,'l'),(114,'s'),(115,'r'),(116,'l'),(117,'m'),(118,'h'),(119,'b'),(120,'s'),(121,'r'),(122,'l'),(123,'m'),(124,'h'),(125,'m'),(126,'b'),(127,'f'),(128,'m'),(129,'l'),(130,'h'),(131,'s'),(132,'r'),(133,'m'),(134,'h'),(135,'m'),(136,'l'),(137,'b'),(138,'m'),(139,'h'),(140,'s'),(141,'r'),(142,'m'),(143,'h'),(144,'b'),(145,'s');
/*!40000 ALTER TABLE `dc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-10  0:19:33
