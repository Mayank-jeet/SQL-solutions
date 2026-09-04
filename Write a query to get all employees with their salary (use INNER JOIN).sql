-- Write a query to get all employees with their salary (use INNER JOIN).
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
select * from Employees
inner join Salary
on Employees.id=Salary.id; 