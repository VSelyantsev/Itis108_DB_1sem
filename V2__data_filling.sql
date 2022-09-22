insert into block(id, number, time, size)
    values (1, 100, 23.17, 15.3),
           (2, 101, 23.18, 20.6),
           (3, 102, 23.19, 21.9),
           (4, 103, 23.20, 22.0),
           (5, 103, 23.21, 22.5),
           (6, 104, 23.45, 22.14),
           (7, 105, 23.50, 22.30),
           (8, 106, 23.55, 22.35),
           (9, 108, 00.00, 26.78),
           (10, 109, 00.30, 40.50);
		   
insert into address(id, hash_adr, balance)
    values (1, 23.16, 41.3),
           (2, 23.17, 41.4),
           (3, 23.18, 41.5),
           (4, 23.19, 43.6),
           (5, 23.20, 44.3),
           (6, 23.25, 44.47),
           (7, 23.26, 44.48),
           (8, 23.27, 44.5),
           (9, 23.28, 44.9),
           (10, 24.0, 45.0);
		   
insert into transactions(id, hash_tr, status, id_block, time_tr, id_from, id_to, value_tr, fee)
    values (1, 40.5, 'active', 3, 7.19, 2, 3, 100, 16.3),
           (2, 40.83, 'non-active', 2, 7.20, 3, 4, 105, 17.3),
           (3, 40.86, 'active', 5, 7.23, 4, 5, 110, 18.4),
           (4, 40.89, 'active', 6, 7.25, 6, 7, 110, 19.7),
           (5, 40.9, 'non-active', 5, 7.29, 8, 9, 115, 20.3),
           (6, 40.92, 'non-active', 7, 7.30, 10, 11, 120, 21.4),
           (7, 41.5, 'active', 1, 7.32, 12, 13, 125, 22.0),
           (8, 41.6, 'active', 8, 7.35, 14, 15, 130, 26.8),
           (9, 41.8, 'active', 10, 7.38, 1, 17, 135, 29.1),
           (10, 43.1, 'non-active', 9, 7.40, 18, 19, 140, 33.3);
		   
insert into blockchain(id, name, id_address_main_coin)
    values (1, 'KAZANMALL', 4),
           (2, 'MEGA', 5),
           (3, 'TANDEM', 10),
           (4, 'YUZHNIY', 6),
           (5, 'ASHAN', 3);
		   
insert into adr_transaction(address_id, transaction_id)
    values (5, 2),
           (6, 5),
           (8, 3),
           (10, 4),
           (3, 6),
           (2, 7),
           (1, 8),
           (4, 10),
           (7, 9),
           (9, 1);