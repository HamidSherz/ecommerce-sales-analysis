/* Count total rows in transactions3_temp */
SELECT COUNT(*) AS total_rows
FROM transactions3_temp;

/* Spot check unique transactions in transactions3_temp */
SELECT DISTINCT InvoiceNo, StockCode, Description, InvoiceDate, CustomerID, Country
FROM transactions3_temp
ORDER BY InvoiceNo, InvoiceDate; -- Add other columns as needed for uniqueness check

/* Aggregate checks for transactions3_temp */
SELECT SUM(TotalQuantity) AS total_quantity_sold,
       AVG(AverageUnitPrice) AS avg_unit_price
FROM transactions3_temp;

/* Quality flag validation in transactions3_temp */
SELECT DISTINCT QualityFlag
FROM transactions3_temp;

/* Compare with original data from transactions2 */
-- Example query, adjust based on your specific comparison needs
SELECT t3.InvoiceNo, t3.StockCode, t3.Description, t3.InvoiceDate,
       t3.CustomerID, t3.Country, t3.TotalQuantity, t3.AverageUnitPrice,
       t3.QualityFlag, t2.Quantity, t2.UnitPrice
FROM transactions3_temp t3
LEFT JOIN transactions2 t2 ON t3.InvoiceNo = t2.InvoiceNo
                          AND t3.StockCode = t2.StockCode
                          AND t3.Description = t2.Description
                          AND t3.InvoiceDate = t2.InvoiceDate
                          AND t3.CustomerID = t2.CustomerID
                          AND t3.Country = t2.Country;