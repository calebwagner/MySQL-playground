| Term | Definition | Example |
|--|--|--|
| `SELECT` | this clause is used to specify which columns to return in the results of a query. | `SELECT` * `FROM` employees; |
| `DISTINCT` | this clause is used in a `SELECT` statement to return only unique values in the specified columns. | `SELECT` `DISTINCT` * `FROM` employee_id; |
| `FROM` | this clause is used to specify the source table(s) from which data is to be selected. | `SELECT` * `FROM` employees; |
| `WHERE` | this clause is used to specify conditions that must be met in order for a record to be selected from a database table. | `SELECT` * `FROM` employees `WHERE` salary > 50000; |
| `AND` | this operator is used to combine two or more conditions in a `SELECT`, `UPDATE`, or `DELETE` statement. | `SELECT` * `FROM` employees `WHERE` salary > 50000 `AND` department = 'Sales'; |
| `OR` | operator is used to combine two or more conditions in a `SELECT`, `UPDATE`, or `DELETE` statement. | `SELECT` * `FROM` employees `WHERE` department = 'Sales' `OR` salary > 60000; |
| `NOT` | this operator is used to negate a condition in a `SELECT`, `UPDATE`, or `DELETE` statement. | `SELECT` * `FROM` employees `WHERE` salary `NOT` 50000; |
| `IN` | this operator is used to determine if a specified value matches any value in a list of values. | `SELECT` * `FROM` employees `WHERE` department `IN` ('Sales', 'Marketing'); |
| `BETWEEN` | this operator is used to specify a range of values that a column must be within in order for a record to be selected from a database table. | `SELECT` * `FROM` employees `WHERE` salary `BETWEEN` 40000 `AND` 60000; |

