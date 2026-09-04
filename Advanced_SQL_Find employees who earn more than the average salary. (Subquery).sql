-- Advanced_SQL | Find employees who earn more than the average salary. (Subquery)
create table employee
 (
 id int primary key,
 name varchar(50),
 department varchar(50),
 salary int,
 hiring_date varchar(10)
 );
 insert into employee
 (id,name,salary,department,hiring_date)
 values
(101,'Alice',45000,'HR','2018-04-12'),
(102,'John',52000,'IT','2019-07-01'),
(103,'Charlie',47000,'Finance','2020-02-15'),
(104,'David',NULL,'Marketing','2017-05-30'),
(105,'Eve',61000,'IT','2016-11-22'),
(106,'Frank',30000,'Sales','2021-01-10'),
(107,'Grace',42000,'HR','2019-03-18'),
(108,'Heidi',48000,'Finance','2020-08-05'),
(109,'Ivan',NULL,'Sales','2018-10-09'),
(110,'Judy',35000,'Marketing','2015-09-20'),
(111,'Kevin',58000,'IT','2021-04-25'),
(112,'Laura',41000,'HR','2020-12-01'),
(113,'Mallory',29000,'Sales','2017-06-19'),
(114,'Niaj',51000,'Finance','2018-03-13'),
(115,'Oscar',60000,'IT','2016-02-08');
select name,department,salary from employee as e
where salary >
	(select avg(salary) from employee
    where department=e.department);