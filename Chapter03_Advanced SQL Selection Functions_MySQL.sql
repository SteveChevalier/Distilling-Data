-- -----------------------------------
-- Part IIa - Advanced Data Selection Functions_mariaDB - Advanced Data Selection Functions - SQL
-- -----------------------------------
-- set schema as default in MySQL workspace
use student_examples;

-- look at current data - student table
select studentID as ID, FullName, sat_score, programOfStudy as program,
		schoolEmailADr as email 
from student;

-- look at current data - student contact table
select studentID as ID, studentEmailAddr as email, 
	`student-phone-cell` as phone, `student-US-zipcode` as zip 
from `student-contact-info`;

-- subquery in a where clause
SELECT AVG(sat_score) FROM student;  -- test getting the average

SELECT studentID, FullName, sat_score
FROM student 
WHERE sat_score > (SELECT AVG(sat_score) from student); -- filter to above average

-- group by and having
-- sum
select programOfStudy, sum(sat_score) 
from student 
group by programOfStudy;

-- average
Select programOfStudy, avg(sat_score) 
from student 
group by programOfStudy;

-- count(*)
-- count all records
select count(*) AS studentCount from student; 

-- by program of study
select programOfStudy, count(*) as studentCount
from student
group by programOfStudy;

-- list of program of study where there are more than 5 in that program
select programOfStudy, count(*) as studentCount
from student
group by programOfStudy
having count(*) > 3;

-- MAX example
select programOfStudy, max(sat_score) as maxSat
from student;

-- MIN example
select programOfStudy, min(sat_score) as minSat
from student;
