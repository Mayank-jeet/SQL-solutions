-- Intermediate_SQL | Display each product and categorize it as 'Cheap', 'Moderate', or 'Expensive' based on price using.
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
(401,'Laptop',9999,20),
(402,'Smartphone',8500,35),
(403,'Tablet',7000,40),
(404,'Monitor',6200,25),
(405,'Keyboard',1200,100),
(406,'Mouse',800,150),
(407,'Printer',7500,15),
(408,'Scanner',6800,10),
(409,'Webcam',2500,60),
(410,'Headphones',1900,80),
(411,'Speakers',3000,50),
(412,'Charger',900,120),
(413,'USB Cable',250,200),
(414,'Router',4300,30),
(415,'Power Bank',1700,75),
(416,'SSD 512GB',6000,22),
(417,'HDD 1TB',4900,18),
(418,'Graphics Card',9900,12),
(419,'RAM 16GB',5500,28),
(420,'Processor',9800,8),
(421,'Motherboard',8900,10),
(422,'Cooling Fan',1100,90),
(423,'HDMI Cable',400,150),
(424,'Ethernet Cable',300,160),
(425,'Laptop Stand',1300,70),
(426,'Camera Tripod',3200,35),
(427,'External DVD Drive',3700,20),
(428,'Bluetooth Adapter',850,110),
(429,'Drawing Tablet',8700,13),
(430,'Projector',10000,5);
create view cheapProduct as
select * from Products
where price between 0 and 1000;
create view moderateProduct as
select * from Products
where price between 1001 and 5000;
create view expensiveProduct as
select * from Products
where price between 5001 and 10000;
select * from cheapProduct;
select * from moderateProduct;
select * from expensiveProduct;