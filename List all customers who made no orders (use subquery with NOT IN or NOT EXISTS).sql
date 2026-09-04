-- List all customers who made no orders (use subquery with NOT IN or NOT EXISTS).
create table Orders
(
id int primary key,
customerID int not null,
amount int check(amount>=0)
);
insert into Orders
(id,customerID,amount)
values
(1,101,500),
(2,102,1500),
(3,103,700),
(4,101,800);
create table Customers
(
customerID int unique,
name varchar(50)
);
insert into Customers
(customerID,name)
values
(101,'Alice'),
(102,'Bob'),
(103,'Charlie'),
(104,'John');
select customerID,name from Customers
where customerID not in
	(select distinct customerID from Orders);