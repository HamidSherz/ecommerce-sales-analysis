/* 
Identify duplicate records in transactions2 based on multiple columns.
Group by InvoiceNo, StockCode, Description, InvoiceDate, CustomerID, and Country,
and count occurrences where duplicates are found.
*/
SELECT InvoiceNo, StockCode, Description, InvoiceDate, CustomerID, Country, COUNT(*)
FROM transactions2
GROUP BY InvoiceNo, StockCode, Description, InvoiceDate, CustomerID, Country
HAVING COUNT(*) >1;
