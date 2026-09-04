-- Intermediate_SQL | Delete all orders with amount = 0.
create table Orders
 (
 id int primary key,
 orderID int unique,
 name varchar(50),
 total_purchase int check(total_purchase>=0)
 );
insert into Orders
(id,orderID,name,total_purchase)
values
(301,1004,'Aarav',800),
(302,1002,'Bhavna',700),
(303,1003,'Chirag',300),
(304,1005,'Deepa',450),
(305,1006,'Eshan',600),
(306,1007,'Fatima',350),
(307,1008,'Gautam',900),
(308,1009,'Heena',400),
(309,1010,'Irfan',750),
(310,1011,'Juhi',200),
(311,1012,'Karan',650),
(312,1013,'Latika',550),
(313,1014,'Manoj',700),
(314,1015,'Nisha',500),
(315,1016,'Om',300),
(316,1017,'Poonam',450),
(317,1018,'Qasim',400),
(318,1019,'Rhea',850),
(319,1020,'Sanjay',900),
(320,1021,'Tina',650),
(321,1022,'Umar',700),
(322,1023,'Vidya',350),
(323,1024,'Wasim',800),
(324,1025,'Xavier',900),
(325,1026,'Yamini',450),
(326,1027,'Zubin',700),
(327,1028,'Alok',550),
(328,1029,'Bina',300),
(330,NULL,'Divya',0);
delete from Orders
where total_purchase=0;
select * from Orders;