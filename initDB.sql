create schema if not exists department; 
create table if not exists department.employee
(
    id serial primary key,
    name varchar(256),
    soname varchar(256),
    email varchar(256),
    birthday_date date,
    position varchar(256)
);

insert into department.employee(name,soname,email,birthday_date,position)
values('Artyom','Medvedev','temp@gmail.com','2000-09-15','Developer');