SELECT suppliers.company_name, products.product_name, products.unit_price FROM products
JOIN suppliers ON suppliers.supplier_id = products.supplier_id
JOIN (SELECT products.supplier_id, max(products.unit_price) AS unit_price
FROM products
GROUP BY products.supplier_id) AS MaxQuerry
ON products.supplier_id = Q1.supplier_id AND products.unit_price = MaxQuerry.unit_price
ORDER BY unit_price DESC;
