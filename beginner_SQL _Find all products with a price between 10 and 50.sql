-- beginner_SQL | Find all products with a price between 10 and 50.
create table products
(
id int primary key,
name varchar(50),
price int checK(price>=0),
quantity int checK(quantity>=0)
);
insert into products
(id,name,price,quantity)
values
(201,'Pen',10,200),
(202,'Notebook',50,150),
(203,'Pencil',5,300),
(204,'Eraser',8,250),
(205,'Sharpener',12,220),
(206,'Ruler',15,180),
(207,'Marker',25,100),
(208,'Highlighter',30,120),
(209,'Glue',20,90),
(210,'Tape',18,80),
(211,'Scissors',45,60),
(212,'Stapler',70,40),
(213,'Paper Clips',5,500),
(214,'File Folder',35,130),
(215,'Calculator',250,30),
(216,'Desk Organizer',120,25),
(217,'Sticky Notes',15,200),
(218,'Whiteboard',400,10),
(219,'Board Marker',35,110),
(220,'Chalk',2,600),
(221,'Duster',20,100),
(222,'Geometry Box',90,45),
(223,'Chart Paper',10,300),
(224,'Plastic Cover',3,500),
(225,'Binder',60,70),
(226,'Label Sheet',8,350),
(227,'Drawing Book',40,140),
(228,'Sketch Pen',60,85),
(229,'Craft Paper',25,200),
(230,'Exam Pad',35,100);
select * from products
where price between 10 and 50;