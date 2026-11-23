SELECT product_id, 
ROUND(AVG(item_list_price_at_sale), 2) as avg_sale_price
FROM order_items 
GROUP BY product_id 
ORDER BY avg_sale_price DESC
LIMIT 5;

