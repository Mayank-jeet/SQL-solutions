-- beginner_SQL | Find the total number of students in the Students table.
create table students
 (
 roll_no int primary key,
 name varchar(50),
 class int,
 section varchar(1)
 );
insert into students
(roll_no,name,class,section)
values
(1,'Aarav',6,'A'),
(2,'Bhuvan',7,'B'),
(3,'Charvi',6,'A'),
(4,'Dhruv',8,'C'),
(5,'Esha',7,'A'),
(6,'Farhan',6,'B'),
(7,'Gauri',9,'C'),
(8,'Harshit',8,'B'),
(9,'Ira',7,'A'),
(10,'Jay',6,'C'),
(11,'Kiara',9,'A'),
(12,'Laksh',10,'B'),
(13,'Meera',6,'A'),
(14,'Naman',7,'C'),
(15,'Ojas',8,'B'),
(16,'Pihu',6,'B'),
(17,'Qasim',7,'A'),
(18,'Riya',8,'C'),
(19,'Samar',9,'B'),
(20,'Tanvi',10,'A'),
(21,'Ujjwal',6,'C'),
(22,'Vanya',7,'B'),
(23,'Wahid',8,'A'),
(24,'Xena',6,'B'),
(25,'Yash',9,'C'),
(26,'Zoya',7,'A'),
(27,'Aman',10,'C'),
(28,'Bhavya',8,'B'),
(29,'Chetan',6,'A'),
(30,'Divya',7,'C');
select count(name) from students;