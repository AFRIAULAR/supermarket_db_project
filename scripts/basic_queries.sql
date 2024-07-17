--Seleccionar TODOS los productos
SELECT * FROM products;

--Seleccionar productos de categoria específica
SELECT * FROM products WHERE category = 'Dairy';

--Obtener ventas dentro de un rango específico (fecha)
SELECT * FROM sales WHERE date BETWEEN '2024-07-01' AND '2024-07-10';
