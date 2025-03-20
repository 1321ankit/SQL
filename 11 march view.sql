-- view
-- cte
-- query ko readable
-- expression
-- again use kr sakta hu


-- temporary table
-- views:
-- user ==> queries interact kr paye
-- dont store data on disk
-- reference to orignal table
-- using query


use regex1;
show tables;

create table payment as select * from sakila.payment;

select * from payment;

create view pay_view
as select payment_id,customer_id from payment;

select * from pay_view;

create table payment2 as select payment_id,customer_id from sakila.payment where payment_id<5;

create view payment_v2 as select * from payment2;

select * from payment_v2;

insert into payment_v2 values(5,10);
select * from payment2;


select database();

select * from sakila.actor;
select * from sakila.film_actor;

create view common_table as select actor.actor_id,actor.first_name,actor.last_name,film_actor.film_id,film_actor.last_update from sakila.actor join sakila.film_actor on actor.actor_id=film_actor.actor_id;

select * from common_table;

-- complex view
use regex1;

CREATE TABLE t1 (a INT);
CREATE VIEW v1 AS SELECT * FROM t1 WHERE a < 2
WITH CHECK OPTION;
CREATE VIEW v2 AS SELECT * FROM v1 WHERE a > 0
WITH LOCAL CHECK OPTION;
CREATE VIEW v3 AS SELECT * FROM v1 WHERE a > 0
WITH CASCADED CHECK OPTION;

 INSERT INTO v2 VALUES (2);
INSERT INTO v3 VALUES (2);

