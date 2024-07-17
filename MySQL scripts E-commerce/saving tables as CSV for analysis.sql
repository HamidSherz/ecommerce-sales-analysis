/* 
Exported transactions3_temp & customer_summary tables to CSV for visualization and analysis purposes.
*/
SELECT *
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/transactions3_temp.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM transactions3_temp;

SELECT *
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/customer_summary.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM customer_summary;