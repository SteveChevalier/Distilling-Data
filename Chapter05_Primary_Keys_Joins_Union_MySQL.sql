/* --------------------------------------------
Part III Keys, Joins and Union
-----------------------------------------------*/
use student_examples;

-- Primary Keys --------------------------------
CREATE TABLE priKeyExample(
	rcdKey_id_a INT NOT NULL,
	rcdKeySeq_id INT NOT NULL,
	someData varchar(256) NOT null,
	PRIMARY KEY(rcdKey_id_a,rcdKeySeq_id));
    
-- example with alter table
-- first, remove the index
drop index `primary` on priKeyExample;
-- add it back
ALTER TABLE priKeyExample 
ADD CONSTRAINT newPriKey PRIMARY KEY(rcdKey_id_a,rcdKeySeq_id);

-- remove primary key example table
drop table priKeyExample;

-- child table (student contact info)
show index from `student-contact-info`;

-- Add some fields to the contact table (contact type is needed here)
-- add contact type field and usage dates
ALTER TABLE `student-contact-info`
	ADD COLUMN `typeId` int(11) not null after studentID,
	ADD COLUMN `validStart` date null after typeId,
	ADD COLUMN `validEnd` date null after validStart;
	
show index from `student-contact-info`;

-- add primary key of ID and Type
ALTER TABLE `student-contact-info`
ADD primary Key (`studentID`, `typeID`);	

-- look again
show index from `student-contact-info`;

--  Foreign Keys -----------------------------------------

-- look at student table keys
show index from `student`;

-- look at student contact table keys
show index from `student-contact-info`;

-- add foreign key
alter table `student-contact-info`
ADD CONSTRAINT `student-contact-info_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

-- just as an FYI, here is an example of how to drop this FOREIGN KEY, if you try this just add it back with the above code
	ALTER TABLE `student_examples`.`student-contact-info` 
	DROP FOREIGN KEY `student-contact-info_ibfk_1`;

-- long SQL just to show the new key
select concat(table_name, '.', column_name) as 'foreign key',  
concat(referenced_table_name, '.', referenced_column_name) as 'references'
from information_schema.key_column_usage
where referenced_table_name is not null
	and table_schema = 'student_examples' 
	and table_name = 'student-contact-info';

-- SQL showing the relationship between student and student contact tables
select a.studentID, a.FullName, a.programOfStudy,
b.`student-phone-cell`, b.`student-US-zipcode`
from student as a
join `student-contact-info` as b on a.studentID = b.studentID;

-- creating indexes for performance improvement
show index from student;

-- using create index
create index pgmkeyidx on `student`(programOfStudy(10) ASC);

-- using alter table
ALTER TABLE `student_examples`.`student` 
ADD INDEX `programKey` (`programOfStudy`(10) ASC);

show index from student;

-- add keys for the two date fields
ALTER TABLE `student-contact-info`
ADD INDEX `validstridx` (validStart),
ADD INDEX `validendidx` (validEnd),
ADD INDEX `contactType` (typeID);

show index from `student-contact-info`;

-- Joins -----------------------------------
-- left table
select a.studentID, a.FullName, sat_score, a.programOfStudy, schoolEmailAdr 
from student as a;

-- right table
select studentid, studentEmailAddr, `student-phone-cell`, `student-US-zipcode`
from `student-contact-info` as b;

-- inner join
select a.studentID, a.FullName, a.programOfStudy,
b.`student-phone-cell`, b.`student-US-zipcode`
from student as a
inner join `student-contact-info` as b on a.studentID = b.studentID;

-- left join
select a.studentID, a.FullName, a.programOfStudy,
b.`student-phone-cell`, b.`student-US-zipcode`
from student as a
left join `student-contact-info` as b on a.studentID = b.studentID;

-- union -----------------------------
-- simple example
select 'aaaaa' as 'theData'
union
select 'bbbbbbbbb';

-- student example
select StudentID, FullName as NameOrEmail
From student 
where studentID between 1 and 3
union
select studentID, studentEmailAddr 
from `student-contact-info` 
where studentID between 7 and 8;

-- extended example of indexes and foriegn keys --------------
-- three SQLs to create an additional table
-- 1) create related table to contain contract types
CREATE TABLE `contactTypes` (
	`typeID` INT(11) NOT NULL AUTO_INCREMENT,
	`typeDescription` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`typeID`)
	);
	
-- 2) insert some test data into the new table (run all three!)
insert into `contactTypes` values (1,'Home');
insert into `contactTypes` values (2,'Work');
insert into `contactTypes` values (3,'Leave');

-- 3) update contact information (run all three!)  -- IMPORT to run these or FKEY add fails
update `student-contact-info` set typeID = 1 
where studentID between 1 and 3;
update `student-contact-info` set typeID = 2 
where studentID between 4 and 5;
update `student-contact-info` set typeID = 3 
where studentID > 5;

-- look at the data update result
select * from contactTypes;
select studentID, typeID, studentEmailAddr
from `student-contact-info`
order by studentID, typeID;

-- 4) add foreign key to connect type table 
-- step 1, add key to contact info table
ALTER TABLE `student_examples`.`student-contact-info` 
ADD INDEX `typeID_fkey` (`typeId` ASC) VISIBLE;
;
-- setp two, add foreign key
alter table `contacttypes`
ADD CONSTRAINT `contacttypes` FOREIGN KEY (`typeID`) 
	REFERENCES `student-contact-info` (`typeID`);

-- sql that joins these three tables
select a.studentID, a.FullName, b.typeID, b.studentEmailAddr, b.`student-phone-cell`,
	c.typeID, c.typeDescription
from student a
join `student-contact-info` b on a.studentID = b.studentID
join contacttypes c on b.typeID = c.typeID;

-- more normal Student Contact report
select a.studentID, a.FullName, b.studentEmailAddr as email, 
	b.`student-phone-cell` as CellPhone,c.typeDescription as ContactType
from student a
join `student-contact-info` b on a.studentID = b.studentID
join contacttypes c on b.typeID = c.typeID;
