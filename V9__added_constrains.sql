drop table if exists
    block,
    blockchain,
    address,
    transactions,
    adr_transaction
cascade;



create table block (

                       id serial primary key,
                       number int not null,
                       time char(20) check(char_length(time) > 1),
                       size float
                            constraint positive_size check(size > 5.00)
);

create table address (
                         id serial primary key ,
                         hash_adr varchar(80) not null,
                         balance float not null
);

create table transactions (
                             id serial primary key,
                             hash_tr varchar(255) check(char_length(hash_tr) > 1),
                             status varchar(255) check(char_length(status) > 1),
                             id_block int not null,
                             time_tr char(20) not null,
                             id_from int not null,
                             id_to int not null,
                             value_tr float not null,
                             fee float not null,
                             FOREIGN KEY (id_block) REFERENCES block (id)
);



create table blockchain (
                            id serial primary key ,
                            name varchar(255) unique not null,
                            id_address_main_coin int,
                            FOREIGN KEY (id_address_main_coin) REFERENCES address (id)
);


create table adr_transaction (
    address_id bigint,
    transaction_id bigint,
    foreign key (address_id) references address (id),
    foreign key (transaction_id) references transactions (id)
);