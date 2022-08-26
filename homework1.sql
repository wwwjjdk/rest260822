create table person
(
    id             serial       not null,
    nameOf         varchar(250) not null,
    surname        varchar(250) not null,
    age            int check ( age > 0 ),
    phone_number   int          default (0),
    city_of_living varchar(250) default ('неизвестен'),
    primary key (nameOf, surname, age)
);

insert into person(nameOf,surname,age, city_of_living)
values ('gosha','savchenko',1, 'MOSCOW');

insert into person(nameOf, surname,age,  city_of_living)
values ('grisha','moskalenko',28,'PERM');

select * from  person;