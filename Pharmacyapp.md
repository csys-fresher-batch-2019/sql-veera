
# Pharmacy store Management
*http://pharmacystore.in
## Features
*user can able to view all pharmacy products
### Feature 1:Company Details

```sql

create table company
(
company_id number,
company_name varchar2(30) not null,
company_type varchar2(30) not null,
company_address varchar2(30) not null,
constraint company_id_pk primary key(company_id),
constraint company_id_uq unique (company_name)
);
insert into company(company_id,company_name,company_type,company_address)
values(3001,'Bayer AG','Medictions for addiction','T1,3rd Street,Erode');
insert into company(company_id,company_name,company_type,company_address)
values(3002,'ABBVIE','Benzodiazepines','T2,2nd Street,trichy');
insert into company(company_id,company_name,company_type,company_address)
values(3003,'SANOFIE','Medictions for dementia','D3,1st Street,chennai');

select * from company;

```
| SI.NO | COMPANY_ID | COMPANY_NAME | COMPANY_TYPE              | COMPANY_ADDRESS            |
|-------|------------|--------------|---------------------------|----------------------------|
| 1     | 3001       | BAYER AG     | Medications for addiction | T1,3rd street, Erode       |
| 2     | 3002       | ABBVIE       | Benzodiazepines           | T2,2nd street, Trichy      |
| 3     | 3004       | SANOFIE      | Medications for dementia  | D3,1st street, Chennai     |
### Feature 2:List of all pharmacy products

#### query:

``` SQL

create table product(
product_id number ,
company_id number not null,
product_name varchar(20) not null,
cost number not null,
dose number not null,
constraint product_id_pk primary key(product_id),
constraint company_id_fk foreign  key (company_id) references company(company_id),
constraint product_name_uq unique(product_name)
);

insert into product(product_id,company_id,product_name,cost,dose)
values(1000,3001,'Humira',250,10);
insert into product(product_id,company_id,product_name,cost,dose)
values(1001,3002,'Eliquis',200,6);
insert into product(product_id,company_id,product_name,cost,dose)
values(1002,3003,'Avastin',300,8);


select * from product;

```

| SI.NO | PRODUCT_ID |COMPANY_ID |  PRODUCT_NAME| COST | DOSE |
|-------|------------|---------- |--------------|------|------|
| 1     | 1000       | 3001      |  HUMIRA      | 250  | 10   |
| 2     | 1001       | 3002      | ELIQUIS      | 200  | 6    |
| 3     | 1002       | 3003      | AVASTIN      | 300  | 8    |
