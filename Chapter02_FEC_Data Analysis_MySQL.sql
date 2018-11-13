-- ------------------------------------------------
-- Chapter 2 
-- Federal Election Commission SQL examples
-- ------------------------------------------------------
use fec_summary_data;

-- candidate master quick look (first 10 rows)
select ﻿political_year,CAND_ID, CAND_NAME, CAND_PTY_AFFILIATION,
	replace(format(CAND_ELECTION_YR,0), ',', '') as candidateElectionYr,
	-- this number is stored as a float number type, 
	-- using format and replace to display without the comma)
	CAND_ELECTION_YR, CAND_OFFICE_st
from candidatemasterdata
limit 10;

-- contribution summary table quick look
Select political_year, CAND_ID, CAND_NAME, CAND_PTY_AFFILIATION as party, 
		TTL_RECEIPTS, TTL_DISB
from candidatesummarydata 
limit 10;

-- determine total number of rows of data in SQL statement's result
select count(*) from candidatesummarydata;

-- list of parties the candidates represent
select distinct CAND_PTY_AFFILIATION as party
from candidatesummarydata
order by CAND_PTY_AFFILIATION -- default is ascending (ASC)
limit 10;

-- using Where to filter to select data 
-- contribution summary table
Select political_year, CAND_ID, CAND_NAME, CAND_PTY_AFFILIATION as Party, TTL_RECEIPTS, TTL_DISB, 
	CAND_OFFICE_ST as State, current_date as runDateTime
from candidatesummarydata 
where cand_pty_affiliation in ('REP','DEM') -- just these two parties
	and ttl_receipts between 500000 and 1000000 -- total receipts between .5M and 1M USD
	and CAND_ID like '%CA%'; -- just from California, the CAND_ID field contains the state code

