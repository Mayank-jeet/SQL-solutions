-- Drop the column id from Employees.
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
(104,'David','Marketing',32000),
(105,'Eve','IT',61000),
(106,'Frank','Sales',30000),
(107,'Grace','HR',42000),
(108,'Heidi','Finance',48000),
(109,'Ivan','Sales',35000),
(110,'Judy','Marketing',35000),
(111,'Kevin','IT',58000),
(112,'Laura','HR',41000),
(113,'Mallory','Sales',29000),
(114,'Niaj','Finance',51000),
(115,'Oscar','IT',60000);
SET SQL_SAFE_UPDATES = 0;
alter table Employee
drop id;
select * from Employee;