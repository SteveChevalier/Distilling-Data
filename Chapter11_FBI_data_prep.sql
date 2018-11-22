-- ------------------------------
-- FBI - SQL - data prep
-- ------------------------------
-- test each years import

-- check for duplicate rows -- the result should be 0
select idYear, State, Agency_type, Agency_subType, Agency_Name, count(*)
from persons_2012
where Total_reported = 0
group by idYear, State, Agency_type, Agency_subType, Agency_Name
having count(*) > 1;

-- all tables checked, only two duplicates rows found in just one file 2012, no action taken
select * from persons_2012
where idYear = 2012 and state = "WEST VIRGINIA" and 
	Agency_Type in ("State Police Agencies","Other Agencies") and
    Total_reported = 0
    order by Agency_type,Agency_Name;

-- clean up data ---- 
	-- first "trim" Agency_subType - DONE IN R
	update persons_2012 set Agency_subType = trim(Agency_subType);
	update persons_2012 set Agency_Name = trim(Agency_Name);
	update persons_2013 set Agency_subType = trim(Agency_subType);
	update persons_2013 set Agency_Name = trim(Agency_Name);
	update persons_2014 set Agency_subType = trim(Agency_subType);
	update persons_2014 set Agency_Name = trim(Agency_Name);
	update persons_2015 set Agency_subType = trim(Agency_subType);
	update persons_2015 set Agency_Name = trim(Agency_Name);
	update persons_2016 set Agency_subType = trim(Agency_subType);
	update persons_2016 set Agency_Name = trim(Agency_Name);
	
	-- delete rows that are Agency_subType headers, 	-- if OK (the right rows) delete them
	select * from persons_2012 where Agency_Name like '%:';
	delete from persons_2012 where Agency_Name like '%:';

	select * from persons_2013 where Agency_Name like '%:';
	delete from persons_2013 where Agency_Name like '%:';

	select * from persons_2014 where Agency_Name like '%:';
	delete from persons_2014 where Agency_Name like '%:';

	select * from persons_2015 where Agency_Name like '%:';
	delete from persons_2015 where Agency_Name like '%:';

	select * from persons_2016 where Agency_Name like '%:';
	delete from persons_2016 where Agency_Name like '%:';

	-- remove ":" from Agency_subType if needed DONE all years
	select substring(Agency_subType, 1, length(Agency_subType) - 1) 
	from persons_2016 where Agency_subType like '%:';
	
	update persons_2016 set Agency_subType = 
		substring(Agency_subType, 1, length(Agency_subType) - 1) 
		where Agency_subType like '%:';
	
-- END clean data

-- copy all years data into one table --
	-- combine all years into a single table (only run once!)
	drop table allyears_against_persons;
	create table allyears_against_persons as (select * from persons_2016);
	insert into allyears_against_persons select * from persons_2015;
	insert into allyears_against_persons select * from persons_2014;
	insert into allyears_against_persons select * from persons_2013;
	insert into allyears_against_persons select * from persons_2012;
    
	-- remove rows where none of the crimes against person are > zero
    select * from allyears_against_persons where Total_reported = 0;
    delete from allyears_against_persons where Total_reported = 0;

	-- after review, very small cities or agencies not likely to report these crimes, removed 2383 of 28012, 8.5 percent of total
    select (2383/28012) * 100;
    select count(*) from allyears_against_persons;
    select count(*) from allyears_against_persons where Total_reported = 0;
	
	-- validate all years data
    select count(*) from allyears_against_persons;	
	select idYear, count(*) from allyears_against_persons group by idYear;
	select idYear, state , count(*) from allyears_against_persons group by idYear, state;
	select * from allyears_against_persons limit 10;
