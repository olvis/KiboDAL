-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-06-2014 a las 04:49:07
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `efic2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
  `perm_id` int(11) NOT NULL,
  `perm_descripcion` varchar(100) NOT NULL,
  `perm_padre` int(11) DEFAULT NULL,
  PRIMARY KEY (`perm_id`),
  KEY `perm_padre` (`perm_padre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`perm_id`, `perm_descripcion`, `perm_padre`) VALUES
(1, 'Control total', NULL),
(101, 'Gestionar áreas de aprovechamiento', 1),
(102, 'Gestionar calidades', 1),
(103, 'Gestionar especies', 1),
(104, 'Censar árboles', 1),
(105, 'Talar árboles', 1),
(106, 'Gestionar cargas', 1),
(107, 'Gestionar fajas', 1),
(108, 'Gestionar patios', 1),
(109, 'Extraer trozas', 1),
(110, 'Movilizar y despachar', 1),
(111, 'Gestionar destinos', 1),
(200, 'Gestionar usuarios', 1),
(201, 'Gestionar roles', 1),
(10101, 'Crear', 101),
(10102, 'Modificar', 101),
(10104, 'Visualizar', 101),
(10201, 'Crear', 102),
(10202, 'Modificar', 102),
(10204, 'Visualizar', 102),
(10301, 'Crear', 103),
(10302, 'Modificar', 103),
(10304, 'Visualizar', 103),
(10401, 'Crear', 104),
(10402, 'Visualizar', 104),
(10501, 'Crear', 105),
(10502, 'Visualizar', 105),
(10601, 'Crear', 106),
(10602, 'Modificar', 106),
(10604, 'Visualizar', 106),
(10701, 'Crear', 107),
(10702, 'Modificar', 107),
(10704, 'Visualizar', 107),
(10801, 'Crear', 108),
(10802, 'Modificar', 108),
(10804, 'Visualizar', 108),
(10901, 'Crear', 109),
(10902, 'Visualizar', 109),
(11001, 'Crear', 110),
(11002, 'Visualizar', 110),
(11101, 'Crear', 111),
(11102, 'Modificar', 111),
(11104, 'Visualizar', 111),
(20001, 'Crear', 200),
(20002, 'Modificar', 200),
(20003, 'Visualizar', 200),
(20101, 'Crear', 201),
(20102, 'Modificar', 201),
(20103, 'Visualizar', 201);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `rol_id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`rol_id`),
  UNIQUE KEY `UQ_rol_rol_descripcion` (`rol_descripcion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`rol_id`, `rol_descripcion`) VALUES
(1, 'Administrador'),
(2, 'Censador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_permiso`
--

CREATE TABLE IF NOT EXISTS `rol_permiso` (
  `perm_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `valor` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`perm_id`,`rol_id`),
  KEY `perm_id` (`perm_id`),
  KEY `rol_id` (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol_permiso`
--

INSERT INTO `rol_permiso` (`perm_id`, `rol_id`, `valor`) VALUES
(1, 1, '1'),
(1, 2, '1'),
(101, 1, '1'),
(101, 2, '1'),
(102, 1, '1'),
(102, 2, '1'),
(103, 1, '1'),
(103, 2, '1'),
(104, 1, '1'),
(104, 2, '1'),
(105, 1, '1'),
(105, 2, '1'),
(106, 1, '1'),
(106, 2, '1'),
(107, 1, '1'),
(107, 2, '1'),
(108, 1, '1'),
(108, 2, '1'),
(109, 1, '1'),
(109, 2, '1'),
(110, 1, '1'),
(110, 2, '1'),
(111, 1, '1'),
(111, 2, '1'),
(200, 1, '1'),
(200, 2, '1'),
(201, 1, '1'),
(201, 2, '1'),
(10101, 1, '1'),
(10101, 2, '1'),
(10102, 1, '1'),
(10102, 2, '1'),
(10104, 1, '1'),
(10104, 2, '1'),
(10201, 1, '1'),
(10201, 2, '1'),
(10202, 1, '1'),
(10202, 2, '1'),
(10204, 1, '1'),
(10204, 2, '1'),
(10301, 1, '1'),
(10301, 2, '1'),
(10302, 1, '1'),
(10302, 2, '1'),
(10304, 1, '1'),
(10304, 2, '1'),
(10401, 1, '1'),
(10401, 2, '1'),
(10402, 1, '1'),
(10402, 2, '1'),
(10501, 1, '1'),
(10501, 2, '1'),
(10502, 1, '1'),
(10502, 2, '1'),
(10601, 1, '1'),
(10601, 2, '1'),
(10602, 1, '1'),
(10602, 2, '1'),
(10604, 1, '1'),
(10604, 2, '1'),
(10701, 1, '1'),
(10701, 2, '1'),
(10702, 1, '1'),
(10702, 2, '1'),
(10704, 1, '1'),
(10704, 2, '1'),
(10801, 1, '1'),
(10801, 2, '1'),
(10802, 1, '1'),
(10802, 2, '1'),
(10804, 1, '1'),
(10804, 2, '1'),
(10901, 1, '1'),
(10901, 2, '1'),
(10902, 1, '1'),
(10902, 2, '1'),
(11001, 1, '1'),
(11001, 2, '1'),
(11002, 1, '1'),
(11002, 2, '1'),
(11101, 1, '1'),
(11101, 2, '1'),
(11102, 1, '1'),
(11102, 2, '1'),
(11104, 1, '1'),
(11104, 2, '1'),
(20001, 1, '1'),
(20001, 2, '1'),
(20002, 1, '1'),
(20002, 2, '1'),
(20003, 1, '1'),
(20003, 2, '1'),
(20101, 1, '1'),
(20101, 2, '1'),
(20102, 1, '1'),
(20102, 2, '1'),
(20103, 1, '1'),
(20103, 2, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t01_area`
--

CREATE TABLE IF NOT EXISTS `t01_area` (
  `area_id` int(11) NOT NULL,
  `area_codigo` varchar(15) NOT NULL,
  `area_anio_inicial` smallint(6) DEFAULT '0',
  `area_anio_final` smallint(6) DEFAULT '0',
  `area_zona_utm` tinyint(4) DEFAULT NULL,
  `area_banda_utm` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`area_id`),
  UNIQUE KEY `UQ_t01_area_area_codigo` (`area_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t01_area`
--

INSERT INTO `t01_area` (`area_id`, `area_codigo`, `area_anio_inicial`, `area_anio_final`, `area_zona_utm`, `area_banda_utm`) VALUES
(15, 'PCA1', 2000, 2020, 20, 'K');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t02_calidad`
--

CREATE TABLE IF NOT EXISTS `t02_calidad` (
  `calidad_id` int(11) NOT NULL AUTO_INCREMENT,
  `calidad_codigo` varchar(5) NOT NULL,
  `calidad_descripcion` varchar(50) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`calidad_id`),
  UNIQUE KEY `UQ_t02_calidad_calidad_codigo` (`calidad_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `t02_calidad`
--

INSERT INTO `t02_calidad` (`calidad_id`, `calidad_codigo`, `calidad_descripcion`, `modificado`) VALUES
(13, '1', 'Alta', '2014-06-12 19:30:40'),
(14, '2', 'Media', '2014-06-12 19:30:47'),
(15, '3', 'Baja', '2014-06-12 19:30:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t03_especie`
--

CREATE TABLE IF NOT EXISTS `t03_especie` (
  `especie_id` int(11) NOT NULL AUTO_INCREMENT,
  `especie_nombre` varchar(50) NOT NULL,
  `especie_cientifico` varchar(50) DEFAULT NULL,
  `especie_factor` float NOT NULL DEFAULT '0',
  `especie_dmc` float DEFAULT '0',
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`especie_id`),
  UNIQUE KEY `UQ_t03_especie_especie_nombre` (`especie_nombre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `t03_especie`
--

INSERT INTO `t03_especie` (`especie_id`, `especie_nombre`, `especie_cientifico`, `especie_factor`, `especie_dmc`, `modificado`) VALUES
(7, 'roble', 'roble', 0.65, 12, '2014-06-12 19:29:06'),
(8, 'sirari', 'sirari', 0.65, 12, '2014-06-12 19:29:19'),
(9, 'mara', 'mara', 0.65, 15, '2014-06-12 19:29:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t04_faja`
--

CREATE TABLE IF NOT EXISTS `t04_faja` (
  `faja_id` int(11) NOT NULL,
  `faja_numero` int(11) NOT NULL,
  `faja_bloque` varchar(20) NOT NULL,
  `area_id` int(11) NOT NULL,
  PRIMARY KEY (`faja_id`),
  KEY `area_id` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t04_faja`
--

INSERT INTO `t04_faja` (`faja_id`, `faja_numero`, `faja_bloque`, `area_id`) VALUES
(16, 1, '1', 15),
(18, 2, '1', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t06_carga`
--

CREATE TABLE IF NOT EXISTS `t06_carga` (
  `carga_id` int(11) NOT NULL AUTO_INCREMENT,
  `carga_codigo` varchar(2) NOT NULL,
  `modificado` datetime DEFAULT NULL,
  `carga_rama` bit(1) NOT NULL,
  PRIMARY KEY (`carga_id`),
  UNIQUE KEY `UQ_t06_carga_carga_codigo` (`carga_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `t06_carga`
--

INSERT INTO `t06_carga` (`carga_id`, `carga_codigo`, `modificado`, `carga_rama`) VALUES
(4, 'A', '2014-06-12 19:29:36', '1'),
(5, 'B', '2014-06-12 19:29:39', '0'),
(6, 'C', '2014-06-12 19:30:22', '0'),
(7, 'D', '2014-06-12 19:30:27', '0'),
(8, 'E', '2014-06-12 19:30:29', '0'),
(9, 'F', '2014-06-12 19:30:32', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t09_geo_lugar`
--

CREATE TABLE IF NOT EXISTS `t09_geo_lugar` (
  `lugar_id` int(11) NOT NULL AUTO_INCREMENT,
  `modificado` datetime DEFAULT NULL,
  `tipo` tinyint(4) NOT NULL,
  PRIMARY KEY (`lugar_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `t09_geo_lugar`
--

INSERT INTO `t09_geo_lugar` (`lugar_id`, `modificado`, `tipo`) VALUES
(15, '2014-06-12 19:36:26', 0),
(16, '2014-06-12 20:03:05', 1),
(17, '2014-06-14 12:11:21', 2),
(18, '2014-06-14 22:28:28', 1),
(19, '2014-06-14 22:38:38', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t09_geo_lugar_polig`
--

CREATE TABLE IF NOT EXISTS `t09_geo_lugar_polig` (
  `lugar_id` int(11) NOT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  KEY `lugar_id` (`lugar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t09_geo_lugar_polig`
--

INSERT INTO `t09_geo_lugar_polig` (`lugar_id`, `x`, `y`, `posicion`) VALUES
(15, 478987.34375, 8035676, 0),
(15, 477628.40625, 8030466.5, 1),
(15, 481849.34375, 8029928.5, 2),
(15, 484167.3125, 8031684, 3),
(15, 482124.4375, 8037578, 4),
(15, 478987.34375, 8035676, 5),
(16, 480104.2, 8034374.85, 0),
(16, 481491.41, 8034539.04, 1),
(16, 480983.61, 8032847.63, 2),
(16, 480104.2, 8034374.85, 3),
(17, 45, 45, 0),
(17, 12.2, 45.2, 1),
(18, 480104.2, 8034374.85, 0),
(18, 481491.41, 8034539.04, 1),
(18, 480104.2, 8034374.85, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t10_patio`
--

CREATE TABLE IF NOT EXISTS `t10_patio` (
  `pat_id` int(11) NOT NULL,
  `pat_nombre` varchar(50) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t10_patio`
--

INSERT INTO `t10_patio` (`pat_id`, `pat_nombre`, `area_id`) VALUES
(17, 'patio 1', 15),
(19, 'patio 2', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t11_destino`
--

CREATE TABLE IF NOT EXISTS `t11_destino` (
  `dest_id` int(11) NOT NULL AUTO_INCREMENT,
  `dest_nombre` varchar(50) NOT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`dest_id`),
  UNIQUE KEY `UQ_t11_destino_dest_nombre` (`dest_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t100_form_cab`
--

CREATE TABLE IF NOT EXISTS `t100_form_cab` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_tipo` tinyint(4) NOT NULL,
  `form_fecha` date DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Volcado de datos para la tabla `t100_form_cab`
--

INSERT INTO `t100_form_cab` (`form_id`, `form_tipo`, `form_fecha`) VALUES
(12, 0, '2014-06-12'),
(13, 0, '2014-06-12'),
(15, 1, '2014-06-12'),
(16, 0, '2014-06-13'),
(17, 0, '2014-06-13'),
(18, 0, '2014-06-13'),
(19, 0, '2014-06-13'),
(20, 0, '2014-06-13'),
(21, 0, '2014-06-13'),
(22, 0, '2014-06-13'),
(23, 0, '2014-06-13'),
(24, 0, '2014-06-13'),
(25, 0, '2014-06-13'),
(26, 0, '2014-06-13'),
(27, 0, '2014-06-13'),
(28, 0, '2014-06-13'),
(29, 0, '2014-06-13'),
(30, 0, '2014-06-13'),
(31, 0, '2014-06-13'),
(32, 0, '2014-06-13'),
(33, 0, '2014-06-14'),
(35, 1, '2014-06-14'),
(36, 0, '2014-06-14'),
(37, 1, '2014-06-14'),
(38, 0, '2014-06-14'),
(40, 2, '2014-06-14'),
(41, 2, '2014-06-14'),
(42, 0, '2014-06-14'),
(43, 0, '2014-06-14'),
(44, 0, '2014-06-14'),
(45, 3, '2014-06-14'),
(46, 0, '2014-06-14'),
(47, 1, '2014-06-14'),
(48, 1, '2014-06-15'),
(49, 2, '2014-06-15'),
(50, 2, '2014-06-15'),
(51, 1, '2014-06-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t101_cen_cab`
--

CREATE TABLE IF NOT EXISTS `t101_cen_cab` (
  `cen_cab_id` int(11) NOT NULL,
  `cen_area` int(11) DEFAULT NULL,
  `cen_horas` tinyint(4) DEFAULT NULL,
  `cen_faja` int(11) DEFAULT NULL,
  PRIMARY KEY (`cen_cab_id`),
  KEY `cen_area` (`cen_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t101_cen_cab`
--

INSERT INTO `t101_cen_cab` (`cen_cab_id`, `cen_area`, `cen_horas`, `cen_faja`) VALUES
(12, 15, 7, 16),
(13, 15, 4, 16),
(16, 15, 0, 16),
(17, 15, 0, 16),
(18, 15, 0, 16),
(19, 15, 0, 16),
(20, 15, 0, 16),
(21, 15, 0, 16),
(22, 15, 0, 16),
(23, 15, 0, 16),
(24, 15, 0, 16),
(25, 15, 0, 16),
(26, 15, 0, 16),
(27, 15, 0, 16),
(28, 15, 0, 16),
(29, 15, 0, 16),
(30, 15, 0, 16),
(31, 15, 0, 16),
(32, 15, 0, 16),
(33, 15, 6, 16),
(36, 15, 0, 16),
(38, 15, 0, 16),
(42, 15, 0, 16),
(43, 15, 0, 16),
(44, 15, 0, 16),
(46, 15, 8, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t101_cen_det`
--

CREATE TABLE IF NOT EXISTS `t101_cen_det` (
  `cen_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `cen_cod` varchar(30) NOT NULL,
  `cen_esp` int(11) NOT NULL,
  `cen_altura` float DEFAULT '0',
  `cen_dap` float DEFAULT NULL,
  `cen_calidad` int(11) NOT NULL,
  `cen_condicion` varchar(5) NOT NULL,
  `cen_punto` int(11) DEFAULT NULL,
  `cen_x` double DEFAULT NULL,
  `cen_y` double DEFAULT NULL,
  `cen_obs` varchar(255) DEFAULT NULL,
  `cen_cab_id` int(11) NOT NULL,
  `cen_pos` int(11) DEFAULT NULL,
  `troza_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`cen_det_id`),
  KEY `cen_calidad` (`cen_calidad`),
  KEY `cen_sp` (`cen_esp`),
  KEY `cen_cab_id` (`cen_cab_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Volcado de datos para la tabla `t101_cen_det`
--

INSERT INTO `t101_cen_det` (`cen_det_id`, `cen_cod`, `cen_esp`, `cen_altura`, `cen_dap`, `cen_calidad`, `cen_condicion`, `cen_punto`, `cen_x`, `cen_y`, `cen_obs`, `cen_cab_id`, `cen_pos`, `troza_num`) VALUES
(18, '100', 7, 4, 40, 14, 'apr', NULL, 0, 0, '', 12, 0, 16),
(19, '101', 8, 5, 40, 13, 'sem', NULL, 12, 12, '', 12, 1, NULL),
(20, '102', 9, 4, 45, 14, 'apr', NULL, 3, 3, '', 12, 2, 17),
(21, '105', 8, 3, 23, 13, 'apr', NULL, 12.5, 13.399999618530273, '', 13, 0, 18),
(22, '00001', 8, 845765, 9865.5, 14, 'sem', NULL, -1, -1, 'zcsvhxyzud', 16, 0, NULL),
(23, '00002', 8, 5454970, 8558.8, 15, 'sem', NULL, -1, -1, 'xgzgchjjd.xd', 16, 1, NULL),
(24, '00003', 8, 855738, 554284, 13, 'sem', NULL, -1, -1, 'sggxhdju .xkf', 16, 2, NULL),
(25, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 17, 0, NULL),
(26, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 17, 1, NULL),
(27, '78797', 8, 57645, 84540, 14, 'sem', NULL, 482517.12, 8031165.5, 'putaaaaaaaa', 18, 0, NULL),
(28, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 19, 0, NULL),
(29, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 19, 1, NULL),
(30, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 20, 0, NULL),
(31, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 20, 1, NULL),
(32, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 21, 0, NULL),
(33, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 21, 1, NULL),
(34, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 22, 0, NULL),
(35, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 22, 1, NULL),
(36, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 23, 0, NULL),
(37, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 23, 1, NULL),
(38, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 24, 0, NULL),
(39, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 24, 1, NULL),
(40, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 25, 0, NULL),
(41, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 25, 1, NULL),
(42, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 26, 0, NULL),
(43, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 26, 1, NULL),
(44, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 27, 0, NULL),
(45, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 27, 1, NULL),
(46, '1234', 8, 480.9, 80093.6, 13, 'sem', NULL, 482523.1, 8031171, 'Olvis trolazo', 28, 0, NULL),
(47, '11111', 9, 8.96, 966.002, 15, 'sem', NULL, 482523, 8031171.5, 'Su trolazoooooo', 28, 1, NULL),
(48, '41452', 9, 755, 786, 14, 'apr', NULL, NULL, NULL, 'zfhyyfhj', 29, 0, 21),
(49, '00001', 8, 845765, 9865.5, 14, 'sem', NULL, -1, -1, 'zcsvhxyzud', 30, 0, NULL),
(50, '00002', 8, 5454970, 8558.8, 15, 'sem', NULL, -1, -1, 'xgzgchjjd.xd', 30, 1, NULL),
(51, '00003', 8, 855738, 554284, 13, 'sem', NULL, -1, -1, 'sggxhdju .xkf', 30, 2, NULL),
(52, '00001', 8, 845765, 9865.5, 14, 'sem', NULL, -1, -1, 'zcsvhxyzud', 31, 0, NULL),
(53, '00002', 8, 5454970, 8558.8, 15, 'sem', NULL, -1, -1, 'xgzgchjjd.xd', 31, 1, NULL),
(54, '00003', 8, 855738, 554284, 13, 'sem', NULL, -1, -1, 'sggxhdju .xkf', 31, 2, NULL),
(55, '00001', 8, 845765, 9865.5, 14, 'sem', NULL, -1, -1, 'zcsvhxyzud', 32, 0, NULL),
(56, '00002', 8, 5454970, 8558.8, 15, 'sem', NULL, -1, -1, 'xgzgchjjd.xd', 32, 1, NULL),
(57, '00003', 8, 855738, 554284, 13, 'sem', NULL, -1, -1, 'sggxhdju .xkf', 32, 2, NULL),
(58, '200', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 0, 22),
(59, '201', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 1, 23),
(60, '202', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 2, 24),
(61, '203', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 3, 25),
(62, '204', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 4, 26),
(63, '205', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 5, 27),
(64, '206', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 6, 28),
(65, '207', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 7, 29),
(66, '208', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 8, 30),
(67, '209', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 9, 31),
(68, '210', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 10, 32),
(69, '211', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 11, 33),
(70, '212', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 12, 34),
(71, '213', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 13, 35),
(72, '214', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 14, 36),
(73, '215', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 15, 37),
(74, '216', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 16, 38),
(75, '217', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 17, 39),
(76, '218', 8, 4, 45, 13, 'sem', NULL, NULL, NULL, '', 33, 18, NULL),
(77, '219', 8, 4, 45, 13, 'apr', NULL, NULL, NULL, '', 33, 19, 40),
(78, '220', 8, 4, 45, 13, 'avc', NULL, NULL, NULL, '', 33, 20, NULL),
(79, '40001', 8, 78454.2, 75545.2, 14, 'apr', NULL, 482511.25, 8031171.5, 'Ernesto perez moron', 36, 0, 41),
(80, '40002', 8, 808.55, 4840.52, 14, 'apr', NULL, 482514.03, 8031173, 'Magarzo la putaaa', 36, 1, 42),
(81, '00001', 8, 4556, 785, 13, 'apr', NULL, NULL, NULL, 'czhglk', 38, 0, 45),
(82, '90001', 8, 775, 456, 13, 'apr', NULL, NULL, NULL, NULL, 42, 0, 52),
(83, '90002', 9, 3369, 556, 14, 'apr', NULL, NULL, NULL, NULL, 42, 1, 53),
(84, '90003', 7, 5535, 336, 14, 'apr', NULL, NULL, NULL, NULL, 42, 2, 54),
(85, '60001', 8, 6, 3, 13, 'apr', NULL, NULL, NULL, NULL, 43, 0, 55),
(86, '60002', 9, 3, 5, 14, 'apr', NULL, NULL, NULL, NULL, 43, 1, 56),
(87, '666', 9, 68, 8, 13, 'apr', NULL, NULL, NULL, NULL, 44, 0, 57),
(88, '300', 9, 3, 23, 14, 'apr', NULL, NULL, NULL, '', 46, 0, 60),
(89, '301', 8, 3, 23, 15, 'sem', NULL, NULL, NULL, '', 46, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t102_cor_cab`
--

CREATE TABLE IF NOT EXISTS `t102_cor_cab` (
  `cor_cab_id` int(11) NOT NULL,
  `cor_area` int(11) DEFAULT NULL,
  `cor_horas` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cor_cab_id`),
  KEY `cor_area` (`cor_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t102_cor_cab`
--

INSERT INTO `t102_cor_cab` (`cor_cab_id`, `cor_area`, `cor_horas`) VALUES
(15, 15, 8),
(35, 15, 6),
(37, 15, 8),
(47, 15, 4),
(48, 15, NULL),
(51, 15, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t102_cor_det`
--

CREATE TABLE IF NOT EXISTS `t102_cor_det` (
  `cor_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `cor_num` int(11) NOT NULL,
  `cor_crg` int(11) DEFAULT NULL,
  `cor_cod_crg` varchar(50) DEFAULT NULL,
  `cor_sp` int(11) DEFAULT NULL,
  `cor_dma` float DEFAULT NULL,
  `cor_dme` float DEFAULT NULL,
  `cor_larg` float DEFAULT NULL,
  `cor_cal` int(11) DEFAULT NULL,
  `cor_obs` varchar(255) DEFAULT NULL,
  `cor_cab_id` int(11) NOT NULL,
  `cor_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`cor_det_id`),
  KEY `cor_crg` (`cor_crg`),
  KEY `cor_cal` (`cor_cal`),
  KEY `cor_especie` (`cor_sp`),
  KEY `cor_cab_id` (`cor_cab_id`),
  KEY `cor_num` (`cor_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `t102_cor_det`
--

INSERT INTO `t102_cor_det` (`cor_det_id`, `cor_num`, `cor_crg`, `cor_cod_crg`, `cor_sp`, `cor_dma`, `cor_dme`, `cor_larg`, `cor_cal`, `cor_obs`, `cor_cab_id`, `cor_pos`) VALUES
(1, 16, 4, NULL, 7, 45, 45, 4, 14, '', 15, 0),
(2, 16, 5, NULL, 7, 40, 40, 2, 13, '', 15, 1),
(3, 22, NULL, NULL, 8, 54, 50, 4, 13, '', 35, 0),
(4, 23, NULL, NULL, 8, 45, 43, 3, 13, '', 35, 1),
(5, 17, 4, '999999', 9, 34, 43, 4, 14, '', 37, 0),
(6, 17, 5, '102.B', 9, 34, 34, 2, 13, '', 37, 1),
(7, 18, 5, '105.B', 8, 23, 23, 3, 13, '', 47, 0),
(8, 25, 5, '203.B', 8, 34, 34, 4, 13, '', 48, 0),
(9, 25, 4, '203.A', 8, 34, 34, 4, 13, '', 48, 1),
(10, 24, NULL, '', 8, 23, 23, 3, 13, '', 48, 2),
(11, 29, NULL, NULL, 9, 23, 34, 3, 13, '', 51, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t103_ext_cab`
--

CREATE TABLE IF NOT EXISTS `t103_ext_cab` (
  `ext_cab_id` int(11) NOT NULL,
  `ext_area` int(11) DEFAULT NULL,
  `ext_horas` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ext_cab_id`),
  KEY `ext_area` (`ext_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t103_ext_cab`
--

INSERT INTO `t103_ext_cab` (`ext_cab_id`, `ext_area`, `ext_horas`) VALUES
(40, 15, 4),
(41, 15, 8),
(49, 15, 8),
(50, 15, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t103_ext_det`
--

CREATE TABLE IF NOT EXISTS `t103_ext_det` (
  `ext_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `ext_num` int(11) DEFAULT NULL,
  `ext_crg` int(11) DEFAULT NULL,
  `ext_cod_crg` varchar(50) DEFAULT NULL,
  `ext_esp` int(11) DEFAULT NULL,
  `ext_dma` float DEFAULT NULL,
  `ext_dme` float DEFAULT NULL,
  `ext_larg` float DEFAULT NULL,
  `ext_cal` int(11) DEFAULT NULL,
  `ext_obs` varchar(255) DEFAULT NULL,
  `ext_pat` int(11) DEFAULT NULL,
  `ext_cab_id` int(11) NOT NULL,
  `ext_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`ext_det_id`),
  KEY `ext_cal` (`ext_cal`),
  KEY `ext_esp` (`ext_esp`),
  KEY `ext_crg` (`ext_crg`),
  KEY `ext_pat` (`ext_pat`),
  KEY `ext_cab_id` (`ext_cab_id`),
  KEY `ext_num` (`ext_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `t103_ext_det`
--

INSERT INTO `t103_ext_det` (`ext_det_id`, `ext_num`, `ext_crg`, `ext_cod_crg`, `ext_esp`, `ext_dma`, `ext_dme`, `ext_larg`, `ext_cal`, `ext_obs`, `ext_pat`, `ext_cab_id`, `ext_pos`) VALUES
(3, 19, 5, '888', 7, 34, 34, 4, 14, '', 17, 40, 0),
(4, 19, 8, '100.A.E', 7, 34, 34, 4, 13, '', 17, 40, 1),
(5, 22, NULL, NULL, 8, 54, 50, 4, 13, '', 17, 40, 2),
(6, 23, 4, '201.A', 8, 34, 34, 23, 13, '', 17, 41, 0),
(7, 23, 5, '8989898', 8, 34, 34, 34, 14, '', 17, 41, 1),
(8, 20, NULL, NULL, 7, 40, 40, 4, 13, '', 17, 41, 2),
(9, 43, NULL, '', 9, 34, 43, 4, 14, '', 17, 49, 0),
(10, 63, 8, '45789', 8, 45, 45, 4, 13, 'Seccion', 17, 50, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t104_mov_cab`
--

CREATE TABLE IF NOT EXISTS `t104_mov_cab` (
  `mov_cab_id` int(11) NOT NULL,
  `mov_dest` varchar(50) DEFAULT NULL,
  `mov_area` int(11) DEFAULT NULL,
  `mov_horas` tinyint(4) DEFAULT NULL,
  `mov_guia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mov_cab_id`),
  KEY `mov_area` (`mov_area`),
  KEY `mov_dest` (`mov_dest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t104_mov_cab`
--

INSERT INTO `t104_mov_cab` (`mov_cab_id`, `mov_dest`, `mov_area`, `mov_horas`, `mov_guia`) VALUES
(45, 'Iquitios', 15, 5, '5657565');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t104_mov_det`
--

CREATE TABLE IF NOT EXISTS `t104_mov_det` (
  `mov_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `mov_num` int(11) DEFAULT NULL,
  `mov_crg` int(11) DEFAULT NULL,
  `mov_cod_crg` int(11) DEFAULT NULL,
  `mov_esp` int(11) DEFAULT NULL,
  `mov_dma` float DEFAULT NULL,
  `mov_dme` float DEFAULT NULL,
  `mov_larg` float DEFAULT NULL,
  `mov_cal` int(11) DEFAULT NULL,
  `mov_obs` varchar(255) DEFAULT NULL,
  `mov_cab_id` int(11) NOT NULL,
  `mov_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`mov_det_id`),
  KEY `mov_cal` (`mov_cal`),
  KEY `mov_esp` (`mov_esp`),
  KEY `mov_crg` (`mov_crg`),
  KEY `mov_cab_id` (`mov_cab_id`),
  KEY `mov_num` (`mov_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `t104_mov_det`
--

INSERT INTO `t104_mov_det` (`mov_det_id`, `mov_num`, `mov_crg`, `mov_cod_crg`, `mov_esp`, `mov_dma`, `mov_dme`, `mov_larg`, `mov_cal`, `mov_obs`, `mov_cab_id`, `mov_pos`) VALUES
(1, 20, 7, 909090, 7, 23, 23, 3, 13, '', 45, 0),
(2, 20, 4, 919191, 7, 34, 34, 3, 14, '', 45, 1),
(3, 48, NULL, NULL, 7, 34, 34, 4, 14, '', 45, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `troza`
--

CREATE TABLE IF NOT EXISTS `troza` (
  `troza_num` int(11) NOT NULL AUTO_INCREMENT,
  `troza_area` int(11) NOT NULL,
  `troza_cod` varchar(50) NOT NULL,
  `troza_esp` int(11) NOT NULL,
  `troza_cal` int(11) DEFAULT NULL,
  `troza_dma` float DEFAULT NULL,
  `troza_dme` float DEFAULT NULL,
  `troza_largo` float DEFAULT NULL,
  `troza_estado` tinyint(4) DEFAULT '0',
  `troza_pat` int(11) DEFAULT NULL,
  `troza_existe` tinyint(4) DEFAULT '0',
  `troza_padre` int(11) DEFAULT NULL,
  `troza_x` double DEFAULT NULL,
  `troza_y` double DEFAULT NULL,
  `cen_cab_id` int(11) DEFAULT NULL,
  `cor_cab_id` int(11) DEFAULT NULL,
  `ext_cab_id` int(11) DEFAULT NULL,
  `mov_cab_id` int(11) DEFAULT NULL,
  `troza_faja` int(11) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`troza_num`),
  KEY `troza_area` (`troza_area`),
  KEY `troza_cal` (`troza_cal`),
  KEY `troza_sp` (`troza_esp`),
  KEY `troza_padre` (`troza_padre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Volcado de datos para la tabla `troza`
--

INSERT INTO `troza` (`troza_num`, `troza_area`, `troza_cod`, `troza_esp`, `troza_cal`, `troza_dma`, `troza_dme`, `troza_largo`, `troza_estado`, `troza_pat`, `troza_existe`, `troza_padre`, `troza_x`, `troza_y`, `cen_cab_id`, `cor_cab_id`, `ext_cab_id`, `mov_cab_id`, `troza_faja`, `modificado`) VALUES
(16, 15, '100', 7, 14, NULL, NULL, NULL, 0, NULL, 1, NULL, 0, 0, 12, NULL, NULL, NULL, 16, '2014-06-12 21:52:04'),
(17, 15, '102', 9, 14, NULL, NULL, NULL, 0, NULL, 1, NULL, 3, 3, 12, NULL, NULL, NULL, 16, '2014-06-14 16:52:17'),
(18, 15, '105', 8, 13, NULL, NULL, NULL, 0, NULL, 1, NULL, 12.5, 13.399999618530273, 13, NULL, NULL, NULL, 16, '2014-06-14 23:29:13'),
(19, 15, '100.A', 7, 14, 40, 40, 4, 1, NULL, 1, 16, NULL, NULL, NULL, 15, NULL, NULL, 16, '2014-06-14 18:09:32'),
(20, 15, '100.B', 7, 13, 40, 40, 4, 2, 17, 1, 16, NULL, NULL, NULL, 15, 41, NULL, 16, '2014-06-14 19:00:29'),
(21, 15, '41452', 9, 14, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 29, NULL, NULL, NULL, 16, '2014-06-13 23:03:46'),
(22, 15, '200', 8, 13, 54, 50, 4, 2, NULL, 0, NULL, NULL, NULL, 33, 35, 40, NULL, 16, '2014-06-14 18:09:32'),
(23, 15, '201', 8, 13, 45, 43, 3, 1, NULL, 1, NULL, NULL, NULL, 33, 35, NULL, NULL, 16, '2014-06-14 18:17:03'),
(24, 15, '202', 8, 13, 23, 23, 3, 1, NULL, 0, NULL, NULL, NULL, 33, 48, NULL, NULL, 16, '2014-06-15 00:03:48'),
(25, 15, '203', 8, 13, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-15 00:03:48'),
(26, 15, '204', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(27, 15, '205', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(28, 15, '206', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(29, 15, '207', 9, 13, 23, 34, 3, 1, NULL, 0, NULL, NULL, NULL, 33, 51, NULL, NULL, 16, '2014-06-24 21:21:37'),
(30, 15, '208', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(31, 15, '209', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(32, 15, '210', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(33, 15, '211', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(34, 15, '212', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(35, 15, '213', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(36, 15, '214', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(37, 15, '215', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(38, 15, '216', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(39, 15, '217', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(40, 15, '219', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 33, NULL, NULL, NULL, 16, '2014-06-14 16:39:51'),
(41, 15, '40001', 8, 14, NULL, NULL, NULL, 0, NULL, 0, NULL, 482511.25, 8031171.5, 36, NULL, NULL, NULL, 16, '2014-06-14 16:51:22'),
(42, 15, '40002', 8, 14, NULL, NULL, NULL, 0, NULL, 0, NULL, 482514.03, 8031173, 36, NULL, NULL, NULL, 16, '2014-06-14 16:51:22'),
(43, 15, '999999', 9, 14, 34, 43, 4, 2, 17, 0, 17, NULL, NULL, NULL, 37, 49, NULL, 16, '2014-06-15 12:07:59'),
(44, 15, '102.B', 9, 13, 34, 34, 2, 1, NULL, 0, 17, NULL, NULL, NULL, 37, NULL, NULL, 16, '2014-06-14 16:52:17'),
(45, 15, '00001', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 38, NULL, NULL, NULL, 16, '2014-06-14 17:19:31'),
(48, 15, '888', 7, 14, 34, 34, 4, 2, NULL, 6, 19, NULL, NULL, NULL, NULL, 40, 45, 16, '2014-06-14 19:00:29'),
(49, 15, '100.A.E', 7, 13, 34, 34, 4, 2, NULL, 0, 19, NULL, NULL, NULL, NULL, 40, NULL, 16, '2014-06-14 18:09:32'),
(50, 15, '201.A', 8, 13, 34, 34, 23, 2, 17, 0, 23, NULL, NULL, NULL, NULL, 41, NULL, 16, '2014-06-14 18:17:03'),
(51, 15, '8989898', 8, 14, 34, 34, 34, 2, 17, 0, 23, NULL, NULL, NULL, NULL, 41, NULL, 16, '2014-06-14 18:17:03'),
(52, 15, '90001', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 42, NULL, NULL, NULL, 16, '2014-06-14 18:27:55'),
(53, 15, '90002', 9, 14, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 42, NULL, NULL, NULL, 16, '2014-06-14 18:27:55'),
(54, 15, '90003', 7, 14, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 42, NULL, NULL, NULL, 16, '2014-06-14 18:27:55'),
(55, 15, '60001', 8, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 43, NULL, NULL, NULL, 16, '2014-06-14 18:52:06'),
(56, 15, '60002', 9, 14, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 43, NULL, NULL, NULL, 16, '2014-06-14 18:52:06'),
(57, 15, '666', 9, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 44, NULL, NULL, NULL, 16, '2014-06-14 18:54:47'),
(58, 15, '909090', 7, 13, 23, 23, 3, 2, 17, 6, 20, NULL, NULL, NULL, NULL, NULL, 45, 16, '2014-06-14 19:00:29'),
(59, 15, '919191', 7, 14, 34, 34, 3, 2, 17, 6, 20, NULL, NULL, NULL, NULL, NULL, 45, 16, '2014-06-14 19:00:29'),
(60, 15, '300', 9, 14, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 46, NULL, NULL, NULL, 18, '2014-06-14 22:48:13'),
(61, 15, '105.B', 8, 13, 23, 23, 3, 1, NULL, 0, 18, NULL, NULL, NULL, 47, NULL, NULL, 16, '2014-06-14 23:29:13'),
(62, 15, '203.B', 8, 13, 34, 34, 4, 1, NULL, 0, 25, NULL, NULL, NULL, 48, NULL, NULL, 16, '2014-06-15 00:03:48'),
(63, 15, '203.A', 8, 13, 34, 34, 4, 1, NULL, 1, 25, NULL, NULL, NULL, 48, NULL, NULL, 16, '2014-06-15 12:09:42'),
(64, 15, '45789', 8, 13, 45, 45, 4, 2, 17, 0, 63, NULL, NULL, NULL, NULL, 50, NULL, 16, '2014-06-15 12:09:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_nombre` varchar(30) NOT NULL,
  `usr_contrasena` varchar(255) NOT NULL,
  `usr_rol` int(11) NOT NULL,
  `usr_email` varchar(50) NOT NULL,
  PRIMARY KEY (`usr_id`),
  UNIQUE KEY `UQ_usuario_usr_email` (`usr_email`),
  UNIQUE KEY `UQ_usuario_usr_nombre` (`usr_nombre`),
  KEY `usr_rol` (`usr_rol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usr_id`, `usr_nombre`, `usr_contrasena`, `usr_rol`, `usr_email`) VALUES
(2, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1, 'olvis@kibo.com.bo');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v00_mov_cab`
--
CREATE TABLE IF NOT EXISTS `v00_mov_cab` (
`form_id` int(11)
,`form_tipo` tinyint(4)
,`form_fecha` date
,`mov_dest` varchar(50)
,`mov_area` int(11)
,`mov_horas` tinyint(4)
,`mov_guia` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v00_troza`
--
CREATE TABLE IF NOT EXISTS `v00_troza` (
`troza_area` int(11)
,`troza_cod` varchar(50)
,`troza_cal` int(11)
,`troza_dma` float
,`troza_dme` float
,`troza_largo` float
,`troza_estado` tinyint(4)
,`troza_existe` tinyint(4)
,`troza_padre` int(11)
,`troza_x` double
,`troza_y` double
,`cen_cab_id` int(11)
,`cor_cab_id` int(11)
,`ext_cab_id` int(11)
,`troza_faja` int(11)
,`area_codigo` varchar(15)
,`especie_nombre` varchar(50)
,`calidad_codigo` varchar(5)
,`faja_numero` int(11)
,`faja_bloque` varchar(20)
,`troza_pat` int(11)
,`mov_cab_id` int(11)
,`troza_esp` int(11)
,`pat_nombre` varchar(50)
,`troza_num` int(11)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v00_trozas_gral`
--
CREATE TABLE IF NOT EXISTS `v00_trozas_gral` (
`fecha_tala` date
,`fecha_arrastre` date
,`area_codigo` varchar(15)
,`faja_numero` int(11)
,`faja_bloque` varchar(20)
,`troza_cod` varchar(50)
,`especie_nombre` varchar(50)
,`calidad_codigo` varchar(5)
,`troza_dma` float
,`troza_dme` float
,`troza_largo` float
,`m3r` double
,`troza_existe` tinyint(4)
,`troza_estado` tinyint(4)
,`troza_num` int(11)
,`pat_nombre` varchar(50)
,`form_fecha` date
,`mov_dest` varchar(50)
,`mov_guia` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v01_censo_gral`
--
CREATE TABLE IF NOT EXISTS `v01_censo_gral` (
`form_fecha` date
,`area_codigo` varchar(15)
,`faja_numero` int(11)
,`faja_bloque` varchar(20)
,`troza_cod` varchar(50)
,`especie_nombre` varchar(50)
,`calidad_codigo` varchar(5)
,`cen_dap` float
,`cen_altura` float
,`volumen_censo` double
,`troza_existe` tinyint(4)
,`troza_estado` tinyint(4)
,`troza_num` int(11)
);
-- --------------------------------------------------------

--
-- Estructura para la vista `v00_mov_cab`
--
DROP TABLE IF EXISTS `v00_mov_cab`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v00_mov_cab` AS select `t100_form_cab`.`form_id` AS `form_id`,`t100_form_cab`.`form_tipo` AS `form_tipo`,`t100_form_cab`.`form_fecha` AS `form_fecha`,`t104_mov_cab`.`mov_dest` AS `mov_dest`,`t104_mov_cab`.`mov_area` AS `mov_area`,`t104_mov_cab`.`mov_horas` AS `mov_horas`,`t104_mov_cab`.`mov_guia` AS `mov_guia` from (`t104_mov_cab` join `t100_form_cab` on((`t104_mov_cab`.`mov_cab_id` = `t100_form_cab`.`form_id`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v00_troza`
--
DROP TABLE IF EXISTS `v00_troza`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v00_troza` AS select `troza`.`troza_area` AS `troza_area`,`troza`.`troza_cod` AS `troza_cod`,`troza`.`troza_cal` AS `troza_cal`,`troza`.`troza_dma` AS `troza_dma`,`troza`.`troza_dme` AS `troza_dme`,`troza`.`troza_largo` AS `troza_largo`,`troza`.`troza_estado` AS `troza_estado`,`troza`.`troza_existe` AS `troza_existe`,`troza`.`troza_padre` AS `troza_padre`,`troza`.`troza_x` AS `troza_x`,`troza`.`troza_y` AS `troza_y`,`troza`.`cen_cab_id` AS `cen_cab_id`,`troza`.`cor_cab_id` AS `cor_cab_id`,`troza`.`ext_cab_id` AS `ext_cab_id`,`troza`.`troza_faja` AS `troza_faja`,`t01_area`.`area_codigo` AS `area_codigo`,`t03_especie`.`especie_nombre` AS `especie_nombre`,`t02_calidad`.`calidad_codigo` AS `calidad_codigo`,`t04_faja`.`faja_numero` AS `faja_numero`,`t04_faja`.`faja_bloque` AS `faja_bloque`,`troza`.`troza_pat` AS `troza_pat`,`troza`.`mov_cab_id` AS `mov_cab_id`,`troza`.`troza_esp` AS `troza_esp`,`t10_patio`.`pat_nombre` AS `pat_nombre`,`troza`.`troza_num` AS `troza_num` from (((((`troza` join `t01_area` on((`troza`.`troza_area` = `t01_area`.`area_id`))) join `t02_calidad` on((`troza`.`troza_cal` = `t02_calidad`.`calidad_id`))) join `t03_especie` on((`troza`.`troza_esp` = `t03_especie`.`especie_id`))) left join `t04_faja` on((`troza`.`troza_faja` = `t04_faja`.`faja_id`))) left join `t10_patio` on((`troza`.`troza_pat` = `t10_patio`.`pat_id`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v00_trozas_gral`
--
DROP TABLE IF EXISTS `v00_trozas_gral`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v00_trozas_gral` AS select `form_tala`.`form_fecha` AS `fecha_tala`,`form_arrastre`.`form_fecha` AS `fecha_arrastre`,`t`.`area_codigo` AS `area_codigo`,`t`.`faja_numero` AS `faja_numero`,`t`.`faja_bloque` AS `faja_bloque`,`t`.`troza_cod` AS `troza_cod`,`t`.`especie_nombre` AS `especie_nombre`,`t`.`calidad_codigo` AS `calidad_codigo`,`t`.`troza_dma` AS `troza_dma`,`t`.`troza_dme` AS `troza_dme`,`t`.`troza_largo` AS `troza_largo`,((pi() * `t`.`troza_largo`) * (((`t`.`troza_dma` + `t`.`troza_dme`) / 200) ^ 2)) AS `m3r`,`t`.`troza_existe` AS `troza_existe`,`t`.`troza_estado` AS `troza_estado`,`t`.`troza_num` AS `troza_num`,`t`.`pat_nombre` AS `pat_nombre`,`form_mov`.`form_fecha` AS `form_fecha`,`form_mov`.`mov_dest` AS `mov_dest`,`form_mov`.`mov_guia` AS `mov_guia` from (((`v00_troza` `t` left join `t100_form_cab` `form_tala` on((`t`.`cor_cab_id` = `form_tala`.`form_id`))) left join `t100_form_cab` `form_arrastre` on((`t`.`ext_cab_id` = `form_arrastre`.`form_id`))) left join `v00_mov_cab` `form_mov` on((`t`.`mov_cab_id` = `form_mov`.`form_id`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v01_censo_gral`
--
DROP TABLE IF EXISTS `v01_censo_gral`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v01_censo_gral` AS select `form`.`form_fecha` AS `form_fecha`,`t`.`area_codigo` AS `area_codigo`,`t`.`faja_numero` AS `faja_numero`,`t`.`faja_bloque` AS `faja_bloque`,`t`.`troza_cod` AS `troza_cod`,`t`.`especie_nombre` AS `especie_nombre`,`t`.`calidad_codigo` AS `calidad_codigo`,`cen_det`.`cen_dap` AS `cen_dap`,`cen_det`.`cen_altura` AS `cen_altura`,(((pi() * ((`cen_det`.`cen_dap` / 100) ^ 2)) * `cen_det`.`cen_altura`) * `sp`.`especie_factor`) AS `volumen_censo`,`t`.`troza_existe` AS `troza_existe`,`t`.`troza_estado` AS `troza_estado`,`t`.`troza_num` AS `troza_num` from ((((`t101_cen_det` `cen_det` join `t101_cen_cab` `cen_cab` on((`cen_det`.`cen_cab_id` = `cen_cab`.`cen_cab_id`))) join `t100_form_cab` `form` on((`cen_cab`.`cen_cab_id` = `form`.`form_id`))) join `v00_troza` `t` on((`cen_det`.`troza_num` = `t`.`troza_num`))) join `t03_especie` `sp` on((`t`.`troza_esp` = `sp`.`especie_id`)));

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `FK_permiso_permiso` FOREIGN KEY (`perm_padre`) REFERENCES `permiso` (`perm_id`);

--
-- Filtros para la tabla `rol_permiso`
--
ALTER TABLE `rol_permiso`
  ADD CONSTRAINT `FK_rol_permsio_permiso` FOREIGN KEY (`perm_id`) REFERENCES `permiso` (`perm_id`),
  ADD CONSTRAINT `FK_rol_permsio_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`rol_id`);

--
-- Filtros para la tabla `t01_area`
--
ALTER TABLE `t01_area`
  ADD CONSTRAINT `FK_t01_area_t09_geo_lugar` FOREIGN KEY (`area_id`) REFERENCES `t09_geo_lugar` (`lugar_id`);

--
-- Filtros para la tabla `t04_faja`
--
ALTER TABLE `t04_faja`
  ADD CONSTRAINT `FK_t04_faja_t01_area` FOREIGN KEY (`area_id`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_t04_faja_t09_geo_lugar` FOREIGN KEY (`faja_id`) REFERENCES `t09_geo_lugar` (`lugar_id`);

--
-- Filtros para la tabla `t09_geo_lugar_polig`
--
ALTER TABLE `t09_geo_lugar_polig`
  ADD CONSTRAINT `FK_t09_geo_lugar_polig_t09_geo_lugar` FOREIGN KEY (`lugar_id`) REFERENCES `t09_geo_lugar` (`lugar_id`);

--
-- Filtros para la tabla `t10_patio`
--
ALTER TABLE `t10_patio`
  ADD CONSTRAINT `FK_t10_patio_t09_geo_lugar` FOREIGN KEY (`pat_id`) REFERENCES `t09_geo_lugar` (`lugar_id`);

--
-- Filtros para la tabla `t101_cen_cab`
--
ALTER TABLE `t101_cen_cab`
  ADD CONSTRAINT `FK_t101_cen_cab_t01_area` FOREIGN KEY (`cen_area`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_t101_cen_cab_t100_form_cab` FOREIGN KEY (`cen_cab_id`) REFERENCES `t100_form_cab` (`form_id`);

--
-- Filtros para la tabla `t101_cen_det`
--
ALTER TABLE `t101_cen_det`
  ADD CONSTRAINT `FK_t100_cen_det_t02_calidad` FOREIGN KEY (`cen_calidad`) REFERENCES `t02_calidad` (`calidad_id`),
  ADD CONSTRAINT `FK_t100_cen_det_t03_especie` FOREIGN KEY (`cen_esp`) REFERENCES `t03_especie` (`especie_id`),
  ADD CONSTRAINT `FK_t100_cen_det_t101_cen_cab` FOREIGN KEY (`cen_cab_id`) REFERENCES `t101_cen_cab` (`cen_cab_id`);

--
-- Filtros para la tabla `t102_cor_cab`
--
ALTER TABLE `t102_cor_cab`
  ADD CONSTRAINT `FK_t102_cor_cab_t01_area` FOREIGN KEY (`cor_area`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_t102_cor_cab_t100_form_cab` FOREIGN KEY (`cor_cab_id`) REFERENCES `t100_form_cab` (`form_id`);

--
-- Filtros para la tabla `t102_cor_det`
--
ALTER TABLE `t102_cor_det`
  ADD CONSTRAINT `FK_t101_cor_det_t02_calidad` FOREIGN KEY (`cor_cal`) REFERENCES `t02_calidad` (`calidad_id`),
  ADD CONSTRAINT `FK_t101_cor_det_t03_especie` FOREIGN KEY (`cor_sp`) REFERENCES `t03_especie` (`especie_id`),
  ADD CONSTRAINT `FK_t101_cor_det_t101_cor_cab` FOREIGN KEY (`cor_cab_id`) REFERENCES `t102_cor_cab` (`cor_cab_id`),
  ADD CONSTRAINT `FK_t101_cor_det_troza` FOREIGN KEY (`cor_num`) REFERENCES `troza` (`troza_num`),
  ADD CONSTRAINT `FK_t102_cor_det_t06_carga` FOREIGN KEY (`cor_crg`) REFERENCES `t06_carga` (`carga_id`);

--
-- Filtros para la tabla `t103_ext_cab`
--
ALTER TABLE `t103_ext_cab`
  ADD CONSTRAINT `FK_t103_ext_cab_t01_area` FOREIGN KEY (`ext_area`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_t103_ext_cab_t100_form_cab` FOREIGN KEY (`ext_cab_id`) REFERENCES `t100_form_cab` (`form_id`);

--
-- Filtros para la tabla `t103_ext_det`
--
ALTER TABLE `t103_ext_det`
  ADD CONSTRAINT `FK_t103_ext_det_t02_calidad` FOREIGN KEY (`ext_cal`) REFERENCES `t02_calidad` (`calidad_id`),
  ADD CONSTRAINT `FK_t103_ext_det_t03_especie` FOREIGN KEY (`ext_esp`) REFERENCES `t03_especie` (`especie_id`),
  ADD CONSTRAINT `FK_t103_ext_det_t06_carga` FOREIGN KEY (`ext_crg`) REFERENCES `t06_carga` (`carga_id`),
  ADD CONSTRAINT `FK_t103_ext_det_t103_ext_cab` FOREIGN KEY (`ext_cab_id`) REFERENCES `t103_ext_cab` (`ext_cab_id`),
  ADD CONSTRAINT `FK_t103_ext_det_t10_patio` FOREIGN KEY (`ext_pat`) REFERENCES `t10_patio` (`pat_id`),
  ADD CONSTRAINT `FK_t103_ext_det_troza` FOREIGN KEY (`ext_num`) REFERENCES `troza` (`troza_num`);

--
-- Filtros para la tabla `t104_mov_cab`
--
ALTER TABLE `t104_mov_cab`
  ADD CONSTRAINT `FK_t104_mov_cab_t01_area` FOREIGN KEY (`mov_area`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_t104_mov_cab_t100_form_cab` FOREIGN KEY (`mov_cab_id`) REFERENCES `t100_form_cab` (`form_id`);

--
-- Filtros para la tabla `t104_mov_det`
--
ALTER TABLE `t104_mov_det`
  ADD CONSTRAINT `FK_t104_mov_det_t02_calidad` FOREIGN KEY (`mov_cal`) REFERENCES `t02_calidad` (`calidad_id`),
  ADD CONSTRAINT `FK_t104_mov_det_t03_especie` FOREIGN KEY (`mov_esp`) REFERENCES `t03_especie` (`especie_id`),
  ADD CONSTRAINT `FK_t104_mov_det_t06_carga` FOREIGN KEY (`mov_crg`) REFERENCES `t06_carga` (`carga_id`),
  ADD CONSTRAINT `FK_t104_mov_det_t104_mov_cab` FOREIGN KEY (`mov_cab_id`) REFERENCES `t104_mov_cab` (`mov_cab_id`),
  ADD CONSTRAINT `FK_t104_mov_det_troza` FOREIGN KEY (`mov_num`) REFERENCES `troza` (`troza_num`);

--
-- Filtros para la tabla `troza`
--
ALTER TABLE `troza`
  ADD CONSTRAINT `FK_troza_t01_area` FOREIGN KEY (`troza_area`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_troza_t02_calidad` FOREIGN KEY (`troza_cal`) REFERENCES `t02_calidad` (`calidad_id`),
  ADD CONSTRAINT `FK_troza_t03_especie` FOREIGN KEY (`troza_esp`) REFERENCES `t03_especie` (`especie_id`),
  ADD CONSTRAINT `FK_troza_troza` FOREIGN KEY (`troza_padre`) REFERENCES `troza` (`troza_num`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_usuario_rol` FOREIGN KEY (`usr_rol`) REFERENCES `rol` (`rol_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
