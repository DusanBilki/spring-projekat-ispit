-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spring_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `indeks` varchar(255) NOT NULL,
  `study_programme_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `uq_indeks_student` (`indeks`),
  KEY `fk_student_study_programme_idx` (`study_programme_id`),
  CONSTRAINT `fk_student_study_programme` FOREIGN KEY (`study_programme_id`) REFERENCES `study_programme` (`study_programme_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Dusan','Bilkan','2022200878',1,'2024-06-04 22:17:55','2024-06-06 13:28:54',NULL),(2,'Petar','Petrovic','2022201234',10,'2024-06-05 16:08:36','2024-06-06 19:52:08',NULL),(3,'Ivan','Ivanovic','2022202321',1,'2024-06-05 16:09:12',NULL,NULL),(4,'Sara','Saric','2022123456',1,'2024-06-05 16:09:29',NULL,NULL),(5,'Dusan','Bilkan','2024123456',1,'2024-06-05 23:23:54',NULL,'2024-06-06 12:37:19'),(8,'Pero','Nikic','2024123455',1,'2024-06-05 23:46:27','2024-06-05 23:55:13',NULL),(10,'Marko','Markovic','12345678',1,'2024-06-06 14:41:23',NULL,'2024-06-06 14:45:07'),(11,'Primer','Prezime','2014123456',9,'2024-06-06 20:02:39','2024-06-06 20:02:45',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_programme`
--

DROP TABLE IF EXISTS `study_programme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_programme` (
  `study_programme_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`study_programme_id`),
  UNIQUE KEY `uq_sp_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_programme`
--

LOCK TABLES `study_programme` WRITE;
/*!40000 ALTER TABLE `study_programme` DISABLE KEYS */;
INSERT INTO `study_programme` VALUES (1,'Računarske Nauke','2024-06-06 15:44:38','2024-06-06 17:34:17',NULL),(2,'Informacione i Tehnologije','2024-06-06 15:44:38',NULL,NULL),(3,'Softversko i Informaciono Inženjerstvo','2024-06-06 15:44:38',NULL,NULL),(4,'Anglistika','2024-06-06 15:44:38',NULL,NULL),(5,'Menadžment u turizmu i hotelijerstvu','2024-06-06 15:44:38',NULL,NULL),(6,'Poslovna Ekonomija','2024-06-06 15:44:38',NULL,NULL),(7,'Veštačka Inteligencija','2024-06-06 15:44:38',NULL,NULL),(8,'Farmacija','2024-06-06 15:44:38',NULL,NULL),(9,'Menadžment u Sportu','2024-06-06 15:44:38',NULL,NULL),(10,'Fizičko vaspitanje i Sport','2024-06-06 15:44:38',NULL,NULL),(11,'Psihologija','2024-06-06 15:44:38',NULL,NULL),(12,'Savremene Informacione Tehnologije','2024-06-06 17:23:47',NULL,'2024-06-06 17:34:28');
/*!40000 ALTER TABLE `study_programme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-06 20:23:05
