-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql
-- Tiempo de generación: 17-12-2024 a las 22:05:04
-- Versión del servidor: 8.0.40
-- Versión de PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catalogo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `marca` varchar(50) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `genero` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `precio` decimal(30,0) NOT NULL,
  `imagen` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `marca`, `referencia`, `nombre`, `genero`, `precio`, `imagen`) VALUES
(2, 'BOGUE', '12347', 'niños ', 'M', 100000, 'https://cdn.dribbble.com/users/123014/screenshots/3894218/media/19e80518fe948ea8164653db9b2b8447.jpg?format=webp&resize=400x300&vertical=center'),
(3, 'BOGUE', '4271-B', 'BIFOCAL-F', 'F', 25000, 'https://images.pexels.com/photos/1054777/pexels-photo-1054777.jpeg?auto=compress&cs=tinysrgb&w=600'),
(5, 'OAKKEY', '3006', 'NIÑOS', 'M', 300000, 'https://images.pexels.com/photos/39716/pexels-photo-39716.jpeg?auto=compress&cs=tinysrgb&w=600'),
(6, '1.RAY BAN', ' 7242', 'BIFOCAL-M', 'F', 500000, 'https://images.pexels.com/photos/947885/pexels-photo-947885.jpeg?auto=compress&cs=tinysrgb&w=600'),
(7, 'BOGUE', '4271-B', 'Bajas', 'M', 550000, 'https://images.pexels.com/photos/1068866/pexels-photo-1068866.jpeg?auto=compress&cs=tinysrgb&w=600'),
(8, '5.OAKLEY', ' 3006', 'Altas', 'M', 600000, 'https://images.pexels.com/photos/11563556/pexels-photo-11563556.jpeg?auto=compress&cs=tinysrgb&h=204&fit=crop&w=228&dpr=1'),
(9, '7.FERRAT', 'RF-5505-3', 'BIFOCAL-F', 'f', 8000000, 'https://images.pexels.com/photos/9634190/pexels-photo-9634190.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=252&fit=crop&h=408'),
(10, 'BOGUE', '4271-C', 'NIÑOS', 'F', 700000, 'https://images.pexels.com/photos/701877/pexels-photo-701877.jpeg?auto=compress&cs=tinysrgb&w=600'),
(11, 'OAKKEY', '7243', 'Altas', 'M', 300000, 'https://images.pexels.com/photos/131018/pexels-photo-131018.jpeg?auto=compress&cs=tinysrgb&w=600'),
(12, 'BOGUE', '3007', 'NIÑOS', 'M', 600000, 'https://images.pexels.com/photos/1629781/pexels-photo-1629781.jpeg?auto=compress&cs=tinysrgb&w=600'),
(13, 'RAY BAN', '12346', 'BIFOCAL-F', 'F', 900000, 'https://images.pexels.com/photos/1524242/pexels-photo-1524242.jpeg?auto=compress&cs=tinysrgb&w=600'),
(14, 'OAKKEY', '4271-D', 'BIFOCAL-M', 'M', 120000, 'https://images.pexels.com/photos/55781/pexels-photo-55781.jpeg?auto=compress&cs=tinysrgb&w=600');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
