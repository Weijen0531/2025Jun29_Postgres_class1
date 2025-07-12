## create data table syntax 

``` sql 
CREATE TABLE [IF NOT EXISTS] table_name (
   column1 datatype(length) column_constraint,
   column2 datatype(length) column_constraint,
   ...
   table_constraints
);
```
#### Constraints
PostgreSQL includes the following column constraints:

1.NOT NULL– ensures that the values in a column cannot be NULL.
2.UNIQUE – ensures the values in a column are unique across the rows within the same table.
3.PRIMARY KEY – a primary key column uniquely identifies rows in a table. A table can have one and only one primary key. The primary key constraint allows you to define the primary key of a table.
4.CHECK – ensures the data must satisfy a boolean expression. For example, the value in the price column must be zero or positive.
5.FOREIGN KEY – ensures that the values in a column or a group of columns from a table exist in a column or group of columns in another table. Unlike the primary key, a table can have many foreign keys.
Table constraints are similar to column constraints except that you can include more than one column in the table constraint.
```sql
CREATE TABLE IF NOT EXIST student(
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE
);

```
### Remove Table (Drop Table)
#### Basic Syntax 
``` sql
DROP TABLE table_name;
```
#### Extended Syntax
``` sql
DROP TABLE [IF EXISTS] table_name [, ...] [CASCADE | RESTRICT];
```
``` sql
DROP TABLE IF EXISTS student;
```
### Insert column 
#### Basic Syntax
``` sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```
```sql
INSERT INTO student ('name','major',)
 VALUES ('Andy','Math')
```
#### Insert multiple Rows
```sql
INSERT INTO cars (brand, model, year)
VALUES 
  ('Volvo', 'p1800', 1968),
  ('BMW', 'M1', 1978),
  ('Toyota', 'Celica', 1975);
```
#### Insert Without Specifying Columns
> If you provide values for all columns in the correct order, you can omit the column list:
``` sql
INSERT INTO cars
VALUES ('Honda', 'Civic', 2020);
```

### Reomve a data in the table
* Basic Syntax
``` sql
DELETE FROM table_name WHERE condition;
```
* Delete all rows
``` sql
DELETE FROM table_name;
```
* Delete specific rows
``` sql
DELETE FROM cars WHERE brand = 'Volvo';
``` 