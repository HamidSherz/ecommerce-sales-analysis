/* 
Load data from the specified CSV file into the transactions2 table.
The data file is located at 'C:/Users/hamid/desktop/E-commerce Dataset Project/data.csv'.
Fields are terminated by ',' and enclosed by '"'.
Each line in the file represents a separate record.
The first row in the file is ignored during loading.
*/
LOAD DATA LOCAL INFILE 'C:/Users/hamid/desktop/E-commerce Dataset Project/data.csv'
INTO TABLE transactions2
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
