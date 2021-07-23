-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2021 a las 15:57:51
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gastos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_fechas`
--

CREATE TABLE `t_fechas` (
  `id_fecha` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fechaInsert` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `t_fechas`
--

INSERT INTO `t_fechas` (`id_fecha`, `fecha`, `fechaInsert`) VALUES
(1, '2021-07-23', '2021-07-23 00:06:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_gastos`
--

CREATE TABLE `t_gastos` (
  `id_gastos` int(11) NOT NULL,
  `id_fecha` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `monto` int(11) NOT NULL,
  `fechaInsert` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `t_gastos`
--

INSERT INTO `t_gastos` (`id_gastos`, `id_fecha`, `descripcion`, `monto`, `fechaInsert`) VALUES
(2, 1, 'ghjk', 234, '2021-07-23 00:14:06'),
(3, 1, '4q5w6y', 45, '2021-07-23 00:14:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_fechas`
--
ALTER TABLE `t_fechas`
  ADD PRIMARY KEY (`id_fecha`);

--
-- Indices de la tabla `t_gastos`
--
ALTER TABLE `t_gastos`
  ADD PRIMARY KEY (`id_gastos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_fechas`
--
ALTER TABLE `t_fechas`
  MODIFY `id_fecha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_gastos`
--
ALTER TABLE `t_gastos`
  MODIFY `id_gastos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
