-- ------------------------------------------------------
-- Chapter 4 
-- Federal Election Commission Data analysis SQL examples
-- ------------------------------------------------------
use fec_summary_data;
-- to view the entire data set and scroll through the table
select * from candidatemasterdata;
select * from candidatesummarydata;

select count(*) from candidatemasterdata;
select count(*) from candidatesummarydata;

-- Using Order By and Limit
-- Provide a list of the 10 candidates who received the largest total contributions 
		-- across the entire file (years 2014, 2016, 2018).
Select CAND_ID, CAND_NAME, CAND_PTY_AFFILIATION as Party, TTL_RECEIPTS
from candidatesummarydata 
order by TTL_RECEIPTS desc
limit 10;

-- Using Group By and Having
/* List the total, average and number of transactions by party for the 2016 US Presidential Campaign. 
		Limit the list to total party contributions above ½ Million USD. List in descending order.
		FEC data came in files by year, combined into this file for 2014,2016,2018 */
Select CAND_PTY_AFFILIATION as Party, 
	format(sum(TTL_RECEIPTS),2), 
    format(avg(TTL_RECEIPTS),2),
    count(*) as fundsCandidateCount
from candidatesummarydata 
where political_year = 2016 
group by CAND_PTY_AFFILIATION
having sum(TTL_RECEIPTS) > 500000
order by sum(TTL_RECEIPTS) desc;

-- Using Joins
-- create a list for mailing to the top 10 fund raisers of 2016
Select md.CAND_ID, md.CAND_NAME, md.CAND_ST1, md.CAND_CITY, md.CAND_ST, md.CAND_ZIP,
	sd.CAND_PTY_AFFILIATION as party
from candidatesummarydata as sd
left join candidatemasterdata as md on sd.CAND_ID = md.CAND_ID
where sd.political_year = 2016 
order by sd.TTL_RECEIPTS desc
LIMIT 10;

-- Using SUM and Group by
-- What republicans and democrats received the Largest total contributions each year
-- Include only those cabinets receiving more than $10 million.
Select  political_year, CAND_NAME, CAND_PTY_AFFILIATION as Party, format(sum(TTL_RECEIPTS),2)
from candidatesummarydata 
where CAND_PTY_AFFILIATION in ('DEM','REP') 
	and TTL_RECEIPTS > 10000000
group by political_year, TTL_RECEIPTS
order by political_year ,TTL_RECEIPTS desc;

-- Using SUM in an Order By clause and CASE in Select
-- What were the top five states who’s candidates got the most money each year?  
Select case CAND_OFFICE_ST when '0' then 'USA' else CAND_OFFICE_ST end as 'State', 
	format(sum(TTL_RECEIPTS),2)
from candidatesummarydata 
group by CAND_OFFICE_ST
order by sum(TTL_RECEIPTS) desc, CAND_OFFICE_ST
limit 5;

-- example of the MAX and MIN aggregate example
	-- list the largest and smallest contributions, exclude records with zero amounts
Select 'Max', max(TTL_RECEIPTS) as 'MaxValue'
from candidatesummarydata 
where TTL_RECEIPTS > 0;

-- example of the MAX and MIN aggregate example
Select 'Min', min(TTL_RECEIPTS) as 'MinValue'
from candidatesummarydata 
where TTL_RECEIPTS > 0;
