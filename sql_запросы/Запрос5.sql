SELECT o.order_status,
COUNT(DISTINCT o.order_id) as order_quantity,
SUM(oi.quantity*oi.item_list_price_at_sale) AS order_amount
FROM order_items oi 
JOIN orders o on oi.order_id = o.order_id
GROUP BY o.order_status;


