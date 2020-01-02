# Pharmacy store Management


### Feature 1:Company Details

| SI.NO | COMPANY_ID | COMPANY_NAME | COMPANY_TYPE              | COMPANY_ADDRESS            |
|-------|------------|--------------|---------------------------|----------------------------|
| 1     | 3001       | BAYER AG     | Medications for addiction | T1,3rd street, Erode       |
| 2     | 3002       | ABBVIE       | Benzodiazepines           | T2,2nd street, Trichy      |
| 3     | 3004       | SANOFIE      | Medications for dementia  | D3,1st street, Chennai     |



### Feature 2: List of all pharmacy products

| SI.NO | PRODUCT_ID |COMPANY_ID |  PRODUCT_NAME| COST | DOSE |
|-------|------------|---------- |--------------|------|------|
| 1     | 1000       | 3001      |  HUMIRA      | 250  | 10   |
| 2     | 1001       | 3002      | ELIQUIS      | 200  | 6    |
| 3     | 1002       | 3003      | AVASTIN      | 300  | 8    |



### Feature 3:Stock Details

| SI.NO | STOCK1_ID| PRODUCT_ID | STOCK1_NAME | STOCK1_NUMBER| STOCK1_TYPE| STOCK1_STATUS     |
|-------|----------|------------|------------ | -------------|------------|-------------------|
| 1     | 9001     | 1000       |  LOCAL      | 2095         | PACKED     | AVAILABLE         |
| 2     | 9002     | 1001       |  EXPORT     | 2096         | OPEN       | NOT AVAILABLE     |
| 3     | 9003     | 1002       | LOCAL       | 2097         | Packed     | AVAILABLE         |

### Feature 4:Sell Details

| SI.NO | SELL_ID | SELL_NAME | SELL_TYPE | SELL_DESCRIPTION    |
|-------|---------|-----------|-----------|---------------------|
| 1     | 7000    | ARAVIND   | HALF      | SELF                |
| 2     | 7001    | HARI      | FULL      | DOCTER PRESCRIPTION |
| 3     | 7002    | RAVI      | FULL      | DOCTER PRESCRIPTION |


### Feature 5:Inventory Details

| SI.NO | INVENTORY_ID | SELL_ID   | INVENTORY_ITEMS          | INVENTORY_NUMBER | INVENTORY_TYPE | INVENTORY_STATUS      |
|-------|--------------|-----------|--------------------------|------------------|----------------|-----------------------|
| 1     | 3001         | 7000      | Benzodiazepines          | 601              | Packed         | Available             |
| 2     | 3002         | 7002      | Stimulant mediction      | 613              | Not packed     | Available             |
| 3     | 3003         | 7002      | Medications for dementia | 618              | Packed         | Not Available         |
### Feature 6 : Display the certain product details

### Feature 7 :Update of stock  status

| SI.NO | STOCK1_ID | PRODUCT_ID | STOCK1_NAME | STOCK1_NUMBER | STOCK1_TYPE | STOCK_STATUS |
|-------|-----------|------------|-------------|---------------|-------------|--------------|
| 1     | 9001      | 1000       | LOCAL       | 2095          | packed      | available    |
| 2     | 9002      | 1001       | EXPORT      | 2096          | open        | available    |
| 3     | 9003      | 1002       | LOCAL       | 2097          | packed      | available    |
 
