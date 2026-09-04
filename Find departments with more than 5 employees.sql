-- Find departments with more than 5 employees.
create table Employee(
id int primary key,
name varchar(50),
department varchar(50),
salary int default 30000
);
insert into Employee
(id,name,salary,department)
values
(1,'Aman',32000,'HR'),
(2,'Rohan',45000,'IT'),
(3,'Kirti',28000,'Finance'),
(4,'Ankit',52000,'IT'),
(5,'Shubham',60000,'Sales'),
(6,'Manav',30000,'HR'),
(7,'Priya',47000,'Finance'),
(8,'Aditya',55000,'IT'),
(9,'Khushi',39000,'Sales'),
(10,'Kunal',31000,'HR'),
(11,'Sneha',46000,'Marketing'),
(12,'Varun',37000,'IT'),
(13,'Tanya',35000,'Finance'),
(14,'Nikhil',34000,'HR'),
(15,'Divya',29000,'Sales'),
(16,'Harshit',58000,'IT'),
(17,'Neha',33000,'Marketing'),
(18,'Rahul',42000,'Finance'),
(19,'Jatin',51000,'IT'),
(20,'Megha',48000,'Sales'),
(21,'Vikram',36000,'Finance'),
(22,'Simran',44000,'HR'),
(23,'Raj',50000,'Sales'),
(24,'Tanvi',39000,'IT'),
(25,'Deepak',27000,'Finance'),
(26,'Ritika',55000,'Sales'),
(27,'Yash',34000,'HR'),
(28,'Mona',32000,'Marketing'),
(29,'Sahil',43000,'IT'),
(30,'Isha',41000,'Finance'),
(31,'Paras',47000,'HR'),
(32,'Sanya',30000,'Sales'),
(33,'Zaid',36000,'IT'),
(34,'Pooja',29000,'Marketing'),
(35,'Gaurav',53000,'Finance'),
(36,'Kritika',31000,'HR'),
(37,'Aayush',56000,'IT'),
(38,'Riya',34000,'Sales'),
(39,'Shivam',39000,'HR'),
(40,'Lavanya',44000,'Marketing'),
(41,'Aryan',60000,'IT'),
(42,'Swati',37000,'Finance'),
(43,'Bhavya',42000,'Sales'),
(44,'Kartik',45000,'IT'),
(45,'Payal',31000,'Marketing'),
(46,'Nidhi',28000,'HR'),
(47,'Hardik',46000,'Finance'),
(48,'Ishaan',50000,'Sales'),
(49,'Diya',35000,'IT'),
(50,'Rachit',38000,'HR');
select department,count(id) from Employee
group by department 
having count(id)>5
order by count(id);