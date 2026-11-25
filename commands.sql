CREATE DATABASE test;

CREATE TABLE employee(
 empid INT PRIMARY KEY,
 name VARCHAR(50),
 age INT,
 salary FLOAT
);

INSERT INTO employee VALUES 
(1, 'Rahul', 20, 35000),
(2, 'Ram', 23, 30000),
(3, 'Nikita', 21, 55000);

SELECT * FROM employee;

SELECT * FROM employee 
WHERE age < 30;

SELECT * FROM employee 
WHERE salary > 18000 AND salary < 40000;

SELECT * FROM employee 
WHERE name LIKE '%l';

SELECT * FROM employee
WHERE name = 'Rahul' OR name = 'Ram';

SELECT * FROM employee
WHERE name IN('Rahul', 'Ram');

UPDATE employee
SET salary = salary + (salary*10/100)
WHERE age>38;

UPDATE employee
SET salary = salary * 1.10
WHERE age>38;

UPDATE employee
SET age = 25
WHERE age IS NULL;

DELETE FROM employee
WHERE age < 30;

DELETE FROM employee
WHERE salary > 40000 AND salary < 50000;

UPDATE employee
SET salary = salary * 1.20
WHERE name LIKE '%s';

SELECT * FROM employee
WHERE age BETWEEN 20 AND 30
ORDER BY salary ASC;

SELECT * FROM employee
ORDER BY name DESC;

SELECT * FROM employee
WHERE age > 25
ORDER BY name ASC, salary DESC;

SELECT name, salary FROM employee
ORDER BY age ASC;

SELECT * FROM employee
WHERE name LIKE '_a%'
ORDER BY salary DESC;

SELECT MIN(salary) FROM employee;

SELECT MAX(age) FROM employee;

SELECT COUNT(*) FROM employee;

SELECT SUM(salary) FROM employee;

SELECT AVG(salary) FROM employee
WHERE age IS NOT NULL AND name LIKE '%ni%';

SELECT * FROM employee
WHERE name LIKE '%sh%';

SELECT * FROM employee
WHERE name LIKE '%a';

SELECT * FROM employee
WHERE name LIKE '__n%';

SELECT * FROM employee
WHERE name LIKE '_____';

SELECT * FROM employee
WHERE name LIKE 'R%' OR name LIKE 'N%';

SELECT * FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

SELECT * FROM employee 
WHERE age = (SELECT MAX(age) FROM employee);

SELECT MIN(salary) FROM employee
WHERE salary > (SELECT MIN(salary) FROM employee);

SELECT * FROM employee
WHERE age > (SELECT AVG(age) FROM employee) AND salary < (SELECT AVG(salary) FROM employee);

SELECT DISTINCT salary FROM employee
ORDER BY salary DESC;
LIMIT 1 OFFSET 2;

SELECT batch.batchid FROM batch
JOIN course ON batch.courseid = course.courseid
WHERE course.name = 'Python';

