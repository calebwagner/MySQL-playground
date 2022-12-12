| Repo Directory |  |
|--|--|
| [Main](https://github.com/calebwagner/MySQL-playground) |  |
| [Keywords](./README.md) |  |
|  Retrieving Data From A Single Table | [Examples](./retrieving_data_from_a_single_table.md) |
|  Retrieving Data From Multiple Tables | [Examples](./retrieving_data_from_multiple_tables.md) |

| Term | Definition | Example |
|--|--|--|
| `SELECT` | clause is used to specify which columns to return in the results of a query. | `SELECT` * `FROM` employees; |
| `DISTINCT` | clause is used in a `SELECT` statement to return only unique values in the specified columns. | `SELECT` `DISTINCT` * `FROM` employee_id; |
| `FROM` | clause is used to specify the source table(s) from which data is to be selected. | `SELECT` * `FROM` employees; |
| `WHERE` | clause is used to specify conditions that must be met in order for a record to be selected from a database table. | `SELECT` * `FROM` employees `WHERE` salary > 50000; |
| `AND` | operator is used to combine two or more conditions in a `SELECT`, `UPDATE`, or `DELETE` statement. | `SELECT` * `FROM` employees `WHERE` salary > 50000 `AND` department = 'Sales'; |
| `OR` | operator is used to combine two or more conditions in a `SELECT`, `UPDATE`, or `DELETE` statement. | `SELECT` * `FROM` employees `WHERE` department = 'Sales' `OR` salary > 60000; |
| `NOT` | operator is used to negate a condition in a `SELECT`, `UPDATE`, or `DELETE` statement. | `SELECT` * `FROM` employees `WHERE` salary `NOT` 50000; |
| `IN` | operator is used to determine if a specified value matches any value in a list of values. | `SELECT` * `FROM` employees `WHERE` department `IN` ('Sales', 'Marketing'); |
| `BETWEEN` | operator is used to specify a range of values that a column must be within in order for a record to be selected from a database table. | `SELECT` * `FROM` employees `WHERE` salary `BETWEEN` 40000 `AND` 60000; |
| `LIKE` | operator is used to match string values based on a specified pattern. | `SELECT` * `FROM` employees `WHERE` last_name `LIKE` 'S%'; |
| `REGEXP` | operator is used to match string values based on a specified regular expression. | `SELECT` * `FROM` employees `WHERE` last_name `REGEXP` '^[SM]'; |
| `IS NULL` | operator is used to test if a value is `NULL` | `SELECT` * `FROM` employees `WHERE` middle_name `IS NULL`; |
| `ORDER BY` | clause is used to specify the order in which records are to be returned in a `SELECT` statement. | `SELECT` * `FROM` employees `ORDER BY` last_name `ASC`; |
| `LIMIT` | clause is used to limit the number of records returned in a `SELECT` statement. | `SELECT` * `FROM` employees `LIMIT` 10; |
| `JOIN` | keyword is used to combine rows from two or more tables based on a related column between them. This allows you to retrieve data from multiple tables in a single SELECT statement. | `SELECT` table1.column1, table2.column2 `FROM` table1 `INNER JOIN` table2 `ON` table1.related_column = table2.related_column |
| `ON` | used in JOIN clauses to specify the conditions for combining rows from two or more tables. The ON keyword is followed by a comparison or logical expression that determines which rows are returned in the result set. | see example above |
| . | . | . |
| . | . | . |
| . | . | . |
| . | . | . |
| . | . | . |
| . | . | . |