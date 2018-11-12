-- -----------------------------------
-- Chapter 1 - SQL Basics
-- -----------------------------------
-- set schema as default in MySQL workspace
use student_examples;

-- look at current data
select * from student;
select * from `student-contact-info`;

-- distinct example
select distinct sat_score From student;

-- Select example
select studentID, FullName, sat_score, 3+2 as five, 
CURRENT_TIMESTAMP as currentDate from student;
 
-- WHERE clause --------------
-- Full table listing
select * from student;

-- In operator example
select studentID, FullName, sat_score
from student
where sat_score in (1000, 1200, 2500);

-- Like operator ------------------------
-- column starts with or ends with a given string pattern
select studentID, FullName, sat_score
from student 
where FullName like 'Monique%' or -- note the % at the end but not the beginning
	  FullName like '%Greene'; -- note the % at the beginning but not the end

-- string pattern is IN the middle of the column
select studentID, FullName, sat_score
from student 
where FullName like '%ree%'; -- note the % at the beginning AND at the end

-- string is NOT in the column
select studentID, FullName, sat_score
from student 
where FullName NOT LIKE '%cer Pau%' and FullName NOT LIKE '%"Ted"%';

-- AND operator
select studentID, FullName, sat_score, programOfStudy
from student
where programOfStudy = 'Programming' AND sat_score > 900;

-- between
select studentID, FullName, sat_score
from student
where sat_score BETWEEN 1000 and 2400;

-- order by
select studentID, FullName, sat_score, programOfStudy
from student
order by programOfStudy, FullName DESC;

-- end of Part I basics