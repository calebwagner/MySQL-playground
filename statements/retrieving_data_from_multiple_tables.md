# Examples For Retrieving Data From Multiple Tables

| Repo Directory |  |
|--|--|
| [Main](https://github.com/calebwagner/MySQL-playground) |  |
| [Keywords](./README.md) |  |
|  Retrieving Data From A Single Table | [Examples](./retrieving_data_from_a_single_table.md) |
|  Retrieving Data From Multiple Tables | [Examples](./retrieving_data_from_multiple_tables.md) |

| Table of Contents |
|--|
| [ `JOIN` ](#emphasis-on-inner-join) |
| []() |
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