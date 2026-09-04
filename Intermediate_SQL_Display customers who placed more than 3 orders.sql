-- Intermediate_SQL | Display customers who placed more than 3 orders.
create table Customer
 (
 customerID int primary key,
 name varchar(50)
 );
insert into Customer
(customerID,name)
values
(301, 'Aarav'),
(302, 'Bhavna'),
(303, 'Chirag'),
(304, 'Deepa'),
(305, 'Eshan'),
(306, 'Fatima'),
(307, 'Gautam'),
(308, 'Heena'),
(309, 'Irfan'),
(310, 'Juhi'),
(311, 'Karan'),
(312, 'Latika'),
(313, 'Manoj'),
(314, 'Nisha'),
(315, 'Om'),
(316, 'Poonam'),
(317, 'Qasim'),
(318, 'Rhea'),
(319, 'Sanjay'),
(320, 'Tina'),
(321, 'Umar'),
(322, 'Vidya'),
(323, 'Wasim'),
(324, 'Xavier'),
(325, 'Yamini'),
(326, 'Zubin'),
(327, 'Alok'),
(328, 'Bina'),
(329, 'Chetan'),
(330, 'Divya');
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
(1002,301,600),
(1003,301,400),
(1004,301,800),
(1005,302,700),
(1006,302,300),
(1007,303,550),
(1008,305,300),
(1009,305,400),
(1010,305,500),
(1011,306,100),
(1012,306,200),
(1013,306,150),
(1014,306,300),
(1015,306,250),
(1016,307,900),
(1017,309,650),
(1018,310,200),
(1019,310,300),
(1020,311,400),
(1021,312,500),
(1022,313,600),
(1023,313,300),
(1024,314,250),
(1025,315,650),
(1026,316,450),
(1027,316,550),
(1028,317,700),
(1029,318,600),
(1030,318,400),
(1031,319,350),
(1032,320,480),
(1033,321,520),
(1034,322,600),
(1035,323,720),
(1036,324,800),
(1037,325,460),
(1038,326,710),
(1039,327,540),
(1040,328,300),
(1041,329,400),
(1042,301,620),
(1043,302,580),
(1044,310,430),
(1045,305,380),
(1046,306,290),
(1047,316,610),
(1048,318,670),
(1049,303,720),
(1050,305,510);
select customerID,name from customer
where customerID in
	(select customerID from Orders
    group by customerID
    having count(customerID)>3);