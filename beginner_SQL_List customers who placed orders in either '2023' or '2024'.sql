-- beginner_SQL | List customers who placed orders in either '2023' or '2024'.
create table Customer
 (
 customerID int primary key,
 name varchar(50),
 total_amount int check(total_amount>=0) default 0,
 order_year year
 );
insert into Customer
(customerID,name,total_amount,order_year)
values
(201,'Aarav',1300,2020),
(202,'Bhavna',900,2021),
(203,'Chirag',700,2019),
(204,'Deepa',0,2022),
(205,'Eshan',1100,2023),
(206,'Fatima',1200,2020),
(207,'Gautam',300,2021),
(208,'Heena',650,2018),
(209,'Irfan',0,2023),
(210,'Juhi',1400,2022),
(211,'Karan',500,2019),
(212,'Latika',750,2020),
(213,'Manoj',950,2021),
(214,'Nisha',400,2022),
(215,'Om',1000,2023),
(216,'Poonam',800,2019),
(217,'Qasim',0,2020),
(218,'Rhea',1350,2021),
(219,'Sanjay',1150,2023),
(220,'Tina',950,2022),
(221,'Umar',600,2020),
(222,'Vidya',1050,2021),
(223,'Wasim',850,2019),
(224,'Xavier',1250,2023),
(225,'Yamini',700,2020),
(226,'Zubin',400,2018),
(227,'Alok',980,2022),
(228,'Bina',0,2021),
(229,'Chetan',720,2023),
(230,'Divya',300,2019);
select name from Customer
where order_year in (2023,2024);