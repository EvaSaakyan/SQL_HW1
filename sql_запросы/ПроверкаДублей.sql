SELECT COUNT(*) AS total_rows, COUNT(DISTINCT customer_id) AS unique_keys FROM customers;
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT state_id)    AS unique_keys FROM states;
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT product_id)  AS unique_keys FROM products;
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT order_id)    AS unique_keys FROM orders;
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT order_item_id) AS unique_keys FROM order_items;


