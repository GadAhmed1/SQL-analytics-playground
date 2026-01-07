USE chinook_autoincrement;
-- Who is the customer who spent the most money
SELECT
    customer.CustomerId,
    CONCAT(customer.FirstName, " ", customer.LastName) AS FullName,
    SUM(invoice.Total) AS "price"
FROM invoice
INNER JOIN customer
    ON invoice.CustomerId = customer.CustomerId
GROUP BY
    customer.CustomerId,
    customer.FirstName,
    customer.LastName
ORDER BY
    SUM(invoice.Total) DESC
LIMIT 1;
