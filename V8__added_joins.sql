select address.id, address.hash_adr, block.number
from address
join block on block.id = address.id;

select transactions.id, transactions.time_tr, transactions.value_tr, address.id
from transactions
join address on address.id = transactions.id;

select * from block left join address on block.id = address.id;

select * from transactions right join block on transactions.id_block = block.id;

select * from blockchain b full join address a on b.id = a.id;

select * from blockchain cross join transactions;

select * from address natural join block;

select b.name
from blockchain b
where exists(select 1
            from address a
            where a.id = b.id);

select b.number
from block b
where not exists(select 1
             from transactions t
             where t.id = b.id);