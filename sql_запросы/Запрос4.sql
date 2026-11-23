WITH max_cost AS (SELECT product_line, 
MAX(standard_cost) AS max_st_cost
FROM products 
GROUP BY product_line)
SELECT p.product_id, p.product_line, m.max_st_cost  
FROM products p 
JOIN max_cost m
ON p.product_line = m.product_line 
AND p.standard_cost = m.max_st_cost;

