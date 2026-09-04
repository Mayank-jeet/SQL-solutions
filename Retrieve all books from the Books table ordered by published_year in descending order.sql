-- Retrieve all books from the Books table ordered by published_year in descending order.
-- Table: Books (columns: id, title, author, published_year)
create table Book(
id int primary key,
title varchar(50),
author varchar(50),
published_year int
);
insert into Book
(id,title,author,published_year)
values
(100,"To Kill a Mockingbird","Harper Lee",1960),
(101,"1984","George Orwell",1949),
(102,"The Great Gatsby","F. Scott Fitzgerald",1925),
(103,"The Catcher in the Rye","J.D. Salinger",1951),
(104,"Pride and Prejudice","Jane Austen",1813),
(105,"The Hobbit","J.R.R. Tolkien",1937),
(106,"The Da Vinci Code","Dan Brown",2003),
(107,"The Alchemist","Paulo Coelho",1988),
(108,"Harry Potter and the Philosopher's Stone","J.K. Rowling",1997),
(109,"A Game of Thrones	George","R.R. Martin",1996);
select * from Book
order by published_year desc;