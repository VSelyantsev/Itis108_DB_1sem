
select number, time
from block
    where (id > 3);

select size
from block
    where (size >= 25);

select balance
from address
    where balance > 40;

select hash_adr
from address;

select status, value_tr
from transactions
    where status = 'active' and value_tr > 120;

select id, time_tr
from transactions
    where id > 6;

select name
from blockchain
    where name = 'ASHAN';

select id, name
from blockchain
    where (id > 3);

select transaction_id
from adr_transaction
    where (address_id >= 3);

select address_id, transaction_id
from adr_transaction
    where address_id < 4 and transaction_id > 5;