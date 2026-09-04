-- List students with their marks, ordered by marks descending and then by name ascending.
create table Students
(
roll int primary key,
name varchar(50),
class int check(class between 1 and 12),
marks float check(marks>=0)
); 
insert into Students
(roll,name,class,marks)
values
(1,"Rohit",11,79.5),
(2,"Mohit",12,89.0),
(3,"Ram",10,100),
(4,"Bajrag",12,97),
(5,"Aman",9,69),
(6,"Ashutosh",11,76),
(7,"Ramesh",11,70),
(8,"Pranav",7,95),
(9,"Garvit",12,79),
(10,"Kaalu",9,86);
select * from Students
order by marks desc;
select * from Students
order by name;