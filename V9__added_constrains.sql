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
                       size float constraint positive_size check(size > 5.00)
);

create table address (
                         id serial primary key ,
                         hash_adr varchar(80) not null,
                         balance float not null
);

create table transactions (
                             id serial primary key,
                             hash_tr varchar(255),
                             status varchar(255),
                             id_block int,
                             time_tr char(20),
                             id_from int,
                             id_to int,
                             value_tr float,
                             fee float,
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