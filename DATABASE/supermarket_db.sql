-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2024 a las 02:47:10
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `supermarket_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `stock`) VALUES
(1, 'Apple', 'Fruits', '0.50', 100),
(2, 'Milk', 'Dairy', '1.20', 50),
(3, 'Bread', 'Bakery', '1.00', 200),
(4, 'Cheese', 'Dairy', '2.50', 30),
(5, 'Banana', 'Fruits', '0.30', 150),
(6, 'Rice', 'Grains', '1.80', 80),
(7, 'Beans', 'Grains', '1.50', 100),
(8, 'Beef', 'Meat', '12.50', 20),
(9, 'Chicken', 'Meat', '8.75', 30),
(10, 'Pasta', 'Pasta', '2.25', 50),
(11, 'Olive Oil', 'Oils', '4.90', 40),
(12, 'Sugar', 'Sweeteners', '1.20', 60),
(13, 'Flour', 'Flours', '1.75', 70),
(14, 'Coffee', 'Beverages', '3.50', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `quantity`, `date`) VALUES
(1, 1, 10, '2024-07-01'),
(2, 2, 5, '2024-07-02'),
(3, 3, 20, '2024-07-03'),
(4, 4, 2, '2024-07-04'),
(5, 1, 15, '2024-07-05'),
(6, 5, 12, '2024-07-06'),
(7, 6, 4, '2024-07-07'),
(8, 7, 8, '2024-07-08'),
(9, 8, 10, '2024-07-09'),
(10, 9, 6, '2024-07-10'),
(11, 1, 20, '2024-07-11'),
(12, 2, 15, '2024-07-12'),
(13, 3, 18, '2024-07-13'),
(14, 4, 3, '2024-07-14'),
(15, 5, 5, '2024-07-15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
