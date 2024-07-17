/* Add CustomerType column to transactions3_temp */
ALTER TABLE transactions3_temp ADD COLUMN CustomerType VARCHAR(50);

/* Update CustomerType based on total spending directly */
UPDATE transactions3_temp t
JOIN (
    SELECT CustomerID,
           SUM(TotalValue) AS TotalSpending
    FROM transactions3_temp
    GROUP BY CustomerID
) cs ON t.CustomerID = cs.CustomerID
SET t.CustomerType = CASE 
                      WHEN cs.TotalSpending > 10000 THEN 'High Value'
                      WHEN cs.TotalSpending > 5000 THEN 'Medium Value'
                      ELSE 'Low Value'
                    END;