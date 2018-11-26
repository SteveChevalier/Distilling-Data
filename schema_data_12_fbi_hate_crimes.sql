-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: fbi_hate_crimes
-- ------------------------------------------------------
-- Server version	8.0.12

-- create schema and set to current schema
create database if not exists fbi_hate_crimes;
use fbi_hate_crimes;

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
-- Table structure for table `hate_2008`
--

DROP TABLE IF EXISTS `hate_2008`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hate_2008` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_2008`
--

LOCK TABLES `hate_2008` WRITE;
/*!40000 ALTER TABLE `hate_2008` DISABLE KEYS */;
INSERT INTO `hate_2008` (`yr_reported`, `Bias`, `Bias_motivation`, `Incidents`, `Offenses`, `Victims`, `Known_offenders`) VALUES (2008,'race','Anti-White',716,812,829,811),(2008,'race','Anti-American Indian/Alaskan Native',54,59,63,61),(2008,'race','Anti-Asian/Pacific Islander',137,162,170,140),(2008,'race','Anti-Multiple Races, Group',209,258,276,115),(2008,'religion','Anti-Catholic',75,75,89,35),(2008,'religion','Anti-Protestant',56,60,62,34),(2008,'religion','Anti-Islamic',105,123,130,85),(2008,'religion','Anti-Other Religion',191,212,222,90),(2008,'religion','Anti-Multiple Religions, Group',65,67,70,33),(2008,'religion','Anti-Atheism/Agnosticism/etc.',14,14,14,2),(2008,'sexual','Anti-Male Homosexual',776,948,981,921),(2008,'sexual','Anti-Female Homosexual',154,194,198,156),(2008,'sexual','Anti-Homosexual',307,415,466,336),(2008,'sexual','Anti-Heterosexual',33,33,34,25),(2008,'sexual','Anti-Bisexual',27,27,27,22),(2008,'ethnicity','Anti-Hispanic',561,735,792,711),(2008,'ethnicity','Anti-Other Ethnicity/National Origin',333,413,434,323),(2008,'disability_total','Disability',78,85,85,72),(2008,'disability','Anti-Physical',22,28,28,26),(2008,'disability','Anti-Mental',56,57,57,46),(2008,'multi_total','Multiple-Bias Incidents',3,8,8,6);
/*!40000 ALTER TABLE `hate_2008` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hate_2009`
--

DROP TABLE IF EXISTS `hate_2009`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hate_2009` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_2009`
--

LOCK TABLES `hate_2009` WRITE;
/*!40000 ALTER TABLE `hate_2009` DISABLE KEYS */;
INSERT INTO `hate_2009` (`yr_reported`, `Bias`, `Bias_motivation`, `Incidents`, `Offenses`, `Victims`, `Known_offenders`) VALUES (2009,'race','Anti-White',545,652,668,753),(2009,'race','Anti-American Indian/Alaskan Native',65,84,87,88),(2009,'race','Anti-Asian/Pacific Islander',126,147,149,108),(2009,'race','Anti-Multiple Races, Group',179,209,251,132),(2009,'religion','Anti-Catholic',51,55,59,25),(2009,'religion','Anti-Protestant',38,40,42,17),(2009,'religion','Anti-Islamic',107,128,132,95),(2009,'religion','Anti-Other Religion',109,119,131,51),(2009,'religion','Anti-Multiple Religions, Group',57,60,68,38),(2009,'religion','Anti-Atheism/Agnosticism/etc.',10,10,11,7),(2009,'sexual','Anti-Male Homosexual',682,798,817,817),(2009,'sexual','Anti-Female Homosexual',185,216,227,197),(2009,'sexual','Anti-Homosexual',312,376,391,349),(2009,'sexual','Anti-Heterosexual',21,21,21,14),(2009,'sexual','Anti-Bisexual',23,25,26,17),(2009,'ethnicity','Anti-Hispanic',483,654,692,649),(2009,'ethnicity','Anti-Other Ethnicity/National Origin',294,396,417,285),(2009,'disability_total','Disability',96,97,99,64),(2009,'disability','Anti-Physical',25,25,25,25),(2009,'disability','Anti-Mental',71,72,74,39),(2009,'multi_total','Multiple-Bias Incidents',6,14,14,6);
/*!40000 ALTER TABLE `hate_2009` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hate_2010`
--

DROP TABLE IF EXISTS `hate_2010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hate_2010` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_2010`
--

LOCK TABLES `hate_2010` WRITE;
/*!40000 ALTER TABLE `hate_2010` DISABLE KEYS */;
INSERT INTO `hate_2010` (`yr_reported`, `Bias`, `Bias_motivation`, `Incidents`, `Offenses`, `Victims`, `Known_offenders`) VALUES (2010,'race','Anti-White',575,679,697,649),(2010,'race','Anti-American Indian/Alaskan Native',44,45,47,43),(2010,'race','Anti-Asian/Pacific Islander',150,190,203,156),(2010,'race','Anti-Multiple Races, Group',165,211,237,112),(2010,'religion','Anti-Catholic',58,61,65,22),(2010,'religion','Anti-Protestant',41,46,47,6),(2010,'religion','Anti-Islamic',160,186,197,125),(2010,'religion','Anti-Other Religion',123,134,141,72),(2010,'religion','Anti-Multiple Religions, Group',48,53,55,30),(2010,'religion','Anti-Atheism/Agnosticism/etc.',5,7,7,5),(2010,'sexual','Anti-Male Homosexual',739,851,876,904),(2010,'sexual','Anti-Female Homosexual',144,167,181,152),(2010,'sexual','Anti-Homosexual',347,403,420,412),(2010,'sexual','Anti-Heterosexual',21,21,22,21),(2010,'sexual','Anti-Bisexual',26,28,29,27),(2010,'ethnicity','Anti-Hispanic',534,681,747,593),(2010,'ethnicity','Anti-Other Ethnicity/National Origin',313,359,375,294),(2010,'disability_total','Disability:',43,46,48,58),(2010,'disability','Anti-Physical',19,22,24,28),(2010,'disability','Anti-Mental',24,24,24,30),(2010,'multi_total','Multiple-Bias Incidents3',4,9,9,7);
/*!40000 ALTER TABLE `hate_2010` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hate_2011`
--

DROP TABLE IF EXISTS `hate_2011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hate_2011` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_2011`
--

LOCK TABLES `hate_2011` WRITE;
/*!40000 ALTER TABLE `hate_2011` DISABLE KEYS */;
INSERT INTO `hate_2011` (`yr_reported`, `Bias`, `Bias_motivation`, `Incidents`, `Offenses`, `Victims`, `Known_offenders`) VALUES (2011,'Total','Total',6222,7254,7713,5731),(2011,'single_bias_total','Single-Bias Incidents',6216,7240,7697,5724),(2011,'race_total','Race',2917,3465,3645,2787),(2011,'race','Anti-White',504,577,593,594),(2011,'race','Anti-Black',2076,2494,2619,1935),(2011,'race','Anti-American Indian/Alaskan Native',61,67,70,60),(2011,'race','Anti-Asian/Pacific Islander',138,165,175,120),(2011,'race','Anti-Multiple Races, Group',138,162,188,78),(2011,'religion_total','Religion',1233,1318,1480,590),(2011,'religion','Anti-Jewish',771,820,936,287),(2011,'religion','Anti-Catholic',67,68,84,21),(2011,'religion','Anti-Protestant',44,49,51,32),(2011,'religion','Anti-Islamic',157,175,185,138),(2011,'religion','Anti-Other Religion',130,139,155,74),(2011,'religion','Anti-Multiple Religions, Group',60,63,65,37),(2011,'religion','Anti-Atheism/Agnosticism/etc.',4,4,4,1),(2011,'sexual_total','Sexual Orientation',1293,1508,1572,1511),(2011,'sexual','Anti-Male Homosexual',760,871,891,978),(2011,'sexual','Anti-Female Homosexual',137,168,174,123),(2011,'sexual','Anti-Homosexual',359,429,465,362),(2011,'sexual','Anti-Heterosexual',16,17,19,19),(2011,'sexual','Anti-Bisexual',21,23,23,29),(2011,'ethnicity_total','Ethnicity/National Origin',720,891,939,749),(2011,'ethnicity','Anti-Hispanic',405,506,534,452),(2011,'ethnicity','Anti-Other Ethnicity/National Origin',315,385,405,297),(2011,'disability_total','Disability',53,58,61,87),(2011,'disability','Anti-Physical',19,23,26,29),(2011,'disability','Anti-Mental',34,35,35,58),(2011,'multi_total','Multiple-Bias Incidents',6,14,16,7);
/*!40000 ALTER TABLE `hate_2011` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hate_2012`
--

DROP TABLE IF EXISTS `hate_2012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hate_2012` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_2012`
--

LOCK TABLES `hate_2012` WRITE;
/*!40000 ALTER TABLE `hate_2012` DISABLE KEYS */;
INSERT INTO `hate_2012` (`yr_reported`, `Bias`, `Bias_motivation`, `Incidents`, `Offenses`, `Victims`, `Known_offenders`) VALUES (2012,'Total','Total',5796,6718,7164,5331),(2012,'single_bias_total','Single-Bias Incidents',5790,6705,7151,5322),(2012,'race_total','Race',2797,3297,3467,2822),(2012,'race','Anti-White',657,739,763,756),(2012,'race','Anti-Black',1805,2180,2295,1771),(2012,'race','Anti-American Indian/Alaskan Native',101,109,115,92),(2012,'race','Anti-Asian/Pacific Islander',121,134,143,119),(2012,'race','Anti-Multiple Races, Group',113,135,151,84),(2012,'religion_total','Religion',1099,1166,1340,484),(2012,'religion','Anti-Jewish',674,696,836,232),(2012,'religion','Anti-Catholic',70,79,86,27),(2012,'religion','Anti-Protestant',33,34,35,24),(2012,'religion','Anti-Islamic',130,149,155,110),(2012,'religion','Anti-Other Religion',92,107,115,36),(2012,'religion','Anti-Multiple Religions, Group',88,89,101,44),(2012,'religion','Anti-Atheism/Agnosticism/etc.',12,12,12,11),(2012,'sexual_total','Sexual Orientation',1135,1318,1376,1281),(2012,'sexual','Anti-Male Homosexual',605,720,741,754),(2012,'sexual','Anti-Female Homosexual',146,162,175,116),(2012,'sexual','Anti-Homosexual',321,369,393,358),(2012,'sexual','Anti-Heterosexual',24,26,26,20),(2012,'sexual','Anti-Bisexual',39,41,41,33),(2012,'ethnicity_total','Ethnicity/National Origin',667,822,866,639),(2012,'ethnicity','Anti-Hispanic',384,488,514,393),(2012,'ethnicity','Anti-Other Ethnicity/National Origin',283,334,352,246),(2012,'disability_total','Disability',92,102,102,96),(2012,'disability','Anti-Physical',18,20,20,16),(2012,'disability','Anti-Mental',74,82,82,80),(2012,'multi_total','Multiple-Bias Incidents',6,13,13,9);
/*!40000 ALTER TABLE `hate_2012` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hate_2013`
--

DROP TABLE IF EXISTS `hate_2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hate_2013` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_2013`
--

LOCK TABLES `hate_2013` WRITE;
/*!40000 ALTER TABLE `hate_2013` DISABLE KEYS */;
INSERT INTO `hate_2013` (`yr_reported`, `Bias`, `Bias_motivation`, `Incidents`, `Offenses`, `Victims`, `Known_offenders`) VALUES (2013,'Total','Total',5928,6933,7242,5814),(2013,'single_bias_total','Single-Bias Incidents',5922,6921,7230,5808),(2013,'race_total','Race',2871,3407,3563,2733),(2013,'race','Anti-White',653,728,754,680),(2013,'race','Anti-Black or African American',1856,2263,2371,1747),(2013,'race','Anti-American Indian or Alaska Native',129,146,159,108),(2013,'race','Anti-Asian',135,158,164,130),(2013,'race','Anti-Native Hawaiian or Other Pacific Islander',3,3,3,7),(2013,'race','Anti-Multiple Races, Group',95,109,112,61),(2013,'religion_total','Religion',1031,1163,1223,682),(2013,'religion','Anti-Jewish',625,689,737,393),(2013,'religion','Anti-Catholic',70,74,75,72),(2013,'religion','Anti-Protestant',35,42,47,17),(2013,'religion','Anti-Islamic (Muslim)',135,165,167,127),(2013,'religion','Anti-Other Religion',117,135,137,44),(2013,'religion','Anti-Multiple Religions, Group',42,51,53,25),(2013,'religion','Anti-Atheism/Agnosticism/etc.',7,7,7,4),(2013,'sexual_total','Sexual Orientation',1233,1402,1461,1514),(2013,'sexual','Anti-Gay (Male)',750,849,890,975),(2013,'sexual','Anti-Lesbian',160,185,191,174),(2013,'sexual','Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)',277,317,329,324),(2013,'sexual','Anti-Heterosexual',21,24,24,20),(2013,'sexual','Anti-Bisexual',25,27,27,21),(2013,'ethnicity_total','Ethnicity',655,794,821,743),(2013,'ethnicity','Anti-Hispanic or Latino',331,418,432,418),(2013,'ethnicity','Anti-Not Hispanic or Latino',324,376,389,325),(2013,'disability_total','Disability',83,92,99,77),(2013,'disability','Anti-Physical',22,23,24,23),(2013,'disability','Anti-Mental',61,69,75,54),(2013,'gender_total','Gender',18,30,30,20),(2013,'gender','Anti-Male',5,5,5,7),(2013,'gender','Anti-Female',13,25,25,13),(2013,'genderID_total','Gender Identity',31,33,33,39),(2013,'genderID','Anti-Transgender',23,25,25,30),(2013,'genderID','Anti-Gender Non-Conforming',8,8,8,9),(2013,'multi_total','Multiple-Bias Incidents',6,12,12,6);
/*!40000 ALTER TABLE `hate_2013` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hate_2014`
--

DROP TABLE IF EXISTS `hate_2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hate_2014` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_2014`
--

LOCK TABLES `hate_2014` WRITE;
/*!40000 ALTER TABLE `hate_2014` DISABLE KEYS */;
INSERT INTO `hate_2014` (`yr_reported`, `Bias`, `Bias_motivation`, `Incidents`, `Offenses`, `Victims`, `Known_offenders`) VALUES (2014,'Total','Total',5479,6418,6727,5192),(2014,'single_bias_total','Single-Bias Incidents',5462,6385,6681,5176),(2014,'race_total','Race',2568,3081,3227,2431),(2014,'race','Anti-White',593,701,734,635),(2014,'race','Anti-Black or African American',1621,1955,2022,1442),(2014,'race','Anti-American Indian or Alaska Native',130,142,148,108),(2014,'race','Anti-Asian',140,168,201,187),(2014,'race','Anti-Native Hawaiian or Other Pacific Islander',3,4,4,3),(2014,'race','Anti-Multiple Races, Group',81,111,118,56),(2014,'religion_total','Religion',1014,1092,1140,687),(2014,'religion','Anti-Jewish',609,635,648,380),(2014,'religion','Anti-Catholic',64,67,70,35),(2014,'religion','Anti-Protestant',25,28,28,12),(2014,'religion','Anti-Islamic (Muslim)',154,178,184,148),(2014,'religion','Anti-Other Religion',107,120,125,70),(2014,'religion','Anti-Multiple Religions, Group',44,51,71,29),(2014,'religion','Anti-Atheism/Agnosticism/etc.',11,13,14,13),(2014,'sexual_total','Sexual Orientation',1017,1178,1248,1154),(2014,'sexual','Anti-Gay (Male)',599,683,703,732),(2014,'sexual','Anti-Lesbian',129,168,174,126),(2014,'sexual','Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)',241,278,305,249),(2014,'sexual','Anti-Heterosexual',18,18,19,10),(2014,'sexual','Anti-Bisexual',30,31,47,37),(2014,'ethnicity_total','Ethnicity',648,790,821,668),(2014,'ethnicity','Anti-Hispanic or Latino',299,376,389,325),(2014,'ethnicity','Anti-Not Hispanic or Latino3',349,414,432,343),(2014,'disability_total','Disability',84,95,96,74),(2014,'disability','Anti-Physical',23,26,26,25),(2014,'disability','Anti-Mental',61,69,70,49),(2014,'gender_total','Gender',33,40,40,25),(2014,'gender','Anti-Male',10,12,12,10),(2014,'gender','Anti-Female',23,28,28,15),(2014,'multi_total','Gender Identity',98,109,109,137),(2014,'multi_total','Anti-Transgender',58,69,69,104),(2014,'multi_total','Anti-Gender Non-Conforming',40,40,40,33),(2014,'multi_total','Multiple-Bias Incidents',17,33,46,16);
/*!40000 ALTER TABLE `hate_2014` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hate_2015`
--

DROP TABLE IF EXISTS `hate_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hate_2015` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_2015`
--

LOCK TABLES `hate_2015` WRITE;
/*!40000 ALTER TABLE `hate_2015` DISABLE KEYS */;
INSERT INTO `hate_2015` (`yr_reported`, `Bias`, `Bias_motivation`, `Incidents`, `Offenses`, `Victims`, `Known_offenders`) VALUES (2015,'Total','Total',5850,6885,7173,5493),(2015,'single_bias_total','Single-Bias Incidents',5818,6837,7121,5475),(2015,'race_total','Race/Ethnicity/Ancestry',3310,4029,4216,3196),(2015,'race','Anti-White',613,734,789,681),(2015,'race','Anti-Black or African American',1745,2125,2201,1605),(2015,'race','Anti-American Indian or Alaska Native',131,137,141,113),(2015,'race','Anti-Asian',111,132,136,108),(2015,'race','Anti-Native Hawaiian or Other Pacific Islander',4,6,6,3),(2015,'race','Anti-Multiple Races, Group',113,138,160,83),(2015,'race','Anti-Arab',37,47,48,35),(2015,'race','Anti-Hispanic or Latino',299,379,392,325),(2015,'race','Anti-Other Race/Ethnicity/Ancestry',257,331,343,243),(2015,'religion_total','Religion',1244,1354,1402,809),(2015,'religion','Anti-Jewish',664,695,731,387),(2015,'religion','Anti-Catholic',53,59,60,29),(2015,'religion','Anti-Protestant',37,47,48,18),(2015,'religion','Anti-Islamic (Muslim)',257,301,307,228),(2015,'religion','Anti-Other Religion',96,104,107,53),(2015,'religion','Anti-Multiple Religions, Group',51,57,58,30),(2015,'religion','Anti-Mormon',8,8,8,6),(2015,'religion','Anti-Jehovah\'s Witness',1,1,1,0),(2015,'religion','Anti-Eastern Orthodox (Russian, Greek, Other)',48,50,50,36),(2015,'religion','Anti-Other Christian',15,18,18,15),(2015,'religion','Anti-Buddhist',1,1,1,1),(2015,'religion','Anti-Hindu',5,5,5,2),(2015,'religion','Anti-Sikh',6,6,6,4),(2015,'religion','Anti-Atheism/Agnosticism/etc.',2,2,2,0),(2015,'sexual_total','Sexual Orientation',1053,1219,1263,1221),(2015,'sexual','Anti-Gay (Male)',664,758,786,803),(2015,'sexual','Anti-Lesbian',136,168,170,142),(2015,'sexual','Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)',203,235,248,218),(2015,'sexual','Anti-Heterosexual',19,23,24,19),(2015,'sexual','Anti-Bisexual',31,35,35,39),(2015,'disability_total','Disability',74,88,88,73),(2015,'disability','Anti-Physical',43,52,52,40),(2015,'disability','Anti-Mental',31,36,36,33),(2015,'gender_total','Gender',23,29,30,19),(2015,'gender','Anti-Male',7,8,8,6),(2015,'gender','Anti-Female',16,21,22,13),(2015,'genderID_total','Gender Identity',114,118,122,157),(2015,'genderID','Anti-Transgender',73,75,76,114),(2015,'genderID','Anti-Gender Non-Conforming',41,43,46,43),(2015,'multi_total','Multiple-Bias Incidents',32,48,52,18);
/*!40000 ALTER TABLE `hate_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hate_2016`
--

DROP TABLE IF EXISTS `hate_2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hate_2016` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_2016`
--

LOCK TABLES `hate_2016` WRITE;
/*!40000 ALTER TABLE `hate_2016` DISABLE KEYS */;
INSERT INTO `hate_2016` (`yr_reported`, `Bias`, `Bias_motivation`, `Incidents`, `Offenses`, `Victims`, `Known_offenders`) VALUES (2016,'Total','Total',6121,7321,7615,5770),(2016,'single_bias_total','Single-Bias Incidents',6063,7227,7509,5727),(2016,'race_total','Race/Ethnicity/Ancestry',3489,4229,4426,3383),(2016,'race','Anti-White',720,876,909,831),(2016,'race','Anti-Black or African American',1739,2122,2220,1588),(2016,'race','Anti-American Indian or Alaska Native',154,161,169,118),(2016,'race','Anti-Asian',113,131,137,123),(2016,'race','Anti-Native Hawaiian or Other Pacific Islander',9,9,9,8),(2016,'race','Anti-Multiple Races, Group',136,178,190,104),(2016,'race','Anti-Arab',51,56,57,60),(2016,'race','Anti-Hispanic or Latino',344,449,483,380),(2016,'race','Anti-Other Race/Ethnicity/Ancestry',223,247,252,171),(2016,'religion_total','Religion',1273,1538,1584,859),(2016,'religion','Anti-Jewish',684,834,862,421),(2016,'religion','Anti-Catholic',62,63,65,45),(2016,'religion','Anti-Protestant',15,20,22,12),(2016,'religion','Anti-Islamic (Muslim)',307,381,388,243),(2016,'religion','Anti-Other Religion',74,90,91,53),(2016,'religion','Anti-Multiple Religions, Group',34,48,48,20),(2016,'religion','Anti-Mormon',7,8,8,3),(2016,'religion','Anti-Jehovah\'s Witness',2,3,3,1),(2016,'religion','Anti-Eastern Orthodox (Russian, Greek, Other)',28,28,30,23),(2016,'religion','Anti-Other Christian',36,37,39,13),(2016,'religion','Anti-Buddhist',1,1,1,0),(2016,'religion','Anti-Hindu',10,12,12,11),(2016,'religion','Anti-Sikh',7,7,8,10),(2016,'religion','Anti-Atheism/Agnosticism/etc.',6,6,7,4),(2016,'sexual_total','Sexual Orientation',1076,1218,1255,1225),(2016,'sexual','Anti-Gay (Male)',675,765,787,806),(2016,'sexual','Anti-Lesbian',124,141,147,127),(2016,'sexual','Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)',234,262,271,254),(2016,'sexual','Anti-Heterosexual',20,23,23,13),(2016,'sexual','Anti-Bisexual',23,27,27,25),(2016,'disability_total','Disability',70,76,77,67),(2016,'disability','Anti-Physical',26,29,30,29),(2016,'disability','Anti-Mental',44,47,47,38),(2016,'gender_total','Gender',31,36,36,28),(2016,'gender','Anti-Male',7,10,10,7),(2016,'gender','Anti-Female',24,26,26,21),(2016,'genderID_total','Gender Identity',124,130,131,165),(2016,'genderID','Anti-Transgender',105,111,111,149),(2016,'genderID','Anti-Gender Non-Conforming',19,19,20,16),(2016,'multi_total','Multiple-Bias Incidents',58,94,106,43);
/*!40000 ALTER TABLE `hate_2016` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hate_all_years`
--

DROP TABLE IF EXISTS `hate_all_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hate_all_years` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_all_years`
--

LOCK TABLES `hate_all_years` WRITE;
/*!40000 ALTER TABLE `hate_all_years` DISABLE KEYS */;
INSERT INTO `hate_all_years` (`yr_reported`, `Bias`, `Bias_motivation`, `Incidents`, `Offenses`, `Victims`, `Known_offenders`) VALUES (2011,'race','Anti-White',504,577,593,594),(2011,'race','Anti-Black',2076,2494,2619,1935),(2011,'race','Anti-American Indian/Alaskan Native',61,67,70,60),(2011,'race','Anti-Asian/Pacific Islander',138,165,175,120),(2011,'race','Anti-Multiple Races, Group',138,162,188,78),(2011,'religion','Anti-Jewish',771,820,936,287),(2011,'religion','Anti-Catholic',67,68,84,21),(2011,'religion','Anti-Protestant',44,49,51,32),(2011,'religion','Anti-Islamic',157,175,185,138),(2011,'religion','Anti-Other Religion',130,139,155,74),(2011,'religion','Anti-Multiple Religions, Group',60,63,65,37),(2011,'religion','Anti-Atheism/Agnosticism/etc.',4,4,4,1),(2011,'sexual','Anti-Male Homosexual',760,871,891,978),(2011,'sexual','Anti-Female Homosexual',137,168,174,123),(2011,'sexual','Anti-Homosexual',359,429,465,362),(2011,'sexual','Anti-Heterosexual',16,17,19,19),(2011,'sexual','Anti-Bisexual',21,23,23,29),(2011,'ethnicity','Anti-Hispanic',405,506,534,452),(2011,'ethnicity','Anti-Other Ethnicity/National Origin',315,385,405,297),(2011,'disability','Anti-Physical',19,23,26,29),(2011,'disability','Anti-Mental',34,35,35,58),(2012,'race','Anti-White',657,739,763,756),(2012,'race','Anti-Black',1805,2180,2295,1771),(2012,'race','Anti-American Indian/Alaskan Native',101,109,115,92),(2012,'race','Anti-Asian/Pacific Islander',121,134,143,119),(2012,'race','Anti-Multiple Races, Group',113,135,151,84),(2012,'religion','Anti-Jewish',674,696,836,232),(2012,'religion','Anti-Catholic',70,79,86,27),(2012,'religion','Anti-Protestant',33,34,35,24),(2012,'religion','Anti-Islamic',130,149,155,110),(2012,'religion','Anti-Other Religion',92,107,115,36),(2012,'religion','Anti-Multiple Religions, Group',88,89,101,44),(2012,'religion','Anti-Atheism/Agnosticism/etc.',12,12,12,11),(2012,'sexual','Anti-Male Homosexual',605,720,741,754),(2012,'sexual','Anti-Female Homosexual',146,162,175,116),(2012,'sexual','Anti-Homosexual',321,369,393,358),(2012,'sexual','Anti-Heterosexual',24,26,26,20),(2012,'sexual','Anti-Bisexual',39,41,41,33),(2012,'ethnicity','Anti-Hispanic',384,488,514,393),(2012,'ethnicity','Anti-Other Ethnicity/National Origin',283,334,352,246),(2012,'disability','Anti-Physical',18,20,20,16),(2012,'disability','Anti-Mental',74,82,82,80),(2013,'race','Anti-White',653,728,754,680),(2013,'race','Anti-Black or African American',1856,2263,2371,1747),(2013,'race','Anti-American Indian or Alaska Native',129,146,159,108),(2013,'race','Anti-Asian',135,158,164,130),(2013,'race','Anti-Native Hawaiian or Other Pacific Islander',3,3,3,7),(2013,'race','Anti-Multiple Races, Group',95,109,112,61),(2013,'religion','Anti-Jewish',625,689,737,393),(2013,'religion','Anti-Catholic',70,74,75,72),(2013,'religion','Anti-Protestant',35,42,47,17),(2013,'religion','Anti-Islamic (Muslim)',135,165,167,127),(2013,'religion','Anti-Other Religion',117,135,137,44),(2013,'religion','Anti-Multiple Religions, Group',42,51,53,25),(2013,'religion','Anti-Atheism/Agnosticism/etc.',7,7,7,4),(2013,'sexual','Anti-Gay (Male)',750,849,890,975),(2013,'sexual','Anti-Lesbian',160,185,191,174),(2013,'sexual','Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)',277,317,329,324),(2013,'sexual','Anti-Heterosexual',21,24,24,20),(2013,'sexual','Anti-Bisexual',25,27,27,21),(2013,'ethnicity','Anti-Hispanic or Latino',331,418,432,418),(2013,'ethnicity','Anti-Not Hispanic or Latino',324,376,389,325),(2013,'disability','Anti-Physical',22,23,24,23),(2013,'disability','Anti-Mental',61,69,75,54),(2013,'gender','Anti-Male',5,5,5,7),(2013,'gender','Anti-Female',13,25,25,13),(2013,'genderID','Anti-Transgender',23,25,25,30),(2013,'genderID','Anti-Gender Non-Conforming',8,8,8,9),(2014,'race','Anti-White',593,701,734,635),(2014,'race','Anti-Black or African American',1621,1955,2022,1442),(2014,'race','Anti-American Indian or Alaska Native',130,142,148,108),(2014,'race','Anti-Asian',140,168,201,187),(2014,'race','Anti-Native Hawaiian or Other Pacific Islander',3,4,4,3),(2014,'race','Anti-Multiple Races, Group',81,111,118,56),(2014,'religion','Anti-Jewish',609,635,648,380),(2014,'religion','Anti-Catholic',64,67,70,35),(2014,'religion','Anti-Protestant',25,28,28,12),(2014,'religion','Anti-Islamic (Muslim)',154,178,184,148),(2014,'religion','Anti-Other Religion',107,120,125,70),(2014,'religion','Anti-Multiple Religions, Group',44,51,71,29),(2014,'religion','Anti-Atheism/Agnosticism/etc.',11,13,14,13),(2014,'sexual','Anti-Gay (Male)',599,683,703,732),(2014,'sexual','Anti-Lesbian',129,168,174,126),(2014,'sexual','Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)',241,278,305,249),(2014,'sexual','Anti-Heterosexual',18,18,19,10),(2014,'sexual','Anti-Bisexual',30,31,47,37),(2014,'ethnicity','Anti-Hispanic or Latino',299,376,389,325),(2014,'ethnicity','Anti-Not Hispanic or Latino3',349,414,432,343),(2014,'disability','Anti-Physical',23,26,26,25),(2014,'disability','Anti-Mental',61,69,70,49),(2014,'gender','Anti-Male',10,12,12,10),(2014,'gender','Anti-Female',23,28,28,15),(2015,'race','Anti-White',613,734,789,681),(2015,'race','Anti-Black or African American',1745,2125,2201,1605),(2015,'race','Anti-American Indian or Alaska Native',131,137,141,113),(2015,'race','Anti-Asian',111,132,136,108),(2015,'race','Anti-Native Hawaiian or Other Pacific Islander',4,6,6,3),(2015,'race','Anti-Multiple Races, Group',113,138,160,83),(2015,'race','Anti-Arab',37,47,48,35),(2015,'race','Anti-Hispanic or Latino',299,379,392,325),(2015,'race','Anti-Other Race/Ethnicity/Ancestry',257,331,343,243),(2015,'religion','Anti-Jewish',664,695,731,387),(2015,'religion','Anti-Catholic',53,59,60,29),(2015,'religion','Anti-Protestant',37,47,48,18),(2015,'religion','Anti-Islamic (Muslim)',257,301,307,228),(2015,'religion','Anti-Other Religion',96,104,107,53),(2015,'religion','Anti-Multiple Religions, Group',51,57,58,30),(2015,'religion','Anti-Mormon',8,8,8,6),(2015,'religion','Anti-Jehovah\'s Witness',1,1,1,0),(2015,'religion','Anti-Eastern Orthodox (Russian, Greek, Other)',48,50,50,36),(2015,'religion','Anti-Other Christian',15,18,18,15),(2015,'religion','Anti-Buddhist',1,1,1,1),(2015,'religion','Anti-Hindu',5,5,5,2),(2015,'religion','Anti-Sikh',6,6,6,4),(2015,'religion','Anti-Atheism/Agnosticism/etc.',2,2,2,0),(2015,'sexual','Anti-Gay (Male)',664,758,786,803),(2015,'sexual','Anti-Lesbian',136,168,170,142),(2015,'sexual','Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)',203,235,248,218),(2015,'sexual','Anti-Heterosexual',19,23,24,19),(2015,'sexual','Anti-Bisexual',31,35,35,39),(2015,'disability','Anti-Physical',43,52,52,40),(2015,'disability','Anti-Mental',31,36,36,33),(2015,'gender','Anti-Male',7,8,8,6),(2015,'gender','Anti-Female',16,21,22,13),(2015,'genderID','Anti-Transgender',73,75,76,114),(2015,'genderID','Anti-Gender Non-Conforming',41,43,46,43),(2016,'race','Anti-White',720,876,909,831),(2016,'race','Anti-Black or African American',1739,2122,2220,1588),(2016,'race','Anti-American Indian or Alaska Native',154,161,169,118),(2016,'race','Anti-Asian',113,131,137,123),(2016,'race','Anti-Native Hawaiian or Other Pacific Islander',9,9,9,8),(2016,'race','Anti-Multiple Races, Group',136,178,190,104),(2016,'race','Anti-Arab',51,56,57,60),(2016,'race','Anti-Hispanic or Latino',344,449,483,380),(2016,'race','Anti-Other Race/Ethnicity/Ancestry',223,247,252,171),(2016,'religion','Anti-Jewish',684,834,862,421),(2016,'religion','Anti-Catholic',62,63,65,45),(2016,'religion','Anti-Protestant',15,20,22,12),(2016,'religion','Anti-Islamic (Muslim)',307,381,388,243),(2016,'religion','Anti-Other Religion',74,90,91,53),(2016,'religion','Anti-Multiple Religions, Group',34,48,48,20),(2016,'religion','Anti-Mormon',7,8,8,3),(2016,'religion','Anti-Jehovah\'s Witness',2,3,3,1),(2016,'religion','Anti-Eastern Orthodox (Russian, Greek, Other)',28,28,30,23),(2016,'religion','Anti-Other Christian',36,37,39,13),(2016,'religion','Anti-Buddhist',1,1,1,0),(2016,'religion','Anti-Hindu',10,12,12,11),(2016,'religion','Anti-Sikh',7,7,8,10),(2016,'religion','Anti-Atheism/Agnosticism/etc.',6,6,7,4),(2016,'sexual','Anti-Gay (Male)',675,765,787,806),(2016,'sexual','Anti-Lesbian',124,141,147,127),(2016,'sexual','Anti-Lesbian, Gay, Bisexual, or Transgender (Mixed Group)',234,262,271,254),(2016,'sexual','Anti-Heterosexual',20,23,23,13),(2016,'sexual','Anti-Bisexual',23,27,27,25),(2016,'disability','Anti-Physical',26,29,30,29),(2016,'disability','Anti-Mental',44,47,47,38),(2016,'gender','Anti-Male',7,10,10,7),(2016,'gender','Anti-Female',24,26,26,21),(2016,'genderID','Anti-Transgender',105,111,111,149),(2016,'genderID','Anti-Gender Non-Conforming',19,19,20,16),(2010,'race','Anti-White',575,679,697,649),(2010,'race','Anti-American Indian/Alaskan Native',44,45,47,43),(2010,'race','Anti-Asian/Pacific Islander',150,190,203,156),(2010,'race','Anti-Multiple Races, Group',165,211,237,112),(2010,'religion','Anti-Catholic',58,61,65,22),(2010,'religion','Anti-Protestant',41,46,47,6),(2010,'religion','Anti-Islamic',160,186,197,125),(2010,'religion','Anti-Other Religion',123,134,141,72),(2010,'religion','Anti-Multiple Religions, Group',48,53,55,30),(2010,'religion','Anti-Atheism/Agnosticism/etc.',5,7,7,5),(2010,'sexual','Anti-Male Homosexual',739,851,876,904),(2010,'sexual','Anti-Female Homosexual',144,167,181,152),(2010,'sexual','Anti-Homosexual',347,403,420,412),(2010,'sexual','Anti-Heterosexual',21,21,22,21),(2010,'sexual','Anti-Bisexual',26,28,29,27),(2010,'ethnicity','Anti-Hispanic',534,681,747,593),(2010,'ethnicity','Anti-Other Ethnicity/National Origin',313,359,375,294),(2010,'disability','Anti-Physical',19,22,24,28),(2010,'disability','Anti-Mental',24,24,24,30),(2009,'race','Anti-White',545,652,668,753),(2009,'race','Anti-American Indian/Alaskan Native',65,84,87,88),(2009,'race','Anti-Asian/Pacific Islander',126,147,149,108),(2009,'race','Anti-Multiple Races, Group',179,209,251,132),(2009,'religion','Anti-Catholic',51,55,59,25),(2009,'religion','Anti-Protestant',38,40,42,17),(2009,'religion','Anti-Islamic',107,128,132,95),(2009,'religion','Anti-Other Religion',109,119,131,51),(2009,'religion','Anti-Multiple Religions, Group',57,60,68,38),(2009,'religion','Anti-Atheism/Agnosticism/etc.',10,10,11,7),(2009,'sexual','Anti-Male Homosexual',682,798,817,817),(2009,'sexual','Anti-Female Homosexual',185,216,227,197),(2009,'sexual','Anti-Homosexual',312,376,391,349),(2009,'sexual','Anti-Heterosexual',21,21,21,14),(2009,'sexual','Anti-Bisexual',23,25,26,17),(2009,'ethnicity','Anti-Hispanic',483,654,692,649),(2009,'ethnicity','Anti-Other Ethnicity/National Origin',294,396,417,285),(2009,'disability','Anti-Physical',25,25,25,25),(2009,'disability','Anti-Mental',71,72,74,39),(2008,'race','Anti-White',716,812,829,811),(2008,'race','Anti-American Indian/Alaskan Native',54,59,63,61),(2008,'race','Anti-Asian/Pacific Islander',137,162,170,140),(2008,'race','Anti-Multiple Races, Group',209,258,276,115),(2008,'religion','Anti-Catholic',75,75,89,35),(2008,'religion','Anti-Protestant',56,60,62,34),(2008,'religion','Anti-Islamic',105,123,130,85),(2008,'religion','Anti-Other Religion',191,212,222,90),(2008,'religion','Anti-Multiple Religions, Group',65,67,70,33),(2008,'religion','Anti-Atheism/Agnosticism/etc.',14,14,14,2),(2008,'sexual','Anti-Male Homosexual',776,948,981,921),(2008,'sexual','Anti-Female Homosexual',154,194,198,156),(2008,'sexual','Anti-Homosexual',307,415,466,336),(2008,'sexual','Anti-Heterosexual',33,33,34,25),(2008,'sexual','Anti-Bisexual',27,27,27,22),(2008,'ethnicity','Anti-Hispanic',561,735,792,711),(2008,'ethnicity','Anti-Other Ethnicity/National Origin',333,413,434,323),(2008,'disability','Anti-Physical',22,28,28,26),(2008,'disability','Anti-Mental',56,57,57,46);
/*!40000 ALTER TABLE `hate_all_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_yr_bias`
--

DROP TABLE IF EXISTS `t_yr_bias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_yr_bias` (
  `yr` double DEFAULT NULL,
  `tot` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_yr_bias`
--

LOCK TABLES `t_yr_bias` WRITE;
/*!40000 ALTER TABLE `t_yr_bias` DISABLE KEYS */;
INSERT INTO `t_yr_bias` (`yr`, `tot`) VALUES (2011,6216),(2012,5790),(2013,5922),(2014,5364),(2015,5818),(2016,6063),(2010,3536),(2009,3383),(2008,3891);
/*!40000 ALTER TABLE `t_yr_bias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fbi_hate_crimes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 10:29:48
