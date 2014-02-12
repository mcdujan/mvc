-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2014 a las 12:30:10
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mvc`
--
CREATE DATABASE IF NOT EXISTS `mvc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mvc`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE IF NOT EXISTS `datos` (
  `id_usuario` int(11) NOT NULL,
  `tel_fijo` varchar(9) NOT NULL,
  `tel_movil` varchar(9) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id_usuario`, `tel_fijo`, `tel_movil`, `email`) VALUES
(1, '987555654', '658987654', 'asde@mail.com'),
(2, '964258365', '612458744', 'asfasfa@mail.com'),
(3, '965402487', '699854123', 'asrfgasgag@mail.com'),
(4, '987547632', '633255411', 'dafgg@mail.es'),
(5, '954256321', '688752415', 'asfasdf@mail.org'),
(6, '972546854', '635423541', 'srgasg@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE IF NOT EXISTS `provincias` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `provincia` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `provincia`) VALUES
(1, 'Andalucía'),
(2, 'Aragón'),
(3, 'Asturias, Principado de'),
(4, 'Balears, Illes'),
(5, 'Canarias'),
(6, 'Cantabria'),
(7, 'Castilla y León'),
(8, 'Castilla - La Mancha'),
(9, 'Cataluña'),
(10, 'Comunidad Valenciana'),
(11, 'Extremadura'),
(12, 'Galicia'),
(13, 'Madrid, Comunidad de '),
(14, 'Murcia, Región de'),
(15, 'Navarra, Comunidad Foral de'),
(16, 'País Vasco'),
(17, 'Rioja, La'),
(18, 'Ceuta'),
(19, 'Melilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `provincia_id` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provincia_id` (`provincia_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `dni`, `provincia_id`) VALUES
(1, 'María', 'de las Mercedes', '20154875R', 3),
(2, 'Pepe', 'Romero Cardoso', '25879664T', 14),
(3, 'Manolo', 'Martínez Sales', '25879458M', 8),
(4, 'Lucía ', 'Loscos Marín', '47854988A', 16),
(5, 'Soledad', 'García Solis', '56987123G', 4),
(6, 'Mario', 'Vaquer', '87548931H', 7);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos`
--
ALTER TABLE `datos`
  ADD CONSTRAINT `datos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`provincia_id`) REFERENCES `provincias` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
