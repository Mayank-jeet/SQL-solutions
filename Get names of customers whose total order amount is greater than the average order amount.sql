-- Get names of customers whose total order amount is greater than the average order amount.
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
where customerID in
	(select customerID from Orders
    group by customerID 
    having sum(amount)>
		(select sum(amount)*1.0/count(distinct customerID) from Orders)
	);