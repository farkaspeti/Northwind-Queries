SELECT company_name AS CompanyName,ARRAY_AGG(order_id) as orderArray FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY CompanyName
ORDER BY CompanyName ASC;
