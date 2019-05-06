SELECT company_name AS Company, COUNT(product_name) AS NumberOfProducts FROM products
FULL JOIN suppliers
ON suppliers.supplier_id = products.supplier_id
GROUP BY company_name
ORDER BY NumberOfProducts DESC, Company ASC;
