DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    age INTEGER,
    country VARCHAR(50),
    city VARCHAR(50),
    is_active INTEGER,
    created_at DATE
);

INSERT INTO users VALUES
(1, 'Markus Tamm', 'markus@gmail.com', 24, 'Estonia', 'Tallinn', 1, '2024-01-12'),
(2, 'Anna Saar', NULL, 31, 'Estonia', 'Tartu', 1, '2024-02-18'),
(3, 'Jakub Nowak', 'jakub@gmail.com', 27, 'Poland', 'Warsaw', 1, '2024-01-25'),
(4, 'Katarzyna Kowalska', 'kasia@mail.pl', 22, 'Poland', 'Krakow', 0, '2024-03-04'),
(5, 'Lukas Muller', 'lukas@gmail.com', 35, 'Germany', 'Berlin', 1, '2023-12-15'),
(6, 'Sophie Schneider', NULL, 29, 'Germany', 'Hamburg', 1, '2024-02-09'),
(7, 'Mikko Korhonen', 'mikko@gmail.com', 41, 'Finland', 'Helsinki', 1, '2023-11-20'),
(8, 'Emma Laine', 'emma@mail.fi', 19, 'Finland', 'Tampere', 0, '2024-03-11'),
(9, 'Jan Novak', 'jan@gmail.com', 33, 'Czechia', 'Prague', 1, '2024-01-30'),
(10, 'Tereza Svobodova', 'tereza@email.cz', 26, 'Czechia', 'Brno', 1, '2024-04-02'),
(11, 'Carlos Garcia', NULL, 38, 'Spain', 'Madrid', 1, '2023-10-17'),
(12, 'Lucia Martinez', 'lucia@gmail.com', 23, 'Spain', 'Valencia', 0, '2024-03-28'),
(13, 'Martins Berzins', 'martins@gmail.com', 28, 'Latvia', 'Riga', 1, '2024-02-22'),
(14, 'Laura Ozola', 'laura@mail.lv', 34, 'Latvia', 'Riga', 1, '2023-12-29'),
(15, 'Mantas Kazlauskas', 'mantas@gmail.com', 21, 'Lithuania', 'Vilnius', 1, '2024-04-05');

CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2),
    category VARCHAR(50),
    stock INTEGER
);

INSERT INTO products VALUES
(1, 'Laptop Pro 15', 1299.99, 'Electronics', 15),
(2, 'Wireless Mouse', 39.99, 'Electronics', 120),
(3, 'Mechanical Keyboard', 109.99, 'Electronics', 45),
(4, 'Gaming Headset', 89.99, 'Electronics', 60),
(5, 'Basic T-Shirt', 24.99, 'Clothing', 200),
(6, 'Classic Jeans', 69.99, 'Clothing', 85),
(7, 'Running Sneakers', 119.99, 'Footwear', 70),
(8, 'Coffee Mug', 14.99, 'Kitchen', 150),
(9, 'City Backpack', 79.99, 'Bags', 55),
(10, 'Monitor 27', 349.99, 'Electronics', 25),
(11, 'Smart Watch', 229.99, 'Electronics', 40),
(12, 'Winter Jacket', 159.99, 'Clothing', 30);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    product_id INTEGER,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    created_at DATE
);

INSERT INTO orders VALUES
(1, 1, 2, 39.99, 'completed', '2024-02-10'),
(2, 1, 3, 109.99, 'completed', '2024-02-15'),
(3, 2, 1, 1299.99, 'completed', '2024-03-01'),
(4, 3, 7, 119.99, 'pending', '2024-03-05'),
(5, 4, 5, 24.99, 'cancelled', '2024-03-09'),
(6, 5, 10, 349.99, 'completed', '2024-03-11'),
(7, 5, 4, 89.99, 'completed', '2024-03-14'),
(8, 6, 9, 79.99, 'failed', '2024-03-18'),
(9, 7, 11, 229.99, 'completed', '2024-03-20'),
(10, 8, 6, 69.99, 'pending', '2024-03-25'),
(11, 9, 12, 159.99, 'completed', '2024-03-28'),
(12, 10, 8, 14.99, 'completed', '2024-04-01'),
(13, 11, 1, 1299.99, 'failed', '2024-04-02'),
(14, 12, 7, 119.99, 'cancelled', '2024-04-03'),
(15, 13, 2, 39.99, 'completed', '2024-04-05'),
(16, 13, 10, 349.99, 'completed', '2024-04-07'),
(17, 14, 3, 109.99, 'pending', '2024-04-08'),
(18, 15, 5, 24.99, 'completed', '2024-04-10');
