WITH orders_count AS 
(SELECT c.customer_id,
COUNT(o.order_id) AS order_quantity
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id 
GROUP BY c.customer_id)
SELECT 
CASE WHEN order_quantity > 10 THEN 'High'
WHEN order_quantity BETWEEN 5 AND 10 THEN 'Medium'
ELSE 'Low' END AS segment,
COUNT(*) AS customers_count
FROM orders_count
GROUP BY segment;

