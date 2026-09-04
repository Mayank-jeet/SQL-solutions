-- Get all students who are in either 'CSE' or 'ECE' department and have marks greater than 75.
-- Table: Students (columns: id, name, department, marks)
create table Students(
id int primary key,
name varchar(50),
department varchar(50),
marks int check(marks>=0)
);
insert into Students
(id,name,department,marks)
values
(101,'Pranav','CSE',97),
(102,'Garvit','EE',79),
(103,'Divyansh','ECE',86),
(104,'Kirti','CV',96),
(105,'Rohit','ECE',95),
(106,'Khushi','CSE',89),
(107,'Kunal','ECE',72);
select name from Students
where department in ('CSE','ECE') and marks>=75;