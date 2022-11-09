select number, count(*) as "numbers"
from block
where number = 103
group by number;

select address.hash_adr, Max(block.number) as "numbers"
from block
    join address on block.id = address.id
group by address.hash_adr;

select transactions.hash_tr as "hash",
            Min(block.number) as "numbers"
from block
    join transactions on transactions.id = block.id
group by transactions.hash_tr;

select blockchain.id_address_main_coin as "id_address",
        Min(block.number) as "numbers"
from block
    join blockchain on blockchain.id = block.id
group by blockchain.id_address_main_coin
having Min(block.number) >= 101;

select hash_tr as "hash",
SUM (value_tr)
from transactions
group by hash_tr;

select time as "block_time", size as "block_size",
AVG(number)
from block
group by time, size;