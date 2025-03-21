use regex1;
create table product123(pid int primary key, amount int);
insert into product123 values(101,876),(102,745);
select * from product123;

create table order123(oid int, city varchar(20), product_id int,
foreign key (product_id) references product123(pid) );

insert into order123 values(9632,'jaipur',101);
insert into order123 values(9634,'jaipur',202);  # hence 202 not in pid thats why cannot update.
select * from order123;


create table parent(id int primary key, name varchar(20));
insert into parent values(01,'ayush'),(02,'pyush'),(03,'ajay');
select * from parent;


-- create table child(id int primary key, pid int,
-- foreign key(pid) references partent(id) on update cascade);

CREATE TABLE child (
    id INT PRIMARY KEY,
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES parent(id) ON UPDATE CASCADE
);

INSERT INTO child (id, parent_id) VALUES (10, 1);

UPDATE parent SET id = 4 WHERE id = 1;
