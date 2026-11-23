SELECT state, COUNT(DISTINCT country)
FROM customers GROUP BY state
HAVING COUNT(DISTINCT country) > 1;

SELECT postcode, COUNT(DISTINCT state)
FROM customers GROUP BY postcode
HAVING COUNT(DISTINCT state) > 1;

SELECT address, COUNT(DISTINCT postcode)
FROM customers GROUP BY address
HAVING COUNT(DISTINCT postcode) > 1;

SELECT job_title, COUNT(DISTINCT job_industry_category)
FROM customers GROUP BY job_title
HAVING COUNT(DISTINCT job_industry_category) > 1;

SELECT brand, COUNT(DISTINCT product_line)
FROM products GROUP BY brand
HAVING COUNT(DISTINCT product_line) > 1;

SELECT product_line, COUNT(DISTINCT product_class)
FROM products
GROUP BY product_line
HAVING COUNT(DISTINCT product_class) > 1;

SELECT product_id, COUNT(DISTINCT item_list_price_at_sale)
FROM order_items GROUP BY product_id
HAVING COUNT(DISTINCT item_list_price_at_sale) > 1;
