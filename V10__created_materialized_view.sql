create MATERIALIZED VIEW block_info as select * from block;
select * from block_info;

create MATERIALIZED VIEW transactions_view as select * from transactions;
select * from transactions_view;

create MATERIALIZED VIEW address_view as select * from address with no data;

insert into address(id, hash_adr, balance)
    values (11, 24.0, 45.0);

refresh materialized view address_view;
select * from address_view;