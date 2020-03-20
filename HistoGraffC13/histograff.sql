-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 20-03-2020 a las 17:04:58
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `histograff`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `idAdministrador` varchar(12) NOT NULL,
  `NombreAdministrador` varchar(35) DEFAULT NULL,
  `ApellidoAdministrador` varchar(35) DEFAULT NULL,
  `telefonoAdministrador` varchar(13) DEFAULT NULL,
  `Usuario` varchar(15) DEFAULT NULL,
  `Clave` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idAdministrador`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idAdministrador`, `NombreAdministrador`, `ApellidoAdministrador`, `telefonoAdministrador`, `Usuario`, `Clave`) VALUES
('1001160255', 'Jorman Esteban', 'Valencia Misas', '3135314935', 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graffiti`
--

DROP TABLE IF EXISTS `graffiti`;
CREATE TABLE IF NOT EXISTS `graffiti` (
  `codGraffiti` int(11) NOT NULL AUTO_INCREMENT,
  `NombreGraffiti` varchar(50) DEFAULT NULL,
  `DescripcionGraffiti` text,
  `fotoGraffiti` blob,
  `idGuia` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`codGraffiti`),
  KEY `idGuia` (`idGuia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia`
--

DROP TABLE IF EXISTS `guia`;
CREATE TABLE IF NOT EXISTS `guia` (
  `idGuia` varchar(13) NOT NULL,
  `NombreGuia` varchar(35) NOT NULL,
  `ApellidoGuia` varchar(35) NOT NULL,
  `Telefono` varchar(13) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `idAdministrador` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idGuia`),
  KEY `idAdministrador` (`idAdministrador`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitar_tour`
--

DROP TABLE IF EXISTS `solicitar_tour`;
CREATE TABLE IF NOT EXISTS `solicitar_tour` (
  `cod_solicitud` int(11) NOT NULL AUTO_INCREMENT,
  `id_solicitante` varchar(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `apellido` varchar(35) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `cantidad` int(2) NOT NULL,
  `fecha_tour` date NOT NULL,
  `hora_tour` time NOT NULL,
  `metodo_pago` varchar(25) NOT NULL,
  `idAdministrador` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cod_solicitud`),
  KEY `idAdministrador` (`idAdministrador`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `solicitar_tour`
--

INSERT INTO `solicitar_tour` (`cod_solicitud`, `id_solicitante`, `nombre`, `apellido`, `telefono`, `Email`, `cantidad`, `fecha_tour`, `hora_tour`, `metodo_pago`, `idAdministrador`) VALUES
(25, '14', 'Esteban ', 'Misas Gomez', '3013025232', 'estevanmg58@gmail.com', 12, '2020-03-15', '03:04:00', 'Efectivo', '4567890'),
(32, '14', 'Jorman', 'sadfgh', '12345678', 'estevanmg58@gmail.com', 12, '2020-03-15', '23:45:00', 'Efectivo', '4567890'),
(26, '14', 'Esteban ', 'Misas Gomez', '3013025232', 'estevanmg58@gmail.com', 12, '2020-03-15', '03:04:00', 'Efectivo', '4567890'),
(27, '14', 'Esteban ', 'Misas Gomez', '3013025232', 'estevanmg58@gmail.com', 12, '2020-03-15', '03:04:00', 'Efectivo', '4567890');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
