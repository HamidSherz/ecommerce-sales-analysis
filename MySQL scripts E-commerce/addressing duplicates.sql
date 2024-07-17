/* Address duplicates in transactions2 by aggregating Quantity and averaging UnitPrice for each unique transaction.
Insert aggregated data into transactions2_temp table, ensuring retention of total quantity sold and average price per unit.
QualityFlag column aggregates flags from original duplicates to indicate data quality status.
*/
INSERT INTO transactions2_temp (InvoiceNo, StockCode, Description, InvoiceDate, CustomerID, Country, TotalQuantity, AverageUnitPrice, QualityFlag)
SELECT
InvoiceNo,
StockCode,
Description,
InvoiceDate,
CustomerID,
Country,
SUM(Quantity) AS TotalQuantity,
AVG(UnitPrice) AS AverageUnitPrice,
GROUP_CONCAT(DISTINCT QualityFlag SEPARATOR ', ') AS QualityFlag
FROM
transactions2
GROUP BY
InvoiceNo,
StockCode,
Description,
InvoiceDate,
CustomerID,
Country;