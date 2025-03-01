CREATE DATABASE companyDB;
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    salary DECIMAL(10,2),
    department_id INT,
    email VARCHAR(100) UNIQUE,
    hire_date DATE
);
INSERT INTO employees (name, age, salary, department_id, email, hire_date)
VALUES ('John Doe', 30, 45000.00, 1, 'john@example.com', '2022-01-15');
SELECT * FROM employees
WHERE salary > 40000;
UPDATE employees
SET salary = 55000
WHERE name = 'John Doe';
DELETE FROM employees
WHERE email = 'john@example.com';
SELECT e.id, e.name, e.salary, e.email, e.hire_date, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;
