-- TCL (transaction control language)

-- start--> DML
-- stop--> DDL,DCL

-- TCL: commit, rollback, savepoint

select @@autocommit;

set autocommit=0; # by default it is on so, we have stopped it

use regex1;

create table yash(id int, fname varchar(20));
insert into yash values(10,'shubham');
select * from yash;
commit;


insert into yash values(11,'aman');
select * from yash;
rollback;

insert into yash values(12,'shubham');
update yash set fname='regex';
select * from yash;

create table dd(id int);   # because we have run a ddl command the above transaction is stopped. it is saved.


insert into yash values(13,'isha');
select * from yash;
update yash set fname='uu';
select * from yash;
savepoint yash_raj_sv;

insert into yash values(14,'pp');
select * from yash;
rollback to yash_raj_sv;