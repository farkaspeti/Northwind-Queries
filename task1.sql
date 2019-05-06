SELECT company_name,product_name FROM suppliers
LEFT JOIN products
ON suppliers.supplier_id = products.supplier_id
ORDER BY company_name,product_name ASC;
