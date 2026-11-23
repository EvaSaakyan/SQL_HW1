SELECT c.customer_id, c.last_name, c.first_name 
FROM customers c 
LEFT JOIN orders o ON c.customer_id = o.customer_id 
WHERE o.order_id IS NULL;


