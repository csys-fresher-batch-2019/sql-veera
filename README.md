# Pharmacy store Management
*http://pharmacystore.in
## Features
*user can able to view all pharmacy products
### Feature 1:List of all pharmacy products

#### query:

```

create table product(
product_id number ,
product_name varchar(20) not null,
medicine_id number not null,
cost number not null,
dose number not null,
constraint product_id_pk primary key(product_id),
constraint product_name_uq unique(product_name),
constraint medicine_id_uq unique(medicine_id)
);

insert into product(product_id,product_name,medicine_id,cost,dose)
values(1000,'Humira',501,250,10);
insert into product(product_id,product_name,medicine_id,cost,dose)
values(1001,'Eliquis',502,200,6);
insert into product(product_id,product_name,medicine_id,cost,dose)
values(1002,'Avastin',503,300,8);
insert into product(product_id,product_name,medicine_id,cost,dose)
values(1003,'Herceptin',504,280,14);
insert into product(product_id,product_name,medicine_id,cost,dose)
values(1004,'Keytruda',505,350,20);

select * from product;
```

### Feature 2:Stock Details
```sql

create table stock(
stock_id number,
stock_name varchar2(50),
stock_number number not null,
stock_type varchar2(50),
stock_description varchar2(50),
constraint stock_id_pk primary key(stock_id));

insert into  stock(stock_id, stock_name,stock_number,stock_type,stock_description )
values(  9001,'local',2095,'packed','available');
insert into  stock(stock_id, stock_name,stock_number,stock_type,stock_description )
values(  9002,'Export',2096,'packed','Not available');
insert into  stock(stock_id, stock_name,stock_number,stock_type,stock_description )
values(  9003,'local',2097,'packed','available');

select * from stock;
```
### Feature 3:Company details

| SI.NO | COMPANY_ID | COMPANY_NAME | COMPANY_TYPE              | COMPANY_ADDRESS            |
|-------|------------|--------------|---------------------------|----------------------------|
| 1     | 3001       | BAYER AG     | Medications for addiction | t1,3rd street, Erode       |
| 2     | 3002       | ABBVIE       | Benzodiazepines           | T2,2nd street, trichy      |
| 3     | 3004       | SANOFIE      | Medications for dementia  | D3,1st street, chennai     |
| 4     | 3005       | MERCK&CO     | Stimulant mediction       | B6,4th street,  coimbatore |
