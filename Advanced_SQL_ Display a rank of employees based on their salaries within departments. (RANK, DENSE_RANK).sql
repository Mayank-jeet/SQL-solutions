-- Advanced_SQL | Display a rank of employees based on their salaries within departments. (RANK, DENSE_RANK)
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
select name,salary,department,rank() over(partition by department order by salary desc) from employee;
select name,salary,department,dense_rank() over(partition by department order by salary desc) from employee;