WITH block_id AS (
    select id,
        (CASE
            when id <= 3
                then 'top places'
            else 'Thanks for participating'
                end) block_participant
    from block)


select id, block_participant
from block_id;

WITH transactions_status AS (
    select status,
        (CASE
            when status = 'active'
                then 'all works fine'
            else 'something went wrong'
                end) transactions_isOkay
    from transactions)

select status, transactions_isOkay
from transactions_status;

WITH t AS (
    update address set hash_adr = '0xD0c0d040c9A1b82F175E3D5686a945de67f7c9a0'
    returning *
)
select * from t;


WITH ts AS (
    DELETE FROM address
        WHERE balance = 10
        returning *
)
DELETE FROM adr_transaction;