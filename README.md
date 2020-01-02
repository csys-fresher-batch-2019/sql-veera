# Pharmacy store Management
*http://pharmacystore.in
## Features
*user can able to view all pharmacy products
### Feature 1:Company Details

| SI.NO | COMPANY_ID | COMPANY_NAME | COMPANY_TYPE              | COMPANY_ADDRESS            |
|-------|------------|--------------|---------------------------|----------------------------|
| 1     | 3001       | BAYER AG     | Medications for addiction | T1,3rd street, Erode       |
| 2     | 3002       | ABBVIE       | Benzodiazepines           | T2,2nd street, Trichy      |
| 3     | 3004       | SANOFIE      | Medications for dementia  | D3,1st street, Chennai     |
| 4     | 3005       | MERCK        | Stimulant mediction       | B6,4th street,  Coimbatore |


```sql

create table company
(
company_id number,
company_name varchar2(30) not null,
company_type varchar2(30) not null,
company_address varchar2(30) not null,
constraint company_id_pk primary key(company_id),
constraint company_id_uq unique key(company_name)
);
insert into company(company_id,company_name,company_type,company_address)
values(3001,'Bayer AG','Medictions for addiction','T1,3rd Street,Erode');
insert into company(company_id,company_name,company_type,company_address)
values(3002,'ABBVIE','Benzodiazepines','T2,2nd Street,trichy');
insert into company(company_id,company_name,company_type,company_address)
values(3003,'SANOFIE','Medictions for dementia','D3,1st Street,chennai');
insert into company(company_id,company_name,company_type,company_address)
values(3004,'MERCK','Stimulant Mediction','B6,4th Street,coimbatore');
select * from company;


```
### Feature 2:List of all pharmacy products

| SI.NO | PRODUCT_ID | PRODUCT_NAME | COST | DOSE |
|-------|------------|--------------|------|------|
| 1     | 1000       | HUMIRA       | 250  | 10   |
| 2     | 1001       | ELIQUIS      | 200  | 6    |
| 3     | 1002       | AVASTIN      | 300  | 8    |
| 4     | 1003       | HERCEPTIN    | 280  | 14   |
| 5     | 1004       | KEYTRUDA     | 350  | 20   |



#### query:

```sql

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

### Feature 3:Stock Details

| SI.NO | STOCK_ID | STOCK_NAME | STOCK_NUMBER | STOCK_TYPE | STOCK_STATUS      |
|-------|----------|------------|--------------|------------|-------------------|
| 1     | 9001     | LOCAL      | 2095         | PACKED     | AVAILABLE         |
| 2     | 9002     | EXPORT     | 2096         | PACKED     | NOT AVAILABLE     |
| 3     | 9003     | LOCAL      | 2097         | PACKED     | AVAILABLE         |

```sql
create table stock1(
stock1_id number,
stock1_name varchar2(50),
stock1_number number not null,
stock1_type varchar2(50),
stock1_status varchar2(50),
constraint stock1_id_pk primary key(stock1_id));

insert into  stock1(stock1_id, stock1_name,stock1_number,stock1_type,stock1_status )
values(  9001,'local',2095,'packed','available');
insert into  stock1(stock1_id, stock1_name,stock1_number,stock1_type,stock1_status )
values(  9002,'Export',2096,'packed','Not available');
insert into  stock1(stock1_id, stock1_name,stock1_number,stock1_type,stock1_status)
values(  9003,'local',2097,'packed','available');

select * from stock1;

```
### Feature 4: Sell Details

| SI.NO | SELL_ID | SELL_NAME | SELL_TYPE | SELL_DESCRIPTION    |
|-------|---------|-----------|-----------|---------------------|
| 1     | 7000    | ARAVIND   | HALF      | SELF                |
| 2     | 7001    | HARI      | FULL      | DOCTER PRESCRIPTION |
| 3     | 7002    | RAVI      | FULL      | DOCTER PRESCRIPTION |

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

### Feature 5:Inventory details

| SI.NO | INVENTORY_ID | INVENTORY_ITEMS          | INVENTORY_NUMBER | INVENTORY_TYPE | INVENTORY_STATUS      |
|-------|--------------|--------------------------|------------------|----------------|-----------------------|
| 1     | 3001         | Benzodiazepines          | 601              | Packed         | Available             |
| 2     | 3002         | Stimulant mediction      | 613              | Not packed     | Available             |
| 3     | 3003         | Medications for dementia | 618              | Packed         | Not Available         |

```sql

create table inventory 
(
inventory_id number,
inventory_items varchar2(30) not null,
inventory_number number not null,
inventory_type varchar2(30) not null,
inventory_description varchar2(30) not null,
constraint inventory_id_pk primary key (inventory_id);
)

insert into inventory(inventory_id  ,inventory_items ,inventory_number,inventory_type,inventory_description)
values(3001,'Benzodiazepines',601,'Packed','Available');
insert into inventory(inventory_id ,inventory_items,inventory_number,inventory_type,inventory_description)
values(3002,'Stimulant mediction',613,'Not Packed','Available');
insert into inventory(inventory_id ,inventory_items,inventory_number,inventory_type,inventory_description)
values(3003,'Medications for dementia',618,'Packed','Not Available');
select * from inventory;

```

