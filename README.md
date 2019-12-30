# Pharmacy store Management
*http://pharmacystore.in
## Features
*user should be able to view all pharmacy products
### Feature 1:List of all pharmacy products

#### query:

```

create table pharmacy(
product_id number ,
product_name varchar2(20) not null,
medicine_id number not null,
cost_ number not null,
dose number not null,
constraint product_id_pk primary key(product_id));

insert into pharmacy(product_id,product_name,medicine_id,cost_,dose)
values(1000,'Humira',501,250,10);
insert into pharmacy(product_id,product_name,medicine_id,cost_,dose)
values(1001,'Eliquis',502,200,6);
insert into pharmacy(product_id,product_name,medicine_id,cost_,dose)
values(1002,'Avastin',503,300,8);
insert into pharmacy(product_id,product_name,medicine_id,cost_,dose)
values(1003,'Herceptin',504,280,14);
insert into pharmacy(product_id,product_name,medicine_id,cost_,dose)
values(1004,'Keytruda',505,350,20);
 
 
 select * from pharmacy;


```
