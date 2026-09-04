-- List customers whose total purchase amount (city wise) is more than ₹20,000.
create table Customers(
id int primary key,
name varchar(50),
city varchar(50),
total_purchase int default 0
);
insert into Customers
(id,name,city,total_purchase)
values
(1,'Aman','Delhi',21500),
(2,'Rohan','Mumbai',18500),
(3,'Kirti','Chennai',22800),
(4,'Ankit','Bangalore',13200),
(5,'Shubham','Agra',9300),
(6,'Manav','Goa',26500),
(7,'Priya','Delhi',13800),
(8,'Aditya','Kolkata',30900),
(9,'Khushi','Mumbai',14100),
(10,'Kunal','Chennai',22500),
(11,'Sneha','Pune',11900),
(12,'Varun','Bangalore',27600),
(13,'Tanya','Lucknow',8700),
(14,'Nikhil','Delhi',22600),
(15,'Divya','Chennai',9100),
(16,'Harshit','Agra',18800),
(17,'Neha','Mumbai',32400),
(18,'Rahul','Goa',9300),
(19,'Jatin','Chennai',26700),
(20,'Megha','Bangalore',8400),
(21,'Vikram','Lucknow',19500),
(22,'Simran','Mumbai',31100),
(23,'Raj','Delhi',17800),
(24,'Tanvi','Agra',8900),
(25,'Deepak','Kolkata',25400),
(26,'Ritika','Goa',14800),
(27,'Yash','Pune',26300),
(28,'Mona','Delhi',9900),
(29,'Sahil','Chennai',15700),
(30,'Isha','Lucknow',8300),
(31,'Paras','Mumbai',27100),
(32,'Sanya','Agra',7600),
(33,'Zaid','Bangalore',30600),
(34,'Pooja','Delhi',11800),
(35,'Gaurav','Chennai',31700),
(36,'Kritika','Kolkata',11100),
(37,'Aayush','Goa',24300),
(38,'Riya','Pune',13900),
(39,'Shivam','Mumbai',22500),
(40,'Lavanya','Bangalore',16400),
(41,'Aryan','Lucknow',31000),
(42,'Swati','Chennai',18600),
(43,'Bhavya','Agra',22300),
(44,'Kartik','Delhi',17700),
(45,'Payal','Goa',12800),
(46,'Nidhi','Kolkata',9900),
(47,'Hardik','Pune',24200),
(48,'Ishaan','Mumbai',8800),
(49,'Diya','Chennai',27500),
(50,'Rachit','Delhi',14300);
select city,count(id) from Customers
where total_purchase>20000
group by city
order by count(city);