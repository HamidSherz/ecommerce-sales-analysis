/* 
Analyzed customer spending in transactions3_temp to segment customers based on their total spending.
This analysis helps achieve project objectives such as identifying high-value customers (#4 Identify high-value customers).
*/

/* 
Query to identify distinct CustomerIDs in transactions3_temp.
*/
SELECT DISTINCT CustomerID
FROM transactions3_temp;

/* 
Calculate TotalSpending per CustomerID in transactions3_temp to understand customer spending patterns.
*/
SELECT CustomerID, SUM(TotalValue) AS TotalSpending
FROM transactions3_temp
GROUP BY CustomerID;
