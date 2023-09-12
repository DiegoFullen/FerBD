-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2023 a las 21:54:27
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fermasleep`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(5) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` float NOT NULL,
  `descuento` float NOT NULL,
  `stock` int(5) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `color` varchar(20) NOT NULL,
  `talla` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descuento`, `stock`, `descripcion`, `color`, `talla`) VALUES
(1, 'Pijama 1', 141.87, 0, 1, 'Pijama para caballero, Otoño Onvierno, color negro ', '000', 'G'),
(2, 'Pijama 1000', 230.45, 0, 1, 'Pijama de cuadros color (azul/blanco), otoño-invierno', 'b2bacf', 'CH'),
(3, 'Pijama 3', 320, 35, 1, 'Pijama de cuadros, color (Blanco/Durazno), Otoño-invierno', 'e7d7ca', 'M'),
(4, 'Pijama 4', 270, 0, 1, 'Pijama de cuadros, color(Blanco/Azul), Otoño-Invierno', '445174', 'CH'),
(5, 'Pijama 5', 292.9, 0, 1, 'Pijama de seda, color Negro, Primavera-Verano', '000', 'CH'),
(6, 'Pijama 6', 422.8, 15, 1, 'Pijama de seda, color Rosa, Primavera-Verano', 'c68b7b', 'M'),
(7, 'Pijama 7', 469.5, 30, 1, 'Pijama a rayas, color (Blanco/Rosa), Otoño-Invierno', 'eec6c7', 'M'),
(8, 'Pijama 8', 478.2, 0, 1, 'Pijama de algodón, a rayas de color (Blanco / Azul), Otoño-Invierno', '8CABEC', 'CH'),
(9, 'Pijama 9', 350, 10, 9, 'Pijama a cuadros, color gris con blanco, Otoño-Invierno', 'a0aeb7', 'CH'),
(10, 'Pijama 10', 270, 0, 9, 'Pijama de seda, color (rojo), Primavera - Verano', 'ca2a42', 'CH'),
(11, 'Pijama 11', 200, 5, 15, 'Pijama de algodón, lisa de color Azul marino, Otoño - Invierno', '333655', 'M'),
(12, 'Pijama 12', 245.5, 0, 10, 'Pijama de seda, color (blanco), Primavera - Verano', 'f5f0ea', 'CH');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `edad` int(3) NOT NULL,
  `telefono` int(12) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `tipo` varchar(10) NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `contrasena`, `edad`, `telefono`, `correo`, `apellido`, `tipo`) VALUES
(7, 'Diego', 'admin', 20, 12345678, 'dcandiafullen@gmail.com', 'Candia', 'Admin'),
(8, 'User3', '12345', 30, 1234567890, 'dcandiafullen@gmail.com', 'user3', 'User'),
(9, 'Rosa', '12345', 20, 12345678, 'rsantana@ceti.mx', 'santana', 'User');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
