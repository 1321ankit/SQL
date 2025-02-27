use regex1;
create database regex1;
create table employee01(id int);
insert into employee01 values(10),(20),(null),(30);
select count(*) from employee01;
select count(id) from employee01;


create table employee03(id int not null);
insert into employee03 values(10),(20),(30);
insert into employee03 values(null);

create table employee04(id int, salary int default 0);
insert into employee04 values(10,99),(20,100);
insert into employee04(id) values(30);
select * from employee04;
insert into employee04 values(40,null);


drop table employee02;
create table employee02(id int,salary int unique);
insert into employee02 values(10,99),(20,100);
insert into employee02 values(40,null);
insert into employee02 values(50,null);
select * from employee02;

drop table employee03;
create table employee03(id int primary key,salary int unique);
insert into employee03 values(10,99),(20,100);
insert into employee03 values(40,null);
insert into employee03 values(null,102);

drop table employee02;
create table employee02(id int primary key, fname varchar(20),salary int,
constraint regex_emp_salart_uk unique(salary));
insert into employee02 values(10,'a',99),(20,'b',99);

create table student01(st_id int, st_name varchar(20), fee int not null, clg_name varchar(20) default 'regex', ph_no int(10),
constraint regex_stu_stid_stname_pk primary key(st_id,st_name), 

constraint regex_stu_pno_uk unique(ph_no) );

