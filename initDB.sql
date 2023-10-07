create schema if not exists department; 
create table if not exists department.employee
(
    id serial primary key,
    name varchar(256) NOT NULL,
    soname varchar(256) NOT NULL,
    email varchar(256) NOT NULL,
    birthday_date date NOT NULL,
    position varchar(256) NOT NULL
);

insert into department.employee(name,soname,email,birthday_date,position)
values('Artyom','Medvedev','temp@gmail.com','2000-09-15','Developer');