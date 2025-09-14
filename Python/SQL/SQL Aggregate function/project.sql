DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary DECIMAL(10, 2)
);

INSERT INTO employees (employee_id, name, department, salary) VALUES
(1, 'Alice Johnson', 'Sales', 60000.00),
(2, 'Bob Williams', 'Marketing', 55000.00),
(3, 'Charlie Davis', 'Sales', 62000.00),
(4, 'Diana Evans', 'IT', 75000.00),
(5, 'Frank White', 'Marketing', 58000.00),
(6, 'Grace Miller', 'IT', 78000.00);

SELECT
    SUM(salary) AS total_salaries,
    AVG(salary) AS average_salary,
    COUNT(DISTINCT department) AS number_of_departments,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM
    employees;
