/* --------------------------------------------
	Part Object Manipulation SQLs
-----------------------------------------------*/
-- create schema
create database manipulate_objects; -- same as create schema
use manipulate_objects;

/* -----------------
	create set of tables in this schema for chapter exmaples
    note the order of the tables, they are listed in this way to insert data into the 
		look-up tables prior to adding employees and employees before adding history
--------------------- */
-- regions
create table regions (
	region_id int1 not null AUTO_INCREMENT,
    region_name varchar(40),
	`rcd_Created` datetime DEFAULT CURRENT_TIMESTAMP,
	`rcd_Updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (region_id)
);
insert into regions (`region_name`) values('Americas'),('Europe');

-- check the data
select * from regions;

-- countries 
create table countries (
	country_ID	int1 not null AUTO_INCREMENT,
	country_name VARCHAR(40) NOT NULL,
	region_id int,
	`rcd_Created` datetime DEFAULT CURRENT_TIMESTAMP,
	`rcd_Updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (country_ID)
    );
INSERT INTO `countries` (`country_name`, `region_id`) 
	values('Canada','4'),('United States','4'),('Mexico','4'),('Brazil','4'),
          ('United Kingdom','5'),('France','5'),('Irland','5'),('Spain','5');
        
-- check the data
select * from countries;

-- locations
create table locations (
	location_id  int not null AUTO_INCREMENT,
    location_name varchar(120),
	street_address varchar(40),
	postal_code varchar(12),
	city varchar(30) not null,
	state_province varchar(25),
    country_id int not null,
    `rcd_Created` datetime DEFAULT CURRENT_TIMESTAMP,
	`rcd_Updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	primary key (location_id)
);
insert into locations (location_name, street_address, postal_code, city, state_province, country_id)
		values('Corporate Office','21 Boyston St','01883','Boston','MA','1'),
        ('Canada Corporate Office','2065 Rue Bishop','22222','2065, Rue Bishop','','2'),
        ('Mexico Corporate Office','3 Some Street','33333','Guadalajara','','3'),
        ('Brazil Corporate Office','4 Some Street','44444','Sao Paulo','','4'),
        ('United Kingdom Corporate Office','5 Some Street','55555','Soho','','5'),
        ('France Corporate Office','6 Some Street','66666','Paris','','6'),
        ('Irland Corporate Office','7 Some Street','77777','Dublin','','7'),
        ('Spain Corporate Office','9 Some Street','88888','Madrid','','8');  
        
select * from locations;

-- jobs
create table jobs (
	job_id  int not null AUTO_INCREMENT,
	job_title varchar(35) not null,
	min_salary double(12,2),
	max_salary double(12,2),
    `rcd_Created` datetime DEFAULT CURRENT_TIMESTAMP,
	`rcd_Updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	primary key (job_id)
);
INSERT INTO `jobs` (`job_title`, `min_salary`, `max_salary`)  -- VALUES ('Chief Information Officer', '90.00', '100.00')
-- insert into jobs (job_title, min_salary, max_salary)
	values 	('Chief Information Officer', '90000.00', '150000.00'),
			('IT Manager', '80000.00', '110000.00'),
			('HR Manager','70000.00','90000.00'),
            ('Department Manager','70000.00','90000.00'),
			('Lead Programm','60000.00','90000.00'),
            ('Database Administrator','150000.00','200000.00');
            
select * from jobs;
          
-- employess
create table employees (
	employee_id int not null AUTO_INCREMENT,
	first_name varchar(20),
	last_name varchar(25) not null,
    sex varchar(1),
	email varchar(125) not null,
	phone_number varchar(20),
	hire_date date not null,
	job_id int not null,
	salary double(8,2),
	bonus_percent float(5,2),
	manager_id int, -- --- employee 0 is CEO -----
	department_id int, -- --------
    employee_loc int, -- could be home or dept (make home location with no country or region)
    `rcd_Created` datetime DEFAULT CURRENT_TIMESTAMP,
	`rcd_Updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	primary key (employee_id)
);
-- insert records in this order; ceo, dept managers, employee managers employees NOTE (not loading bonuses)
-- NEXT assign managers, depart and locations
insert into employees (first_name, last_name, sex, email, phone_number, hire_date, 
			job_id, salary, manager_id, department_id, employee_loc)
	values('Erma','Eder','M','Erma.Eder@someIPS','555-555-5000','2017-01-01','1','90000.00','1','1','1'), -- cio
          ('Gearldine','Gainer','F','Gearldine.Gainer@someIPS','555-555-5122','2016-11-15','2','110000.00','0','2','1'), -- IT  manager
          ('Sandie','Saleh','F','Sandie.Saleh@someIPS','555-555-5133','2016-05-01','3','70000.00','0','2','1'), -- hr manager
          ('Jacinta','Journey','F','Jacinta.Journey@someIPS','555-555-5144','2017-02-21','4','70000.00','5','1','1'),
          ('Alisa','Ansell','F','Alisa.Ansell@someIPS','555-555-5155','2017-03-04','5','60000.00','5','1','1'),
          ('Joelle','Jock','M','Joelle.Jock@someIPS','555-555-5155','2016-12-01','5','60000.00','5','1','1'),
          ('Penni','Poudrie','F','Penni.Poudrier@someIPS','555-555-5166','2017-06-15','5','60000.00','6','1','1'),
          ('Angella','Arenas','F','Angella.Arenas@someIPS','555-555-5177','2017-07-22','6','150000.00','6','1','1'),
          ('Shaun','Stuck','M','Shaun.Stuck@someIPS','555-555-5188','2017-01-01','6','150000.00','6','1','1'),
          ('Madeleine','Mccleery','F','Madeleine.Mccleery@someIPS','555-555-5199','2016-05-01','6','150000.00','4','1','1');
          
select * from employees;

-- departments
create table departments (
	department_ID int1 not null AUTO_INCREMENT,
	department_name varchar(30) not null,
	manager_id int,
	location_id int,
    `rcd_Created` datetime DEFAULT CURRENT_TIMESTAMP,
	`rcd_Updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	primary key (department_ID)
);
insert into departments (department_name, manager_id, location_id)
	values('Administration','1','1'),
		  ('Information Technologies',1,1),
          ('Human Resource','1','1'),
          ('Operations','1','2'),
		  ('Programming','1','6'),
          ('Infrastructure','1','7');
          
select * from departments;
  
-- job history
create table job_history (
	job_history_id  int not null AUTO_INCREMENT,
    employee_id int not null,
	start_date date null,
	end_date date not null,
	job_id int not null,
	department_id int not null,
    `rcd_Created` datetime DEFAULT CURRENT_TIMESTAMP,
	`rcd_Updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	primary key (job_history_id)
);
insert into job_history 
	values('1','1','2010-01-01','2017-01-15','1','1','2015-05-13','2015-05-13');
    
select * from job_history;

-- and one to mess up
create table deleteMe (
	deleteMe_id int not null AUTO_INCREMENT,
	deleteMe_Field varchar(40),
	primary key (deleteMe_id)
);
insert into deleteMe (deleteMe_Field)
	values('one-deleteme'),('two-deleteme'),('three-deleteme');
    
select * from deleteMe;

-- -------------------------------------------------------------
-- END OF TABLE CREATES ----------------------------------------
-- -------------------------------------------------------------

-- create HR views
-- Basic Employee listing
create view employee_full_listing_v1 as (
select e.employee_id, concat(e.last_name, ", " ,e.first_name) as employeeName, 
	concat(em.first_name, " ", em.last_name) as managerName,
	j.job_title, d.department_name, l.location_name
from employees as e
join jobs as j on e.job_id = j.job_id
join employees as em on e.employee_id = em.employee_id
join departments as d on e.department_id = d.department_id
join locations as l on e.employee_loc = l.location_id
order by em.last_name, em.first_name, e.last_name, e.first_name);

select * from employee_full_listing_v1;

-- Employee salary summary by department; department, averageSalary, empCount
create view depart_salary_summary_v1 as (
select e.department_id, d.department_name, avg(e.salary) ,count(*)
from employees as e
join departments as d on e.department_id = d.department_id
group by e.department_id, d.department_name);

select * from depart_salary_summary_v1;

-- Average pay by sex - HR only 
create view average_salary_by_gender_v1 as (
select j.job_title, e.sex, avg(salary), count(*)
from employees as e
join jobs as j on e.job_id = j.job_id
group by j.job_title, e.sex);

select * from average_salary_by_gender_v1;

-- -------------------------------------------------------------
-- END OF views CREATES ----------------------------------------
-- -------------------------------------------------------------

-- -------------------------------------------------------------
-- start OF sandbox SQLS ---------------------------------------
-- -------------------------------------------------------------
-- create environment to alter and drop. schema, table (with columns and index), create view
create schema sandbox_alter_drop_demo;
use sandbox_alter_drop_demo;

create table sandbox_table1 (
	sandbox_col1_id int not null AUTO_INCREMENT,
	sandbox_col2 varchar(40),
	primary key (sandbox_col1_id)
);
create view sandbox_v1 as (select * from sandbox_table1 order by sandbox_col1_id DESC);
create table sandbox_table2 (
	sandbox2 int not null AUTO_INCREMENT,
	sandbox2b varchar(40),
	primary key (sandbox2));

-- change name of a table
ALTER TABLE `sandbox_table2` 
RENAME TO  `sandbox_table2b`;

-- Add columns
-- single col ad, text
ALTER TABLE `sandbox_table1` 
ADD COLUMN `add_one_col` VARCHAR(125) NULL AFTER `sandbox_col1_id`;

-- add 3 columns
ALTER TABLE `sandbox_table1`
    ADD COLUMN count SMALLINT(6) NOT NULL,
    ADD COLUMN log VARCHAR(12) NOT NULL,
    ADD COLUMN status INT(10) UNSIGNED NOT NULL;

-- Modify Column names
ALTER TABLE `sandbox_table1` CHANGE COLUMN `sandbox_col2` `new_sandbox_col` VARCHAR(255) NOT NULL;

-- UNDOING what we did with the Drop command ---------
-- ensure we are working in the correct schema
use sandbox_alter_drop_demo;
-- drop primary index, remove auto inc first
alter table `sandbox_table1` change column `sandbox_col1_id` `sandbox_col1_id` int not null;
DROP index `primary` on `sandbox_table1`;
-- drop columns
ALTER TABLE `sandbox_alter_drop_demo`.`sandbox_table1` 
DROP COLUMN `status`,
DROP COLUMN `log`;
-- drop view
drop view sandbox_v1;

-- drop tables
drop table `sandbox_alter_drop_demo`.`sandbox_table1`, 
	`sandbox_alter_drop_demo`.`sandbox_table2b`;
-- drop schema
DROP DATABASE `sandbox_alter_drop_demo`;

-- -------------------------------------------------------------
-- end OF sandbox SQLS ---------------------------------------
-- -------------------------------------------------------------


