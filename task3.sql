SELECT company_name AS Company FROM products
JOIN suppliers
ON suppliers.supplier_id = products.supplier_id
GROUP BY Company 
HAVING COUNT(product_name) = 5;

