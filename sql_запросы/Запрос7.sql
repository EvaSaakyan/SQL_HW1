WITH max_min_pv AS (SELECT s.state, s.state_id,
MAX(c.property_valuation) AS max_pv, 
MIN(c.property_valuation) AS min_pv
FROM customers c 
JOIN states s ON c.state_id = s.state_id 
GROUP BY s.state, s.state_id)
SELECT c.last_name, c.first_name, 
pv.state, c.property_valuation 
FROM customers c
JOIN max_min_pv pv ON c.state_id = pv.state_id 
AND (c.property_valuation = pv.max_pv OR c.property_valuation = pv.min_pv)
ORDER BY pv.state;


