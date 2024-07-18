/* 
Created customer_summary table to consolidate transactions for each unique customer,
providing a consolidated view of customer activity for easier analysis and segmentation.
*/

CREATE TABLE customer_summary AS 
SELECT 
    CustomerID, 
    SUM(TotalValue) AS TotalPurchaseValue,
    AVG(TotalValue) AS AverageOrderValue,
    COUNT(*) AS TotalTransactions 
FROM 
    transactions3_temp 
GROUP BY 
    CustomerID;
