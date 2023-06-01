-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2023 a las 15:06:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `my_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `id_Productos` int(255) NOT NULL,
  `Nombre_Producto` int(50) NOT NULL,
  `Tipo_Producto` int(50) NOT NULL,
  `img_productos` int(225) NOT NULL,
  `Descripcion_Producto` int(200) NOT NULL,
  `Precio_Descuento` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_Productos` int(255) NOT NULL,
  `Nombre_Producto` varchar(50) NOT NULL,
  `Tipo_Producto` varchar(50) NOT NULL,
  `img_productos` varchar(225) NOT NULL,
  `Descripcion_Producto` varchar(200) NOT NULL,
  `Precio_producto` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regis_tienda`
--

CREATE TABLE `regis_tienda` (
  `id_Tienda` int(255) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Descripcion` varchar(999) NOT NULL,
  `Contrasena` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regis_tienda`
--

INSERT INTO `regis_tienda` (`id_Tienda`, `Nombre`, `Correo`, `Telefono`, `Descripcion`, `Contrasena`) VALUES
(33, 'don juancho', 'djuancho@gmail.com', 3455678, '', 'Z2VuZXNpcy4z');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regis_usuarios`
--

CREATE TABLE `regis_usuarios` (
  `id_Usuario` int(255) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` int(13) NOT NULL,
  `Contrasena` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regis_usuarios`
--

INSERT INTO `regis_usuarios` (`id_Usuario`, `Nombre`, `Apellido`, `Correo`, `Telefono`, `Contrasena`) VALUES
(23, 'oscar', 'leal bossa', 'olealbossa@gmail.com', 2342345, 'Z2VuZXNpcy4z'),
(24, 'dayana ', 'ochoa', 'dayanaochoa@gmail.com', 12345234, 'ZC5vY2hvYQ==');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`id_Productos`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_Productos`);

--
-- Indices de la tabla `regis_tienda`
--
ALTER TABLE `regis_tienda`
  ADD PRIMARY KEY (`id_Tienda`);

--
-- Indices de la tabla `regis_usuarios`
--
ALTER TABLE `regis_usuarios`
  ADD PRIMARY KEY (`id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  MODIFY `id_Productos` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_Productos` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regis_tienda`
--
ALTER TABLE `regis_tienda`
  MODIFY `id_Tienda` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `regis_usuarios`
--
ALTER TABLE `regis_usuarios`
  MODIFY `id_Usuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
