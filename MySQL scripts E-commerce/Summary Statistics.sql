/* 
Review summary statistics of Quantity and UnitPrice columns in transactions2 table.
Calculates counts, averages, minimums, maximums, and sums to understand distribution and range of values.
*/
SELECT
COUNT(Quantity) AS count_Quantity,
AVG(Quantity) AS avg_Quantity,
MIN(Quantity) AS min_Quantity,
MAX(Quantity) AS max_Quantity,
SUM(Quantity) AS sum_Quantity,
COUNT(Unitprice) AS count_UnitPrice,
AVG(Unitprice) AS avg_UnitPrice,
MIN(Unitprice) AS min_UnitPrice,
MAX(Unitprice) AS max_UnitPrice,
SUM(Unitprice) AS sum_UnitPrice
FROM transactions2;
