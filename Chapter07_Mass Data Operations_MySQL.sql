/* --------------------------------------------
	Chapter 07 Mass Data Operations 
-----------------------------------------------*/
-- Student Examples
use student_examples;
select studentID, FullName, programOfStudy, schoolEmailAdr from student;
select studentID, typeID, `studentEmailAddr`, `student-phone-cell` from `student-contact-info`;

-- backup
	-- using create table as to backup a table
    -- put todays date here   |||| || 
    create table student_bkup_yyyy_dd_v1 as
    ( select * from student);
    select count(*), (select count(*) from student_bkup_yyyy_dd_v1) from student;
    	-- using create table as to backup a table
    create table contacttypes_bkup_yyyy_dd_v1 as
    ( select * from contacttypes);
    select count(*), (select count(*) from contacttypes_bkup_yyyy_dd_v1) from contacttypes;
    
	-- backup a schema
    -- see instructions in the book

-- Export SQL result grid to an external (outside of MySQL) file
-- sql to use for example
	select a.studentID, a.FullName, programOfStudy, typeDescription, `student-phone-cell`
	from student as a
	join `student-contact-info` as b on a.studentID = b.studentID
	join contacttypes as c on b.typeId = c.typeID;

-- restore example 
	-- remove foriegn key
	alter table `student-contact-info` drop FOREIGN KEY `student-contact-info_ibfk_1`;
	-- from create table 
	truncate `student`; -- recover from accidently executing this command
	select count(*), (select count(*) from student_bkup_yyyy_dd_v1) from student;
    
    -- put the data back in to student from our backup
	insert into student select * from student_bkup_yyyy_dd_v1;
   select count(*), (select count(*) from student_bkup_yyyy_dd_v1) from student;
   
	-- add the key back
   alter table `student-contact-info`
	ADD CONSTRAINT `student-contact-info_ibfk_1` FOREIGN KEY (`studentID`) 
		REFERENCES `student` (`studentID`);

	-- take a look at the two tables
    select * from student;
    select * from `student-contact-info`;
		
   -- restore a table from a save
   -- make these "mistakes". have to be made in this order
	alter table `student-contact-info` drop FOREIGN KEY `student-contact-info_ibfk_1`;
	drop table student;
    
    -- open backup 
    -- use the newest one you have
    
    -- check your work
    select * from student;
    
 -- insert into
	INSERT INTO student (FullName, sat_score, programOfStudy) 
	VALUES ('Wrong Record I',9999,'Political Science'),
	   ('Wrong Record II',9999,'Political Science'), 
	   ('Wrong Record III',9999,'Political Science');
	-- look at the new records
	SELECT * FROM student where FullName like '%Wrong Record%';

-- delete
    -- delete selected rows
    delete from student where FullName like '%Wrong Record%';
	select * from student;
	    
-- update
	-- TESTING the logic (this is a VERY important step!!)
	select FullName, instr(FullName," ") as firstSpacePosition, schoolEmailAdr oldEmail,
    concat(substring(FullName,1,instr(FullName," ")-1),"@differentSchool.edu") as newEmail
	from student;

	-- do the update
	UPDATE student SET schoolEmailAdr = 
		concat(substring(FullName,1,instr(FullName," ")-1),"@differentSchool.edu");
	-- see what happened
	select studentID, FullName, schoolEmailAdr from student;
