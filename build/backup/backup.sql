-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolreport
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `name` varchar(50) NOT NULL,
  `sub1` int(11) DEFAULT NULL,
  `sub2` int(11) DEFAULT NULL,
  `sub3` int(11) DEFAULT NULL,
  `sub4` int(11) DEFAULT NULL,
  `sub5` int(11) DEFAULT NULL,
  `sub6` int(11) DEFAULT NULL,
  `sub7` int(11) DEFAULT NULL,
  `sub8` int(11) DEFAULT NULL,
  `sub9` int(11) DEFAULT NULL,
  `sub10` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('Anna Brannon',70,24,70,55,66,67,36,78,57,28),('Asuncion Joe',30,49,44,20,93,12,65,72,51,89),('Buck Jarrell',57,59,51,72,31,80,63,22,64,99),('Buffy Washburn',87,7,96,87,9,50,32,70,23,28),('Carman Lamas',84,98,94,56,41,44,75,46,46,69),('Coral Ceballos',39,63,91,85,9,78,25,71,50,68),('Courtney Irey',77,82,43,76,7,21,42,7,16,65),('Dante Deleon',57,87,28,22,61,57,74,22,8,59),('Darwin Backus',78,36,27,5,39,22,5,40,80,88),('Delicia Tonn',89,74,12,9,80,23,50,100,22,54),('Ellamae Starkweather',79,35,66,33,50,64,61,36,44,7),('Ernesto Crocker',91,73,26,80,57,29,78,70,99,94),('Evangeline Eadie',13,74,40,55,78,73,70,85,36,36),('Frida Stogsdill',75,43,18,21,75,24,93,45,88,70),('Grover Ong',54,87,25,62,31,95,49,51,20,22),('Hedwig Robbs',13,47,30,92,53,91,15,74,16,44),('Iola Hilden',47,69,9,66,80,12,40,69,70,67),('Irma Epperson',19,89,29,79,86,36,56,92,61,80),('Jenna Howes',14,45,16,19,73,5,18,59,36,36),('Kary Sheffler',30,9,48,96,14,71,20,16,92,28),('Kelly Defrank',67,8,93,36,63,38,85,12,92,8),('Kristan Jessee',64,90,95,70,26,69,76,86,72,91),('Lacie Luker',68,53,93,22,6,39,32,31,25,58),('Lashonda Nall',62,75,41,94,65,40,97,45,26,90),('Loise Knisely',78,73,64,11,80,62,64,67,39,40),('Marcie Stamps',99,81,40,69,69,36,55,14,89,30),('Neal Mcglown',70,38,11,11,39,61,53,56,65,26),('Novella Desanti',52,19,17,56,48,47,6,31,94,19),('Piedad Lovings',23,42,19,32,99,79,81,7,55,76),('Raphael Maitland',76,76,100,82,25,84,26,43,90,83),('Reatha Mccoy',62,62,73,6,39,51,85,56,42,22),('Roger Rothenberg',17,28,30,56,49,89,64,20,35,81),('Rolland Jaso',47,49,61,18,9,24,83,91,30,84),('Rudolph Armor',90,83,6,67,36,44,7,25,52,26),('Savanna Bumbrey',61,45,41,55,22,19,83,49,87,59),('Scarlett Hessel',99,64,73,99,27,90,67,86,63,34),('shan ikabot',36,67,99,78,21,71,91,46,18,83),('Sharleen Rother',56,68,98,52,30,22,48,74,54,88),('Shawana Catlett',34,30,20,63,90,58,85,83,63,92),('Steffanie Bjork',63,60,42,16,43,87,13,92,6,77),('Sunni Vedder',10,38,33,11,67,10,59,88,18,85),('Suzanna Merola',92,24,56,39,85,35,63,68,42,85),('Tammy Camel',97,59,49,14,22,8,77,29,87,70),('Tesha Edmundson',22,77,54,74,7,78,33,10,31,55),('Tuyet Rodman',13,98,79,95,74,77,74,9,8,28),('Ulysses Lanphere',21,84,71,13,63,14,57,5,58,15),('Valeri Vereen',15,67,29,51,5,84,71,25,6,15),('vibodha Balalla',100,100,100,100,100,100,100,100,100,100),('Victorina Woolf',49,76,10,98,91,12,83,77,42,53),('Warner Lairsey',58,80,32,92,65,88,41,17,35,7),('Weston Goslin',57,82,30,26,84,63,34,79,36,57),('Willette Rockefeller',12,10,27,34,16,53,38,25,31,93);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-28 18:00:10
