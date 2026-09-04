-- Get a combined list of all names and departments from NewHires and Interns using UNION, Modify the above to include duplicates (use UNION ALL).
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
(8,'Harry','Finance');
select * from Interns
union all
select * from NewHires;