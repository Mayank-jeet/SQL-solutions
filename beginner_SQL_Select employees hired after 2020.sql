-- beginner_SQL | Select employees hired after 2020.
create table Employee
 (
 id int primary key,
 name varchar(50),
 department varchar(50),
 salary int default 30000,
 hiering_year year not null
 );
 insert into Employee
 (id,name,department,salary,hiering_year)
 values
(301,'Amit','HR',45000,2015),
(302,'Bhavna','Finance',52000,2017),
(303,'Chirag','IT',61000,2016),
(304,'Deepa','Marketing',48000,2018),
(305,'Eshan','HR',47000,2014),
(306,'Fatima','IT',63000,2019),
(307,'Gautam','Finance',55000,2016),
(308,'Heena','Sales',46000,2015),
(309,'Irfan','IT',70000,2020),
(310,'Juhi','HR',50000,2013),
(311,'Karan','Marketing',49000,2021),
(312,'Latika','IT',68000,2019),
(313,'Manoj','Sales',44000,2012),
(314,'Nisha','Finance',53000,2016),
(315,'Om','HR',47000,2015),
(316,'Poonam','IT',75000,2022),
(317,'Qasim','Sales',42000,2014),
(318,'Rhea','Marketing',51000,2020),
(319,'Sanjay','Finance',59000,2017),
(320,'Tina','IT',72000,2023),
(321,'Uday','HR',46000,2013),
(322,'Vidya','Finance',60000,2018),
(323,'Wasim','Sales',43000,2016),
(324,'Xavier','IT',77000,2023),
(325,'Yamini','Marketing',55000,2019),
(326,'Zubin','Finance',62000,2022),
(327,'Alok','Sales',41000,2011),
(328,'Bina','HR',49000,2020),
(329,'Chetan','IT',74000,2021),
(330,'Divya','Marketing',53000,2017);
select * from Employee
where hiering_year>2000;