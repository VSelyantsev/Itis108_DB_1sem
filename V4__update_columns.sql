update block
    set number = 130,
        size = 40.3
where id = 8;

update address
    set hash_adr = '40.6',
        balance = '46.7'
where id = 6;

update transactions
    set status = 'non-active'
where id = 1;

update blockchain
    set name = 'XL'
where id_address_main_coin = 10;

update adr_transaction
    set address_id = 3
where transaction_id = 2;