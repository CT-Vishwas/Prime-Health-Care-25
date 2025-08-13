CREATE TABLE tableA(id INT, name VARCHAR(20));

INSERT INTO tableA VALUES 
(1,'vishwas'),
(2,'Jane'),
(3,'John');

CREATE TABLE tableB(a_id INT, city VARCHAR(20));
INSERT INTO tableB VALUES 
(1,'Bangalore'),
(3,'chennai'),
(4,'Goa');

SELECT * FROM tableA;
SELECT * FROM tableB;
DROP table tableA;

-- INNER JOIN
-- Get the people and their cities
SELECT a.id, a.name, b.city FROM tableA a
INNER JOIN tableB b
ON a.id = b.a_id;

-- LEFT JOIN
SELECT * FROM tableA;
SELECT * FROM tableB;
SELECT a.id, a.name, b.city FROM tableA a
LEFT JOIN tableB b
ON a.id = b.a_id;

-- RIGHT JOIN
SELECT * FROM tableA;
SELECT * FROM tableB;
SELECT a.id, a.name, b.city FROM tableA a
RIGHT JOIN tableB b
ON a.id = b.a_id;

SELECT a.id, a.name, b.city FROM tableB b
RIGHT JOIN tableA a
ON b.a_id = a.id;

SELECT a.id, a.name, b.city FROM tableB b
FULL OUTER JOIN tableA a
ON b.a_id = a.id;


-- SELF JOIN
CREATE TABLE employees(id INT, name VARCHAR(30), manager_id INT);
INSERT INTO employees VALUES
(1, 'Vishwas',3),
(2, 'John',3),(3, 'Jane',NULL),(4, 'Janice',1);


SELECT * FROM employees;


SELECT t1.id,t1.name AS employee_name, t2.name AS manager_name FROM employees t1
JOIN employees t2
ON t1.manager_id = t2.id;


INSERT INTO employees VALUES
(2, 'Vishwas',3)
SELECT t1.id, t2.id, t1.name, t2.name FROM employees as t1 JOIN employees as t2 ON t1.name = t2.name and t1.id <> t2.id;