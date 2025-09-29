CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL
);


CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL
);


CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    export_country VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Customers (customer_id, customer_name) VALUES
(1, 'Arthur Ford'),
(2, 'Betty Ross'),
(3, 'Arnold Horton'),
(4, 'Albert King'),
(5, 'Nora Smith');

INSERT INTO Products (product_id, product_name) VALUES
(101, 'Quantum Monitor'),
(102, 'Desktop Keyboard'),
(103, 'Acoustic Speaker'),
(104, 'Portable Charger');

INSERT INTO Orders (order_id, customer_id, product_id, export_country) VALUES
(1001, 1, 101, 'Canada'), 
(1002, 3, 103, 'Germany'), 
(1003, 2, 102, 'France'),  
(1004, 4, 104, 'Mexico'),  
(1005, 5, 101, 'Canada');  

SELECT
    C.customer_name,
    P.product_name,
    O.export_country
FROM
    Customers C
JOIN
    Orders O ON C.customer_id = O.customer_id
JOIN
    Products P ON O.product_id = P.product_id
WHERE
    C.customer_name LIKE 'a%'
    AND C.customer_name LIKE '%or%';