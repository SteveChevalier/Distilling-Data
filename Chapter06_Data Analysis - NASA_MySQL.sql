	-- ----------------------------------
-- NASA SQLs
-- ----------------------------------
-- create the schema and set as default ----------------
create schema nasa;
use nasa;
/* load the data as instructed in the book
   open and execute thos file
   schema_data_06_nasa.sql
*/

-- use these statements to look at the complete files and to see the number of rows.
select * from meteorite_landings;
select * from global_landslide_catalog_export;
select * from cities_log_lat;
select count(*) from meteorite_landings;
select count(*) from global_landslide_catalog_export;
select count(*) from cities_log_lat;

-- --------------------------------------------
-- meteorite reports
-- --------------------------------------------
-- find largest meteorite landings
SELECT id, name, `mass (g)`, `mass (g)` / 453.592 as massInPounds, 
       `year`, latitude, longitude 
from meteorite_landings
-- where `mass (g)` > 22000000 -- greater than '22,000,000 grams
order by `mass (g)` DESC;

-- find meteor landing near a city, 
-- use this to select a city
SELECT * from nasa.cities_log_lat where loc_Name like 'london%'
	and cont_loc like '%Europe%';
	
SELECT * from nasa.cities_log_lat where loc_Name like 'malibu%'; 

-- alter this based on the longitude and latitude from your change of the above statement
SELECT id, name, `mass (g)`, `mass (g)` / 453.592 as massInPounds, 
       `year`, latitude, longitude
FROM  meteorite_landings
WHERE latitude between 32 and 36 and -- change to a range around selected city's latitude
	  longitude between -118  and -116.772 and -- change to a range around selected city's longitude
	  `mass (g)` > 454  -- more than 1lb
order by `mass (g)` desc;

-- find cities near largest landings - use latitude and longitude from above SQL - 
	-- Hoba (largest) -19.58333, 17.9166
-- http://www.info-namibia.com/activities-and-places-of-interest/otavi/hoba-meteorite
-- '3357114', 'Grootfontein', '-19.56667', '18.11667', 'Africa/Windhoek'
-- '3352136', 'Windhoek', '-22.55941', '17.08323', 'Africa/Windhoek'
SELECT *
FROM  cities_log_lat
WHERE lat between -22.5 and -16 and -- change to a range around selected city's latitude
	  log between 17  and 19 -- change to a range around selected city's longitude
      -- and loc_Name like '%win%'
order by loc_Name;

-- --------------------------------------------
-- landslide reports
-- --------------------------------------------
-- look at data elements of interest
SELECT date, country, landslide_type, fatalities, injuries, landslide_size, 
	countryname, population, latitude, longitude, geolocation
FROM nasa.global_landslide_catalog_export
limit 20;

-- summary of types of landslides with count
select landslide_type, count(*)
from nasa.global_landslide_catalog_export
where landslide_type not in (" ", "Unknown")
group by landslide_type
order by count(*) desc
;

-- events with most fatalities
SELECT id, date, country, landslide_type, fatalities, landslide_size, 
	countryname, population, latitude, longitude
FROM nasa.global_landslide_catalog_export
where fatalities > 200
order by cast(fatalities as unsigned) desc;

