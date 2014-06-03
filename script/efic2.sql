-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 03, 2014 at 01:33 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `efic2`
--

-- --------------------------------------------------------

--
-- Table structure for table `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
  `perm_id` int(11) NOT NULL,
  `perm_descripcion` varchar(100) NOT NULL,
  `perm_padre` int(11) DEFAULT NULL,
  PRIMARY KEY (`perm_id`),
  KEY `perm_padre` (`perm_padre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permiso`
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
(11104, 'Visualizar', 111);

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `rol_id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`rol_id`),
  UNIQUE KEY `UQ_rol_rol_descripcion` (`rol_descripcion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`rol_id`, `rol_descripcion`) VALUES
(1, 'Administrador'),
(2, 'Censador');

-- --------------------------------------------------------

--
-- Table structure for table `rol_permiso`
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
-- Dumping data for table `rol_permiso`
--

INSERT INTO `rol_permiso` (`perm_id`, `rol_id`, `valor`) VALUES
(1, 1, '1'),
(1, 2, '0'),
(101, 1, '1'),
(101, 2, '0'),
(102, 1, '1'),
(102, 2, '0'),
(103, 1, '1'),
(103, 2, '0'),
(104, 1, '1'),
(104, 2, '0'),
(105, 1, '1'),
(105, 2, '0'),
(106, 1, '1'),
(106, 2, '0'),
(107, 1, '1'),
(107, 2, '0'),
(108, 1, '1'),
(108, 2, '0'),
(109, 1, '1'),
(109, 2, '0'),
(110, 1, '1'),
(110, 2, '0'),
(111, 1, '1'),
(111, 2, '0'),
(10101, 1, '1'),
(10101, 2, '0'),
(10102, 1, '1'),
(10102, 2, '0'),
(10104, 1, '1'),
(10104, 2, '0'),
(10201, 1, '1'),
(10201, 2, '0'),
(10202, 1, '1'),
(10202, 2, '0'),
(10204, 1, '1'),
(10204, 2, '0'),
(10301, 1, '1'),
(10301, 2, '0'),
(10302, 1, '1'),
(10302, 2, '0'),
(10304, 1, '1'),
(10304, 2, '0'),
(10401, 1, '1'),
(10401, 2, '0'),
(10402, 1, '1'),
(10402, 2, '0'),
(10501, 1, '1'),
(10501, 2, '0'),
(10502, 1, '1'),
(10502, 2, '0'),
(10601, 1, '1'),
(10601, 2, '0'),
(10602, 1, '1'),
(10602, 2, '0'),
(10604, 1, '1'),
(10604, 2, '0'),
(10701, 1, '1'),
(10701, 2, '0'),
(10702, 1, '1'),
(10702, 2, '0'),
(10704, 1, '1'),
(10704, 2, '0'),
(10801, 1, '1'),
(10801, 2, '0'),
(10802, 1, '1'),
(10802, 2, '0'),
(10804, 1, '1'),
(10804, 2, '0'),
(10901, 1, '1'),
(10901, 2, '0'),
(10902, 1, '1'),
(10902, 2, '0'),
(11001, 1, '1'),
(11001, 2, '0'),
(11002, 1, '1'),
(11002, 2, '0'),
(11101, 1, '1'),
(11101, 2, '0'),
(11102, 1, '1'),
(11102, 2, '0'),
(11104, 1, '1'),
(11104, 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `t01_area`
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
-- Dumping data for table `t01_area`
--

INSERT INTO `t01_area` (`area_id`, `area_codigo`, `area_anio_inicial`, `area_anio_final`, `area_zona_utm`, `area_banda_utm`) VALUES
(1, 'PCA1', 2015, NULL, 5, 'G'),
(2, 'PCA2', 2014, 2015, 9, 'J');

-- --------------------------------------------------------

--
-- Table structure for table `t02_calidad`
--

CREATE TABLE IF NOT EXISTS `t02_calidad` (
  `calidad_id` int(11) NOT NULL AUTO_INCREMENT,
  `calidad_codigo` varchar(5) NOT NULL,
  `calidad_descripcion` varchar(50) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`calidad_id`),
  UNIQUE KEY `UQ_t02_calidad_calidad_codigo` (`calidad_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t03_especie`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t04_faja`
--

CREATE TABLE IF NOT EXISTS `t04_faja` (
  `faja_id` int(11) NOT NULL,
  `faja_numero` int(11) NOT NULL,
  `faja_bloque` varchar(20) NOT NULL,
  `area_id` int(11) NOT NULL,
  PRIMARY KEY (`faja_id`),
  KEY `area_id` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t06_carga`
--

CREATE TABLE IF NOT EXISTS `t06_carga` (
  `carga_id` int(11) NOT NULL AUTO_INCREMENT,
  `carga_codigo` varchar(2) NOT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`carga_id`),
  UNIQUE KEY `UQ_t06_carga_carga_codigo` (`carga_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t09_geo_lugar`
--

CREATE TABLE IF NOT EXISTS `t09_geo_lugar` (
  `lugar_id` int(11) NOT NULL AUTO_INCREMENT,
  `modificado` datetime DEFAULT NULL,
  `tipo` tinyint(4) NOT NULL,
  PRIMARY KEY (`lugar_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t09_geo_lugar`
--

INSERT INTO `t09_geo_lugar` (`lugar_id`, `modificado`, `tipo`) VALUES
(1, NULL, 0),
(2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t09_geo_lugar_polig`
--

CREATE TABLE IF NOT EXISTS `t09_geo_lugar_polig` (
  `lugar_id` int(11) NOT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  KEY `lugar_id` (`lugar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t09_geo_lugar_polig`
--

INSERT INTO `t09_geo_lugar_polig` (`lugar_id`, `x`, `y`, `posicion`) VALUES
(2, 23, 23, 0),
(2, 23, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t10_patio`
--

CREATE TABLE IF NOT EXISTS `t10_patio` (
  `pat_id` int(11) NOT NULL,
  `pat_descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`pat_id`),
  UNIQUE KEY `UQ_t10_patio_pat_descripcion` (`pat_descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t11_destino`
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
-- Table structure for table `t100_form_cab`
--

CREATE TABLE IF NOT EXISTS `t100_form_cab` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_tipo` tinyint(4) NOT NULL,
  `form_fecha` date DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t101_cen_cab`
--

CREATE TABLE IF NOT EXISTS `t101_cen_cab` (
  `cen_cab_id` int(11) NOT NULL,
  `cen_area` int(11) DEFAULT NULL,
  `cen_horas` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cen_cab_id`),
  KEY `cen_area` (`cen_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t101_cen_det`
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
  `cen_x` float DEFAULT NULL,
  `cen_y` float DEFAULT NULL,
  `cen_obs` varchar(255) DEFAULT NULL,
  `cen_cab_id` int(11) NOT NULL,
  `cen_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`cen_det_id`),
  KEY `cen_calidad` (`cen_calidad`),
  KEY `cen_sp` (`cen_esp`),
  KEY `cen_cab_id` (`cen_cab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t102_cor_cab`
--

CREATE TABLE IF NOT EXISTS `t102_cor_cab` (
  `cor_cab_id` int(11) NOT NULL,
  `cor_area` int(11) DEFAULT NULL,
  `cor_horas` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cor_cab_id`),
  KEY `cor_area` (`cor_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t102_cor_det`
--

CREATE TABLE IF NOT EXISTS `t102_cor_det` (
  `cor_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `cor_num` int(11) NOT NULL,
  `cor_crg` int(11) DEFAULT NULL,
  `cor_sp` int(11) DEFAULT NULL,
  `cor_dma` float DEFAULT NULL,
  `cor_dme` float DEFAULT NULL,
  `cor_larg` float DEFAULT NULL,
  `cor_cal` int(11) NOT NULL,
  `cor_obs` varchar(255) DEFAULT NULL,
  `cor_cab_id` int(11) NOT NULL,
  `cor_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`cor_det_id`),
  KEY `cor_crg` (`cor_crg`),
  KEY `cor_cal` (`cor_cal`),
  KEY `cor_especie` (`cor_sp`),
  KEY `cor_cab_id` (`cor_cab_id`),
  KEY `cor_num` (`cor_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t103_ext_cab`
--

CREATE TABLE IF NOT EXISTS `t103_ext_cab` (
  `ext_cab_id` int(11) NOT NULL,
  `ext_area` int(11) DEFAULT NULL,
  `ext_horas` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ext_cab_id`),
  KEY `ext_area` (`ext_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t103_ext_det`
--

CREATE TABLE IF NOT EXISTS `t103_ext_det` (
  `ext_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `ext_num` int(11) DEFAULT NULL,
  `ext_crg` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t104_mov_cab`
--

CREATE TABLE IF NOT EXISTS `t104_mov_cab` (
  `mov_cab_id` int(11) NOT NULL,
  `mov_dest` int(11) DEFAULT NULL,
  `mov_despacho` bit(1) DEFAULT b'0',
  `mov_area` int(11) DEFAULT NULL,
  `mov_horas` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mov_cab_id`),
  KEY `mov_area` (`mov_area`),
  KEY `mov_dest` (`mov_dest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t104_mov_det`
--

CREATE TABLE IF NOT EXISTS `t104_mov_det` (
  `mov_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `mov_num` int(11) DEFAULT NULL,
  `mov_crg` int(11) DEFAULT NULL,
  `mov_esp` int(11) DEFAULT NULL,
  `mov_dma` float DEFAULT NULL,
  `mov_dme` float DEFAULT NULL,
  `mov_larg` float DEFAULT NULL,
  `mov_cal` int(11) DEFAULT NULL,
  `mov_obs` varchar(255) DEFAULT NULL,
  `mov_pat` int(11) DEFAULT NULL,
  `mov_cab_id` int(11) NOT NULL,
  `mov_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`mov_det_id`),
  KEY `mov_cal` (`mov_cal`),
  KEY `mov_esp` (`mov_esp`),
  KEY `mov_crg` (`mov_crg`),
  KEY `mov_pat` (`mov_pat`),
  KEY `mov_cab_id` (`mov_cab_id`),
  KEY `mov_num` (`mov_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `troza`
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
  `troza_existe` tinyint(4) DEFAULT '0',
  `troza_padre` int(11) DEFAULT NULL,
  `troza_x` float DEFAULT NULL,
  `troza_y` float DEFAULT NULL,
  `cen_cab_id` int(11) DEFAULT NULL,
  `cor_cab_id` int(11) DEFAULT NULL,
  `ext_cab_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`troza_num`),
  KEY `troza_area` (`troza_area`),
  KEY `troza_cal` (`troza_cal`),
  KEY `troza_sp` (`troza_esp`),
  KEY `troza_padre` (`troza_padre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_nombre` varchar(30) NOT NULL,
  `usr_contrasena` varchar(50) NOT NULL,
  `usr_rol` int(11) NOT NULL,
  `usr_email` varchar(50) NOT NULL,
  PRIMARY KEY (`usr_id`),
  UNIQUE KEY `UQ_usuario_usr_email` (`usr_email`),
  UNIQUE KEY `UQ_usuario_usr_nombre` (`usr_nombre`),
  KEY `usr_rol` (`usr_rol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`usr_id`, `usr_nombre`, `usr_contrasena`, `usr_rol`, `usr_email`) VALUES
(2, 'admin', 'admin', 1, 'ocamachou@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `FK_permiso_permiso` FOREIGN KEY (`perm_padre`) REFERENCES `permiso` (`perm_id`);

--
-- Constraints for table `rol_permiso`
--
ALTER TABLE `rol_permiso`
  ADD CONSTRAINT `FK_rol_permsio_permiso` FOREIGN KEY (`perm_id`) REFERENCES `permiso` (`perm_id`),
  ADD CONSTRAINT `FK_rol_permsio_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`rol_id`);

--
-- Constraints for table `t01_area`
--
ALTER TABLE `t01_area`
  ADD CONSTRAINT `FK_t01_area_t09_geo_lugar` FOREIGN KEY (`area_id`) REFERENCES `t09_geo_lugar` (`lugar_id`);

--
-- Constraints for table `t04_faja`
--
ALTER TABLE `t04_faja`
  ADD CONSTRAINT `FK_t04_faja_t01_area` FOREIGN KEY (`area_id`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_t04_faja_t09_geo_lugar` FOREIGN KEY (`faja_id`) REFERENCES `t09_geo_lugar` (`lugar_id`);

--
-- Constraints for table `t09_geo_lugar_polig`
--
ALTER TABLE `t09_geo_lugar_polig`
  ADD CONSTRAINT `FK_t09_geo_lugar_polig_t09_geo_lugar` FOREIGN KEY (`lugar_id`) REFERENCES `t09_geo_lugar` (`lugar_id`);

--
-- Constraints for table `t10_patio`
--
ALTER TABLE `t10_patio`
  ADD CONSTRAINT `FK_t10_patio_t09_geo_lugar` FOREIGN KEY (`pat_id`) REFERENCES `t09_geo_lugar` (`lugar_id`);

--
-- Constraints for table `t101_cen_cab`
--
ALTER TABLE `t101_cen_cab`
  ADD CONSTRAINT `FK_t101_cen_cab_t01_area` FOREIGN KEY (`cen_area`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_t101_cen_cab_t100_form_cab` FOREIGN KEY (`cen_cab_id`) REFERENCES `t100_form_cab` (`form_id`);

--
-- Constraints for table `t101_cen_det`
--
ALTER TABLE `t101_cen_det`
  ADD CONSTRAINT `FK_t100_cen_det_t02_calidad` FOREIGN KEY (`cen_calidad`) REFERENCES `t02_calidad` (`calidad_id`),
  ADD CONSTRAINT `FK_t100_cen_det_t03_especie` FOREIGN KEY (`cen_esp`) REFERENCES `t03_especie` (`especie_id`),
  ADD CONSTRAINT `FK_t100_cen_det_t101_cen_cab` FOREIGN KEY (`cen_cab_id`) REFERENCES `t101_cen_cab` (`cen_cab_id`);

--
-- Constraints for table `t102_cor_cab`
--
ALTER TABLE `t102_cor_cab`
  ADD CONSTRAINT `FK_t102_cor_cab_t01_area` FOREIGN KEY (`cor_area`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_t102_cor_cab_t100_form_cab` FOREIGN KEY (`cor_cab_id`) REFERENCES `t100_form_cab` (`form_id`);

--
-- Constraints for table `t102_cor_det`
--
ALTER TABLE `t102_cor_det`
  ADD CONSTRAINT `FK_t101_cor_det_t02_calidad` FOREIGN KEY (`cor_cal`) REFERENCES `t02_calidad` (`calidad_id`),
  ADD CONSTRAINT `FK_t101_cor_det_t03_especie` FOREIGN KEY (`cor_sp`) REFERENCES `t03_especie` (`especie_id`),
  ADD CONSTRAINT `FK_t101_cor_det_t101_cor_cab` FOREIGN KEY (`cor_cab_id`) REFERENCES `t102_cor_cab` (`cor_cab_id`),
  ADD CONSTRAINT `FK_t101_cor_det_troza` FOREIGN KEY (`cor_num`) REFERENCES `troza` (`troza_num`),
  ADD CONSTRAINT `FK_t102_cor_det_t06_carga` FOREIGN KEY (`cor_crg`) REFERENCES `t06_carga` (`carga_id`);

--
-- Constraints for table `t103_ext_cab`
--
ALTER TABLE `t103_ext_cab`
  ADD CONSTRAINT `FK_t103_ext_cab_t01_area` FOREIGN KEY (`ext_area`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_t103_ext_cab_t100_form_cab` FOREIGN KEY (`ext_cab_id`) REFERENCES `t100_form_cab` (`form_id`);

--
-- Constraints for table `t103_ext_det`
--
ALTER TABLE `t103_ext_det`
  ADD CONSTRAINT `FK_t103_ext_det_t02_calidad` FOREIGN KEY (`ext_cal`) REFERENCES `t02_calidad` (`calidad_id`),
  ADD CONSTRAINT `FK_t103_ext_det_t03_especie` FOREIGN KEY (`ext_esp`) REFERENCES `t03_especie` (`especie_id`),
  ADD CONSTRAINT `FK_t103_ext_det_t06_carga` FOREIGN KEY (`ext_crg`) REFERENCES `t06_carga` (`carga_id`),
  ADD CONSTRAINT `FK_t103_ext_det_t103_ext_cab` FOREIGN KEY (`ext_cab_id`) REFERENCES `t103_ext_cab` (`ext_cab_id`),
  ADD CONSTRAINT `FK_t103_ext_det_t10_patio` FOREIGN KEY (`ext_pat`) REFERENCES `t10_patio` (`pat_id`),
  ADD CONSTRAINT `FK_t103_ext_det_troza` FOREIGN KEY (`ext_num`) REFERENCES `troza` (`troza_num`);

--
-- Constraints for table `t104_mov_cab`
--
ALTER TABLE `t104_mov_cab`
  ADD CONSTRAINT `FK_t104_mov_cab_t01_area` FOREIGN KEY (`mov_area`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_t104_mov_cab_t100_form_cab` FOREIGN KEY (`mov_cab_id`) REFERENCES `t100_form_cab` (`form_id`),
  ADD CONSTRAINT `FK_t104_mov_cab_t11_destino` FOREIGN KEY (`mov_dest`) REFERENCES `t11_destino` (`dest_id`);

--
-- Constraints for table `t104_mov_det`
--
ALTER TABLE `t104_mov_det`
  ADD CONSTRAINT `FK_t104_mov_det_t02_calidad` FOREIGN KEY (`mov_cal`) REFERENCES `t02_calidad` (`calidad_id`),
  ADD CONSTRAINT `FK_t104_mov_det_t03_especie` FOREIGN KEY (`mov_esp`) REFERENCES `t03_especie` (`especie_id`),
  ADD CONSTRAINT `FK_t104_mov_det_t06_carga` FOREIGN KEY (`mov_crg`) REFERENCES `t06_carga` (`carga_id`),
  ADD CONSTRAINT `FK_t104_mov_det_t104_mov_cab` FOREIGN KEY (`mov_cab_id`) REFERENCES `t104_mov_cab` (`mov_cab_id`),
  ADD CONSTRAINT `FK_t104_mov_det_t10_patio` FOREIGN KEY (`mov_pat`) REFERENCES `t10_patio` (`pat_id`),
  ADD CONSTRAINT `FK_t104_mov_det_troza` FOREIGN KEY (`mov_num`) REFERENCES `troza` (`troza_num`);

--
-- Constraints for table `troza`
--
ALTER TABLE `troza`
  ADD CONSTRAINT `FK_troza_t01_area` FOREIGN KEY (`troza_area`) REFERENCES `t01_area` (`area_id`),
  ADD CONSTRAINT `FK_troza_t02_calidad` FOREIGN KEY (`troza_cal`) REFERENCES `t02_calidad` (`calidad_id`),
  ADD CONSTRAINT `FK_troza_t03_especie` FOREIGN KEY (`troza_esp`) REFERENCES `t03_especie` (`especie_id`),
  ADD CONSTRAINT `FK_troza_troza` FOREIGN KEY (`troza_padre`) REFERENCES `troza` (`troza_num`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_usuario_rol` FOREIGN KEY (`usr_rol`) REFERENCES `rol` (`rol_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
