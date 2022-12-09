USE sql_store;

-- EMPHASIS ON `SELECT` AND `FROM` CLAUSE

SELECT * 
FROM customers
-- WHERE customer_id = 1
ORDER BY first_name

-- NEW STATEMENT
SELECT
	first_name,
	last_name,
    points,
    points + 10 AS discount_factor
FROM customers

-- NEW STATEMENT
SELECT
    name,
    unit_price,
    unit_price * 1.1 AS "new price"
FROM products


-- EMPHASIS ON `WHERE` CLAUSE

-- NEW STATEMENT
SELECT *
FROM Customers
WHERE state != 'VA'

-- NEW STATEMENT
SELECT *
FROM orders
WHERE order_date >= '2018-01-01'

-- NEW STATEMENT
SELECT *
FROM order_items
WHERE order_id = 6 AND (quantity * unit_price) > 30


-- EMPHASIS ON `AND`, `OR`, and `NOT` CLAUSE

-- NEW STATEMENT
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' AND points > 1000

-- NEW STATEMENT
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' OR points > 1000 AND state = 'VA'

-- NEW STATEMENT
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' OR points > 1000 NOT state = 'VA'

-- NEW STATEMENT
SELECT *
FROM order_items
WHERE order_id = 6 AND quantity * unit_price > 30


-- EMPHASIS ON `IN` OPERATOR

-- NEW STATEMENT
SELECT *
FROM customers
-- BAD WAY
-- WHERE state = 'VA' OR state = 'GA' OR state = 'FL'

-- BETTER WAY
WHERE state IN ('VA', 'FL', 'GA')

-- NOT IN EXAMPLE
-- WHERE state NOT IN ('VA', 'FL', 'GA')


-- NEW STATEMENT