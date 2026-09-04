-- Get the average salary for each department..
create table Employee(
id int primary key,
name varchar(50),
department varchar(50),
salary int default 30000
);
insert into Employee
(id,name,salary,department)
values
(1,"Aman",32000,"HR"),
(2,"Rohan",45000,"IT"),
(3,"Kirti",28000,"Finance"),
(4,"Ankit",52000,"IT"),
(5,"Shubham",60000,"Sales"),
(6,"Manav",30000,"HR"),
(7,"Priya",47000,"Finance"),
(8,"Aditya",55000,"IT"),
(9,"Khushi",39000,"Sales"),
(10,"Kunal",31000,"HR");
select department,avg(salary) from Employee
group by department 
order by avg(salary);