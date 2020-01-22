
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
### Feature 2:ProductDetails
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

### Feature 3: Sell Details


```sql
create table sell(
sell_id number ,
sell_name varchar2(30) not null,
sell_type varchar2(30) not  null,
sell_description varchar2(30) not null
);

insert into sell(sell_id,sell_name, sell_type, sell_description)
values(7000,'Aravind','Half','Self');
insert into sell(sell_id,sell_name, sell_type, sell_description)
values(7001,'Hari','Full','Docter Prescription');
insert into sell(sell_id,sell_name, sell_type, sell_description)
values(7002,'Ravi','Half','Docter Prescription');

select * from sell;
```
| SI.NO | SELL_ID | SELL_NAME | SELL_TYPE | SELL_DESCRIPTION    |
|-------|---------|-----------|-----------|---------------------|
| 1     | 7000    | ARAVIND   | HALF      | SELF                |
| 2     | 7001    | HARI      | FULL      | DOCTER PRESCRIPTION |
| 3     | 7002    | RAVI      | FULL      | DOCTER PRESCRIPTION |



### Feature 4:Stock1 Details


```sql
create table stock1(
stock1_id number,
product_id number not null,
stock1_name varchar2(50),
stock1_number number not null,
stock1_type varchar2(50),
stock1_status varchar2(50),
constraint stock1_id_pk primary key(stock1_id),
constraint product_id_fk foreign key(product_id) references product(product_id));

insert into  stock1(stock1_id,product_id, stock1_name,stock1_number,stock1_type,stock1_status )
values(  9001,1000,'local',2095,'packed','available');
insert into  stock1(stock1_id,product_id, stock1_name,stock1_number,stock1_type,stock1_status )
values(  9002,1001,'Export',2096,'open','Not available');
insert into  stock1(stock1_id,product_id, stock1_name,stock1_number,stock1_type,stock1_status)
values(  9003,1002,'local',2097,'packed','available');

select * from stock1;

```
| SI.NO | STOCK1_ID| PRODUCT_ID | STOCK1_NAME | STOCK1_NUMBER`| STOCK1_TYPE| STOCK1_STATUS    |
|-------|----------|------------|------------ | -------------|------------|-------------------|
| 1     | 9001     | 1000       |  LOCAL      | 2095         | PACKED     | AVAILABLE         |
| 2     | 9002     | 1001       |  EXPORT     | 2096         | OPEN       | NOT AVAILABLE     |
| 3     | 9003     | 1002       | LOCAL       | 2097         | Packed     | AVAILABLE         |

### Feature 5: To update available  product
```sql query to update as available
update stock1 
set stock1_status='available'
where product_id=1001;
 
### Feature 6:to
