/* 
Added OrderMonth column to transactions3_temp to capture the month of each order.
This supports project objectives to detect seasonal trends in sales and customer spending (#3 Detect seasonal trends).
*/
ALTER TABLE transactions3_temp
ADD COLUMN OrderMonth INT;

/* 
Populate OrderMonth based on the month extracted from InvoiceDate in transactions3_temp.
*/
UPDATE transactions3_temp
SET OrderMonth = MONTH(InvoiceDate);
