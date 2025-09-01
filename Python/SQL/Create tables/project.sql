CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50)
);

INSERT INTO employees (employee_id, first_name, last_name, email, department) VALUES
    (1, 'Bassey', 'Stephen', 'stephenetim433@gmail.com', 'IT'),
    (2, 'Eke', 'Emmanuel', 'ekemma12@yahoo.com', 'IT'),
    (3, 'Onyekachi', 'Emmanuel', 'onyemmanuel@gmail.com', 'HR'),
    (4, 'Nnadoaie', 'Destiny', 'destiny23@gmail.com', 'Finance'),
    (5, 'Ndimele', 'Victor', 'victor123@yahoo.com', 'Accounting'),
    (6, 'Obia', 'Vera', 'obiavera@gmail.com', 'Finance');


SELECT employee_id, first_name, last_name, email, department
FROM employees
WHERE department = 'Finance' OR department = 'Accounting';