CREATE TABLE IF NOT EXISTS department(
    ei text
    Name text
    Di text,
    Mi text,
    salary REAL
);

INSERT INTO department(ei, name, Di, Mi, salary)VALUES
('100', 'Stephen', '90', '100', 24000),
('101', 'Victor', '90', '100', 17000),
('102', 'Ibe', '50', '102', 9000),
('103', 'Eke', '60', '103', 4000),
('104', 'Kalu', '50', '103', 4200),
('105', 'Emole', '90', '102', 6000);

SELECT di as 'Department Code',
count(*) as 'No of employees',
Sum(salary) as 'Total Salary'
from department
Group By di;

SELECT di as 'Department Code',
Sum(salary) as 'Total Salary'
from department
where mi = '103'
GROUP BY di;

SELECT di as 'Department Code',
count(*) as 'No of employees',
Sum(salary) as 'Total Salary'
from department
GROUP BY di
having count(*)>=2;

SELECT * from department
where name not like '%e';