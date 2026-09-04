-- Advanced_SQL | Find the second highest salary from the Employee table.
create table employee
 (
 id int primary key,
 name varchar(50),
 department varchar(50),
 salary int
 );
 insert into employee
 (id,name,department,salary)
 values
 (101,'Alice','HR',45000),
(102,'John','IT',52000),
(103,'Charlie','Finance',47000),
(104,'David','Marketing',NULL),
(105,'Eve','IT',61000),
(106,'Frank','Sales',30000),
(107,'Grace','HR',42000),
(108,'Heidi','Finance',48000),
(109,'Ivan','Sales',NULL),
(110,'Judy','Marketing',35000),
(111,'Kevin','IT',58000),
(112,'Laura','HR',41000),
(113,'Mallory','Sales',29000),
(114,'Niaj','Finance',51000),
(115,'Oscar','IT',60000);
-- Method 1 
create view newTable as
select * from employee
order by salary desc
limit 2;
select * from newTable 
order by salary
limit 1;
-- Method 2
select * from employee
where salary = 
	(select max(salary) from employee
    where salary< 
		(select max(salary) from employee)
	);
-- Method 3
select * from employee 
order by salary desc
limit 1 offset 1;