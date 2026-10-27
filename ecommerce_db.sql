
-- 1. Database Creation

CREATE DATABASE ecommerce_db;
USE ecommerce_db;


-- 2. Table Design (Fields and Data Types)

CREATE TABLE customers(
customer_id INT,
name VARCHAR(50),
email VARCHAR(100),
phone VARCHAR(15),
city VARCHAR(30),
registered_date DATE
);

CREATE TABLE categories(
category_id INT,
category_name VARCHAR(50)
);

CREATE TABLE products(
product_id INT,
product_name VARCHAR(100),
category_id INT,
price DECIMAL(10,2),
quantity INT,
brand VARCHAR(50)
);

CREATE TABLE orders(
order_id INT,
customer_id INT,
order_date DATE,
status VARCHAR(20),
total_amount DECIMAL(10,2)
);

CREATE TABLE order_items(
item_id INT,
order_id INT,
product_id INT,
quantity INT,
unit_price DECIMAL(10,2)
);

CREATE TABLE payments(
payment_id INT,
order_id INT,
payment_method VARCHAR(30),
payment_status VARCHAR(20),
payment_date DATE
);

CREATE TABLE employees(
employee_id INT,
employee_name VARCHAR(50),
department VARCHAR(30),
salary DECIMAL(10,2),
joining_date DATE
);


-- 3. Insert Data

INSERT INTO customers (customer_id, name, email, phone, city, registered_date) VALUES
(2001, 'Amal Joseph', 'amal.joseph@gmail.com', '+919846012345', 'Kochi', '2025-01-15'),
(2002, 'Anjali Nair', 'anjali.nair@gmail.com', '+919447012345', 'Thiruvananthapuram', '2025-02-20'),
(2003, 'Muhammed Faizal', 'm.faizal@gmail.com', '+919895012345', 'Kozhikode', '2025-03-12'),
(2004, 'Reshma Jacob', 'reshma.j@gmail.com', '+919446012345', 'Thrissur', '2025-05-18'),
(2005, 'Vishnu Prasad', 'vishnu.p@gmail.com', '+919744012345', 'Kollam', '2025-06-01'),
(2006, 'Sruthi Mathews', 'sruthi.m@gmail.com', '+919946012345', 'Kottayam', '2025-08-24'),
(2007, 'Ashwin Kumar', 'ashwin.k@gmail.com', '+919633012345', 'Alappuzha', '2025-10-05'),
(2008, 'Fathima Riza', 'fathima.riza@gmail.com', '+919562012345', 'Palakkad', '2025-11-12');

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics & Gadgets'),
(2, 'Fashion & Apparel'),
(3, 'Home & Kitchen Appliances'),
(4, 'Beauty & Personal Care'),
(5, 'Groceries & Essentials');

INSERT INTO products (product_id, product_name, category_id, price, quantity, brand) VALUES
(101, 'Bluetooth Wireless Earbuds', 1, 2999.00, 5, 'boAt'),
(102, 'Fast Charging Power Bank 20000mAh', 1, 1499.00, 8, 'Ambrane'),
(103, 'Smart Fitness Band', 1, 2499.00, 40, 'Noise'),
(104, 'Men Regular Fit Denim Jacket', 2, 2199.00, 65, 'Levis'),
(105, 'Women Floral Print Summer Dress', 2, 1599.00, 150, 'Zara'), -- Fixed row
(106, 'Electric Drip Coffee Maker', 3, 3499.00, 3, 'Philips'),
(107, 'Compact 400W Food Processor', 3, 2899.00, 35, 'Prestige'),
(108, 'Moisturizing Aloe Vera Gel 200g', 4, 299.00, 180, 'Wow Skin Science'),
(109, 'Matte Liquid Lipstick Combo', 4, 799.00, 110, 'Maybelline'),
(110, 'Sunscreen SPF 50 PA+++ 50ml', 4, 499.00, 130, 'Mamaearth'),
(111, 'Premium Roasted Almonds 500g', 5, 650.00, 4, 'Happilo'),
(112, 'Organic Green Tea 100 Bags', 5, 350.00, 175, 'Lipton');


INSERT INTO orders (order_id, customer_id, order_date, status, total_amount) VALUES
(5001, 2001, '2026-10-01', 'Delivered', 2999.00),
(5002, 2002, '2026-10-03', 'Delivered', 4398.00),
(5003, 2003, '2026-10-05', 'Delivered', 1499.00),
(5004, 2004, '2026-10-08', 'Shipped', 3499.00),
(5005, 2005, '2026-10-12', 'Shipped', 798.00),
(5006, 2006, '2026-10-15', 'Pending', 2199.00),
(5007, 2007, '2026-10-18', 'Pending', 650.00),
(5008, 2008, '2026-10-21', 'Cancelled', 1599.00);

INSERT INTO order_items (item_id, order_id, product_id, quantity, unit_price) VALUES
(9001, 5001, 101, 1, 2999.00), 
(9002, 5002, 103, 1, 1299.00),
(9003, 5002, 106, 1, 3499.00),
(9004, 5003, 102, 1, 1499.00),
(9005, 5004, 106, 1, 3499.00),
(9006, 5005, 108, 2, 340.00), 
(9007, 5006, 104, 1, 2199.00),
(9008, 5007, 111, 1, 650.00),
(9009, 5008, 105, 1, 1599.00);

INSERT INTO payments (payment_id, order_id, payment_method, payment_status, payment_date) VALUES
(8001, 5001, 'UPI', 'Completed', '2026-10-01'), 
(8002, 5002, 'Credit Card', 'Completed', '2026-10-03'),
(8003, 5003, 'Debit Card', 'Completed', '2026-10-05'),
(8004, 5004, 'Net Banking', 'Completed', '2026-10-08'),
(8005, 5005, 'UPI', 'Completed', '2026-10-12'),
(8006, 5006, 'UPI', 'Completed', '2026-10-15'),
(8007, 5007, 'Cash on Delivery', 'Pending', '2026-10-18'),
(8008, 5008, 'Credit Card', 'Failed', '2026-10-21');

INSERT INTO employees (employee_id, employee_name, department, salary, joining_date) VALUES
(3001, 'Rahul Verma', 'Human Resources', 45000.00, '2024-03-15'),
(3002, 'Sneha George', 'Engineering', 85000.00, '2024-06-01'),
(3003, 'Arjun Das', 'Marketing', 55000.00, '2024-09-12'),
(3004, 'Meera Nair', 'Finance', 65000.00, '2025-01-10'),
(3005, 'Deepak Kumar', 'Operations', 48000.00, '2025-04-18'),
(3006, 'Riya Pillai', 'Customer Support', 38000.00, '2025-07-22');


-- 4. Basic SELECT Questions

SELECT * FROM customers;
SELECT name, city FROM customers;
SELECT * FROM products;
SELECT product_name, price, quantity FROM products;
SELECT * FROM orders;
SELECT * FROM payments;
SELECT * FROM employees;
SELECT DISTINCT city FROM customers;
SELECT * FROM products ORDER BY product_id ASC LIMIT 5;
SELECT * FROM orders ORDER BY order_id ASC LIMIT 3;


-- 5. WHERE, AND and OR

SELECT * FROM products WHERE price > 50000;
SELECT * FROM products WHERE price < 5000;
SELECT * FROM customers WHERE city = 'Kochi';
SELECT * FROM customers WHERE city = 'Kochi' OR city = 'Kollam';
SELECT * FROM products WHERE price > 2000 AND quantity > 10;
SELECT * FROM orders WHERE total_amount > 10000;
SELECT * FROM employees WHERE salary > 35000;
SELECT * FROM products WHERE quantity < 10;
SELECT * FROM orders WHERE status IN ('Pending','Shipped');
SELECT * FROM customers WHERE city = 'Kochi' AND name LIKE 'A%';


-- 6. LIKE, DISTINCT, LIMIT and ORDER BY

SELECT * FROM customers WHERE name LIKE 'A%';
SELECT * FROM customers WHERE name LIKE '%a';
SELECT * FROM products WHERE product_name LIKE '%Air%';
SELECT * FROM customers WHERE email LIKE '%gmail%';
SELECT DISTINCT city FROM customers;
SELECT * FROM products ORDER BY price DESC LIMIT 5;
SELECT * FROM products ORDER BY price ASC LIMIT 5;
SELECT * FROM products ORDER BY price DESC;
SELECT * FROM customers ORDER BY name ASC;
SELECT * FROM orders ORDER BY order_date DESC LIMIT 5;


-- 7. UPDATE Questions

SET SQL_SAFE_UPDATES = 0;
UPDATE products SET quantity = 10 WHERE product_id = 102;
UPDATE orders SET status = 'Shipped' WHERE order_id = 5007;
UPDATE products SET price = price * 1.10 WHERE product_id = 109;
UPDATE customers SET city = 'Kochi' WHERE customer_id = 2007;
UPDATE employees SET salary = 40000 WHERE employee_id = 3006;
UPDATE payments SET payment_status = 'Paid' WHERE payment_id = 8003;
UPDATE products SET brand = 'boAt' WHERE product_id = 103;
SET SQL_SAFE_UPDATES = 1;


-- 8. DELETE Questions

SET SQL_SAFE_UPDATEs = 0;
DELETE FROM employees WHERE employee_id = 3004;
DELETE FROM payments WHERE payment_id = 8005;
DELETE FROM products WHERE quantity = 0;
DELETE FROM orders WHERE status = 'Cancelled';
DELETE FROM customers WHERE customer_id = 2001;
SET SQL_SAFE_UPDATES = 1;


-- 9. ALTER TABLE Questions

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE customers ADD gender VARCHAR(10);
ALTER TABLE customers MODIFY COLUMN phone VARCHAR(32);
ALTER TABLE customers RENAME COLUMN phone TO mobile;
ALTER TABLE customers DROP COLUMN gender;
ALTER TABLE products ADD discount INT;
ALTER TABLE products MODIFY COLUMN discount DECIMAL(5,2) DEFAULT 0.00;
RENAME TABLE employees TO staff;
RENAME TABLE staff TO employees;
SET SQL_SAFE_UPDATES = 1;


-- 10. Aggregate Function Questions

SELECT COUNT(*) AS total_number FROM customers;
SELECT COUNT(*) AS total_number FROM products;
SELECT MAX(price) AS highest_price FROM products;
SELECT AVG(price) AS average FROM products;
SELECT SUM(quantity) AS available_stock FROM products;
SELECT COUNT(*) AS total_number FROM orders;
SELECT AVG(total_amount) AS average FROM orders;
SELECT MAX(total_amount) AS highest_amount FROM orders;
SELECT SUM(salary) AS salary_paid FROM employees;


-- 11. GROUP BY and HAVING

SELECT city, COUNT(*) AS city FROM customers GROUP BY city;
SELECT product_name, COUNT(*) AS products FROM products GROUP BY product_name;
SELECT category_id, AVG(price) AS average FROM products GROUP BY category_id;
SELECT category_id, SUM(quantity) AS total_stock FROM products GROUP BY category_id;
SELECT customer_id, COUNT(*) AS number_of_orders FROM orders GROUP BY customer_id;
SELECT customer_id, SUM(total_amount) AS total_spent FROM orders GROUP BY customer_id;
SELECT department, COUNT(*) AS number_of_employees FROM employees GROUP BY department;
SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department;
SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department HAVING AVG(salary) > 35000;
SELECT customer_id, COUNT(*) AS number_of_orders FROM orders GROUP BY customer_id HAVING COUNT(*) > 1;
SELECT category_id, COUNT(*) AS number_of_products FROM products GROUP BY category_id HAVING COUNT(*) > 2;


-- 12. Business Analysis

SELECT * FROM products ORDER BY price DESC LIMIT 3;
SELECT * FROM products WHERE quantity < 10;
SELECT * FROM payments WHERE payment_status LIKE 'Pending';
SELECT SUM(total_amount) AS total_sales FROM orders WHERE status='Delivered';
SELECT AVG(total_amount) AS total_sales FROM orders WHERE status='Delivered';
SELECT status,COUNT(*) AS number_of_orders FROM orders GROUP BY status;
SELECT customer_id, MAX(total_amount) AS highest_order_amount FROM orders GROUP BY customer_id;
SELECT customer_id, MAX(order_date) AS latest_order FROM orders GROUP BY customer_id;
SELECT payment_method, COUNT(*) AS payment_methods FROM payments GROUP BY payment_method;
SELECT department, COUNT(*) AS departments FROM employees GROUP BY department HAVING COUNT(*)> 0;


-- 13. JOIN Questions

SELECT c.name, o.order_id FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.name, o.order_date, o.status, o.total_amount FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;
SELECT p.product_name, c.category_name FROM products p INNER JOIN categories c ON p.category_id = c.category_id;
SELECT o.order_id, c.name FROM orders o INNER JOIN customers c ON o.customer_id = c.customer_id;
SELECT o.item_id, p.product_name, o.quantity FROM order_items o INNER JOIN products p ON o.product_id = p.product_id;
SELECT o.order_id, c.name, p.product_name, oi.quantity, oi.unit_price FROM orders o 
	INNER JOIN customers c ON o.customer_id = c.customer_id
	INNER JOIN order_items oi ON o.order_id = oi.order_id
	INNER JOIN products p ON oi.product_id = p.product_id;
SELECT o.order_id, c.name, p.payment_status FROM orders o
	INNER JOIN customers c ON o.customer_id = c.customer_id
    INNER JOIN payments p ON o.order_id = p.order_id;
SELECT c.customer_id, c.name FROM customers c LEFT JOIN orders o ON  c.customer_id = o.customer_id WHERE o.order_id IS NULL;
SELECT p.product_id, p.product_name FROM products p LEFT JOIN order_items o ON p.product_id = o.product_id WHERE o.order_id IS NULL;
SELECT c.customer_id, c.name AS customer_name, o.order_id, oi.item_id, p.product_name, oi.quantity, oi.unit_price FROM customers c
	INNER JOIN orders o ON c.customer_id = o.customer_id
	INNER JOIN order_items oi ON o.order_id = oi.order_id
	INNER JOIN products p ON oi.product_id = p.product_id;
SELECT c.name AS customer_name, o.order_id, p.payment_method, p.payment_status FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN payments p ON o.order_id = p.order_id;
