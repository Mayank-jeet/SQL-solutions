-- List customers whose total purchase amount (grouped by city) is more than ₹20,000.
create table Customers(
id int primary key,
name varchar(50),
city varchar(50),
total_purchase int default 0
);
insert into Customers
(id,name,city,total_purchase)
values
(1,'Aman','Delhi',8000),
(2,'Rohan','Delhi',9000),
(3,'Priya','Delhi',7000),         -- Delhi = 24,000 ✅
(4,'Neha','Mumbai',6000),
(5,'Kunal','Mumbai',5000),
(6,'Simran','Mumbai',4000),       -- Mumbai = 15,000 ❌
(7,'Rachit','Chennai',12000),
(8,'Divya','Chennai',11000),      -- Chennai = 23,000 ✅
(9,'Isha','Goa',10000),           -- Goa = 10,000 ❌
(10,'Sahil','Lucknow',3000),
(11,'Sneha','Lucknow',6000),
(12,'Varun','Lucknow',4000),      -- Lucknow = 13,000 ❌
(13,'Ankit','Bangalore',15000),
(14,'Kriti','Bangalore',10000),   -- Bangalore = 25,000 ✅
(15,'Tanya','Kolkata',1000),
(16,'Raj','Kolkata',2000),        -- Kolkata = 3,000 ❌
(17,'Lavanya','Pune',8000),
(18,'Aditya','Pune',9000),        -- Pune = 17,000 ❌
(19,'Megha','Jaipur',11000),
(20,'Paras','Jaipur',12000),      -- Jaipur = 23,000 ✅
(21,'Bhavya','Surat',4000),       -- Surat = 4,000 ❌
(22,'Jatin','Delhi',6000),        -- Delhi = now 30,000 ✅
(23,'Khushi','Mumbai',3000),      -- Mumbai = now 18,000 ❌
(24,'Gaurav','Chennai',5000),     -- Chennai = now 28,000 ✅
(25,'Payal','Goa',13000),         -- Goa = now 23,000 ✅
(26,'Aryan','Pune',4000),         -- Pune = now 21,000 ✅
(27,'Hardik','Kolkata',5000),     -- Kolkata = now 8,000 ❌
(28,'Riya','Surat',7000),         -- Surat = now 11,000 ❌
(29,'Aayush','Agra',22000),       -- Agra = 22,000 ✅employee
(30,'Nidhi','Agra',1000);
select city,count(id) from Customers
group by city
having sum(total_purchase)>20000
order by count(city);