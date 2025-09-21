CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary DECIMAL(10, 2),
    department VARCHAR(255)
);
INSERT INTO employees (id, name, salary, department) VALUES
(1, 'John Doe', 75000.00, 'Marketing'),
(2, 'Jane Smith', 95000.00, 'Engineering'),
(3, 'Peter Jones', 60000.00, 'HR'),
(4, 'Maria Garcia', 120000.00, 'Engineering'),
(5, 'David Lee', 85000.00, 'Sales');

SELECT * FROM employees;