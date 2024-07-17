/* 
Identify records in the transactions2 table where CustomerID is missing.
*/
SELECT COUNT(*) FROM transactions2
WHERE InvoiceNo = NULL
OR StockCode = NULL
OR Description = NULL
OR Quanity = NULL
OR InvoiceDate = NULL
OR UNITPrice = NULL