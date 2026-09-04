-- List all products whose names start with 'S'.
create table Products(
id int primary key,
product_name varchar(50),
price float check(price>=0),
stock int check(stock>=0)
);
insert into Products
(id,product_name,price,stock)
values
(100,"Micro wave",2500.75,2),
(101,"Ceiling",900,9),
(102,"AC",20000,8),
(103,"Cooler",10000,10),
(104,"LED Bulb",200,50),
(105,"Sanyo Micro Pack 35",5000,10);
select * from Products
where product_name like ("S%");