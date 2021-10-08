-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2021 a las 06:15:57
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
-- Base de datos: `racing_university`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id_carrera` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre_C` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_carrera` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `años` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `sueldo` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `Anécdotas` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Consejos` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Links_tests` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Universidades` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina`
--

CREATE TABLE `pagina` (
  `id_pagina` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Contacto` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `R_sociales` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Referencias` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_sociales`
--

CREATE TABLE `r_sociales` (
  `Facebook` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Twitter` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Instagram` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidades`
--

CREATE TABLE `universidades` (
  `id_universidad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre_U` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Lugar` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `T_Becas` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Puntajes_Icfes` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Carreras` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password2` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `email`, `password`, `password2`) VALUES
(1, 'luz', 'LUX', 'l@l', '123', '123'),
(2, 'aaa', 'bbb', 'a@a', '111', '111'),
(3, 'bbb', 'aaa', 'ab@a', '333', '333'),
(4, 'bbb', 'bbb', 'b@b', 'bbb', 'bbb'),
(5, 'kijh', 'kjh', 'kjh@jhj', 'kjh', 'kjh'),
(6, 'alberto', 'cortes', 'a@c', '69', '69');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id_carrera`);

--
-- Indices de la tabla `pagina`
--
ALTER TABLE `pagina`
  ADD PRIMARY KEY (`id_pagina`);

--
-- Indices de la tabla `universidades`
--
ALTER TABLE `universidades`
  ADD PRIMARY KEY (`id_universidad`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
