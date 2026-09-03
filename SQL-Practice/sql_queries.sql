-- 1. Count users by country
SELECT country, COUNT(*) AS user_count FROM users GROUP BY country;

-- 2. Show countries with more than one registered user
SELECT country, COUNT(*) AS user_count FROM users GROUP BY country HAVING COUNT(*) > 1 ORDER BY user_count DESC;

-- 3. Calculate the average age of active users
SELECT AVG(age) AS avg_age FROM users WHERE is_active = 1;

-- 4. Count orders by status
SELECT status, COUNT(*) AS order_count FROM orders WHERE status IN ('completed', 'pending', 'failed', 'cancelled') GROUP BY status ORDER BY status;

-- 5. Calculate the total amount of completed orders
SELECT SUM(amount) AS total_completed FROM orders WHERE status = 'completed';

-- 6. Show users and their orders
SELECT u.name, o.id AS order_id, o.amount, o.status FROM users u JOIN orders o ON u.id = o.user_id ORDER BY u.name, o.id;

-- 7. Show user, product and order amount
SELECT u.name, p.name AS product_name, o.amount FROM users u JOIN orders o ON u.id = o.user_id JOIN products p ON o.product_id = p.id ORDER BY u.name, p.name;

-- 8. Count orders for each user who made at least one order
SELECT u.id, u.name, COUNT(o.id) AS order_count FROM users u JOIN orders o ON u.id = o.user_id GROUP BY u.id, u.name ORDER BY order_count DESC;

-- 9. Find users who made more than one order
SELECT u.id, u.name, COUNT(o.id) AS order_count FROM users u JOIN orders o ON u.id = o.user_id GROUP BY u.id, u.name HAVING COUNT(o.id) > 1 ORDER BY order_count DESC;

-- 10. Find the user who spent the most money
SELECT u.id, u.name, SUM(o.amount) AS total_spent FROM users u JOIN orders o ON u.id = o.user_id GROUP BY u.id, u.name ORDER BY total_spent DESC LIMIT 1;

-- 11. Find users who have never made an order
SELECT u.* FROM users u LEFT JOIN orders o ON u.id = o.user_id WHERE o.id IS NULL;

-- 12. Find products that have never been ordered
SELECT p.* FROM products p LEFT JOIN orders o ON p.id = o.product_id WHERE o.id IS NULL;
