-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2022 a las 00:02:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `deportes_ceet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendiz`
--

CREATE TABLE `aprendiz` (
  `identificacion` varchar(100) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `contraseña` varchar(150) NOT NULL,
  `fecha_nacimiento` varchar(30) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `puesto` varchar(15) NOT NULL,
  `estado` int(11) NOT NULL,
  `sede` varchar(50) NOT NULL,
  `deporte` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aprendiz`
--

INSERT INTO `aprendiz` (`identificacion`, `nombres`, `correo`, `contraseña`, `fecha_nacimiento`, `genero`, `puesto`, `estado`, `sede`, `deporte`) VALUES
('1250', 'Juan Campos', 'yo@gmail,com', '8778', '15-06-1991', 'Hombre', 'Aprendiz', 2, 'ceet', 'futbol'),
('4564', 'wilmer', 'duvax@gmail.com', '12345', '10-03-2002', 'hombre', 'admin', 1, 'bogota', 'basket');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `ID_Ciudad` int(11) NOT NULL,
  `Nombre_Ciudad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`ID_Ciudad`, `Nombre_Ciudad`) VALUES
(1, 'Bogota'),
(2, 'Cali'),
(3, 'Medellin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

CREATE TABLE `deportes` (
  `ID_Deportes` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Inscripcion` varchar(100) NOT NULL,
  `Fecha_de_ingreso` date NOT NULL,
  `ID_Aprendices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`ID_Deportes`, `Nombre`, `Inscripcion`, `Fecha_de_ingreso`, `ID_Aprendices`) VALUES
(1, 'Futbol', '1', '2022-05-10', 1),
(2, 'Ping Pong', '1', '2022-05-10', 2),
(3, 'Baloncesto', '1', '2022-05-10', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `ID_Noticias` int(11) NOT NULL,
  `Invitacion` int(11) NOT NULL,
  `Campeonato` varchar(100) NOT NULL,
  `Inscripcion` int(11) NOT NULL,
  `ID_Deportes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`ID_Noticias`, `Invitacion`, `Campeonato`, `Inscripcion`, `ID_Deportes`) VALUES
(1, 1, 'Futbol', 1, 1),
(2, 1, 'Ping Pong', 1, 2),
(3, 1, 'Baloncesto', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `ID_Sede` int(11) NOT NULL,
  `Telefno` int(11) NOT NULL,
  `ID_Ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`ID_Sede`, `Telefno`, `ID_Ciudad`) VALUES
(1, 12121212, 1),
(2, 23232323, 2),
(3, 45454545, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD PRIMARY KEY (`identificacion`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`ID_Ciudad`);

--
-- Indices de la tabla `deportes`
--
ALTER TABLE `deportes`
  ADD PRIMARY KEY (`ID_Deportes`),
  ADD KEY `ID_Aprendices` (`ID_Aprendices`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD KEY `ID_Deportes` (`ID_Deportes`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`ID_Sede`),
  ADD KEY `ID_Ciudad` (`ID_Ciudad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
