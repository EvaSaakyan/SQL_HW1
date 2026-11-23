SELECT c.customer_id, MIN(p.product_line) AS product_line, 
COUNT(DISTINCT o.order_id) AS order_quantity
FROM customers c 
JOIN orders o ON o.customer_id = c.customer_id 
JOIN order_items oi ON oi.order_id = o.order_id 
JOIN products p ON oi.product_id = p.product_id 
GROUP BY c.customer_id
HAVING COUNT(DISTINCT p.product_line) = 1;

