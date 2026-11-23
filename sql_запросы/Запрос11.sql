WITH order_intervals AS 
(SELECT o.customer_id, 
o.order_date - LAG(o.order_date) OVER 
(PARTITION BY o.customer_id ORDER BY o.order_date) AS interval
FROM orders o)
SELECT c.first_name, c.last_name, c.job_title, 
EXTRACT(DAY FROM MAX(i.interval)) AS max_interval
FROM customers c
JOIN order_intervals i ON i.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.job_title
HAVING MAX(i."interval") IS NOT NULL;


