USE sql_store;

SELECT * 
FROM customers
-- WHERE customer_id = 1
ORDER BY first_name

SELECT
	first_name,
	last_name,
    points,
    points + 10 AS discount_factor
FROM customers
