-- Encontrar productos cuyo precio sea superior al promedio de todos los productos:
SELECT name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);


--Calcular total vendido de cada producto:
--Unimos tabla sales con tabla products con la condición de union id
--Suma las cantidades vendidas (SUM(sales.quantity)) y las totaliza en total_sold
--Agrupa los resultados por el nombre del producto (GROUP BY products.name)
SELECT products.name, SUM(sales.quantity) AS total_sold
FROM sales
INNER JOIN products ON sales.product_id = products.id
GROUP BY products.name;


--Encontrar producto más vendido
--Del total de ventas de cada producto, ordena de forma descendente y devuelve el primer registro, que corresponde al más vendido
SELECT products.name, SUM(sales.quantity) AS total_sold
FROM sales
INNER JOIN products ON sales.product_id = products.id
GROUP BY products.name
ORDER BY total_sold DESC
LIMIT 1;


--Encontrar los ingresos totales generados por cada producto:
--Agrupa las ventas por producto y calcula los ingresos multiplicando la cantidad vendida por el precio del producto
--Devuelve una lista de productos junto con los ingresos totales generados (total_revenue) para cada uno
SELECT products.name, SUM(sales.quantity * products.price) AS total_revenue
FROM sales
INNER JOIN products ON sales.product_id = products.id
GROUP BY products.name;

--Encontrar la cantidad promedio vendida por producto por día:
--Devuelve una lista de productos junto con la cantidad promedio vendida por día (avg_quantity_per_day) para cada uno
SELECT products.name, AVG(sales.quantity) AS avg_quantity_per_day
FROM sales
INNER JOIN products ON sales.product_id = products.id
GROUP BY products.name;
