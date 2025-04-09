Create Two table employees & departments 


mysql> use companydb
Database changed
mysql> CREATE TABLE departments (
    ->     department_id INT PRIMARY KEY AUTO_INCREMENT,  
    ->     department_name VARCHAR(100) NOT NULL,         
    ->     location VARCHAR(100)                         
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE employees (
    ->     employee_id INT PRIMARY KEY AUTO_INCREMENT,      
    ->     first_name VARCHAR(50) NOT NULL,                  
    ->     last_name VARCHAR(50) NOT NULL,                   
    ->     email VARCHAR(100) UNIQUE NOT NULL,               
    ->     department_id INT,                                
    ->     hire_date DATE,                                   
    ->     salary DECIMAL(10, 2),                           
    ->     FOREIGN KEY (department_id) REFERENCES departments(department_id)  
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW TABLES;
+---------------------+
| Tables_in_companydb |
+---------------------+
| departments         |
| employee            |
| employees           |
+---------------------+
3 rows in set (0.02 sec)

mysql> INSERT INTO departments (department_name, location)
    -> VALUES
    ->     ('Sales', 'New York'),
    ->     ('HR', 'Los Angeles'),
    ->     ('IT', 'San Francisco');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO employees (first_name, last_name, email, department_id, hire_date, salary)
    -> VALUES
    ->     ('John', 'Doe', 'john.doe@example.com', 1, '2023-05-15', 55000.00),
    ->     ('Jane', 'Smith', 'jane.smith@example.com', 2, '2024-01-10', 60000.00),
    ->     ('Michael', 'Johnson', 'michael.johnson@example.com', 3, '2022-08-25', 75000.00);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM departments;
+---------------+-----------------+---------------+
| department_id | department_name | location      |
+---------------+-----------------+---------------+
|             1 | Sales           | New York      |
|             2 | HR              | Los Angeles   |
|             3 | IT              | San Francisco |
+---------------+-----------------+---------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM employees;
+-------------+------------+-----------+-----------------------------+---------------+------------+----------+
| employee_id | first_name | last_name | email                       | department_id | hire_date  | salary   |
+-------------+------------+-----------+-----------------------------+---------------+------------+----------+
|           1 | John       | Doe       | john.doe@example.com        |             1 | 2023-05-15 | 55000.00 |
|           2 | Jane       | Smith     | jane.smith@example.com      |             2 | 2024-01-10 | 60000.00 |
|           3 | Michael    | Johnson   | michael.johnson@example.com |             3 | 2022-08-25 | 75000.00 |
+-------------+------------+-----------+-----------------------------+---------------+------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT e.first_name, e.last_name, e.email, d.department_name
    -> FROM employees e
    -> JOIN departments d ON e.department_id = d.department_id;
+------------+-----------+-----------------------------+-----------------+
| first_name | last_name | email                       | department_name |
+------------+-----------+-----------------------------+-----------------+
| John       | Doe       | john.doe@example.com        | Sales           |
| Jane       | Smith     | jane.smith@example.com      | HR              |
| Michael    | Johnson   | michael.johnson@example.com | IT              |
+------------+-----------+-----------------------------+-----------------+
3 rows in set (0.00 sec)

Scenario 1:You have two tables, employees and departments. Retrieve a list of employees along with their department names using an inner join. 

mysql> SELECT employees.first_name, employees.last_name, employees.email, departments.department_name
    -> FROM employees
    -> INNER JOIN departments ON employees.department_id = departments.department_id;
+------------+-----------+-----------------------------+-----------------+
| first_name | last_name | email                       | department_name |
+------------+-----------+-----------------------------+-----------------+
| John       | Doe       | john.doe@example.com        | Sales           |
| Jane       | Smith     | jane.smith@example.com      | HR              |
| Michael    | Johnson   | michael.johnson@example.com | IT              |
+------------+-----------+-----------------------------+-----------------+
3 rows in set (0.00 sec)


Scenario 2:You have two tables, employees and departments. Retrieve a name & department_name  using an left  join


mysql> SELECT employees.first_name, employees.last_name, departments.department_name
    -> FROM employees
    -> LEFT JOIN departments ON employees.department_id = departments.department_id;
+------------+-----------+-----------------+
| first_name | last_name | department_name |
+------------+-----------+-----------------+
| John       | Doe       | Sales           |
| Jane       | Smith     | HR              |
| Michael    | Johnson   | IT              |
+------------+-----------+-----------------+
3 rows in set (0.00 sec)