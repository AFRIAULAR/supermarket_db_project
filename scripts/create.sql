--Crear y usar la base datos:
-- El comando CREATE es de tipo DDL (Data Definition Language)-Define la estructura de la BBDD
CREATE DATABASE IF NOT EXISTS supermarket_db;

-- Comando USE es de tipo TCL (Transaction Control Language) -Contextualiza las operaciones consecuentes
USE supermarket_db;

-- Crear tablas (DDL)
--Tabla productos:
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock INT
);

--Tabla ventas:
CREATE TABLE IF NOT EXISTS sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT,
    date DATE,
    FOREIGN KEY (product_id) REFERENCES products(id)
);
