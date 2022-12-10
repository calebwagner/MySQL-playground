| Table of Contents for Repo|
|--|
| [Main](./README.md) |
| [MySQL Keywords For Retrieving Data From A Single Table](./README.md) |
| [Examples For Retrieving Data From A Single Table](./retrieving_data_from_a_single_table.md) |

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