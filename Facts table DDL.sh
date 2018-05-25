 
"##------------Facts table DDL-------------## CREATE DATABASE IF NOT EXISTS stocks##
hive -e "

USE stocks;


Create Database stocks;
CREATE EXTERNAL TABLE IF NOT EXISTS stocks.fct_price as
(SELECT Prev_Close FLOAT,
Open_Price FLOAT,
High_Price FLOAT,
Low_Price FLOAT,
Last_Price FLOAT,
Close_Price FLOAT,
Average_Price FLOAT,
Total_Traded_Quantity INT,
Turnover BIGINT,
No_of_Trades INT,
Deliverable_Qty INT,
Dly_Qt_to_Traded_Qty FLOAT)
 
PARTITIONED BY (Date STRING)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '--------------';


