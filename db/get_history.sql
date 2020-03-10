SELECT * FROM history h
JOIN products p
ON p.product_id = h.product_id
WHERE user_id = 5;