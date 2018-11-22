-- all years
-- 2016
CREATE TABLE `persons_2016` (
  `idYear` int(11) DEFAULT NULL,
  `State` text,
  `Agency_Type` text,
  `Agency_subType` text,
  `Agency_Name` text,
  `Population` bigint(20) DEFAULT NULL,
  `Assault_Offenses` bigint(20) DEFAULT NULL,
  `Aggravated_Assault` int(11) DEFAULT NULL,
  `Simple_Assault` int(11) DEFAULT NULL,
  `Intimidation` int(11) DEFAULT NULL,
  `Homicide_Offenses` int(11) DEFAULT NULL,
  `Murder_Nonnegligent_Manslaughter` int(11) DEFAULT NULL,
  `Negligent_Manslaughter` int(11) DEFAULT NULL,
  `Justifiable_Homicide` int(11) DEFAULT NULL,
  `Human_Trafficking_Offenses` int(11) DEFAULT NULL,
  `Commercial_Sex_Acts` int(11) DEFAULT NULL,
  `Involuntary_Servitude` int(11) DEFAULT NULL,
  `Kidnapping_Abduction` int(11) DEFAULT NULL,
  `Sex_Offenses_total` int(11) DEFAULT NULL,
  `Rape` int(11) DEFAULT NULL,
  `Sodomy` int(11) DEFAULT NULL,
  `Sexual_Assault_w_Object` int(11) DEFAULT NULL,
  `Fondling` int(11) DEFAULT NULL,
  `Sex_Offenses_Nonforcible` int(11) DEFAULT NULL,
  `Incest` int(11) DEFAULT NULL,
  `Statutory_Rape` int(11) DEFAULT NULL
);
-- 2015
CREATE TABLE `persons_2015` (
  `idYear` int(11) DEFAULT NULL,
  `State` text,
  `Agency_Type` text,
  `Agency_subType` text,
  `Agency_Name` text,
  `Population` bigint(20) DEFAULT NULL,
  `Assault_Offenses` bigint(20) DEFAULT NULL,
  `Aggravated_Assault` int(11) DEFAULT NULL,
  `Simple_Assault` int(11) DEFAULT NULL,
  `Intimidation` int(11) DEFAULT NULL,
  `Homicide_Offenses` int(11) DEFAULT NULL,
  `Murder_Nonnegligent_Manslaughter` int(11) DEFAULT NULL,
  `Negligent_Manslaughter` int(11) DEFAULT NULL,
  `Justifiable_Homicide` int(11) DEFAULT NULL,
  `Human_Trafficking_Offenses` int(11) DEFAULT NULL,
  `Commercial_Sex_Acts` int(11) DEFAULT NULL,
  `Involuntary_Servitude` int(11) DEFAULT NULL,
  `Kidnapping_Abduction` int(11) DEFAULT NULL,
  `Sex_Offenses_total` int(11) DEFAULT NULL,
  `Rape` int(11) DEFAULT NULL,
  `Sodomy` int(11) DEFAULT NULL,
  `Sexual_Assault_w_Object` int(11) DEFAULT NULL,
  `Fondling` int(11) DEFAULT NULL,
  `Sex_Offenses_Nonforcible` int(11) DEFAULT NULL,
  `Incest` int(11) DEFAULT NULL,
  `Statutory_Rape` int(11) DEFAULT NULL
) ;

-- 2014
CREATE TABLE `persons_2014` (
  `idYear` int(11) DEFAULT NULL,
  `State` text,
  `Agency_Type` text,
  `Agency_subType` text,
  `Agency_Name` text,
  `Population` bigint(20) DEFAULT NULL,
  `Assault_Offenses` bigint(20) DEFAULT NULL,
  `Aggravated_Assault` int(11) DEFAULT NULL,
  `Simple_Assault` int(11) DEFAULT NULL,
  `Intimidation` int(11) DEFAULT NULL,
  `Homicide_Offenses` int(11) DEFAULT NULL,
  `Murder_Nonnegligent_Manslaughter` int(11) DEFAULT NULL,
  `Negligent_Manslaughter` int(11) DEFAULT NULL,
  `Justifiable_Homicide` int(11) DEFAULT NULL,
  `Human_Trafficking_Offenses` int(11) DEFAULT NULL,
  `Commercial_Sex_Acts` int(11) DEFAULT NULL,
  `Involuntary_Servitude` int(11) DEFAULT NULL,
  `Kidnapping_Abduction` int(11) DEFAULT NULL,
  `Sex_Offenses_total` int(11) DEFAULT NULL,
  `Rape` int(11) DEFAULT NULL,
  `Sodomy` int(11) DEFAULT NULL,
  `Sexual_Assault_w_Object` int(11) DEFAULT NULL,
  `Fondling` int(11) DEFAULT NULL,
  `Sex_Offenses_Nonforcible` int(11) DEFAULT NULL,
  `Incest` int(11) DEFAULT NULL,
  `Statutory_Rape` int(11) DEFAULT NULL
) ;
-- 2013
CREATE TABLE `persons_2013` (
  `idYear` int(11) DEFAULT NULL,
  `State` text,
  `Agency_Type` text,
  `Agency_subType` text,
  `Agency_Name` text,
  `Population` bigint(20) DEFAULT NULL,
  `Assault_Offenses` bigint(20) DEFAULT NULL,
  `Aggravated_Assault` int(11) DEFAULT NULL,
  `Simple_Assault` int(11) DEFAULT NULL,
  `Intimidation` int(11) DEFAULT NULL,
  `Homicide_Offenses` int(11) DEFAULT NULL,
  `Murder_Nonnegligent_Manslaughter` int(11) DEFAULT NULL,
  `Negligent_Manslaughter` int(11) DEFAULT NULL,
  `Justifiable_Homicide` int(11) DEFAULT NULL,
  `Human_Trafficking_Offenses` int(11) DEFAULT NULL,
  `Commercial_Sex_Acts` int(11) DEFAULT NULL,
  `Involuntary_Servitude` int(11) DEFAULT NULL,
  `Kidnapping_Abduction` int(11) DEFAULT NULL,
  `Sex_Offenses_total` int(11) DEFAULT NULL,
  `Rape` int(11) DEFAULT NULL,
  `Sodomy` int(11) DEFAULT NULL,
  `Sexual_Assault_w_Object` int(11) DEFAULT NULL,
  `Fondling` int(11) DEFAULT NULL,
  `Sex_Offenses_Nonforcible` int(11) DEFAULT NULL,
  `Incest` int(11) DEFAULT NULL,
  `Statutory_Rape` int(11) DEFAULT NULL
) ;
-- 2012
CREATE TABLE `persons_2012` (
  `idYear` int(11) DEFAULT NULL,
  `State` text,
  `Agency_Type` text,
  `Agency_subType` text,
  `Agency_Name` text,
  `Population` bigint,
  `Assault_Offenses` bigint,
  `Aggravated_Assault` int(11) DEFAULT NULL,
  `Simple_Assault` int(11) DEFAULT NULL,
  `Intimidation` int(11) DEFAULT NULL,
  `Homicide_Offenses` int(11),
  `Murder_Nonnegligent_Manslaughter` int(11),
  `Negligent_Manslaughter` int(11),
  `Justifiable_Homicide` int(11),
  `Kidnapping_Abduction` int(11) DEFAULT NULL,
  `Sex_Offenses_total` int(11) DEFAULT NULL,
  `Rape` int(11) DEFAULT NULL,
  `Sodomy` int(11),
  `Sexual_Assault_w_Object` int(11),
  `Fondling` int(11) DEFAULT NULL,
  `Sex_Offenses_Nonforcible` int(11),
  `Incest` int(11),
  `Statutory_Rape` int(11)
) ;

select * from persons_2012;

-- 2011
CREATE TABLE `persons_2011` (
  `idYear` int(11) DEFAULT NULL,
  `State` text,
  `Agency_Type` text,
  `Agency_subType` text,
  `Agency_Name` text,
  `Population` bigint,
  `Assault_Offenses` bigint,
  `Aggravated_Assault` int(11) DEFAULT NULL,
  `Simple_Assault` int(11) DEFAULT NULL,
  `Intimidation` int(11) DEFAULT NULL,
  `Homicide_Offenses` int(11),
  `Murder_Nonnegligent_Manslaughter` int(11),
  `Negligent_Manslaughter` int(11),
  `Justifiable_Homicide` int(11),
  `Kidnapping_Abduction` int(11) DEFAULT NULL,
  `Sex_Offenses_total` int(11) DEFAULT NULL,
  `Rape` int(11) DEFAULT NULL,
  `Sodomy` int(11),
  `Sexual_Assault_w_Object` int(11),
  `Fondling` int(11) DEFAULT NULL,
  `Sex_Offenses_Nonforcible` int(11),
  `Incest` int(11),
  `Statutory_Rape` int(11)
) ;

-- 2010
CREATE TABLE `persons_2010` (
  `idYear` int(11) DEFAULT NULL,
  `State` text,
  `Agency_Type` text,
  `Agency_subType` text,
  `Agency_Name` text,
  `Population` bigint,
  `Assault_Offenses` bigint,
  `Aggravated_Assault` int(11) DEFAULT NULL,
  `Simple_Assault` int(11) DEFAULT NULL,
  `Intimidation` int(11) DEFAULT NULL,
  `Homicide_Offenses` int(11),
  `Murder_Nonnegligent_Manslaughter` int(11),
  `Negligent_Manslaughter` int(11),
  `Justifiable_Homicide` int(11),
  `Kidnapping_Abduction` int(11) DEFAULT NULL,
  `Sex_Offenses_total` int(11) DEFAULT NULL,
  `Rape` int(11) DEFAULT NULL,
  `Sodomy` int(11),
  `Sexual_Assault_w_Object` int(11),
  `Fondling` int(11) DEFAULT NULL,
  `Sex_Offenses_Nonforcible` int(11),
  `Incest` int(11),
  `Statutory_Rape` int(11)
) ;

-- 2009
CREATE TABLE `persons_2009` (
  `idYear` int(11) DEFAULT NULL,
  `State` text,
  `Agency_Type` text,
  `Agency_subType` text,
  `Agency_Name` text,
  `Population` bigint,
  `Assault_Offenses` bigint,
  `Aggravated_Assault` int(11) DEFAULT NULL,
  `Simple_Assault` int(11) DEFAULT NULL,
  `Intimidation` int(11) DEFAULT NULL,
  `Homicide_Offenses` int(11),
  `Murder_Nonnegligent_Manslaughter` int(11),
  `Negligent_Manslaughter` int(11),
  `Justifiable_Homicide` int(11),
  `Kidnapping_Abduction` int(11) DEFAULT NULL,
  `Sex_Offenses_total` int(11) DEFAULT NULL,
  `Rape` int(11) DEFAULT NULL,
  `Sodomy` int(11),
  `Sexual_Assault_w_Object` int(11),
  `Fondling` int(11) DEFAULT NULL,
  `Sex_Offenses_Nonforcible` int(11),
  `Incest` int(11),
  `Statutory_Rape` int(11)
) ;

-- 2008
CREATE TABLE `persons_2008` (
  `idYear` int(11) DEFAULT NULL,
  `State` text,
  `Agency_Type` text,
  `Agency_subType` text,
  `Agency_Name` text,
  `Population` bigint,
  `Assault_Offenses` bigint,
  `Aggravated_Assault` int(11) DEFAULT NULL,
  `Simple_Assault` int(11) DEFAULT NULL,
  `Intimidation` int(11) DEFAULT NULL,
  `Homicide_Offenses` int(11),
  `Murder_Nonnegligent_Manslaughter` int(11),
  `Negligent_Manslaughter` int(11),
  `Justifiable_Homicide` int(11),
  `Kidnapping_Abduction` int(11) DEFAULT NULL,
  `Sex_Offenses_total` int(11) DEFAULT NULL,
  `Rape` int(11) DEFAULT NULL,
  `Sodomy` int(11),
  `Sexual_Assault_w_Object` int(11),
  `Fondling` int(11) DEFAULT NULL,
  `Sex_Offenses_Nonforcible` int(11),
  `Incest` int(11),
  `Statutory_Rape` int(11)
) ;

/* ----------------------------------
    Analysis Section OBJECT creates 
    create subsets of crimes observations on persons by the  
    types of crimes: assault, homicide, sex and 
by year and state
   --------------------------------- */
-- Assault
drop table summaryAssault;
create table summaryAssault as (
select idYear, State, Agency_Type,
    sum(Aggravated_Assault) as Aggravated_Assault,
    sum(Simple_Assault) as Simple_Assault,
    sum(Intimidation) as Intimidation,
	sum(Aggravated_Assault + Simple_Assault + Intimidation) as totalAssault
from allyears_against_persons
group by idYear, State, Agency_Type);

-- take a look
select idYear, State, Agency_Type, totalAssault
from summaryAssault;

--  Murder and manslaughter
drop table summaryHomocide;
create table summaryHomocide as (
select idYear, State, Agency_Type, 
    sum(Murder_Nonnegligent_Manslaughter), 
    sum(Negligent_Manslaughter), 
	sum(Justifiable_Homicide),
	sum(Murder_Nonnegligent_Manslaughter + Negligent_Manslaughter + Justifiable_Homicide) as totalHomicide
from allyears_against_persons
group by idYear, State, Agency_Type);

-- take a look
select idYear, State, Agency_Type, 
	   totalHomicide as totalHomicide
from summaryHomocide;

-- sex crimes (note excluced Human_Trafficking_Offenses,Commercial_Sex_Acts,Involuntary_Servitude as the were not reported in 2012
drop table summarySexualAssault;
create table summarySexualAssault as (
select idYear, State, Agency_Type, 
	sum(Kidnapping_Abduction),
    sum(Rape), 
    sum(Sodomy), 
    sum(Sexual_Assault_w_Object), 
	sum(Fondling), 
    sum(Sex_Offenses_Nonforcible), 
    sum(Incest), 
    sum(Statutory_Rape),
	sum(Kidnapping_Abduction + Rape + Sodomy + Sexual_Assault_w_Object + Fondling + 
		Sex_Offenses_Nonforcible + Incest + Statutory_Rape) as sexOffenceTotal
from allyears_against_persons
group by idYear, State, Agency_Type);

-- take a look
select idYear, State, Agency_Type, 
	sexOffenceTotal as sexOffenceTotal
from summarySexualAssault
where State = "COLORADO" and idYear = 2016;

/* 	--------------------------------
	create a view with these totals by columns for all types of crimes against persons
    -------------------------------- */
drop table tot_by_type;
create table tot_by_type as (
select sa.idYear, sa.State, sa.Agency_Type,
		sum(totalAssault) as totalAssault, 
        sum(totalHomicide) as totalHomicide, 
        sum(sexOffenceTotal) as sexOffenceTotal
from summaryassault sa
left join summaryhomocide sh on sa.idYear = sh.idYear and
		sa.State = sh.state and 
        sa.Agency_Type = sh.Agency_type 
left join summarysexualassault sx on sa.idYear = sh.idYear and
		sa.State = sx.state and 
        sa.Agency_Type = sx.Agency_type
group by sa.idYear, sa.State, sa.Agency_Type
);

-- take a look
select * 
from tot_by_type;
