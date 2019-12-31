# Pharmacy store Management
*http://pharmacystore.in
## Features
*user can able to view all pharmacy products
### Feature 1:List of all pharmacy products

| SI.NO | PRODUCT_ID | PRODUCT_NAME | MEDICINE_ID | COST | DOSE |
|-------|------------|--------------|-------------|------|------|
| 1     | 1000       | HUMIRA       | 501         | 250  | 10   |
| 2     | 1001       | ELIQUIS      | 502         | 200  | 6    |
| 3     | 1002       | AVASTIN      | 503         | 300  | 8    |
| 4     | 1003       | HERCEPTIN    | 504         | 280  | 14   |
| 5     | 1004       | KEYTRUDA     | 505         | 350  | 20   |


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

### Feature 2:Stock Details
| SI.NO | STOCK_ID | STOCK_NAME | STOCK_NUMBER | STOCK_TYPE | STOCK_DESCRIPTION |
|-------|----------|------------|--------------|------------|-------------------|
| 1     | 9001     | LOCAL      | 2095         | PACKED     | AVAILABLE         |
| 2     | 9002     | EXPORT     | 2096         | PACKED     | NOT AVAILABLE     |
| 3     | 9003     | LOCAL      | 2097         | PACKED     | AVAILABLE         |

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

```sql

create table company
(
company_id number,
company_name varchar2(30) not null,
company_type varchar2(30) not null,
company_address varchar2(30) not null
);

insert into company(company_id,company_name,company_type,company_address)
values(3001,'Bayer AG','Medictions for addiction','t1,3rd Street,Erode');
insert into company(company_id,company_name,company_type,company_address)
values(3002,'ABBVIE','Benzodiazepines','t2,2nd Street,trichy');
insert into company(company_id,company_name,company_type,company_address)
values(3003,'SANOFIE','Medictions for dementia','D3,1st Street,chennai');
insert into company(company_id,company_name,company_type,company_addressl;
values(3004,'MERCK','Stimulant Mediction','B6,4th Street,coimbatore');
select * from company;

```
### Feature 4:Inventory details

| SI.NO | INVENTORY_ID | INVENTORY_ITEMS          | INVENTORY_NUMBER | INVENTORY_TYPE | INVENTORY_DESCRIPTION |
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
