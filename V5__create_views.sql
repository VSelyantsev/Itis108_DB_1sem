create view block_id 
as select * from block 
where id >= 3; 

create view block_id_time 
as select * from block_id 
where time LIKE '%15%'
WITH local CHECK OPTION; 

create view block_id_time_size
as select size from block_id_time
where size <= 20 
WITH CASCADED CHECK OPTION;