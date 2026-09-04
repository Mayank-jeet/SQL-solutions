-- List the top 3 products with the highest price.
create table Products
(
id int primary key,
name varchar(50),
price float check(price>=0),
quantity int check(quantity>=0) 
);
insert into Products
(id,name,price,quantity)
values
(1,'Laptop',55000,20),
(2,'Mouse',500,150),
(3,'Keyboard',1200,100),
(4,'Monitor',15000,30),
(5,'Printer',9000,25),
(6,'Tablet',22000,18),
(7,'Smartphone',28000,40),
(8,'Charger',700,200),
(9,'USB Cable',150,300),
(10,'Headphones',2000,85),
(11,'Speakers',2500,60),
(12,'Router',1800,50),
(13,'Webcam',3500,15),
(14,'Microphone',4000,12),
(15,'SSD 512GB',7500,45),
(16,'HDD 1TB',4200,35),
(17,'Graphics Card',32000,10),
(18,'Power Bank',1600,70),
(19,'Desk Lamp',1100,80),
(20,'Cooling Pad',1300,40),
(21,'WiFi Adapter',900,90),
(22,'Smartwatch',14500,22),
(23,'TV 43inch',33000,12),
(24,'Bluetooth Speaker',3200,30),
(25,'Projector',45000,8),
(26,'Scanner',8500,9),
(27,'Gaming Mouse',2100,50),
(28,'Drawing Tablet',15500,6),
(29,'External HDD',6400,25),
(30,'VR Headset',29500,5);
select name,price from Products
order by price desc
limit 3;