-- Advanced_SQL | Find customers who placed their most expensive order in 2024.
create table customer
(
id int primary key,
name varchar(50)
);
insert into customer
(id,name)
values
(301, 'Aarav'),
(302, 'Bhavna'),
(303, 'Chirag'),
(304, 'Deepa'),
(305, 'Eshan'),
(306, 'Fatima'),
(307, 'Gautam'),
(308, 'Heena'),
(309, 'Zubin'),
(310, 'Poonam'),
(311, 'Nisha');
create table orders
(
orderID int primary key,
id int,
amount float check(amount>=0),
order_date date,
foreign key (id) references customer(id)
on update cascade
on delete cascade
);
insert into orders
(orderID,id,amount,order_date)
values
(2001, 305, 650, '2023-05-01'),
(2002, 301, 950, '2024-04-20'),
(2003, 303, 300, '2022-09-11'),
(2004, 308, 300, '2023-04-20'),
(2005, 306, 990, '2024-08-22'),
(2006, 310, 920, '2024-01-25'),
(2007, 305, 750, '2024-06-30'),
(2008, 309, 450, '2024-05-15'),
(2009, 301, 450, '2023-10-13'),
(2010, 311, 760, '2024-03-12'),
(2011, 308, 950, '2024-03-08'),
(2012, 303, 1000, '2024-06-19'),
(2013, 304, 800, '2023-07-07'),
(2014, 302, 800, '2024-02-02'),
(2015, 309, 250, '2022-03-10'),
(2016, 304, 600, '2022-12-09'),
(2017, 307, 900, '2021-11-30'),
(2018, 302, 700, '2022-06-25'),
(2019, 311, 600, '2022-09-30'),
(2020, 310, 880, '2023-07-07'),
(2021, 307, 600, '2024-01-15'),
(2022, 306, 400, '2023-02-10');
select c.id,c.name,o.orderID,o.amount,o.order_date from customer as c
left join orders as o
on c.id=o.id;