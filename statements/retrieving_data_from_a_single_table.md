### EMPHASIS ON `SELECT` AND `FROM` CLAUSE

```sql
SELECT * 
FROM customers
ORDER BY first_name
```

```sql
SELECT
	first_name,
	last_name,
    points,
    points + 10 AS discount_factor
FROM customers
```

```sql
SELECT
    name,
    unit_price,
    unit_price * 1.1 AS "new price"
FROM products
```

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


-- EMPHASIS ON `AND`, `OR`, and `NOT` OPERATOR

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


-- EMPHASIS ON `BETWEEN` OPERATOR

-- NEW STATEMENT
SELECT *
FROM customers
WHERE points
BETWEEN 1000 AND 3000

-- NEW STATEMENT
SELECT *
FROM customers
WHERE birth_date
BETWEEN '1990-01-01' AND '2000-01-01'