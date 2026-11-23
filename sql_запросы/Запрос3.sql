SELECT EXTRACT (YEAR FROM order_date) as year,
EXTRACT (MONTH FROM order_date) as month, 
COUNT(order_id) as order_quantity
FROM orders
GROUP BY year, month
ORDER BY year, month;

