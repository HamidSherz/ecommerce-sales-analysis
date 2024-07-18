/* 
Added TotalValue column to transactions3_temp to calculate the total value of each order.
This aligns with project objectives to analyze revenue metrics (#1 Identify top-selling products by quantity and revenue, #2 Analyze customer spending variations, #6 Provide key performance indicators).
*/
ALTER TABLE transactions3_temp
ADD COLUMN TotalValue DECIMAL(12, 2);

/* 
Calculate TotalValue based on AverageUnitPrice and TotalQuantity in transactions3_temp.
*/
UPDATE transactions3_temp
SET TotalValue = AverageUnitPrice * TotalQuantity;
