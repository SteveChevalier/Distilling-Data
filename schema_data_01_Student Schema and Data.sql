-- ---------------------------------------------------
-- Part I - Create and Load Student Schema
-- ---------------------------------------------------
-- Create Schema (database) and set as default
CREATE DATABASE IF NOT EXISTS `student_examples`;
USE `student_examples`;

-- create student and student contact tables
DROP TABLE IF EXISTS `student`; 
CREATE TABLE `student` (
  `studentID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text,
  `sat_score` int(11) DEFAULT NULL,
  `programOfStudy` text,
  `schoolEmailAdr` text,
  `rcd_Created` datetime DEFAULT CURRENT_TIMESTAMP,
  `rcd_Updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`studentID`));
  
DROP TABLE IF EXISTS `student-contact-info`;
CREATE TABLE `student-contact-info` (
  `studentID` int(11) DEFAULT NULL,
  `studentEmailAddr` text,
  `student-phone-cell` text,
  `student-US-zipcode` int(11) DEFAULT NULL);

-- Load data
INSERT INTO `student` 
	VALUES (1,'Monique Davis',400,'Literature','Monique@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 19:33:56'),
		(2,'Teri Gutierrez',800,'Programming','Teri@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 19:33:56'),
        (3,'Spencer Pautier',1000,'Programming','Spencer@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 19:33:56'),
        (4,'Louis Ramsey',1200,'Programming','Louis@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 19:33:56'),
        (5,'Alvin Greene',1200,'Programming','Alvin@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 19:33:56'),
        (6,'Sophie Freeman',1200,'Programming','Sophie@someOtherSchool.edu','2017-08-16 15:34:50','2017-09-02 19:33:56'),
        (7,'Edgar Frank \"Ted\"\" Codd\"',2400,'Computer Science','Edgar@someOtherSchool.edu','2017-08-16 15:35:33','2017-09-02 19:33:56'),
        (8,'Donald D. Chamberlin',2400,'Computer Science','Donald@someOtherSchool.edu','2017-08-16 15:35:33','2017-09-02 19:33:56'),
        (9,'Raymond F. Boyce',2400,'Computer Science','Raymond@someOtherSchool.edu','2017-08-16 15:35:33','2017-09-02 19:33:56');

INSERT INTO `student-contact-info` 
	VALUES (1,'Monique.Davis@freeCodeCamp.org','555-555-5551',97111),
    (2,'Teri.Gutierrez@freeCodeCamp.org','555-555-5552',97112),
    (3,'Spencer.Pautier@freeCodeCamp.org','555-555-5553',97113),
    (4,'Louis.Ramsey@freeCodeCamp.org','555-555-5554',0),
    (5,'Alvin.Green@freeCodeCamp.org','555-555-5555',97115),
    (6,'Sophie.Freeman@freeCodeCamp.org','555-555-5556',97116),
    (7,'Maximo.Smith@freeCodeCamp.org','555-555-5557',97117),
    (8,'Michael.Roach@freeCodeCamp.ort','555-555-5558',97118);


-- end Part I schema create and data import