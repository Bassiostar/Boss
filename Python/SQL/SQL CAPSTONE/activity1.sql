CREATE TABLE nomnom(
name text,
neighbourhood text,
review real,
cuisine text,
price text,
health);

INSERT INTO nomnom(name, neighbourhood, review, cuisine, price, health) VALUES
('Wendy''s', 'Downtown', '4.4', 'Fast Food', '$', 'A'),
('Pasta Palace', 'Uptown', '3.5' 'Italian', '$$', 'B'),
('Sushi World', 'Midtown', '4', 'Japanese', '$$$', 'A'),
('Curry House', 'Downtown', '3.9', 'Indian', '$$', 'C'),
('Burger Barn', 'Suburbs', '4.0', 'Fast Food', '$', 'B'),
('Taco Town', 'Uptown', '3.0', 'Mexican', '$', 'A'),
('Pizza Place', 'Midtown', '4.9', 'Italian', '$$', 'B'),
('Noodle Nook', 'Downtown', '3.8', 'Chinese','$$', 'A'),
('Steakhouse', 'Suburbs', '3.8', 'American', '$$$$', 'A'),
('Vegan Delight', 'Uptown', '5.0', 'Vegan', '$$', 'A');

SELECT * FROM nomnom;

SELECT DISTINCT neighbourhood 
FROM nomnom;

SELECT DISTINCT cuisine
FROM nomnom;

SELECT * from nomnom
WHERE cuisine = 'chinese';

SELECT * from nomnom
WHERE review >= 4;

SELECT * from nomnom
WHERE name, cuisine = 'Italian' and price = '$$$';

SELECT * from nomnom
WHERE name like '%P%';

SELECT * from nomnom
WHERE neighbourhood in ('Downtown', 'Uptown');

SELECT * from nomnom
order by review DESC limit 4;

SELECT * from nomnom
WHERE health is null;

SELECT cuisine, AVG(review) as average_review
FROM nomnom
GROUP BY cuisine
order by review;

SELECT price, COUNT(*) as count
from nomnom
GROUP BY price
ORDER BY price;

SELECT neighbourhood, COUNT(*) as count
from nomnom
GROUP BY neighbourhood
ORDER BY count desc;    