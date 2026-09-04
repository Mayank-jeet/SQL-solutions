-- beginner_SQL | Find all customers from 'Delhi' city.
create table Customers
(
id int primary key,
name varchar(50),
city varchar(50),
total_purchase int check(total_purchase>=0)
);
insert into Customers
(id,name,city,total_purchase)
values
(101,'Alice','Delhi',1300),
(102,'Bob','Mumbai',1500),
(103,'Charlie','Bangalore',700),
(104,'David','Kolkata',0),
(105,'Emma','Pune',600),
(106,'Farhan','Jaipur',1200),
(107,'Grace','Chennai',300),
(108,'Harry','Delhi',900),
(109,'Isha','Lucknow',0),
(110,'Jack','Bhopal',1000),
(111,'Kiara','Mumbai',700),
(112,'Liam','Indore',200),
(113,'Meera','Patna',1200),
(114,'Nikhil','Delhi',900),
(115,'Olivia','Mumbai',1600),
(116,'Pranav','Hyderabad',1100),
(117,'Quinn','Surat',300),
(118,'Rahul','Pune',0),
(119,'Sara','Nagpur',850),
(120,'Tara','Ahmedabad',450),
(121,'Umar','Jaipur',1000),
(122,'Veena','Chennai',600),
(123,'Will','Delhi',750),
(124,'Xena','Kolkata',900),
(125,'Yash','Bangalore',1300),
(126,'Zara','Mumbai',0),
(127,'Arjun','Delhi',950),
(128,'Bhavna','Patna',850),
(129,'Chirag','Mumbai',300),
(130,'Disha','Lucknow',0);
select * from Customers
where city='Delhi';