-- Find all products that cost more than ₹1000.
-- Table: Products (columns: id, product_name, price, stock) 
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
(104,"LED Bulb",200,50);
select product_name from Products
where price>1000;