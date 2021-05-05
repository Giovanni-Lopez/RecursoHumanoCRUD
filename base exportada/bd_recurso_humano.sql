-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3308
-- Tiempo de generación: 05-05-2021 a las 19:26:42
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_recurso_humano`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_contacto`
--

CREATE TABLE `tb_contacto` (
  `id_contacto` int(11) NOT NULL,
  `nom_contacto` varchar(45) DEFAULT NULL,
  `email_contacto` varchar(45) DEFAULT NULL,
  `tel_contacto` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_contacto`
--

INSERT INTO `tb_contacto` (`id_contacto`, `nom_contacto`, `email_contacto`, `tel_contacto`) VALUES
(2, 'Alexis', 'alexis@itca.edu.sv', '7734-5465'),
(3, 'Manuel', 'manuel@itca.edu.sv', '6798-4587'),
(4, 'Francisco', 'francisco@itca.edu.sv', '3434-2156'),
(5, 'Giovanni ', 'giovanni@itca.edu.sv', '9887-5676');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_contacto`
--
ALTER TABLE `tb_contacto`
  ADD PRIMARY KEY (`id_contacto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_contacto`
--
ALTER TABLE `tb_contacto`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
