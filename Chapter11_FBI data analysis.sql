/* ----------------------------------------------
   FBI Data -- 
   -------------------------------------------- */
use fbi_state_reported_crimes;
-- SET GLOBAL local_infile = true;

-- What are the totals of crimes against persons report for each of the years in the study?
select idYear as year, format(sum(Total_reported),0) as tot_reported
from allyears_against_persons
group by idYear
order by idYear;

-- overall change in population over the period?
select idYear as year, format(sum(Population),0) as Population
from allyears_against_persons
group by idYear
order by idYear;

-- What are the top 5 states with the most reported crimes against persons?
select state, format(sum(Total_reported),2) as tot_reported
from allyears_against_persons
group by state
order by sum(Total_reported) desc
limit 5;

-- What are the totals by reporting states for each year, top 5 states only?
select idYear as year, state, format(sum(Total_reported),0) as tot_reported
from allyears_against_persons
where state in (select state from v_top5states)
group by idYear, state
order by state, idYear;

-- compared to the population for these states over the same time period
-- only cities report populations
select idYear as year, state, format(sum(Population),0) as tot_Population
from allyears_against_persons
where state in (select state from v_top5states)
	and Agency_Type = "Cities" 
group by idYear, state
order by state, idYear;

-- What are the bottom 5 states (lease amount if reported crimes) against persons?
select state, format(sum(Total_reported),0) as tot_reported
from allyears_against_persons
group by state
order by tot_reported desc
limit 5;

-- smallest states 
select state, format(sum(Population),0) as tot_population
from allyears_against_persons
where Agency_Type = "Cities" and Population > 0 and Population is not NULL
group by state
order by tot_population desc
limit 5;
-- ILLINOIS seems wrong, but it's not.  
	-- Only the city of Rockport reported and this matches total from original reports

/* ----------------------------------------------
   find middle states
   --------------------------------------- */
-- middle 6 states based on crime reported

--  Step One; create table to contain the Total_reported crimes for each state
create TABLE IF NOT EXISTS t1 AS (
	select state, sum(Total_reported) as Total_reported
    FROM allyears_against_persons
    where Total_reported > 0 and Total_reported is NOT NULL
    group by state );
    
-- take look
select * from t1 limit 5;
    
-- Step 2; set a variable to the mean (use "avg" in MySQL for "mean")
set @mean_crimes = (select avg(Total_reported) from t1);
select avg(Total_reported) from t1; -- take a look

-- Step 3; use the variable to select a view states that have total reported near the mean 
		-- of all states total of reported crimes
select state, sum(Total_reported) as total_reported
from allyears_against_persons
where Total_reported > 0 and Total_reported is not NULL
group by state
-- adjust these two lines to shrink or grow the list
having sum(Total_reported) < @mean_crimes   + 35000 
	 and sum(Total_reported) > @mean_crimes - 35000
order by state;

-- Last Step: remove the temporary table
drop table t1;

/* ----------------------------------------------
   middle states (all years) based on population (only cities report populations)
   --------------------------------------- */
--  Step One; create table to contain the total population for each state
-- average population
create TABLE IF NOT EXISTS t1 AS (
	select state, avg(Population) as Population
    FROM allyears_against_persons
    where Population > 0 and Population is NOT NULL and Agency_Type = "Cities"
    group by state
    );

-- take look
select * from t1 limit 10;

-- Step 2; set a variable to the mean (use "avg" in MySQL for "mean")
set @mean_pop = (select avg(Population) from t1);
select avg(Population) from t1; -- take a look

-- Step 3; use the variable to select a view states that have populations near the mean of all states populations
select state, sum(Population) as tot_population
from allyears_against_persons
where Agency_Type = "Cities" and Population > 0 and Population is not NULL
group by state
-- adjust these two lines to shrink or grow the list
having sum(Population) < @mean_pop + 1000000
	 and sum(Population) > @mean_pop - 1000000
order by state;

-- Last Step: remove the temporary table
drop table t1;


/*	----------------------------------
	Drilling a little deeper into types of crimes
	---------------------------------- */
-- look at the "head" of the table
select * from allyears_against_persons; 
   
-- List ALL fields in the allyears_against_persons table
use information_schema;
SELECT column_name, ordinal_position, is_nullable, data_type, numeric_precision
       FROM information_schema.columns
       WHERE table_schema = 'fbi_state_reported_crimes' and
			table_name = 'allyears_against_persons'
       ORDER BY table_name, ordinal_position;
use fbi_state_reported_crimes;

/*	----------------------------------
   visualizations that show the detail trend of the crimes by type over the period
   top 5 states, all three types
   --------------------------------------- */
select * from summaryassault limit 5;
select * from summaryhomocide limit 5;
select * from summarysexualassault limit 5;

/*	----------------------------------
	a table was created combining combining the totals from the summary tables into a single view
	the create statement for the view is below, with the other create statements
   --------------------------------------- */
select * from tot_by_type;
/* 	-----------
	create summary by year and state
    Keep in mind, we are not comparing state to state as the data doesn't support that
    We are looking at changes in numbers report by the states, not all states report to the FBI
    ------------ */
select idYear, State, format(sum(totalAssault),0) as tot_assault,
		format(sum(totalHomicide),0) as tot_homicide,
        format(sum(sexOffenceTotal),0) as tot_sex_offence
from tot_by_type
group by idYear, State
order by totalAssault + totalHomicide + sexOffenceTotal desc ;

/* ----------------------------------------------
   drill down one more level (deeper = more rows!)
   --------------------------------------- */
-- Lots to look at in this data.....
-- list of unique agencies
select distinct State, Agency_Type, Agency_Name 
from allyears_against_persons;

-- Agencies with highest reported crime
select State, Agency_Type, Agency_Name, format(sum(Total_reported),0) as tot_reported,
	format(sum(Population) ,0) as tot_population
from allyears_against_persons
group by State, Agency_Type, Agency_Name
order by Total_reported desc
limit 10;




