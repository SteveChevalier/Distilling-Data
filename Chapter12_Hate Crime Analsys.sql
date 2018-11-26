/* ---------------------------------------
   Hate Crime SQLs
   --------------------------------------- */
use fbi_hate_crimes;

/* ---------------------------------------
   data analysis
   --------------------------------------- */
/* -------   Data overview  ------- */
select * from hate_all_years order by Bias_motivation, yr_reported;

/* --------------   
	Questions and anwsers
   -------------- */
--   how many crimes reported by year and what percent of all crimes do they represent
-- step 1, get total for all years
set @total = (select sum(incidents) from hate_all_years);
select @total; -- take a look

-- use above in SQL for answer
select yr_reported, format(sum(incidents),0) as tot_incidents, 
	format(sum((Incidents / @total) * 100),2) as percentOfTotalInc
from hate_all_years
group by yr_reported;

/* 	--------------   
	trend by bias motivation, include percent of yearly total
	create table with the count by year needed to calculate the percent 
   -------------- */
drop table t_yr_bias;
create table t_yr_bias as (
	select yr_reported as yr, sum(incidents) as tot
    from hate_all_years group by yr_reported
    );
-- look at result    
select * from t_yr_bias;

select yr_reported, Bias, format(sum(incidents),0) as tot_inc,
	format((sum(incidents / tot) * 100),2) as percent
from hate_all_years a
join t_yr_bias on yr_reported = yr
group by yr_reported, Bias
order by yr_reported, Bias;

/* ----------------------------------
   Totals by Bias_motivation, include percent by Bias_motivation
   ---------------------------------*/
select Bias_motivation, format(sum(incidents),0) as incidents,
		format(sum((Incidents / @total) * 100),2) as percentOfTotalInc
from hate_all_years
group by Bias_motivation
order by sum((Incidents / @total) * 100) desc;

/* ---------------------------------------
   data preparation
   NOTE, this section does not need to be run!!!
   all the tables and data was restored when those steps
   where run as directed in the book
   --------------------------------------- */
-- from: https://www.fbi.gov/services/cjis/ucr/publications#Hate-Crime%20Statistics

/* --------------   
   combined data from all years (see Hate Crime Object Create.sql to create these files)
   Run for each year 2008 thru 2016. 
	Be careful to run only once for each year
   -------------- */
insert into hate_all_years ( select * from hate_2008 );
/* --------------   
   remove total rows
   -------------- */
select * 
from hate_all_years
where bias like '%total%';

delete  
from hate_all_years
where bias like '%total%';

-- take a look, row numbers should be about the same
select yr_reported, count(*) 
from hate_all_years 
group by yr_reported
order by yr_reported;

-- look at the type of the table
select * from hate_all_years limit 20; 