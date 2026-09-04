-- Intermediate_SQL | List customers along with their total order amount. (JOIN + GROUP BY).
create table Customer
 (
 customerID int primary key,
 name varchar(50)
 );
insert into Customer
(customerID,name)
values
(301,'Aarav'),
(302,'Bhavna'),
(303,'Chirag'),
(304,'Deepa'),
(305,'Eshan'),
(306,'Fatima'),
(307,'Gautam'),
(308,'Heena'),
(309,'Irfan'),
(310,'Juhi'),
(311,'Karan'),
(312,'Latika'),
(313,'Manoj'),
(314,'Nisha'),
(315,'Om'),
(316,'Poonam'),
(317,'Qasim'),
(318,'Rhea'),
(319,'Sanjay'),
(320,'Tina'),
(321,'Umar'),
(322,'Vidya'),
(323,'Wasim'),
(324,'Xavier'),
(325,'Yamini'),
(326,'Zubin'),
(327,'Alok'),
(328,'Bina'),
(329,'Chetan'),
(330,'Divya');
create table Orders
(
orderID int primary key,
customerID int,
amount int check(amount>=0),
foreign key (customerID) references Customer(customerID)
on delete cascade
on update cascade
);
insert into Orders
(orderID,customerID,amount)
values
(1001,301,500),
(1002,302,700),
(1003,303,300),
(1004,301,800),
(1005,304,450),
(1006,305,600),
(1007,306,350),
(1008,307,900),
(1009,308,400),
(1010,309,750),
(1011,310,200),
(1012,311,650),
(1013,312,550),
(1014,313,700),
(1015,314,500),
(1016,315,300),
(1017,316,450),
(1018,317,400),
(1019,318,850),
(1020,319,900),
(1021,320,650),
(1022,321,700),
(1023,322,350),
(1024,323,800),
(1025,324,900),
(1026,325,450),
(1027,326,700),
(1028,327,550),
(1029,328,300),
(1030,329,400);
select c.customerID,name,sum(o.amount),coalesce(sum(o.amount),0) from Customer as c
left join Orders as o
on o.customerID=c.customerID
group by customerID
