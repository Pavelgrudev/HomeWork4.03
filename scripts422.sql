create table cars(
    id serial primary key,
    brand varchar(20)not null,
    model varchar(20)not null,
    price INTEGER not null
);

create table persons
( id serial primary key,
name varchar(20)not null,
age  INTEGER not null,
hasDriverLicense boolean not null,
car_id integer references cars(id)
);

insert into cars(brand, model, price)
values('BMW','M3',6000000),
      ('vw','jetta',3000000),
      ('toyota','camry' 1000000);

insert into persons(name, age, hasDriverLicense, car_id)
values('Ivanov Ivan',44,true,1),
      ('Semenov Semen',40,true,2),
      ('Petrov petr',20,true,3),
      ('Leonov Leon',24,true,3);