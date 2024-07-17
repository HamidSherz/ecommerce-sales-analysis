/* 
Created consolidated table transactions3_temp to store uniquely represented aggregated data 
from transactions2_temp, ensuring no duplicate transactions.
*/
INSERT INTO transactions3_temp (InvoiceNo, StockCode, Description, InvoiceDate, CustomerID, Country, TotalQuantity, AverageUnitPrice, QualityFlag)
SELECT DISTINCT
    InvoiceNo,
    StockCode,
    Description,
    InvoiceDate,
    CustomerID,
    Country,
    TotalQuantity,
    AverageUnitPrice,
    QualityFlag
FROM transactions2_temp;