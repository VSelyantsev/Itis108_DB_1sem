WITH RECURSIVE r AS (
    select id, hash_adr, balance
    from address
    where id > 4

    union

    select address.id, address.hash_adr, address.balance
    from address
        JOIN r
            on address.id = r.id
)

select * from r;


WITH RECURSIVE m AS (
    select id_block, id_from, value_tr
    from transactions
    where value_tr > 100

    union

    select transactions.id_block, transactions.id_from,
           transactions.value_tr
    from transactions
        JOIN m
            on transactions.value_tr = m.value_tr
)

select * from m;