-- Show each employee’s department and count how many employees are in departments where the average salary is greater than ₹40,000.
create table Employee
(
id int primary key,
name varchar(50),
department varchar(50),
salary float default 30000
);
insert into employee
(id,name,department,salary)
values
(1,'Lavanya','HR',39000),
(2,'Gaurav','Marketing',45000),
(3,'Neha','IT',48000),
(4,'Ravina','Support',30000),
(5,'Deepak','HR',37000),
(6,'Kritika','Finance',36000),
(7,'Ishaan','Support',31000),
(8,'Tanu','Sales',33000),
(9,'Khushi','Finance',35000),
(10,'Aditya','IT',52000),
(11,'Manav','Sales',32000),
(12,'Pooja','Marketing',43000),
(13,'Rachit','Marketing',45000),
(14,'Riya','HR',36000),
(15,'Muskan','Support',28500),
(16,'Kunal','IT',60000),
(17,'Paras','Finance',37000),
(18,'Sahil','Finance',34000),
(19,'Raj','IT',61000),
(20,'Kartik','Marketing',42000),
(21,'Shivam','HR',38000),
(22,'Sneha','Support',27000),
(23,'Zaid','Marketing',47000),
(24,'Simran','HR',41000),
(25,'Payal','Marketing',46000),
(26,'Swati','Marketing',47000),
(27,'Varun','IT',55000),
(28,'Bhavya','Finance',35500),
(29,'Aman','HR',35000),
(30,'Monika','Sales',28000),
(31,'Hardik','Finance',37000),
(32,'Priya','HR',39000),
(33,'Abhay','Support',29500),
(34,'Pooja','Marketing',49000),
(35,'Aryan','Sales',31000),
(36,'Tanvi','Sales',35000),
(37,'Rohan','HR',38000),
(38,'Aayush','Marketing',49000),
(39,'Ankit','Sales',34000),
(40,'Nidhi','Sales',31000),
(41,'Isha','IT',57000),
(42,'Ritika','Support',28000),
(43,'Divya','Finance',36000),
(44,'Priyansh','Support',29000),
(45,'Jatin','Sales',30000),
(46,'Deepali','R&D',58000),
(47,'Tanya','IT',49500),
(48,'Nikhil','Finance',39000),
(49,'Hardik','R&D',60000),
(50,'Megha','IT',53000);
select department,count(id) from employee
group by department
having avg(salary)>40000
order by count(id);