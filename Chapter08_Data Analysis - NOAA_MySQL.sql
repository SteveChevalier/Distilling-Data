-- ----------------------------------
-- NOAA SQLs
-- ----------------------------------
-- create schema noaa;
use noaa;

-- NOW RUN THE NOAA_STORMDATA_2013_CONVERTED SQL ENTIRE FILE
	-- see instructions in book
	
-- take a look at the tables
SELECT * FROM noaa.stormdata_2013_converted;
select count(*) from noaa.stormdata_2013_converted;

-- --------------------------
-- sql examples emulating user requests
-- --------------------------
-- What episodes contained the most events, provide the event count. 
-- only include episodes with > 70 events
select EPISODE_ID,  EPISODE_NARRATIVE, count(*) as eventCount
from stormdata_2013_converted
group by EPISODE_ID, EPISODE_NARRATIVE
having count(*) > 70
order by count(*) desc;


-- episode with most deaths (direct and indirect combined)
select EPISODE_ID, episode_narrative, sum(deaths_indirect + deaths_direct) as combinedDeaths
from stormdata_2013_converted
group by EPISODE_ID
having sum(deaths_indirect + deaths_direct) > 8
order by sum(deaths_indirect + deaths_direct) DESC;

-- most expensive episodes by combined damage to crops and property
select EPISODE_ID, EPISODE_NARRATIVE, 
	sum(damage_crops_converted + damage_property_converted) as combinedDamage
from stormdata_2013_converted
group by EPISODE_ID
having sum(damage_crops_converted + damage_property_converted) > 900000
order by sum(damage_crops_converted + damage_property_converted) desc;

-- states with most events (show all states order by number of events descending)
select state, count(*) as eventCount
from stormdata_2013_converted
group by state
having count(*) > 0
order by count(*) desc;

-- count of events by type
select event_type, count(*) as eventTypeCount
from stormdata_2013_converted
group by event_type
having count(*) > 0
order by count(*) desc;

-- bonus code, demonstrate two field primary key data
-- Notice that each episodeID has many EventIDs
select EPISODE_ID, EVENT_ID, EPISODE_NARRATIVE,EVENT_NARRATIVE
from stormdata_2013_converted
where EPISODE_ID = 70464;

-- this shows just how many episodes had multiple events and how many.
select EPISODE_ID, count(*) 
from stormdata_2013_converted
group by EPISODE_ID
having count(*) > 1
order by count(*) desc;

-- --------------------------
--  OPTIONAL TECHNICAL INFORMATION ON THE CONVERSION PROCESS USED
-- parse and adjust data (mass updates)
-- --------------------------
-- parse and tweek interesting data into a new table
-- https://dev.mysql.com/doc/refman/5.7/en/date-and-time-functions.html
create table stormdata_2013_converted as (
select -- convert begin date time to y/m/d from m/d/y
	EPISODE_ID, EVENT_ID, EPISODE_NARRATIVE, EVENT_NARRATIVE, CZ_TIMEZONE timezone, 
    -- BEGIN_DATE_TIME, 
    str_to_date(BEGIN_DATE_TIME,'%m/%d/%Y %H:%i:%s') as beg_DT_ymd,
    -- convert begin date time to utc using CZ_TIMEZONE (will only work for negative times!! (-utc)
    date_add(STR_TO_DATE(BEGIN_DATE_TIME,'%m/%d/%Y %H:%i:%s'),
		INTERVAL convert((substring(CZ_TIMEZONE,length(CZ_TIMEZONE),1)),signed) HOUR) as beg_DT_utc, 
    str_to_date(END_DATE_TIME,'%m/%d/%Y %H:%i:%s') as end_DT_ymd,
    -- convert begin date time to utc using CZ_TIMEZONE (will only work for negative times!! (-utc)
    date_add(STR_TO_DATE(END_DATE_TIME,'%m/%d/%Y %H:%i:%s'),
		INTERVAL convert((substring(CZ_TIMEZONE,length(CZ_TIMEZONE),1)),signed) HOUR) as end_DT_utc, 
    -- store storm duration in hours
    datediff(str_to_date(END_DATE_TIME,'%m/%d/%Y %H:%i:%s'),
	 	str_to_date(BEGIN_DATE_TIME,'%m/%d/%Y %H:%i:%s')) as duration_in_days,
	state, event_type, `source`, 
    INJURIES_DIRECT, INJURIES_INDIRECT, DEATHS_DIRECT, DEATHS_INDIRECT, 
    -- convert damage fields from text and in thousands or millions to real numbers
    -- DAMAGE_CROPS,
    (case when 
    substring(DAMAGE_CROPS,length(DAMAGE_CROPS),1) = 'M' 
    then substring(DAMAGE_CROPS,1,length(DAMAGE_CROPS)-1)*1000000 
    else substring(DAMAGE_CROPS,1,length(DAMAGE_CROPS)-1)*1000 
    end ) as damage_crops_converted,
    
    -- DAMAGE_PROPERTY,
	(case when 
    substring(DAMAGE_PROPERTY,length(DAMAGE_PROPERTY),1) = 'M' 
    then substring(DAMAGE_PROPERTY,1,length(DAMAGE_PROPERTY)-1)*1000000 
    else substring(DAMAGE_PROPERTY,1,length(DAMAGE_PROPERTY)-1)*1000 
    end ) as damage_property_converted, 
    
    MAGNITUDE, MAGNITUDE_TYPE, FLOOD_CAUSE, CATEGORY
from stormdata_2013);

-- add some keys to speed up SQL execution
-- begin and end dates, injury, death and damage fields, magnitude fields, flood and catagory, duration 
create index event_type_idx on stormdata_2013_converted (event_type(10));
create index injuries_direct_idx on stormdata_2013_converted (INJURIES_DIRECT);
create index injuries_indirect_idx on stormdata_2013_converted (INJURIES_INDIRECT);
create index deaths_direct_idx on stormdata_2013_converted (DEATHS_DIRECT);
create index deaths_indirect_idx on stormdata_2013_converted (DEATHS_INDIRECT);
create index beg_dt_utc_idx on stormdata_2013_converted (beg_dt_utc);
create index end_dt_utc_idx on stormdata_2013_converted (end_dt_utc);
create index duration_in_days_idx on stormdata_2013_converted (duration_in_days);
create index state_idx on stormdata_2013_converted (state(10));

