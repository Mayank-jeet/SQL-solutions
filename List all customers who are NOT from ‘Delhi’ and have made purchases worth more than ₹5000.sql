-- List all customers who are NOT from ‘Delhi’ and have made purchases worth more than ₹5000.
-- Table: Customers (columns: id, name, city, total_purchase) 
create table Customer(
id int primary key,
name varchar(50),
city varchar(50),
total_purchase int check (total_purchase>=0)
);
insert into Customer
(id,name,city,total_purchase)
values 
(100,"Ankit","Agra",5500),
(101,"Aman","Delhi",7000),
(102,"Aditya","Kanpur",4000),
(103,"Hritik","Mumbai",600),
(104,"Hisham","Goa",7000),
(105,"Shubham","Delhi",4000);
select id,name from Customer
where city not in ("Delhi") and total_purchase>5000;