-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: student_examples
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contacttypes`
--

DROP TABLE IF EXISTS `contacttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contacttypes` (
  `typeID` int(11) NOT NULL AUTO_INCREMENT,
  `typeDescription` varchar(50) NOT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacttypes`
--

LOCK TABLES `contacttypes` WRITE;
/*!40000 ALTER TABLE `contacttypes` DISABLE KEYS */;
INSERT INTO `contacttypes` (`typeID`, `typeDescription`) VALUES (1,'Home'),(2,'Work'),(3,'Leave');
/*!40000 ALTER TABLE `contacttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `studentID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text,
  `sat_score` int(11) DEFAULT NULL,
  `programOfStudy` text,
  `schoolEmailAdr` text,
  `rcd_Created` datetime DEFAULT CURRENT_TIMESTAMP,
  `rcd_Updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`studentID`),
  KEY `programKey` (`programOfStudy`(10))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`studentID`, `FullName`, `sat_score`, `programOfStudy`, `schoolEmailAdr`, `rcd_Created`, `rcd_Updated`) VALUES (1,'Monique Davis',400,'Literature','Monique@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 23:33:56'),(2,'Teri Gutierrez',800,'Programming','Teri@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 23:33:56'),(3,'Spencer Pautier',1000,'Programming','Spencer@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 23:33:56'),(4,'Louis Ramsey',1200,'Programming','Louis@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 23:33:56'),(5,'Alvin Greene',1200,'Programming','Alvin@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 23:33:56'),(6,'Sophie Freeman',1200,'Programming','Sophie@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 23:33:56'),(7,'Edgar Frank \"Ted\"\" Codd\"',2400,'Computer Science','Edgar@someOtherSchool.edu','2017-08-16 15:35:33','2017-09-02 23:33:56'),(8,'Donald D. Chamberlin',2400,'Computer Science','Donald@someOtherSchool.edu','2017-08-16 15:35:33','2017-09-02 23:33:56'),(9,'Raymond F. Boyce',2400,'Computer Science','Raymond@someOtherSchool.edu','2017-08-16 15:35:33','2017-09-02 23:33:56');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student-contact-info`
--

DROP TABLE IF EXISTS `student-contact-info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student-contact-info` (
  `studentID` int(11) NOT NULL DEFAULT '1',
  `typeId` int(11) NOT NULL,
  `validStart` date DEFAULT NULL,
  `validEnd` date DEFAULT NULL,
  `studentEmailAddr` text,
  `student-phone-cell` text,
  `student-US-zipcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`studentID`,`typeId`),
  KEY `contactType` (`typeId`),
  CONSTRAINT `contactType` FOREIGN KEY (`typeId`) REFERENCES `contacttypes` (`typeid`),
  CONSTRAINT `student-contact-info_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student-contact-info`
--

LOCK TABLES `student-contact-info` WRITE;
/*!40000 ALTER TABLE `student-contact-info` DISABLE KEYS */;
INSERT INTO `student-contact-info` (`studentID`, `typeId`, `validStart`, `validEnd`, `studentEmailAddr`, `student-phone-cell`, `student-US-zipcode`) VALUES (1,1,NULL,NULL,'Monique.Davis@freeCodeCamp.org','555-555-5551',97111),(2,1,NULL,NULL,'Teri.Gutierrez@freeCodeCamp.org','555-555-5552',97112),(3,1,NULL,NULL,'Spencer.Pautier@freeCodeCamp.org','555-555-5553',97113),(4,2,NULL,NULL,'Louis.Ramsey@freeCodeCamp.org','555-555-5554',0),(5,2,NULL,NULL,'Alvin.Green@freeCodeCamp.org','555-555-5555',97115),(6,3,NULL,NULL,'Sophie.Freeman@freeCodeCamp.org','555-555-5556',97116),(7,3,NULL,NULL,'Maximo.Smith@freeCodeCamp.org','555-555-5557',97117),(8,3,NULL,NULL,'Michael.Roach@freeCodeCamp.ort','555-555-5558',97118);
/*!40000 ALTER TABLE `student-contact-info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'student_examples'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 10:32:00
