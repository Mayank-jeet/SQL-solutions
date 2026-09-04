-- Intermediate_SQL | Find employees who haven’t been assigned to any department.
create table Employee
 (
 id int primary key,
 name varchar(50),
 department varchar(50),
 salary int
 );
 insert into Employee
 (id,name,department,salary)
 values
(101,'Alice','HR',45000),
(102,'John','IT',52000),
(103,'Charlie','Finance',47000),
(104,'David','Marketing',NULL),
(105,'Eve','IT',61000),
(106,'Frank',NULL,NULL),
(107,'Grace','HR',42000),
(108,'Heidi','Finance',48000),
(109,'Ivan','Sales',NULL),
(110,'Judy','Marketing',35000),
(111,'Kevin','IT',58000),
(112,'Laura','HR',41000),
(113,'Mallory','Sales',29000),
(114,'Niaj','Finance',51000),
(115,'Oscar','IT',60000);
select id,name from Employee
where department is null;