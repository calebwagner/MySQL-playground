# Examples For Retrieving Data From Multiple Tables

| Repo Directory |  |
|--|--|
| [Main](https://github.com/calebwagner/MySQL-playground) |  |
| [Keywords](./README.md) |  |
|  Retrieving Data From A Single Table | [Examples](./retrieving_data_from_a_single_table.md) |
|  Retrieving Data From Multiple Tables | [Examples](./retrieving_data_from_multiple_tables.md) |

| Table of Contents |
|--|
| [ `JOIN` ](#emphasis-on-join) |
| [self `JOIN`s](#emphasis-on-self-join) |
| []() |

## Emphasis on `JOIN`

```sql
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
```

```sql
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
```

```sql
SELECT order_id, p.product_id, oi.unit_price, name
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
```

```sql
-- Example for joining tables across databases
USE sql_store;

SELECT *
FROM order_items oi
JOIN sql_inventory.products p
	ON oi.product_id = p.product_id
```

## Emphasis on self `JOIN`

This can be useful in cases where you want to compare values in a single table, such as when you want to find rows that have matching or related data.
```sql
SELECT
	e.employee_id,
    CONCAT_WS(' ', e.first_name, e.last_name) AS 'employee',
	CONCAT_WS(' ', m.first_name, m.last_name) AS 'manager'
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id
```