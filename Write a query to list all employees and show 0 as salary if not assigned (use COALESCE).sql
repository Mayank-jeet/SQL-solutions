-- Write a query to list all employees and show 0 as salary if not assigned (use COALESCE).
create table Employees(
id int primary key,
name varchar(50),
department varchar(50)
);
insert into Employees
(id,name,department)
values
(1,'Alice','HR'),
(2,'Bob','IT'),
(3,'Charlie','HR'),
(4,'David','Finance');
create table Salary
(
id int primary key,
salary int
);
insert into Salary
(id,salary)
values
(1,50000),
(2,60000),
(4,70000);
select Employees.id,name,department,coalesce(Salary.salary,0) as salary
from Employees
left join Salary
on Employees.id=Salary.id;