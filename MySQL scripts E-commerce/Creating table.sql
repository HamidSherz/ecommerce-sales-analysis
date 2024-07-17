/* 
Create table transactions2 to store e-commerce transaction data.
*/
CREATE TABLE transactions2 (
InvoiceNo VARCHAR(20),
StockCOde VARCHAR(20),
Description TEXT,
Quantity INT,
InvoiceDate DATETIME,
UnitPrice DECIMAL (10, 3),
CustomerID VARCHAR(20),
Country VARCHAR(20)
);