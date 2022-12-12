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
| [joining multiple tables](#emphasis-on-joining-multiple-tables) |

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

## Emphasis on joining multiple tables

```sql
SELECT
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id
```

```sql
SELECT
	p.date,
	p.invoice_id,
    p.amount,
    c.name,
    pm.name AS payment_method
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN clients c
	ON c.client_id = p.client_id
```