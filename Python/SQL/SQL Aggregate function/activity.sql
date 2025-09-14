create table if not exists products(
    product_id Text Primary key,
    product_name Text,
    supplier_id Text,
    category_id Text,
    Unit Text,
    Price REal,
    name Text
);

INSERT INTO products(product_id, product_name, supplier_id, category_id, Unit, Price, name)VALUES
('1', 'chain', '1', '1','10 boxes* 20 bags', 18, 'Ali'),
('2', 'chang', '1', '1', '10-24 boxes* 20 bags', 19, 'jouri'),
('3', 'Syrup', '1', '2', '11-550 boxes* 20 ml', 10, 'Musa'),
('4', 'chef antony', '2', '2', '40-7 JArs* 20 bags', 22, 'Ali');

SELECT * from products;

SELECT COUNT(product_id) AS PRoduct_Count
FROM products;

SELECT AVG(Price) AS Average_Price
FROM products;

SELECT sum(Price) AS Total_Price
FROM products;

SELECT DISTINCT supplier_id FROM products;
SELECT DISTINCT name, supplier_id FROM products;
SELECT DISTINCT name, supplier_id, FROM products
WHERE Price > 20;