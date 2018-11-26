/* ----------------------------------
	Hate Crimes Object Create SQLs
	These create statements are for your information
	The restore creates the tables and loads the data
   --------------------------------- */
/* -----------
	Create tables to import data into from csv
    The import tool will do it but this has better control types
   ----------- */
-- change year as needed 2008 through 2016
create table `hate_2008` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* --------------   
   target table to combine all years data into one table
   -------------- */
CREATE TABLE `hate_all_years` (
  `yr_reported` double DEFAULT NULL,
  `Bias` text,
  `Bias_motivation` text,
  `Incidents` double DEFAULT NULL,
  `Offenses` double DEFAULT NULL,
  `Victims` double DEFAULT NULL,
  `Known_offenders` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
