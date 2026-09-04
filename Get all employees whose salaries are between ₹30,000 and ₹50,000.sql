-- Get all employees whose salaries are between ₹30,000 and ₹50,000.
create table Employee(
id int primary key,
name varchar(50),
salary int default 30000
);
insert into Employee
(id,name,salary)
values
(100,"Aman",32000),
(101,"Rohan",default),
(102,"Rohit",25000),
(103,"Ankit",35000),
(104,"Manav",60000);
select * from Employee
where salary between 30000 and 50000;