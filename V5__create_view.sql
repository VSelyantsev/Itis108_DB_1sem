
create view block_id 
as select * from block 
where id >= 3;

create view blockchain_name 
as select * from blockchain 
where name = 'KAZANMALL';

create view transactions_status 
as select * from transactions 
where status = 'active';