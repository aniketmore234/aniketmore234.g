"##---------------Dimensions Table DDL-----------------## CREATE DATABASE IF NOT EXISTS stocks##
hive -e "


"##--------company-------##
hive -e "
USE stocks;
CREATE EXTERNAL TABLE IF NOT EXISTS dim_company
(
Comp_name STRING,
Comp_location STRING,
Comp_type STRING
)
PARTITIONED BY (Date STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '---------';

"##--------series-------##
hive -e "
USE stocks;
CREATE EXTERNAL TABLE IF NOT EXISTS dim_series
(
series_type STRING
)
PARTITIONED BY (Date STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '---------';

"##--------Dates-------##
hive -e "
USE stocks;
CREATE EXTERNAL TABLE IF NOT EXISTS dim_dates
(
Date_ID STRING,
Date_format STRING
)
PARTITIONED BY (Date STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '---------';