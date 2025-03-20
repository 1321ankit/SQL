use sakila;


create table employees(id int primary key auto_increment, dept varchar(20),salary int);

insert into employees(dept, salary) values('hr',200),('hr',300),('hr',100),('marketing',70),
('marketing',50),('marketing',200),('marketing',400),('marketing',200),('marketing',600),('dsa',150),
('dsa',120),('dsa',40),('dsa',90),('dsa',500);

select * from employees;

-- windows function
select *, sum(salary) over(), max(salary) over(), avg(salary) over() from employees;

select *, sum(salary) over(), sum(salary) over(partition by dept)
from employees;

select *, sum(salary) over(order by salary desc) from employees;

select *, sum(salary) over(partition by dept order by salary desc) from employees;

# muje avg(salary each dept),running avg(each dept) 

select avg(salary) over(partition by dept), avg(salary) 
over(partition by dept order by salary desc) from employees;

-- row_number()
select *, row_number() over(partition by dept order by salary) from employees;

-- rank()
select *, rank() over(order by salary) from employees;
select *, rank() over(partition by dept order by salary) from employees;

-- dense_rank()
select *,dense_rank() over(order by salary) from employees;


-- lag() Gets the value from the previous row
select *, lag(salary) over(partition by dept order by salary) from employees;

-- lead() Gets the value from the next row
select *, lead(salary, 2)
 over(partition by dept order by salary) from employees;

-- ntile(n) Splits data into n equal buckets
select *,ntile(3) over(order by salary) from employees;
