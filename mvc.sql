-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2014 a las 12:14:10
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `agenda`
--
CREATE DATABASE IF NOT EXISTS `agenda` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `agenda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactes`
--

CREATE TABLE IF NOT EXISTS `contactes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `cognoms` varchar(35) DEFAULT NULL,
  `direccio` varchar(50) DEFAULT NULL,
  `localitat` varchar(25) DEFAULT NULL,
  `provincia` varchar(15) DEFAULT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `telefon1` varchar(15) DEFAULT NULL,
  `telefon2` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `contactes`
--

INSERT INTO `contactes` (`id`, `nom`, `cognoms`, `direccio`, `localitat`, `provincia`, `cp`, `telefon1`, `telefon2`, `fax`, `mail`) VALUES
(1, 'Andreu', 'Boltanya Pitarch', 'C/ Mealla, 20', 'Castellï¿½ de la Plana', 'Castellï¿½', '12003', '964041235', '', '', 'mailo@gmail.com'),
(2, 'Pedro', 'Amor Beltran', 'C/- Amadeo López, 23', 'Castelló de la Plana', 'Castelló', '12001', '964244312', '619989898', '964244313', 'mailo@gmail.com'),
(3, 'Ana', 'Ansuategui Roig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Arcadi', 'Montes Gasulla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Pep', 'Gimeno Bernat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Pedro', 'Garrido Delas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Juan', 'Bartoll Mon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Paco', 'Llopis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Dani', 'Polo Segarra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Daniela', 'Polo Segarra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Aranxa', 'Pulido Benafeli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Jorge', 'Roig Mendoza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Sara', 'Tirado Polo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Bartolo', 'Bartali Polo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Diego', 'Polo Segarra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
--
-- Base de datos: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Base de datos: `cooperativa`
--
CREATE DATABASE IF NOT EXISTS `cooperativa` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `cooperativa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `id_fact` int(5) NOT NULL AUTO_INCREMENT,
  `dni` varchar(9) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fecha` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_fact`),
  UNIQUE KEY `id_fact_5` (`id_fact`),
  KEY `id_fact` (`id_fact`),
  KEY `dni` (`dni`),
  KEY `id_fact_2` (`id_fact`),
  KEY `id_fact_3` (`id_fact`),
  KEY `id_fact_4` (`id_fact`),
  KEY `dni_2` (`dni`),
  KEY `dni_3` (`dni`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_fact`, `dni`, `fecha`) VALUES
(1, '14256325R', '10/01/2013'),
(2, '21574789L', '25/05/2013'),
(3, '65254987H', '30/02/2013'),
(4, '21548587T', '12/04/2013'),
(5, '56412354J', '05/05/2013'),
(6, '22458741N', '05/05/2013'),
(7, '14256325R', '20/05/2013'),
(8, '58956875K', '04/08/2013'),
(9, '12548785M', '25/08/2013'),
(10, '56412354J', '06/09/2013'),
(11, '22458741N', '08/10/2013'),
(12, '20560478D', '14/11/2013'),
(13, '25548745F', '06/12/2013'),
(14, '21574789L', '01/12/2013');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_producto`
--

CREATE TABLE IF NOT EXISTS `factura_producto` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_fact` int(5) NOT NULL,
  `codigo` int(5) NOT NULL,
  `cantidad` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_fact` (`id_fact`),
  KEY `codigo` (`codigo`),
  KEY `codigo_2` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `factura_producto`
--

INSERT INTO `factura_producto` (`id`, `id_fact`, `codigo`, `cantidad`) VALUES
(1, 1, 3, 10),
(2, 1, 6, 5),
(3, 2, 1, 6),
(4, 3, 1, 6),
(5, 3, 3, 2),
(6, 3, 6, 1),
(7, 4, 5, 10),
(8, 4, 6, 2),
(9, 5, 2, 3),
(10, 6, 3, 4),
(11, 6, 6, 2),
(12, 7, 1, 10),
(13, 8, 4, 8),
(14, 8, 3, 6),
(15, 9, 3, 3),
(16, 9, 5, 8),
(17, 9, 6, 4),
(18, 10, 2, 15),
(19, 11, 1, 3),
(20, 11, 4, 6),
(21, 11, 5, 2),
(22, 12, 1, 2),
(23, 12, 2, 5),
(24, 13, 3, 1),
(25, 14, 4, 4),
(26, 14, 6, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `codigo` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo_2` (`codigo`),
  KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `nombre`, `descripcion`, `precio`) VALUES
(1, 'Vino', 'Vino cosecha propia 750 m', 2.3),
(2, 'Aceite 1 litro', 'Aceite de oliva virgen ex', 5.35),
(3, 'Pate', 'Pate de aceituna', 3.45),
(4, 'Vino Crianza', 'Vino crianza cosecha prop', 3.6),
(5, 'Vino Reserva', 'Vino reserva cosecha prop', 5.2),
(6, 'Aceite 5 litros', 'Aceite de oliva virgen ex', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE IF NOT EXISTS `socio` (
  `dni` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localidad` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `dni` (`dni`),
  KEY `dni_2` (`dni`),
  KEY `dni_3` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `socio`
--

INSERT INTO `socio` (`dni`, `nombre`, `apellidos`, `direccion`, `localidad`, `provincia`, `telefono`) VALUES
('12345678B', 'Manuel', 'García Martínez', 'C/ La Luna, 33', 'Castellón', 'Castellón', '964065474'),
('12548785M', 'Alfredo', 'Vives Pinedo', NULL, NULL, NULL, NULL),
('14256325R', 'María', 'Almela Mallasen', 'Plaza Santa Clara. 56', 'Castellón', 'Castellón', '658978857'),
('20560478D', 'Rosa', 'García Martínez', NULL, NULL, NULL, NULL),
('21548587T', 'Sonia', 'Peña Gonzalez', NULL, NULL, NULL, NULL),
('21574789L', 'Pepe', 'Manzanares Gomez', NULL, NULL, NULL, NULL),
('22458741N', 'Lucia', 'Ramirez Lopez', NULL, NULL, NULL, NULL),
('25548745F', 'Francisca', 'Romero Lopez', NULL, NULL, NULL, NULL),
('45875635S', 'Juan', 'Olmos Romero', NULL, NULL, NULL, NULL),
('56412354J', 'Joaquin', 'Llopis Ramirez', NULL, NULL, NULL, NULL),
('58956875K', 'Marisol', 'Cuevas Rodríguez', 'C/ Borriol, 43', 'Castellón', 'Castellón', '658987452'),
('65254987H', 'Raul', 'Marin Manzano', NULL, NULL, NULL, NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `socio` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura_producto`
--
ALTER TABLE `factura_producto`
  ADD CONSTRAINT `factura_producto_ibfk_1` FOREIGN KEY (`id_fact`) REFERENCES `factura` (`id_fact`),
  ADD CONSTRAINT `factura_producto_ibfk_2` FOREIGN KEY (`codigo`) REFERENCES `producto` (`codigo`);
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
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=46 ;

--
-- Volcado de datos para la tabla `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'cooperativa', 'socio', 'dni', '', '', '_', ''),
(2, 'cooperativa', 'socio', 'nombre', '', '', '_', ''),
(3, 'cooperativa', 'socio', 'apellidos', '', '', '_', ''),
(4, 'cooperativa', 'socio', 'direccion', '', '', '_', ''),
(5, 'cooperativa', 'socio', 'localidad', '', '', '_', ''),
(6, 'cooperativa', 'socio', 'provincia', '', '', '_', ''),
(7, 'cooperativa', 'socio', 'telefono', '', '', '_', ''),
(18, 'cooperativa', 'factura_producto', 'codigo', '', '', '_', ''),
(17, 'cooperativa', 'factura_producto', 'id_fact', '', '', '_', ''),
(11, 'cooperativa', 'factura', 'id', '', '', '_', ''),
(12, 'cooperativa', 'factura', 'dni', '', '', '_', ''),
(13, 'cooperativa', 'factura', 'codigo', '', '', '_', ''),
(16, 'cooperativa', 'factura', 'fecha', '', '', '_', ''),
(15, 'cooperativa', 'factura', 'id_fact', '', '', '_', ''),
(19, 'cooperativa', 'factura_producto', 'cantidad', '', '', '_', ''),
(20, 'cooperativa', 'producto', 'codigo', '', '', '_', ''),
(21, 'cooperativa', 'producto', 'nombre', '', '', '_', ''),
(22, 'cooperativa', 'producto', 'descripcion', '', '', '_', ''),
(23, 'cooperativa', 'producto', 'precio', '', '', '_', ''),
(24, 'cooperativa', 'factura_producto', 'id', '', '', '_', ''),
(45, 'mvc', 'provincias', 'id', '', '', '_', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

--
-- Volcado de datos para la tabla `pma_designer_coords`
--

INSERT INTO `pma_designer_coords` (`db_name`, `table_name`, `x`, `y`, `v`, `h`) VALUES
('cooperativa', 'factura', 452, 166, 1, 1),
('cooperativa', 'factura_producto', 660, 177, 1, 1),
('cooperativa', 'producto', 905, 174, 1, 1),
('cooperativa', 'socio', 236, 167, 1, 1),
('socio', 'provincia', 284, 92, 1, 1),
('socio', 'datos', 24, 58, 1, 1),
('socio', 'contacto', 303, 233, 1, 1),
('mvc', 'datos', 404, 126, 1, 1),
('mvc', 'provincias', 357, 306, 1, 1),
('mvc', 'usuarios', 115, 139, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"mvc","table":"datos"},{"db":"mvc","table":"usuarios"},{"db":"mvc","table":"provincias"},{"db":"socio","table":"datos"},{"db":"socio","table":"provincia"},{"db":"socio","table":"contacto"},{"db":"cooperativa","table":"socio"},{"db":"cooperativa","table":"factura"},{"db":"cooperativa","table":"factura_producto"},{"db":"cooperativa","table":"producto"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2013-11-22 20:26:35', '{"lang":"es"}');
--
-- Base de datos: `socio`
--
CREATE DATABASE IF NOT EXISTS `socio` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `socio`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE IF NOT EXISTS `contacto` (
  `telf_fijo` int(9) NOT NULL,
  `telf_movil` int(9) NOT NULL,
  `email` varchar(30) CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT NULL,
  `dni` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE IF NOT EXISTS `datos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`),
  KEY `provincia` (`provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE IF NOT EXISTS `provincia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provincia` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos`
--
ALTER TABLE `datos`
  ADD CONSTRAINT `datos_ibfk_3` FOREIGN KEY (`provincia`) REFERENCES `provincia` (`id`),
  ADD CONSTRAINT `datos_ibfk_2` FOREIGN KEY (`dni`) REFERENCES `contacto` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;
--
-- Base de datos: `webauth`
--
CREATE DATABASE IF NOT EXISTS `webauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `webauth`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
