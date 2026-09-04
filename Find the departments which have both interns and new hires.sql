-- Find the departments which have both interns and new hires (hint: use INTERSECT logic with subqueries or JOINs if INTERSECT not supported).
create table NewHires
(
id int primary key,
name varchar(50),
department varchar(50)
);
insert into NewHires
(id,name,department)
values
(5,'Esha','Marketing'),
(6,'Frank','IT');
create table Interns
(
id int primary key,
name varchar(50),
department varchar(50)
);
insert into Interns
(id,name,department)
values
(7,'Gita','HR'),
(8,'Harry','Finance'),
(9,'John','IT');
select NewHires.department from NewHires
inner join Interns
on NewHires.department=Interns.department;