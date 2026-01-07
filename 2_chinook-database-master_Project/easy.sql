use chinook_autoincrement;

## 1- Total Revenue
SELECT sum(total) As "Total Revenue" from invoice;

## 2- Total Total Invoices
SELECT count(InvoiceId) As "Total Invoices" from invoice;

## 3- Average Invoice Value
SELECT avg(total) As "Avrage" from invoice;
