use sakila;
select * from payment;
select max(amount) from payment where amount < (select max(amount) from payment);

# DDL(structure) and DML

create database march3;

create table regex (id int, name varchar(20));
insert into regex values(1,'tushar');
select * from regex;

insert into regex(name) values('ankit');

# ctas
create table y2 as select * from sakila.actor;
select * from y2;

create table y3 as select actor_id,first_name from sakila.actor;
select * from y3;

create table y4 as select actor_id as id, first_name as name from sakila.actor;
select * from y4;
desc y4;

# delete
select * from y3;
delete from y3 where actor_id in(2,4);

# update  if condition is not given then it will update all rows. 
update y3 set first_name='regex';

update y3 set first_name='ankit' where actor_id in(3,5); 

# drop it will removee table and data it do not allow any condition


# ddl ==> drop, truncate
# truncate
create table y5 as select * from sakila.actor;
select * from y5;

#what is the difference between delete,

create table companies(id int);
insert into companies values(10);
select * from companies;



desc companies;

# alter
alter table companies add column phone varchar(15);
alter table companies add column employee_count3 int not null;
alter table companies add column enp_name varchar(14) not null;

alter table companies drop column employee_count3;


rename table companies to newcompany1;
select * from newcompany1;

alter table newcompany1 rename to companies;
select * from companies;

alter table companies rename column phone to company_name;
select * from companies;

alter table companies add primary key (id);

alter table companies add constraint regex_company_name_uk unique(company_name);  
desc companies;
alter table companies drop constraint regex_company_name_uk; 

alter table companies modify company_name int;
select * from companies;



