drop table shopping;
create table shopping(
book_id number primary key,
book_name varchar2(30) not null,
auther_name varchar2(30) unique,
price number not null,
publisher varchar2(30) not null,
version number not null
);
insert into shopping(book_id, book_name, auther_name, price, publisher, version)
values(1000,'The secret','Rhonda Bryne',345,'king',2);
insert into shopping(book_id, book_name, auther_name, price, publisher, version)
values(1001,'The helif','Rhon',359,'hero',3);
insert into shopping(book_id, book_name, auther_name, price, publisher, version)
values(1002,'The wings','jack',455,'wb',1);
insert into shopping(book_id, book_name, auther_name, price, publisher, version)
values(1004,'The magic','helmith',545,'universal',4);
select * from shopping;


create table orders(
order_id number primary key,
user_id number not null,
book_id number not null,
order_date timestamp not null,
delivery_date timestamp not null,
total_amount number not null check( total_amount>0),
quantity number not null check (quantity>=1),
status varchar(20),
constraint book_id_fk foreign key(book_id) references shopping(book_id));
insert into orders(order_id,user_id,book_id,order_date,delivery_date,total_amount,quantity,status)
values(2000,3000,1001,sysdate,sysdate,453,1,'ordered');
select * from orders;

drop table stock;
create table stock(
order_id number not null,
constraint order_id_fk foreign key(order_id) references orders(order_id),
book_id number not null,
constraint book_id_fk1 foreign key(book_id) references shopping(book_id),
product_stock number not null
);
insert into stock(order_id, book_id, product_stock)
values(2000,1001,12);
select * from stock;
select 
