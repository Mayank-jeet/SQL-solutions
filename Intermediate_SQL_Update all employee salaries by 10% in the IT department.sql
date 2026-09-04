-- Intermediate_SQL | Update all employee salaries by 10% in the IT department.
create table employee
(
id int primary key,
name varchar(50),
department varchar(50),
salary int check(salary>=0),
hiering_year year,
managerID int
);
insert into employee
(id,name,department,salary,hiering_year,managerID)
values
(501,'Amit','HR',55000,2015,NULL),
(502,'Bhavna','IT',72000,2017,NULL),
(503,'Chirag','Finance',67000,2016,NULL),
(504,'Deepa','Marketing',50000,2018,NULL),
(505,'Eshan','HR',42000,2019,501),
(506,'Fatima','IT',58000,2020,502),
(507,'Gautam','Finance',60000,2017,503),
(508,'Heena','Sales',47000,2015,NULL),
(509,'Irfan','IT',62000,2021,502),
(510,'Juhi','HR',44000,2014,501),
(511,'Karan','Marketing',51000,2022,504),
(512,'Latika','IT',69000,2020,502),
(513,'Manoj','Sales',46000,2012,508),
(514,'Nisha','Finance',63000,2016,503),
(515,'Om','HR',45000,2015,501),
(516,'Poonam','IT',75000,2023,502),
(517,'Qasim','Sales',43000,2014,508),
(518,'Rhea','Marketing',52000,2020,504),
(519,'Sanjay','Finance',68000,2017,503),
(520,'Tina','IT',73000,2023,502),
(521,'Umar','HR',47000,2013,501),
(522,'Vidya','Finance',61000,2018,503),
(523,'Wasim','Sales',44000,2016,508),
(524,'Xavier','IT',77000,2023,502),
(525,'Yamini','Marketing',55000,2019,504),
(526,'Zubin','Finance',64000,2022,503),
(527,'Alok','Sales',41000,2011,508),
(528,'Bina','HR',49000,2020,501),
(529,'Chetan','IT',74000,2021,502),
(530,'Divya','Marketing',53000,2017,504);
set sql_safe_updates=0;
update employee
set salary=salary*1.1
where department='IT';
create view IT as
select * from employee
where department='IT';
select * from IT;