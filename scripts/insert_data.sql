--Usar la base de datos(se recomienda en caso de que estemos trabajando en diferentes BBDD)
USE supermarket_db;

--Insertar datos en la tabla productos
INSERT INTO products (name, category, price, stock) VALUES 
('Apple', 'Fruits', 0.50, 100),
('Milk', 'Dairy', 1.20, 50),
('Bread', 'Bakery', 1.00, 200),
('Cheese', 'Dairy', 2.50, 30),
('Banana', 'Fruits', 0.30, 150),
('Rice', 'Grains', 1.80, 80),
('Beans', 'Grains', 1.50, 100),
('Beef', 'Meat', 12.50, 20),
('Chicken', 'Meat', 8.75, 30),
('Pasta', 'Pasta', 2.25, 50),
('Olive Oil', 'Oils', 4.90, 40),
('Sugar', 'Sweeteners', 1.20, 60),
('Flour', 'Flours', 1.75, 70),
('Coffee', 'Beverages', 3.50, 90);

-- Insertar datos en la tabla ventas
INSERT INTO sales (product_id, quantity, date) VALUES 
(1, 10, '2024-07-01'),
(2, 5, '2024-07-02'),
(3, 20, '2024-07-03'),
(4, 2, '2024-07-04'),
(1, 15, '2024-07-05'),
(5, 12, '2024-07-06'),
(6, 4, '2024-07-07'),
(7, 8, '2024-07-08'),
(8, 10, '2024-07-09'),
(9, 6, '2024-07-10'),
(1, 20, '2024-07-11'),
(2, 15, '2024-07-12'),
(3, 18, '2024-07-13'),
(4, 3, '2024-07-14'),
(5, 5, '2024-07-15');
