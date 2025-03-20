use sakila;

select * from payment;


select * from (select amount, dense_rank() 
over(order by amount desc) as rating from payment) as tab where rating=2;

with cte as 
(select amount, dense_rank() over(order by amount desc) as rating from payment)
select * from cte;

create temporary table new_payment as select * from payment;

select * from new_payment;

use sakila;

with
cte1 as (select * from actor where actor_id>2),
cte2 as (select * from film_actor where film_id=30)
select cte1.actor_id,film_id from cte1 join cte2 where cte1.actor_id=cte2.actor_id;

-- parameterized cte


-- recursive cte
with recursive num_table
as (select 10 as num
     union
          select num+1 from num_table where num<13)
select * from num_table;

-- select actor_id,first_name,fiull name from 
-- table where either actor id is > 5 and name is nick

with recursive cte as
(select actor_id,first_name,concat(first_name,last_name) from actor where actor_id > 5 
union 
select actor_id,first_name,concat(first_name,last_name) from actor where first_name ="NICK")
select * from cte;

