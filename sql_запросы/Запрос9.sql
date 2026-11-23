WITH count_orders AS
(SELECT p.product_line,
COUNT(DISTINCT o.order_id) AS total_orders,
COUNT(DISTINCT 
CASE WHEN o.order_status = 'Cancelled' 
THEN o.order_id END) AS cancelled_orders
FROM products p 
JOIN order_items oi ON oi.product_id = p.product_id
JOIN orders o ON o.order_id = oi.order_id 
GROUP BY p.product_line)
SELECT co.product_line, co.total_orders, co.cancelled_orders,
ROUND(co.cancelled_orders*100.0/co.total_orders, 2) AS percent_cancelled
FROM count_orders co;

