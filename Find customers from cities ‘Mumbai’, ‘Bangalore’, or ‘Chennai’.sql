-- Find customers from cities ‘Mumbai’, ‘Bangalore’, or ‘Chennai’.
create table Customers(
id int primary key,
name varchar(50),
city varchar(50),
total_purchase int check (total_purchase>=0)
);
insert into Customers
(id,name,city,total_purchase)
values 
(100,"Ankit","Agra",5500),
(101,"Aman","Delhi",7000),
(102,"Aditya","Chennai",4000),
(103,"Hritik","Mumbai",600),
(104,"Hisham","Goa",7000),
(105,"Shubham","Delhi",4000);
select * from Customers
where city in("Mumbai","Bangalore","Chennai"); 