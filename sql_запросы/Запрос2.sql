SELECT p.brand,
SUM(oi.item_list_price_at_sale*oi.quantity) as order_amount
FROM order_items oi
JOIN products p on oi.product_id = p.product_id
GROUP BY p.brand;

