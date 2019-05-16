SELECT company_name AS Company,COUNT(DISTINCT product_name) AS NumberOfProducts FROM products
JOIN suppliers
ON suppliers.supplier_id = products.supplier_id
GROUP BY Company 
HAVING COUNT(DISTINCT product_name) = 5
ORDER BY Company;

