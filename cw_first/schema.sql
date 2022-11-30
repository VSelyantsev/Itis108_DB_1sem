drop table city cascade;
drop table filial cascade;
drop table debt cascade;
drop table client cascade;

create table city (
    id serial primary key,
    name varchar(20),
    county varchar(20)
);

create table filial (
    id serial primary key,
    name varchar(20),
    city_id int not null,
    constraint fk_city_id foreign key(city_id) references city(id)
);

create table debt (
    id serial primary key,
    credit_sum int not null,
    filial_id int not null,
    constraint fk_filial_id foreign key(filial_id) references filial(id),
    taking_date date,
    available boolean
);

create table client (
    id serial primary key,
    fio text,
    debt_id int not null,
    constraint fk_debt_id foreign key(debt_id) references debt(id),
    passport int not null
);

insert into city (name, county)
    values ('Kazan', 'Russia'),
            ('Moscow', 'Russia');

insert into filial(name, city_id)
    values ('Bistro_Money', 1),
           ('Dolgo_Money', 2);

insert into debt(credit_sum, filial_id, taking_date, available)
    values (50000, 1, '2022-11-30', true),
           (50000, 1, '2022-07-24', false),
           (70000, 2, '2022-06-15', false),
           (70000, 2, '2022-03-12', true);

insert into client(fio, debt_id, passport)
    values ('Яруллин Данис', 4, 1234),
           ('Казначеев Илья', 3, 1243),
           ('Селянцев Владислав', 2, 1432),
           ('Тарасов Максив', 1, 4321);


-- (3) --
select client.id, fio, available
    from client
        join debt d on d.id = client.debt_id
    where available = false;

-- (4) --
SELECT city.name, Sum(credit_sum) AS max_sum
    FROM city
        JOIN filial f on f.city_id = city.id
        JOIN debt d on d.filial_id = d.id
group by city.name
ORDER BY max_sum DESC limit 1;





