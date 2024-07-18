/* 
Exported transactions3_temp table to CSV with cleaned Description field to resolve formatting issues.
*/

SELECT 
    'InvoiceNo', 'StockCode', 'Description', 'InvoiceDate', 'CustomerID', 
    'Country', 'TotalQuantity', 'AverageUnitPrice', 'QualityFlag', 'Total Value', 
    'OrderMonth', 'CustomerType'
UNION ALL
SELECT 
    InvoiceNo, 
    StockCode, 
    REPLACE(REPLACE(REPLACE(REPLACE(Description, '\n', ' '), '\t', ' '), ',', ''), '"', '') AS Description, 
    InvoiceDate, 
    CustomerID, 
    Country, 
    TotalQuantity, 
    AverageUnitPrice, 
    QualityFlag, 
    TotalValue AS `Total Value`, 
    OrderMonth, 
    CustomerType
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/transactions3_testing_commas_new_script6.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
FROM transactions3_temp;
