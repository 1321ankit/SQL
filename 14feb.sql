use sakila;
select * from actor;


and  or  


select * from actor where actor_id>2 and first_name='JOHNNY';


select * from actor where first_name='ED' or first_name='NICK';

select * from actor where 
     (first_name='NICk' or first_name='ED')
     and actor_id>2;
     
     
function--->
block of code ---> code reuseable
code redable

string function--->
select first_name, lower(first_name) from actor;

select first_name, last_name, concat(first_name,'_',last_name)
from actor;

select first_name, last_name, concat(first_name,'_',last_name),
concat_ws(' ',first_name,last_name)
from actor;


select * from actor
where concat(first_name,last_name)='EDCHASE';


-- substr
select first_name, 
substr(first_name,2) from actor;



select first_name, 
substr(first_name,-3) from actor;


----instrw

select first_name, 
instr(first_name,'E') from actor;


select length('	漢字'), char_length('	漢字') from dual;

SELECT LENGTH('漢字'), CHAR_LENGTH('漢字') FROM dual;

select first_name, lpad(first_name,3,'$') from actor;

select '   hey    ',
trim('   hey    ') from dual;


select '   hey    ',
trim('   hey    '),
trim( leading 'z' from 'zzzheyzzz'),
trim( trailing 'z' from 'zzzheyzzz'),
trim( both 'z' from 'zzzheyzzz')
 from dual;
 
 
 
 