/* 
Identified records in transactions2 with negative values in Quantity or UnitPrice 
based on summary statistics review. Added QualityFlag column to easily flag and 
investigate these records.
*/
UPDATE transaction2
SET QualityFlag = 'Negative Quantity'
WHERE Quantity < 0;
UPDATE transaction2
SET QualityFlag = 'Negative UnitPrice'
WHERE Quantity < 0;
