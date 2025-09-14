DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255),
    grade INT
);

INSERT INTO customers (customer_id, name, city, grade) VALUES
(1, 'John Doe', 'New York', 120),
(2, 'Jane Smith', 'Los Angeles', 95),
(3, 'Peter Jones', 'New York', 105),
(4, 'Mary Brown', 'Chicago', 110),
(5, 'David Wilson', 'New York', 80);

SELECT *
FROM customers
WHERE city = 'New York'
   OR (grade > 100 AND city = 'New York');
