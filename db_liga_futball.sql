-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2024 a las 19:36:12
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_liga_futball`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `l_equipos`
--

CREATE TABLE `l_equipos` (
  `id_equipo` int(11) NOT NULL,
  `i_equipo` int(11) NOT NULL,
  `v_nombre` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `l_equipos`
--

INSERT INTO `l_equipos` (`id_equipo`, `i_equipo`, `v_nombre`) VALUES
(0, 1, 'Universitrio de Deportes'),
(1, 2, 'Alianza Lima'),
(2, 3, 'Sport Bois'),
(3, 4, 'Sporting Cristal'),
(4, 5, 'Cienciano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `n_jugadores`
--

CREATE TABLE `n_jugadores` (
  `id_jugador` int(11) NOT NULL,
  `ni_equipo` int(11) NOT NULL,
  `ni_jugador` varchar(120) NOT NULL,
  `v_nombre` varchar(120) NOT NULL,
  `v_apellido` varchar(120) NOT NULL,
  `v_posicion` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `n_jugadores`
--

INSERT INTO `n_jugadores` (`id_jugador`, `ni_equipo`, `ni_jugador`, `v_nombre`, `v_apellido`, `v_posicion`) VALUES
(0, 1, '1', 'Segundo', 'Portocarrero', 'Defensa'),
(1, 1, '1', 'Sebastian', 'Britos', 'Arquero'),
(2, 1, '1', 'Edison', 'Flores', 'Centrocamposta'),
(3, 1, '1', 'Christofer', 'Gonzales', 'Centrocampista'),
(4, 1, '1', 'Alex ', 'Vera', 'Delantero'),
(5, 2, '2', 'Jeril', 'De Santis', 'Delantero'),
(6, 2, '2', 'Cecilio', 'Waterman', 'Delantero'),
(7, 2, '2', 'Carlos Augusto', 'Zambrano', 'Defenza'),
(8, 2, '2', 'Kevin', 'Serna', 'Centrocampista'),
(9, 2, '2', 'Pablo', 'Sabbag', 'Delantero'),
(10, 3, '3', 'Cristian', 'Techera', 'Delantero'),
(11, 3, '3', 'Pablo ', 'Bueno', 'Delantero'),
(12, 3, '3', 'Rafael ', 'Lutiger', 'Defensa'),
(13, 3, '3', 'Jesus', 'Barco', 'Centrocampista'),
(14, 3, '3', 'Facundo', 'Mansilla', 'Delantero'),
(15, 4, '4', 'Martin', 'Cauterccio', 'Delantero'),
(16, 4, '4', 'Joao', 'Grimaldo', 'Delantero'),
(17, 4, '4', 'Yoshimar', 'Yotun', 'Centrocampista'),
(18, 4, '4', 'Maxloren', 'Castro', 'Delantero'),
(19, 4, '4', 'Renato', 'Solis', 'Arquero'),
(20, 5, '5', 'Carlos', 'Garces Acosta', 'Delantero'),
(21, 5, '5', 'German ', 'Mera', 'Defensa'),
(22, 5, '5', 'Juan ', 'Romagnoli', 'Delantero'),
(23, 5, '5', 'Alexander', 'Lecaros', 'Delantero'),
(24, 5, '5', 'italo', 'Espinoza', 'Arquero');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `l_equipos`
--
ALTER TABLE `l_equipos`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `n_jugadores`
--
ALTER TABLE `n_jugadores`
  ADD PRIMARY KEY (`id_jugador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
