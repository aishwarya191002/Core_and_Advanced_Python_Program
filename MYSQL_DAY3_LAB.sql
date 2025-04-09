Consider a simple database with one tables: Employee
Employee Table: ● Columns:emp_id (Primary Key), first_name, last_name, age, email 
USE CompanyDB;
Database changed
mysql> CREATE TABLE Employee (
    ->     emp_id INT PRIMARY KEY,
    ->     first_name VARCHAR(50),
    ->     last_name VARCHAR(50),
    ->     age INT,
    ->     email VARCHAR(100)
    -> );


Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table.

 INSERT INTO Employee (emp_id, first_name, last_name, age, email)
    -> VALUES (2, 'John', 'Doe', 29, 'john.doe@example.com'),
    ->        (3, 'Jane', 'Smith', 32, 'jane.smith@example.com'),
    ->        (4, 'Mike', 'Johnson', 28, 'mike.johnson@example.com');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Employee;
+--------+------------+-----------+------+--------------------------+
| emp_id | first_name | last_name | age  | email                    |
+--------+------------+-----------+------+--------------------------+
|      1 | John       | Doe       |   30 | john.doe@example.com     |
|      2 | John       | Doe       |   29 | john.doe@example.com     |
|      3 | Jane       | Smith     |   32 | jane.smith@example.com   |
|      4 | Mike       | Johnson   |   28 | mike.johnson@example.com |
+--------+------------+-----------+------+--------------------------+
4 rows in set (0.00 sec)

 
Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table.

mysql> SELECT first_name, last_name
    -> FROM Employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| John       | Doe       |
| John       | Doe       |
| Jane       | Smith     |
| Mike       | Johnson   |
+------------+-----------+
4 rows in set (0.00 sec)


Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years.

SELECT first_name, last_name, age
    -> FROM Employee
    -> WHERE age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Jane       | Smith     |   32 |
+------------+-----------+------+
1 row in set (0.00 sec)


Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25

mysql> SELECT * FROM Employee;
+--------+------------+-----------+------+--------------------------+
| emp_id | first_name | last_name | age  | email                    |
+--------+------------+-----------+------+--------------------------+
|      1 | John       | Doe       |   31 | john.doe@example.com     |
|      2 | John       | Doe       |   30 | john.doe@example.com     |
|      3 | Jane       | Smith     |   33 | jane.smith@example.com   |
|      4 | Mike       | Johnson   |   29 | mike.johnson@example.com |
+--------+------------+-----------+------+--------------------------+
4 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, age
    -> FROM Employee
    -> WHERE age > 25;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| John       | Doe       |   31 |
| John       | Doe       |   30 |
| Jane       | Smith     |   33 |
| Mike       | Johnson   |   29 |
+------------+-----------+------+
4 rows in set (0.00 sec)
