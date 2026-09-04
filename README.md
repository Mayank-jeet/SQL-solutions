# SQL Solutions

A curated collection of SQL practice solutions stored as standalone `.sql` files.  
Each file includes the problem statement, table setup, sample data, and one or more solution queries, making the repository useful for learning, revision, and interview preparation.

## Features

- Covers SQL problems across different levels such as beginner, intermediate, and advanced.
- Each file is self-contained and can be run independently.
- Includes schema creation and sample inserts for reproducibility.
- Good for practicing joins, grouping, subqueries, CTEs, window functions, ranking, and more.
- Easy to browse and copy into any SQL editor.

## Repository Structure

```text
SQL-solutions/
├── Advanced_SQL_ Display a rank of employees based on their salaries within departments. (RANK, DENSE_RANK).sql
├── beginner_SQL_...
├── intermediate_SQL_...
└── other_problem_files.sql
```

## File Naming Convention

Files are named using a descriptive pattern so the topic can be identified quickly.

Example formats:

```text
Advanced_SQL_Question description.sql
beginner_SQL_Question description.sql
intermediate_SQL_Question description.sql
Question description.sql
```

Notes:

- The prefix may vary depending on difficulty level.
- Some files may start with `Advanced_SQL`, `beginner_SQL`, or `intermediate_SQL`.
- Some files may contain only the question title without a level prefix.
- Keep the filename descriptive so it is easy to search and understand.

## How Each File Is Organized

Most `.sql` files follow this structure:

1. Problem statement as a SQL comment.
2. Table creation queries.
3. Sample data insertion queries.
4. Solution query or queries.
5. Optional notes or alternate approaches.

### Example

```sql
-- Advanced_SQL | Display a rank of employees based on their salaries within departments. (RANK, DENSE_RANK)

create table employee
(
 id int primary key,
 name varchar(50),
 department varchar(50),
 salary int
);

insert into employee
(id, name, department, salary)
values
(101,'Alice','HR',45000),
(102,'John','IT',52000),
(103,'Charlie','Finance',47000),
(104,'David','Marketing',NULL),
(105,'Eve','IT',61000),
(106,'Frank','Sales',30000),
(107,'Grace','HR',42000),
(108,'Heidi','Finance',48000),
(109,'Ivan','Sales',NULL),
(110,'Judy','Marketing',35000),
(111,'Kevin','IT',58000),
(112,'Laura','HR',41000),
(113,'Mallory','Sales',29000),
(114,'Niaj','Finance',51000),
(115,'Oscar','IT',60000);

select
    name,
    salary,
    department,
    rank() over (partition by department order by salary desc) as dept_rank
from employee;

select
    name,
    salary,
    department,
    dense_rank() over (partition by department order by salary desc) as dept_dense_rank
from employee;
```

## Author

### Mayank Jeet

- GitHub: [@Mayank-jeet](https://github.com/Mayank-jeet)
- LinkedIn: [Mayank Jeet](https://www.linkedin.com/in/mayank-jeet-211583364/)
