# Examples For Retrieving Data From A Single Table

| Table of Contents for Repo|
|--|
| [Main](https://github.com/calebwagner/MySQL-playground) |
| [MySQL Keywords For Retrieving Data From A Single Table](./README.md) |
| [Examples For Retrieving Data From A Single Table](./retrieving_data_from_a_single_table.md) |

| Table of Contents |
|--|
| [`SELECT` and `FROM` clause](#emphasis-on-select-and-from-clause) |
| [`WHERE` clause](#emphasis-on-where-clause) |
| [`AND`, `OR`, and `NOT` operators](#emphasis-on-and-or-and-not-operator) |
| [`IN` operator](#emphasis-on-in-operator) |
| [`BETWEEN` operator](#emphasis-on-between-operator) |
| [`LIKE` operator](#emphasis-on-like-operator) |
| [`REGEXP` operator](#emphasis-on-regexp-operator) |
| [`IS NULL` operator](#emphasis-on-is-null-and-is-not-null-operator) |
| [`ORDER BY` clause](#emphasis-on-order-by-clause) |
| [`LIMIT` clause](#emphasis-on-limit-clause) |
| []() |


## Emphasis on `SELECT` and `FROM` clause

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

## Emphasis on `WHERE` clause

```sql
SELECT *
FROM Customers
WHERE state != 'VA'
```

```sql
SELECT *
FROM orders
WHERE order_date >= '2018-01-01'
```

```sql
SELECT *
FROM order_items
WHERE order_id = 6 AND (quantity * unit_price) > 30
```

## Emphasis on `AND`, `OR`, and `NOT` operator

```sql
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' AND points > 1000
```

```sql
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' OR points > 1000 AND state = 'VA'
```

```sql
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' OR points > 1000 NOT state = 'VA'
```

```sql
SELECT *
FROM order_items
WHERE order_id = 6 AND quantity * unit_price > 30
```


## Emphasis on `IN` operator

```sql
SELECT *
FROM customers
-- BAD WAY
-- WHERE state = 'VA' OR state = 'GA' OR state = 'FL'

-- BETTER WAY
WHERE state IN ('VA', 'FL', 'GA')

-- NOT IN EXAMPLE
-- WHERE state NOT IN ('VA', 'FL', 'GA')
```


## Emphasis on `BETWEEN` operator

```sql
SELECT *
FROM customers
WHERE points
BETWEEN 1000 AND 3000
```

```sql
SELECT *
FROM customers
WHERE birth_date
BETWEEN '1990-01-01' AND '2000-01-01'
```

## Emphasis on `LIKE` operator

| Symbol | Definition |
|--|--|
| `%b%` | match before or after |
| `%b` | match at the end |
| `b%` | match at the start |
| `'____b'` | match exactly (5 characters in this case) |

Select all columns from customers tables where last name starts with 'b'.
```sql
SELECT *
FROM customers
WHERE last_name LIKE 'b%'
```

```sql
SELECT *
FROM customers
WHERE
    address LIKE '%trail%' OR
    address LIKE '%avenue%'
```

## Emphasis on `REGEXP` operator

| Symbol | Definition |
|--|--|
| `^` | match beginning of a string |
| `$` | match end of a string |
| `\|` | represents the logical `or` operator |
| `[abc]` | match any single character listed in the brackets |
| `[a-z]` | match any single character within this range specified |

Select all columns from customers tables where address contains the string 'ave'
```sql
SELECT *
FROM customers
WHERE address REGEXP 'ave'
```

Select all columns from customers tables where last name starts with 'field'
```sql
SELECT *
FROM customers
WHERE last_name REGEXP '^field'
```

Select all columns from customers tables where last name contains 'field' or 'mac'.
```sql
SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac'
```

Select all columns from customers tables where last name contains either 'ge', 'ie', or 'me'.
```sql
SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e'
```

Select all columns from customers tables where last name contains either an 'a' through 'h' letter and a 'e'.
```sql
SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e'
```

## Emphasis on `IS NULL` and `IS NOT NULL` operator

```sql
SELECT *
FROM customers
WHERE phone IS NOT NULL
```

```sql
SELECT *
FROM customers
WHERE phone IS NULL
```

## Emphasis on `ORDER BY` clause

```sql
SELECT *
FROM customers
ORDER BY first_name
```

```sql
SELECT *
FROM customers
ORDER BY first_name DESC
```

```sql
SELECT *
FROM customers
ORDER BY first_name, state DESC
```

```sql
SELECT first_name, last_name
FROM customers
ORDER BY birth_date
```

## Emphasis on `LIMIT` clause

```sql
SELECT *
FROM customers
LIMIT 5
```

```sql
SELECT *
FROM customers
LIMIT 6, 3
```

Select first name and last name column (and save name as whole name) and points column from customers tables, order points from greatest to least, limit query to top 3.
```sql
SELECT CONCAT_WS(" ", `first_name`, `last_name`) AS `whole name`, points
FROM customers
ORDER BY points DESC
LIMIT 3
```