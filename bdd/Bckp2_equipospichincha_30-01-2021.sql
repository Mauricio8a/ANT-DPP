-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-01-2021 a las 04:34:33
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `equipospichincha`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acciones`
--

CREATE TABLE `acciones` (
  `idaccion` int(11) NOT NULL,
  `prefijo` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `expedientes_idExpediente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `acciones`
--

INSERT INTO `acciones` (`idaccion`, `prefijo`, `descripcion`, `expedientes_idExpediente`) VALUES
(1, 'REC ', 'RECTIFICACIÓN', NULL),
(2, 'MOD ', 'MODIFICACIÓN', NULL),
(3, 'ACP ', 'ACEPTACIÓN', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actas`
--

CREATE TABLE `actas` (
  `idacta` int(11) NOT NULL,
  `codigo_acta` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_acta` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `tecnicos_idtecnico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bienes`
--

CREATE TABLE `bienes` (
  `idbien` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `custodios_idcustodio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `idclase` int(11) NOT NULL,
  `prefijo` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `resolucion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `expedientes_idExpediente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`idclase`, `prefijo`, `resolucion`, `expedientes_idExpediente`) VALUES
(1, 'IC ', 'Incremento de Cupo', NULL),
(2, 'CS ', 'Cambio de Socio', NULL),
(3, 'CV ', 'Cambio de Vehículo', NULL),
(4, 'DV', 'Deshabilitación de Vehículo', NULL),
(5, 'CSV ', 'Cambio de Socio de Vehículo', NULL),
(6, 'CPO ', 'Concesión de Permiso de Operación', NULL),
(7, 'RPO ', 'Renovación del Permiso de Operación', NULL),
(8, 'CJ ', 'Constitución Jurídica', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custodios`
--

CREATE TABLE `custodios` (
  `idcustodio` int(11) NOT NULL,
  `f_inicio` datetime NOT NULL,
  `f_fin` datetime DEFAULT NULL,
  `personas_idpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `custodios`
--

INSERT INTO `custodios` (`idcustodio`, `f_inicio`, `f_fin`, `personas_idpersona`) VALUES
(1, '2011-08-01 23:48:31', NULL, 1),
(2, '2011-08-01 23:48:31', NULL, 2),
(3, '2011-08-01 00:00:00', NULL, 3),
(4, '2011-08-01 00:00:00', NULL, 4),
(5, '2011-08-01 00:00:00', NULL, 5),
(6, '2011-08-01 00:00:00', NULL, 6),
(7, '2011-08-01 00:00:00', NULL, 7),
(8, '2011-08-01 00:00:00', NULL, 8),
(9, '2011-08-01 00:00:00', NULL, 9),
(10, '2011-08-01 00:00:00', NULL, 10),
(11, '2011-08-01 00:00:00', NULL, 11),
(12, '2011-08-01 00:00:00', NULL, 12),
(13, '2011-08-01 00:00:00', NULL, 13),
(14, '2011-08-01 00:00:00', NULL, 14),
(15, '2011-08-01 00:00:00', NULL, 15),
(16, '2011-08-01 00:00:00', NULL, 16),
(17, '2011-08-01 00:00:00', NULL, 17),
(18, '2011-08-01 00:00:00', NULL, 18),
(19, '2011-08-01 00:00:00', NULL, 19),
(20, '2011-08-01 00:00:00', NULL, 20),
(21, '2011-08-01 00:00:00', NULL, 21),
(22, '2011-08-01 00:00:00', NULL, 22),
(23, '2011-08-01 00:00:00', NULL, 23),
(24, '2011-08-01 00:00:00', NULL, 24),
(25, '2011-08-01 00:00:00', NULL, 25),
(26, '2011-08-01 00:00:00', NULL, 26),
(27, '2011-08-01 00:00:00', NULL, 27),
(28, '2011-08-01 00:00:00', NULL, 28),
(29, '2011-08-01 00:00:00', NULL, 29),
(30, '2011-08-01 00:00:00', NULL, 30),
(31, '2011-08-01 00:00:00', NULL, 31),
(32, '2011-08-01 00:00:00', NULL, 32),
(33, '2011-08-01 00:00:00', NULL, 33),
(34, '2011-08-01 00:00:00', NULL, 34),
(35, '2011-08-01 00:00:00', NULL, 35),
(36, '2011-08-01 00:00:00', NULL, 36),
(37, '2011-08-01 00:00:00', NULL, 37),
(38, '2011-08-01 00:00:00', NULL, 38),
(39, '2011-08-01 00:00:00', NULL, 39),
(40, '2011-08-01 00:00:00', NULL, 40),
(41, '2011-08-01 00:00:00', NULL, 41),
(42, '2011-08-01 00:00:00', NULL, 42),
(43, '2011-08-01 00:00:00', NULL, 43),
(44, '2011-08-01 00:00:00', NULL, 44),
(45, '2011-08-01 00:00:00', NULL, 45),
(46, '2011-08-01 00:00:00', NULL, 46),
(47, '2011-08-01 00:00:00', NULL, 47),
(48, '2011-08-01 00:00:00', NULL, 48),
(49, '2011-08-01 00:00:00', NULL, 49),
(50, '2011-08-01 00:00:00', NULL, 50),
(51, '2011-08-01 00:00:00', NULL, 51),
(52, '2011-08-01 00:00:00', NULL, 52),
(53, '2011-08-01 00:00:00', NULL, 53),
(54, '2011-08-01 00:00:00', NULL, 54),
(55, '2011-08-01 00:00:00', NULL, 55),
(56, '2011-08-01 00:00:00', NULL, 56),
(57, '2011-08-01 00:00:00', NULL, 57),
(58, '2011-08-01 00:00:00', NULL, 58),
(59, '2011-08-01 00:00:00', NULL, 59),
(60, '2011-08-01 00:00:00', NULL, 60),
(61, '2011-08-01 00:00:00', NULL, 61),
(62, '2011-08-01 00:00:00', NULL, 62),
(63, '2011-08-01 00:00:00', NULL, 63),
(64, '2011-08-01 00:00:00', NULL, 64),
(65, '2011-08-01 00:00:00', NULL, 65),
(66, '2011-08-01 00:00:00', NULL, 66),
(67, '2011-08-01 00:00:00', NULL, 67),
(68, '2011-08-01 00:00:00', NULL, 68),
(69, '2011-08-01 00:00:00', NULL, 69),
(70, '2011-08-01 00:00:00', NULL, 70),
(71, '2011-08-01 00:00:00', NULL, 71),
(72, '2011-08-01 00:00:00', NULL, 72),
(73, '2011-08-01 00:00:00', NULL, 73),
(74, '2011-08-01 00:00:00', NULL, 74),
(75, '2011-08-01 00:00:00', NULL, 75),
(76, '2011-08-01 00:00:00', NULL, 76),
(77, '2011-08-01 00:00:00', NULL, 77),
(78, '2011-08-01 00:00:00', NULL, 78),
(79, '2011-08-01 00:00:00', NULL, 79),
(80, '2011-08-01 00:00:00', NULL, 80),
(81, '2011-08-01 00:00:00', NULL, 81),
(82, '2011-08-01 00:00:00', NULL, 82),
(83, '2011-08-01 00:00:00', NULL, 83);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `iddepartamento` int(11) NOT NULL,
  `descripcion` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dependencias_iddependencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`iddepartamento`, `descripcion`, `dependencias_iddependencia`) VALUES
(1, 'Oficina de la Dirección Provincial', 1),
(2, 'Departamento Jurídico', 1),
(3, 'Escuelas de Conducción', 1),
(4, 'Departamento Técnico', 1),
(5, 'Coordinación Tecnológica', 1),
(6, 'Archivo', 1),
(7, 'Oficina de Atención al Usuario - Agencia Occidental', 1),
(8, 'Oficina de Atención al Usuario - El Recreo', 2),
(9, 'Oficina de Atención al Usuario - Cordero', 3),
(10, 'Oficina de Atención al Usuario - Tumbaco', 4),
(11, 'Oficina de Atención al Usuario - Rumiñahui', 5),
(12, 'Oficina de Atención al Usuario - Mejía', 6),
(13, 'Oficina de Atención al Usuario - Cayambe', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencias`
--

CREATE TABLE `dependencias` (
  `iddependencia` int(11) NOT NULL,
  `descripcion` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ubicaciones_idubicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dependencias`
--

INSERT INTO `dependencias` (`iddependencia`, `descripcion`, `ubicaciones_idubicacion`) VALUES
(1, 'Dirección Provincial de Pichincha', 1),
(2, 'Dirección Provincial de Pichincha', 2),
(3, 'Dirección Provincial de Pichincha', 3),
(4, 'Dirección Provincial de Pichincha', 4),
(5, 'Dirección Provincial de Pichincha', 5),
(6, 'Dirección Provincial de Pichincha', 6),
(7, 'Dirección Provincial de Pichincha', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `idempresas` int(11) NOT NULL,
  `Nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipostecnologicos`
--

CREATE TABLE `equipostecnologicos` (
  `idequipo` int(11) NOT NULL,
  `cod_avaluac` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cod_ant` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cod_esbye` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `serie` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anio` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `color` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observacion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `custodios_idcustodio` int(11) DEFAULT NULL,
  `tickets_idticket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `equipostecnologicos`
--

INSERT INTO `equipostecnologicos` (`idequipo`, `cod_avaluac`, `cod_ant`, `cod_esbye`, `serie`, `marca`, `modelo`, `anio`, `descripcion`, `color`, `observacion`, `custodios_idcustodio`, `tickets_idticket`) VALUES
(1, '3769450', '00.33.4718.2', '', 'C4JDPW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 43, NULL),
(2, '3769455', '00.33.4718.1', '', 'CN-06JX4Y-64180-2BD-1PDL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 41, NULL),
(3, '3794550', '00.33.4718.3', '', 'CN-0C639N-71616-2B9-0CQP-A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 13, NULL),
(4, '3794534', '00.33.4718.4', '', 'CN-011D3V-71581-286-0LE4', 'DELL', 'MS111-P', '', 'Mouse', '', '', 73, NULL),
(5, '3769855', '17.05.3.120.2', '', '294442', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 50, NULL),
(6, '3795058', '17.05.03.120.1', '', 'W7006S-97F1569-018856', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 46, NULL),
(7, '3795060', '17.01.1.102.3', '', 'K58810908000333', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 20, NULL),
(8, '3795042', '17.01.1.102.4', '', 'M482090802925', 'XTRATECH', 'M482', '', 'Mouse', '', '', 35, NULL),
(9, '3769446', 'A17.01.010.2', '', '293239', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 12, NULL),
(10, '3794524', '00.33.1993.1', '', 'CNK0350DXD', 'HP', 'LE1911', '', 'Pantalla', '', '', 8, NULL),
(11, '3794547', 'AVALUAC(8004)2000117771', '', 'BC3370DVBVLL7E', 'HP', 'KB0316', '', 'Teclado', '', '', NULL, NULL),
(12, '3794544', '00.33.1280.3', '', 'K58810908000581', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 54, NULL),
(13, '3770056', '00.33.1976.2', '', 'MXL0461R22', 'HP', '3130 MT', '', 'CPU', '', '', 82, NULL),
(14, '3795484', '00.33.1976.1', '', 'CNK0350DWH', 'HP', 'LE1911', '', 'Pantalla', '', '', 37, NULL),
(15, '3795487', '00.33.1976.3', '', 'BAUHR0IVBZI67G', 'HP', 'KU-0316', '', 'Teclado', '', '', 60, NULL),
(16, '3795485', '00.33.1976.4', '', 'FATSK0J9WZID8Q', 'HP', 'MOAFUO', '', 'Mouse', '', '', 15, NULL),
(17, '3771711', '17.01.1.103.2', '', '294462', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 31, NULL),
(18, '3796391', '17.01.1.103.1', '', 'W7006S-97F1569-01085E', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 41, NULL),
(19, '3796393', 'A17.05.1.111.3', '', 'K58810908001319', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 73, NULL),
(20, '3796392', '17.01.1.100.4', '', 'M482090803951', 'XTRATECH', 'M482', '', 'Mouse', '', '', 35, NULL),
(21, '3770062', '00.33.4708.2', '', 'C40BPW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 32, NULL),
(22, '3770066', '00.33.4708.1', '', 'CN-06JX4Y-64180-2BD-1QNL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 53, NULL),
(23, '3795503', '00.33.4708.3', '', 'CN-0C639N-71616-2B9-0H1P-A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 20, NULL),
(24, '3769297', 'A17.09.4.25.2', '', '293343', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 78, NULL),
(25, '3794240', 'A17.06', '', 'M482090802986', 'XTRATECH', 'M482', '', 'Mouse', '', '', 53, NULL),
(26, '3795500', '00.33.4708.4', '', 'CN-011D3V-71581-27J-07WC', 'DELL', 'MS111-P', '', 'Mouse', '', '', 16, NULL),
(27, '3770076', '00.33.4709.2', '', 'C5BBPW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 7, NULL),
(28, '3794241', 'A17.06.3.015.3', '', 'K58810908000908', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 16, NULL),
(29, '3794239', 'A17.05.01.043.1', '', 'W7006597F1569017985', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 24, NULL),
(30, '3770077', '00.33.4709.1', '', 'CN-06JX4Y-64180-2B5-2B7L', 'DELL', 'E1913C', '', 'Pantalla', '', '', 62, NULL),
(31, '3795520', '00.33.4709.3', '', 'CN-0C639N-71616-2B9-0GCR-A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 12, NULL),
(32, '3795518', '00.33.4709.4', '', 'CN-011D3V-71581-281-0826', 'DELL', 'MS111-L', '', 'Mouse', '', '', 64, NULL),
(33, '3770060', '00.33.4706.2', '', 'HCN4PW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 61, NULL),
(34, '', '00.33.4706.1', '', 'CN-06JX4Y-64180-2BH-1SWL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 45, NULL),
(35, '3795499', '00.33.4706.3', '', 'CN-0C639N-71616-2B9-0GTN-A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 15, NULL),
(36, '3795496', '00.33.4706.4', '', 'CN-09RRC7-48723-2AJ-0320', 'DELL', 'MS111-L', '', 'Mouse', '', '', 17, NULL),
(37, '3770067', '00.33.4710.2', '', 'HBKDPW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 8, NULL),
(38, '3770068', '00.33.4710.1', '', 'CN-06JX4Y-64180-2BD-1QWL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 75, NULL),
(39, '3795505', '00.33.4710.3', '', 'CN-0C639N-71616-2B9-0D5F-A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 79, NULL),
(40, '3795504', '00.33.4710.4', '', 'CN-09RRC7-48723-2AJ-00MJ', 'DELL', 'MS111-L', '', 'Mouse', '', '', 4, NULL),
(41, '3769318', 'A17.05.1.033.2', '', '292817', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 51, NULL),
(42, '3770070', '00.33.4711.2', '', 'HBK5PW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 81, NULL),
(43, '3770071', '00.33.4711.1', '', 'CN-06JX4Y-64180-2BD-1QVL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 54, NULL),
(44, '3795511', '00.33.4711.3', '', 'CN-0C639N-71616-2B9-0D46-A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 19, NULL),
(45, '3795510', '00.33.4711.4', '', 'CN-09RRC7-48723-2AJ-00M5', 'DELL', 'MS111L', '', 'Mouse', '', '', 76, NULL),
(46, '3794278', 'BC.A17.05.1.2.05', '', 'KM7502U00190', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 34, NULL),
(47, '3794277', '00.10.11.1331.4', '', 'M482090801181', 'XTRATECH', 'M482', '', 'Mouse', '', '', 52, NULL),
(48, '3770072', '00.33.4707.2', '', 'HDPBPW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 67, NULL),
(49, '3794276', 'A17.05.1.042.1', '', 'W7006S97F1569006408', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 40, NULL),
(50, '3770074', '00.33.4707.1', '', 'CN-06JX4Y-64180-2BD-1QBL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 76, NULL),
(51, '3795512', '00.33.4707.3', '', 'CN-0C639N-71616-2B9-04S2-A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 55, NULL),
(52, '3795513', '00.33.4707.4', '', 'CN-09RRC7-48723-2AJ-00LA', 'DELL', 'MS111-P', '', 'Mouse', '', '', 65, NULL),
(53, '3770069', '00.33.1968.2', '', 'MXL0461R3B', 'HP', '3130 MT', '', 'CPU', '', '', 71, NULL),
(54, '3750905', 'A17.05.1.112.1', '', 'W7006S-97F1569-019551', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 35, NULL),
(55, '3795509', '17.01.1.107.3', '', 'K58810908001476', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 81, NULL),
(56, '3769303', 'A17.05.1.044.2', '', '293232', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 35, NULL),
(57, '3795507', '17.01.1.107.4', '', 'M482090803859', 'XTRATECH', 'M482', '', 'Mouse', '', '', 3, NULL),
(58, '3794246', 'A17.09.4.25.3', '', 'K58810908000851', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 68, NULL),
(59, '3794245', 'A17.05.1.034.4', '', 'M482090800343', 'XTRATECH', 'M482', '', 'Mouse', '', '', 29, NULL),
(60, '3794244', 'A17.05.1.034.1', '', 'W7006S97F1728000207', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 59, NULL),
(61, '3770075', '17.01.1.116.2', '', '294485', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 68, NULL),
(62, '3795515', '17.01.1.116.1', '', 'W7006S-97F1569-014654', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 15, NULL),
(63, '3795517', '17.05.2.0047.3 ', '', 'B28980LGAMH3C6', 'COMPAQ', 'S5500', '', 'Teclado', '', '', 9, NULL),
(64, '3769290', 'A17.09.002.2', '', '293169', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 62, NULL),
(65, '3795516', '17.01.1.116.4', '', 'M482090803966', 'XTRATECH', 'M482', '', 'Mouse', '', '', 75, NULL),
(66, '3794230', 'A17.09.004.3', '', 'K58810908000457', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 26, NULL),
(67, '3794229', 'A17.09.005.4', '', 'M482090803624', 'XTRATECH', 'M482', '', 'Mouse', '', '', 55, NULL),
(68, '3794228', '', '', 'W9010S1A1B141000478C', 'XTRATECH', 'FQC1266', '', 'Pantalla', '', '', 48, NULL),
(69, '3770078', 'S/N', '', 'MXJ817080K', 'HP', 'DC5800', '', 'CPU', '', '', 52, NULL),
(70, '3769295', 'A17.05.1.043.2', '', '293247', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 55, NULL),
(71, '3795521', '8,00E+13', '', 'MJ19HVDL900040N', 'SAMSUNG', 'SAMSUNG', '', 'Pantalla', '', '', 50, NULL),
(72, '3794238', '00.48.6.1235.3', '', 'K58810908001483', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 42, NULL),
(73, '3794237', 'S/C', '', 'X2J80850803397', 'GENIUS', 'GM03022P', '', 'Mouse', '', '', 44, NULL),
(74, '3794236', '00.33.1212.1', '', 'W7006S97F156901989J', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 33, NULL),
(75, '', '310.17.02.35.141.01.07.11.(04)', '', 'ZM7502103251', 'GENIUS', 'K639', '', 'Teclado', '', '', 32, NULL),
(76, '3795522', 'A17.06.1.002.4', '', 'M482090803333', 'XTRATECH', 'M482', '', 'Mouse', '', '', 83, NULL),
(77, '3769305', 'A17.09.001.2', '', '293162', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 80, NULL),
(78, '3769849', '00.33.4713.2', '', 'HC53PW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 31, NULL),
(79, '3794249', '00.10.11.1351.3', '', 'K58810908000512', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 62, NULL),
(80, '3794248', 'A17.09.4.25.4', '', 'M482090800887', 'XTRATECH', 'M482', '', 'Mouse', '', '', 62, NULL),
(81, '3794247', 'A17.09.6.16.1', '', 'W7006S-97F1569-014016', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 30, NULL),
(82, '3769851', '0.33.4713.1', '', 'CN-06JX4Y-64180-2B5-136L', 'DELL', 'E1913C', '', 'Pantalla', '', '', 8, NULL),
(83, '3795052', '00.33.4713.3', '', 'CN-0C639N-71616-2B9-0DCR-A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 54, NULL),
(84, '3795051', '00.33.4713.4', '', 'CN-09RRC7-48723-2AJ-031U', 'DELL', 'MS111-P', '', 'Mouse', '', '', 83, NULL),
(85, '3769307', 'A17.09.007.2', '', '293030', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 5, NULL),
(86, '3769313', '00.10.11.1351.2', '', '294608', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 2, NULL),
(87, '3769293', 'A17.09.1.15.2', '', '293083', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 66, NULL),
(88, '3769315', 'A17.09.003.2', '', '292871', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 6, NULL),
(89, '3769314', 'A17.09.10.023.2', '', '294470', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 79, NULL),
(90, '3769310', '', '', '294469', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 38, NULL),
(91, '3769312', 'A17.09.006.2', '', '293020', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 38, NULL),
(92, '3769311', 'A17.09.6.85', '', '294554', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 22, NULL),
(93, '3769316', 'A17.09.004.2', '', '293178', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 54, NULL),
(94, '3794251', 'A17.09.007.3   VERIFICAR', '', 'K58810908001494', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 70, NULL),
(95, '3794250', 'A17.09.1.44.1  ', '', 'W7006S97F1728000555', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 14, NULL),
(96, '3794275', 'A17.09.006.3', '', 'K58810908000476', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 55, NULL),
(97, '3794262', 'A17.09.001.4', '', 'M482090803584', 'XTRATECH', 'M482', '', 'Mouse', '', '', 29, NULL),
(98, '3794259', 'A17.09.006.1', '', 'W7006S97F156900095E', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', NULL, NULL),
(99, '3794273', 'A17.09.002.3', '', 'K58810908001081', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 50, NULL),
(100, '3794267', '', '', 'M482090800311', 'XTRATECH', 'M482', '', 'Mouse', '', '', 30, NULL),
(101, '3794261', 'A17.09.6.84', '', 'W7006S97F1728000566', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 80, NULL),
(102, '3794269', 'A17.09.001.3', '', 'K58810908000648', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 20, NULL),
(103, '3794264', 'A17.09.10.023.4   ', '', 'M482090802164', 'XTRATECH', 'M482', '', 'Mouse', '', '', 24, NULL),
(104, '3794255', 'A17.09.10.023.1', '', 'W7006S97F1569001157', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 34, NULL),
(105, '3794270', 'A17.09.003.3', '', 'K58810908000732', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 19, NULL),
(106, '3794266', 'A17.09.003.4', '', 'M482090802564', 'XTRATECH', 'M482', '', 'Mouse', '', '', 35, NULL),
(107, '3794257', 'A17.09.003.1', '', 'W7006S97F1569021526', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 3, NULL),
(108, '3794271', 'A17.09.1.15.3', '', 'K58810908000483', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 27, NULL),
(109, '3794265', 'A17.09.1.15.4 ', '', 'M482090801438', 'XTRATECH', 'M482', '', 'Mouse', '', '', 74, NULL),
(110, '3794256', 'A17.09.1.15.1', '', 'W7006S97F1569011277', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 24, NULL),
(111, '3794272', 'A17.09.10.023.3', '', 'K58810908001350', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 58, NULL),
(112, '3794268', 'A17.9.007.4', '', 'M482090800257', 'XTRATECH', 'M482', '', 'Mouse', '', '', 76, NULL),
(113, '3794258', 'A17.09.004.1', '', 'W7006S97F1728000049', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 49, NULL),
(114, '3794235', 'BC.00.33.154', '', '44106393', 'APC', 'BE550G-LM', '', 'Teclado', '', '', 28, NULL),
(115, '3794232', 'A17.09.6.16.4', '', 'M482090802930', 'XTRATECH', 'M482', '', 'Mouse', '', '', 55, NULL),
(116, '3794231', 'A17.09.4.25.1', '', 'W7006S97F1569011390', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 41, NULL),
(117, '*', '06.01.85', '', '5120167', 'VIDEOLOGY', '24Z704USB-SYS', '', 'Camara', '', '', 46, NULL),
(118, '3769292', '06.01.089', '', 'H10D8055', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 61, NULL),
(119, '3794274', 'A17.09.6.16.3', '', 'K58810908001367', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 23, NULL),
(120, '3794263', '', '', '1,40E+11', 'GENIUS', 'GM03022P', '', 'Mouse', '', '', 15, NULL),
(121, '3794260', 'A17.09.002.1', '', 'W7006S97F1569020769', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 29, NULL),
(122, '3765301', '00.33.1959', '', 'T1CU2A900070', 'DLINK', 'DES-1008A', '', 'Switch', '', '', 26, NULL),
(123, '3769853', '17.01.1.109.2', '', '294435', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 15, NULL),
(124, '3795053', '17.01.1.109.1', '', 'W7006S-97F1569-019828', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 5, NULL),
(125, '3795057', '17.05.3.120.3', '', 'K58810908001371', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 32, NULL),
(126, '3795054', '17.01.1.109.4', '', 'M482090802913', 'XTRATECH', 'M482', '', 'Mouse', '', '', 50, NULL),
(127, '3769852', '00.39.5.1538.2', '', '294605', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 42, NULL),
(128, '3794776', '17.01.1.107.1', '', 'W7006S-97F1569-013558', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 31, NULL),
(129, '3769842', '17.01.1.102.2', '', '294434', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 50, NULL),
(130, '3795043', '17.01.1.102.1', '', 'W7006S-97F1569-00739F', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 45, NULL),
(131, '3795041', '17.01.01.109.3', '', 'K58810908001470', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 49, NULL),
(132, '3795040', '00.17.1.46.38', '', 'X51723502982', 'GENIUS', 'NETSCROLL 120', '', 'Mouse', '', '', 71, NULL),
(133, '3769843', '00.33.4714.2', '', 'HDK6PW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 70, NULL),
(134, '3769845', '00.33.4714.1', '', 'CN-06JX4Y-64180-2B5-0XQL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 36, NULL),
(135, '3795046', '00.33.4714.3', '', 'CN-0C639N-71616-2B9-08IW-A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 62, NULL),
(136, '3795044', '00.33.4714.4', '', 'CN-09RRC7-48723-2AJ-024Q', 'DELL', 'N231', '', 'Mouse', '', '', 72, NULL),
(137, '3769929', '17.01.1.117.2', '', '294533', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 38, NULL),
(138, '3795192', '17.01.1.117.1', '', 'W7006S-97F1569-01973E', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 22, NULL),
(139, '3795195', '17.01.1.117.3', '', 'K58810908001062', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 26, NULL),
(140, '3795193', '17.01.1.117.4', '', 'M482090802246', 'XTRATECH', 'M482', '', 'Mouse', '', '', 13, NULL),
(141, '3769846', '17.08.119.2', '', '293386', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 25, NULL),
(142, '3795047', '17.08.119.1', '', 'W7006S-97F1569-02097E', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 80, NULL),
(143, '3795049', '17.08.119.3', '', 'K58810908000551', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 30, NULL),
(144, '3795048', '17.08.119.4', '', 'M482090803338', 'XTRATECH', 'M482', '', 'Mouse', '', '', 8, NULL),
(145, '3769857', 'A17.05.1.109.2', '', '293271', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 21, NULL),
(146, '3795061', '17.05.1.109.1', '', 'W7006S-97F1569-00092H', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', NULL, NULL),
(147, '3795063', '17.05.1.109.3', '', 'K58810908001617', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 10, NULL),
(148, '3795062', '17.05.1.109.4', '', '11071269', 'XTRATECH', 'M482', '', 'Mouse', '', '', 31, NULL),
(149, '3769930', '00.33.1992.2', '', 'MXL0461R05', 'HP', '3130 MT', '', 'CPU', '', '', 77, NULL),
(150, '3795196', '00.33.1992.1', '', 'CNK0350DDQ', 'HP', 'LE1911', '', 'Pantalla', '', '', 64, NULL),
(151, '3794529', '00.33.1992.3', '', 'BAUHR0IVBZI35V', 'HP', 'KU-0316', '', 'Teclado', '', '', 76, NULL),
(152, '3795197', '00.33.1992.4', '', 'FATSK0J9WZIGCY', 'HP', 'MOAFUO', '', 'Mouse', '', '', 33, NULL),
(153, '3770085', '17.01.1.105.2', '', '294604', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 72, NULL),
(154, '3795540', '17.01.1.105.1', '', 'W7006S-97F1569-009946', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 36, NULL),
(155, '3795542', '17.01.1.105.3', '', 'K58810908001503', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 55, NULL),
(156, '3773583', 'A17.07.013.2', '', '294624', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 46, NULL),
(157, '3795541', '17.01.1.105.4', '', '14235704467', 'GENIUS', 'NETSCROLL 120', '', 'Mouse', '', '', 51, NULL),
(158, '3770088', '17.01.1.101.2', '', '294411', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 56, NULL),
(159, '3773587', 'A17.07.004.2', '', '293166', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 12, NULL),
(160, '3795547', '17.01.1.101.1', '', 'W7006S-97F1569-012166', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 68, NULL),
(161, '', '17.01.1.101.3', '', 'K58810908001598', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 48, NULL),
(162, '3795549', '17.01.1.101.4', '', 'M482090802932', 'XTRATECH', 'M482', '', 'Mouse', '', '', 4, NULL),
(163, '3773584', 'A17.07.1.43.1', '', 'MX211100XB', 'HP', 'S/M', '', 'CPU', '', '', 38, NULL),
(164, '3770087', '17.01.1.118.2', '', '293363', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 15, NULL),
(165, '3773580', 'A17.07.015.2', '', '294580', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 82, NULL),
(166, '3795548', '17.01.1.118.1', '', 'W7006S-97F1569-01119I', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 39, NULL),
(167, '3795551', '17.01.1.118.3', '', 'K58810908001403', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 31, NULL),
(168, '3773572', 'A17.07.1.023.2', '', 'CPUAGX-123', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 16, NULL),
(169, '3795550', '00.33.1282.4', '', 'M482090802187', 'XTRATECH', 'M482', '', 'Mouse', '', '', 70, NULL),
(170, '3805345', 'A17.07.1.022.2', '', 'CPUAGX-090', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 78, NULL),
(171, '3773574', 'A17.07.1.021.2', '', 'CPUAGX-083', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 8, NULL),
(172, '3773573', 'A17.07.1.019.2', '', 'CPUAGX-089', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 63, NULL),
(173, '3773563', 'A17.07.1.020.2', '', 'CPUAGX-115', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 32, NULL),
(174, '3773568', 'A17.07.005.2', '', '292862', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 7, NULL),
(175, '3773570', 'A17.07.006.2', '', '293214', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 5, NULL),
(176, '3773577', 'A17.02.1.007.2', '', '293206', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 34, NULL),
(177, '3770089', 'A17.05.1.106.2', '', '293371', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 19, NULL),
(178, '3795553', 'A17.05.1.106.1', '', 'W7006S-97F1569-017895', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 53, NULL),
(179, '3795556', '17.05.1.106.3', '', 'K58810908000933', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 13, NULL),
(180, '3795554', 'A17.05.1.106.4', '', 'M482090803411', 'XTRATECH', 'M482', '', 'Mouse', '', '', 15, NULL),
(181, '3770086', '17.01.1.99.2', '', '294403', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 8, NULL),
(182, '3795543', '17.01.1.99.1', '', 'W7006S-97F1569-014708', 'XTRATECH', 'FQC1266', '', 'Pantalla', '', '', 38, NULL),
(183, '3795546', '17.01.1.99.3', '', 'K58810908001472', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 37, NULL),
(184, '3795544', '17.01.1.99.4', '', 'M482090803865', 'XTRATECH', 'M482', '', 'Mouse', '', '', 69, NULL),
(185, '3795050', '', '', 'SM30M9136XUSB', 'SPEEDMIND', 'SPEEDMIND', '', 'Mouse', '', '', 36, NULL),
(186, '3772024', 'A17.03.040.2', '', 'MXL13817W0', 'HP', '6200 PRO', '', 'CPU', '', '', 11, NULL),
(187, 'S/N', 'A17.03.040.1', '', 'CNC121RL6R', 'HP', 'S1933', '', 'Pantalla', '', '', 21, NULL),
(188, '3796969', 'A17.03.040.3', '', 'BAUDU0OVBOV1QN', 'HP', 'KB0316', '', 'Teclado', '', '', 1, NULL),
(189, '3796968', 'A17.03.040.4', '', 'FATSQ0E671B3KP', 'HP', 'MOAFKOA', '', 'Mouse', '', '', 71, NULL),
(190, '3772034', '00.33.4720.2', '', 'HCB4PW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 40, NULL),
(191, '3796976', '00.33.4720.1', '', 'CN-06JX4Y-64180-2B5-22LL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 22, NULL),
(192, '3773557', 'A17.07.003.2', '', '293174', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 76, NULL),
(193, '3796978', '00.33.4720.3', '', 'CN-0C639N-71616-2B9-0BX0', 'DELL', 'KB212-B', '', 'Teclado', '', '', 56, NULL),
(194, '3796977', '00.33.4720.4', '', 'CN-09RRC7-48723-2AJ-0331', 'DELL', 'MS111-P', '', 'Mouse', '', '', 30, NULL),
(195, '3773558', 'A17.07.002.2', '', '292870', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 41, NULL),
(196, '3773565', 'A17.07.1.53', '', '293252', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 19, NULL),
(197, '3772031', '00.33.4721.2', '', 'HBV9PW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 66, NULL),
(198, '3772033', '00.33.4721.1', '', 'CN-06JX4Y-64180-2BD-1PGL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 46, NULL),
(199, '3796975', '00.33.4721.3', '', 'CN-0C639N-71616-2B9-ODOP A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 56, NULL),
(200, '', '00.33.4721.4', '', 'CN-09RRC7-48723-2AI-05VU', 'DELL', 'MS111-P', '', 'Mouse', '', '', 19, NULL),
(201, '3805370', 'A17.07.013.3', '', 'K58810908001478', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 43, NULL),
(202, '3805369', 'A17.07.005.4', '', 'M482090800345', 'XTRATECH', 'M482', '', 'Mouse', '', '', 49, NULL),
(203, '3805368', 'A17.07.005.1', '', 'W7006S-97F1569-020374', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 69, NULL),
(204, '3805377', 'A17.07.003.3', '', 'K58810908000451', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 63, NULL),
(205, '3772030', '00.33.4722.2', '', 'CSKDPW1', 'DELL', 'REV-A00', '', 'CPU', '', '', 7, NULL),
(206, '3805376', 'A17.07.003.4', '', 'M482090800456', 'XTRATECH', 'M482', '', 'Mouse', '', '', 7, NULL),
(207, '3805375', 'A17.07.004.1', '', 'W7006S-97F1569-018541', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 49, NULL),
(208, '3772042', '00.33.4722.1', '', 'CN-06JX4Y-64180-2B5-0ZYL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 79, NULL),
(209, '3796985', '00.33.4722.3', '', 'CN-0C639N-71616-2B9-0GCQ', 'DELL', 'KB212-B', '', 'Teclado', '', '', 45, NULL),
(210, '3796984', '00.33.4722.4', '', 'CN-011D3V-71581-281-00HK', 'DELL', 'REV-A00', '', 'Mouse', '', '', 39, NULL),
(211, '3805371', 'A17.07.1.43.12', '', 'BAUDROKVBZRN4S', 'HP', 'KV0316', '', 'Teclado', '', '', 21, NULL),
(212, '3805303', 'A17.07.1.43.3', '', 'F93AAOWN3ZD07KA', 'HP', 'MSBN96', '', 'Mouse', '', '', 48, NULL),
(213, '3772027', '00.33.4719.2', '', 'HDPDPW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 70, NULL),
(214, '3773585', 'S/N', '', 'CN25BWN43H', 'HP', 'V1905', '', 'Switch', '', '', 58, NULL),
(215, '3772029', '00.33.4719.1', '', 'CN-06JX4Y-64180-2BH-1SBL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 77, NULL),
(216, ' ', '00.33.4719.3', '', 'CN-0C639N-71616-2B9-0CK9', 'DELL', 'KB212-B', '', 'Teclado', '', '', 32, NULL),
(217, '3796972', '00.33.4719.4', '', 'CN-09RRC7-48723-2AJ-00KX', 'DELL', 'MS111-P', '', 'Mouse', '', '', 65, NULL),
(218, '', '00.33.4715.2', '', 'C4ZDPW1', 'DELL', 'REV-A00', '', 'CPU', '', '', 25, NULL),
(219, '', '00.33.4715.1', '', 'CN-06JX4Y-64180-2B5-2AFL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 4, NULL),
(220, '', '00.33.4715.3', '', 'CN-0C639N-71616-2B9-0GG3', 'DELL', 'KB212-B', '', 'Teclado', '', '', 77, NULL),
(221, '', '00.33.4715.4', '', 'CN-011D3V-71581-286-0GX0', 'DELL', 'REV-A00', '', 'Mouse', '', '', 67, NULL),
(222, '3805362', 'A17.07.015.3', '', 'K58810908001035', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 39, NULL),
(223, '3805361', 'S/N', '', 'M482090802915', 'XTRATECH', 'M482', '', 'Mouse', '', '', 35, NULL),
(224, '3805357', 'A17.07.006.1', '', 'W7006S-97F1569-01759G', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 18, NULL),
(225, '3805358', 'A17.07.3.74.1', '', '202NDBPA6197', 'LOGITECH', 'Hd 1080 p', '', 'Pantalla', '', '', 55, NULL),
(226, '', 'A17.07.3.74.4', '', 'SIN SERIE', 'XTRATECH', 'S/M', '', 'Mouse', '', '', 44, NULL),
(227, '', 'A17.07.3.74.3', '', 'SIN SERIE', 'XTRATECH', 'S/M', '', 'Teclado', '', '', 52, NULL),
(228, '3805333', 'A17.07.1.023.3', '', 'TECUSB-237', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 33, NULL),
(229, '3805332', 'A17.07.1.023.4', '', 'MSEUSB-179', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 71, NULL),
(230, '3805331', 'A17.07.023.1', '', 'AFZB2HA050147', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 13, NULL),
(231, '3772017', 'A17.03.1.009.2', '', '292852', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 54, NULL),
(232, '3805347', 'A17.07.1.022.3', '', 'TECUSB-238', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 51, NULL),
(233, '3805346', 'A17.07.1.022.4', '', 'MSEUSB-200', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 39, NULL),
(234, '3796934', '00.16.1128.1', '', 'W7006S-97F1569-011354', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 23, NULL),
(235, '3805345', 'A17.07.1.022.1', '', 'AFZB2HA050128', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 59, NULL),
(236, '3805343', 'A17.07.1.019.3', '', 'TECUSB-236', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 24, NULL),
(237, '3796950', 'A17.03.1.010.3', '', 'K58810908000701', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 60, NULL),
(238, '3805342', 'A17.07.1.021.4', '', 'MSEUSB-244', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 48, NULL),
(239, '3805341', 'A17.07.1.021.1', '', 'AFZB2HA052114', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 48, NULL),
(240, '3796949', '', '', 'F93AAIAN3SU09QK', 'HP', 'MSBN96', '', 'Mouse', '', '', 25, NULL),
(241, '3805339', 'A17.07.1.020.3', '', 'TECUSB-235', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 41, NULL),
(242, '3805338', 'A17.07.1.019.4', '', 'MSEUSB-183', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 2, NULL),
(243, '3805337', 'A17.07.1.019.1', '', 'AFZB2HA050877', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 23, NULL),
(244, '3805318', 'A17.07.002.3 ', '', 'K58810908001413', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 75, NULL),
(245, '3772010', '00.16.1128.2', '', '293390', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 66, NULL),
(246, '3796941', 'A17.03.1.011.1', '', 'W7006S-97F1569-006664', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 74, NULL),
(247, '3796957', '00.16.1128.3', '', 'K58810908000553', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 67, NULL),
(248, '3796944', '', '', 'M482090803322', 'XTRATECH', 'M482', '', 'Mouse', '', '', 70, NULL),
(249, '3772012', 'A17.06.1.9.2', '', '294399', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 25, NULL),
(250, '3805317', 'A17.07.002.4', '', 'M482090800344', 'XTRATECH', 'M482', '', 'Mouse', '', '', 37, NULL),
(251, '3805325', 'A17.07.005.3  ', '', 'K58810908001407', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 19, NULL),
(252, '3805324', 'A17.07.015.4', '', 'M482090803005', 'XTRATECH', 'M482', '', 'Mouse', '', '', 36, NULL),
(253, '3805323', 'A17.07.015.1', '', 'W7006S-97F1569-01462B', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 77, NULL),
(254, '3805351', 'A17.07.006.3 ', '', 'K58810908001779', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 66, NULL),
(255, '3805350', 'A17.07.013.4  ', '', 'M482090801219', 'XTRATECH', 'M482', '', 'Mouse', '', '', 22, NULL),
(256, '3805349', 'A17.02.1.007.1', '', 'W7006S-97F1569-00246A', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 10, NULL),
(257, '3805313', 'S/N', '', 'M482090802989', 'XTRATECH', 'M482', '', 'Mouse', '', '', 21, NULL),
(258, '3805314', 'A17.02.1.007.3', '', 'K58810908001407', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 22, NULL),
(259, '3773566', 'A17.07.1.41', '', 'PSJ16030128', 'CISCO', '877-M', '', 'Switch', '', '', 24, NULL),
(260, '(8004)20000474874', 'A17.07.002.1', '', 'W7006S-97F1728-000104', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 51, NULL),
(261, '3805306', 'A17.07.1.021.3', '', 'TECUSB-232', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 40, NULL),
(262, '3805305', 'A17.07.1.020.4', '', 'MSEUSB-125', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 9, NULL),
(263, '3805304', 'A17.07.1.20.1', '', 'AFZB2HA052095', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 38, NULL),
(264, '', 'A17.07.1.017', '', 'F3TP299000218', 'DLINK', 'DIR615', '', 'Router', '', '', 78, NULL),
(265, '3805286', 'A17.07.003.1', '', 'W7006S97F156902021B', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 10, NULL),
(266, '(8004)20000474850', '00.23.3.8.1164.3', '', 'K58810908001159', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 22, NULL),
(267, '3805288', 'A17.07.004.4', '', 'M482090800965', 'XTRATECH', 'M482', '', 'Mouse', '', '', 74, NULL),
(268, '3805287', 'A17.07.013.1', '', 'W7006S-97F1569-014337', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 15, NULL),
(269, '(8004)20000474881', 'A17.07.011.3', '', 'K58810908001410', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 27, NULL),
(270, '3773593', 'A17.05.1.104.2', '', '293127', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 1, NULL),
(271, '3805389', 'A17.05.1.104.1', '', 'W7006S-97F1569-00331B', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 8, NULL),
(272, '3805391', 'A17.05.1.104.3   ', '', 'K58810908000612', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 26, NULL),
(273, '3805390', 'A17.01.1.026.4', '', 'MSEUSB-154', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 40, NULL),
(274, '3773625', 'A17.01.004.2', '', '292869', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 81, NULL),
(275, '3805467', 'A17.01.004.1', '', 'W7006S-97F1569-01468H', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 67, NULL),
(276, '3805469', 'A17.01.010.3', '', 'K58810908000540', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 52, NULL),
(277, '3805468', 'A17.01.004.4   ', '', 'M482090800333', 'XTRATECH', 'M482', '', 'Mouse', '', '', 67, NULL),
(278, '3773602', 'A17.01.1.020.2', '', '294559', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 4, NULL),
(279, '3805406', 'A17.01.1.020.1', '', 'W7006S-97F1569-01239J', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 47, NULL),
(280, '3805408', 'A17.01.1.027.3', '', 'TECUSB-209', 'AGX PLUS', 'MSEUSB', '', 'Teclado', '', '', 58, NULL),
(281, '3805407', 'A17.01.020.4  ', '', 'M482090800975', 'XTRATECH', 'M482', '', 'Mouse', '', '', 27, NULL),
(282, '3773606', 'A17.01.1.021.2', '', '293079', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 72, NULL),
(283, '3805413', 'A17.01.10.78', '', 'W7006S-97F1569-002246', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 51, NULL),
(284, '3805415', 'A17.01.021.3 ', '', 'K58810908001146', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 24, NULL),
(285, '3805414', 'A17.01.1.067.4', '', 'M482090802656', 'XTRATECH', 'M482', '', 'Mouse', '', '', 40, NULL),
(286, '3773609', 'A17.01.1.018.2', '', '294496', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 54, NULL),
(287, '3805421', 'A17.01.018.1', '', 'W7006S-97F1569-015439', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 52, NULL),
(288, '3805423', 'A17.01.1.018.3   ', '', 'K58810908001563', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 65, NULL),
(289, '3805422', 'A17.01.005.4', '', 'M482090800954', 'XTRATECH', 'M482', '', 'Mouse', '', '', 68, NULL),
(290, '3773612', 'A17.01.005.2', '', '293292', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 35, NULL),
(291, '3805428', 'A17.01.005.1', '', 'W7006S-97F1569-021045', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 64, NULL),
(292, '3805430', 'A17.01.005.3   ', '', 'K58810908001085', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 14, NULL),
(293, '3805429', 'A17.01.009.4   ', '', 'M482090803933', 'XTRATECH', 'M482', '', 'Mouse', '', '', 64, NULL),
(294, '3805501', 'A17.01.008.1', '', 'W7006S97F156901716B', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 74, NULL),
(295, '3805460', 'A17.01.008.3   ', '', 'K58810908000589', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 57, NULL),
(296, '3805459', 'A17.06.2.008.4', '', 'M4820908003953', 'XTRATECH', 'M482', '', 'Mouse', '', '', 51, NULL),
(297, '3773621', 'A17.01.1.027.2', '', 'CPUAGX-261', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 76, NULL),
(298, '3805454', 'A17.01.1.024.1', '', 'AFZB2HA049889', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 25, NULL),
(299, '3805456', 'A17.01.1.025.3', '', 'K58810908001343', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 28, NULL),
(300, '3805455', 'A17.01.1.024.4', '', 'MSEUSB-156', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 11, NULL),
(301, '3773620', 'A17.01.1.023.2', '', 'CPUAGX-071', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 36, NULL),
(302, '3805451', 'A17.61.1.026.1', '', 'AFZB2HA049957', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 57, NULL),
(303, '3805452', 'A17.01.1.023.3', '', 'TECUSB-208', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 42, NULL),
(304, 'S/N', 'A17.01.1.023.4', '', 'MSEUSB-261', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 8, NULL),
(305, '3773619', 'A17.01.1.019.2', '', '294562', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 79, NULL),
(306, '3805449', 'A17.01.1.019.3', '', 'K58810908000023', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 65, NULL),
(307, '3805448', 'A17.05.1.104.4   ', '', 'M482090800917', 'XTRATECH', 'M482', '', 'Mouse', '', '', 13, NULL),
(308, '3805445', 'A17.06.1.12.3', '', 'K58810908001415', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 15, NULL),
(309, '3805241', 'A17.06.1.12.4', '', 'M482090801192', 'XTRATECH', 'M482', '', 'Mouse', '', '', 30, NULL),
(310, '3773617', 'A17.1.2.006.2', '', '294471', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 8, NULL),
(311, '3794360', '00.33.25.21.4', '', 'FATSK0J9WZIGDO', 'HP', 'MOAFKOA', '', 'Mouse', '', '', 78, NULL),
(312, '3769359', 'A17.06.1.10.2', '', '294557', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 41, NULL),
(313, '3794358', 'A17.02.1.010.3  ', '', 'K58810908001158', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 38, NULL),
(314, '3794357', 'A17.02.1.008.4    ', '', 'M482090800968', 'XTRATECH', 'M482', '', 'Mouse', '', '', 41, NULL),
(315, '3794356', 'A17.02.1.018.1', '', 'W7006S-97F1569-012144', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 20, NULL),
(316, '3769364', 'A17.02.1.008.2', '', '293207', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 72, NULL),
(317, '', 'A17.02.1.008.3  ', '', 'K58810908000546', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 14, NULL),
(318, '3794364', 'A17.2.1.018.4  ', '', 'M482090802222', 'XTRATECH', 'M482', '', 'Mouse', '', '', 21, NULL),
(319, '3794343', 'A17.02.06.1.10.1', '', 'W7006S97F156904618', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 33, NULL),
(320, '3783315', '00.33.5572', '', '42211130183', 'NITGEN', 'NAC-2500 PLUS', '', 'Biometrico', '', '', 46, NULL),
(321, '3769347', 'A17.02.1.006.2', '', '292886', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 62, NULL),
(322, '3794338', 'A17.02.1.005.4   ', '', 'M482090801541', 'XTRATECH', 'M482', '', 'Mouse', '', '', 3, NULL),
(323, '3794337', 'A17.02.1.006.1', '', 'W7006S-97F1728-00052A', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 46, NULL),
(324, '3769349', 'A17.02.1.005.2', '', '293077', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 3, NULL),
(325, '3794342', '17.05.2.122.3', '', 'K51080903024843', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 1, NULL),
(326, '3794341', '00.48.6.1234.4', '', 'M4820908021', 'XTRATECH', 'M482', '', 'Mouse', '', '', 60, NULL),
(327, '3794340', 'A17.02.1.005.1', '', 'W7006S-97F1569-001065', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 3, NULL),
(328, '3769351', 'A17.02.1.018.2', '', '294522', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 73, NULL),
(329, '3794345', '00.05.120.9.3', '', 'K58810908000516', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 51, NULL),
(330, '3794344', 'A17.06.1.10.4  ', '', 'M482090802995', 'XTRATECH', 'M482', '', 'Mouse', '', '', 36, NULL),
(331, '3769353', 'A17.01.1.108.2', '', '294552', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 48, NULL),
(332, '3794348', 'A17.02.1.018.3', '', 'K58810908001245', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 5, NULL),
(333, '', 'S/N', '', 'FB7330AN3VH5UZU', 'HP', 'SBF96', '', 'Mouse', '', '', 39, NULL),
(334, '3794346', '17.01.1.108.1', '', 'W7006S-97F1569-004464', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 28, NULL),
(335, '3805440', 'A17.06.4.016.1', '', 'W7006S-97F1569-016775', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 17, NULL),
(336, '3769342', 'A17.02.1.010.2', '', '293093', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 46, NULL),
(337, '3805442', 'A17.01.1.025.3', '', 'TECUSB207', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 62, NULL),
(338, '3794349', 'A17.02.1.030.3', '', 'TECUSB230', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 46, NULL),
(339, '3794333', 'A17.02.1.010.4  ', '', 'M482090801497', 'XTRATECH', 'M482', '', 'Mouse', '', '', 66, NULL),
(340, '3794332', 'A17.02.1.010.1', '', 'W7006S97F156900349C', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 11, NULL),
(341, '3769344', 'BC.A17.02.03.180', '', '9033ABC3792F001715', 'TRIPPLITE', 'LC1800', '', 'Otro', '', '', 1, NULL),
(342, '3794352', 'A17.07.004.3', '', 'K58810908001084', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 61, NULL),
(343, '3794351', 'A17.02.1.007.4', '', 'M482090800956', 'XTRATECH', 'M482', '', 'Mouse', '', '', 18, NULL),
(344, '3794350', 'A17.07.011.1', '', 'W7006S97F1569019310', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 26, NULL),
(345, '3805384', 'A17.02.1.028.3', '', 'TECUSB-159', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 60, NULL),
(346, '3805441', 'C17.6.2.006.4', '', 'M482090802163', 'XTRATECH', 'M482', '', 'Mouse', '', '', 16, NULL),
(347, '3773634', 'A17.01.006.2', '', '293146', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 17, NULL),
(348, '3805494', 'A17.01.006.1', '', 'W7006S-97F1569-00186D', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 65, NULL),
(349, '3805496', 'A17.01.006.3   ', '', 'K58810908001414', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 38, NULL),
(350, '3805495', 'A17.01.006.4   ', '', 'M482090800477', 'XTRATECH', 'M482', '', 'Mouse', '', '', 82, NULL),
(351, '3773628', 'A17.01.007.2', '', '292898', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 47, NULL),
(352, '3805476', 'A17.01.007.1', '', 'W7006S-97F1569-02019G', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 48, NULL),
(353, '3805485', 'A17.01.007.3   ', '', 'K58810908000658', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 57, NULL),
(354, '3805477', 'A17.01.007.4', '', 'M482090802576', 'XTRATECH', 'M482', '', 'Mouse', '', '', 51, NULL),
(355, '3773596', 'A17.05.1.028.2', '', '292894', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 18, NULL),
(356, '3805397', 'A17.01.003.1', '', 'W7006S-97F1569-00971D', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 53, NULL),
(357, '3805404', '00.39.5.1538.3', '', 'K58810908001491', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 79, NULL),
(358, '3805400', 'A17.01.003.4   ', '', 'M482090800268', 'XTRATECH', 'M482', '', 'Mouse', '', '', 9, NULL),
(359, '', 'A17.02.1.009.2', '', '292861', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 11, NULL),
(360, '3769329', 'A17.02.1.022.2', '', 'CPUAGX134', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 13, NULL),
(361, '3769322', 'A17.02.1.021.2', '', 'CPUAGX-124', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 52, NULL),
(362, '3769324', 'A17.02.1.023.2', '', 'CPUAGX132', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 82, NULL),
(363, '3769323', 'A17.02.1.024.2', '', 'CPUAGX-145', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 81, NULL),
(364, '3773595', '00.33.1212.2', '', '293085', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 52, NULL),
(365, '3769325', 'A17.02.1.026.2', '', 'CPUAGX259', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 11, NULL),
(366, '3769309', 'A17.02.1.028.2', '', 'CPUAGX138', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 56, NULL),
(367, '3805398', '00.39.5.1538.1', '', 'W7006S-97F1569-01528C', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 2, NULL),
(368, '3805403', 'A17.01.003.3   ', '', 'K58810908000571', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 4, NULL),
(369, '3805399', '00.39.5.1538.4', '', 'M482090801184', 'XTRATECH', 'M482', '', 'Mouse', '', '', 17, NULL),
(370, '3769332', 'A17.02.1.029.2', '', 'CPUAGX146', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 48, NULL),
(371, '3769333', 'A17.02.1.031.2', '', 'CPUAGX105', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 34, NULL),
(372, '3769327', 'A17.02.1.032.2', '', 'CPUAGX133', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 38, NULL),
(373, '3769330', 'A17.02.1.033.2', '', 'CPUAGX101', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 63, NULL),
(374, '3769328', 'A17.02.1.020.2', '', 'CPUAGX097', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 5, NULL),
(375, '3769326', 'A17.02.1.027.2', '', 'CPUAGX137', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 58, NULL),
(376, '3769331', 'A17.02.1.030.2', '', 'CPUAGX120', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', NULL, NULL),
(377, '3769337', 'A17.02.72.1', '', 'MX211202T8', 'HP', 'ML-110', '', 'CPU', '', '', 36, NULL),
(378, '3769334', '00.05.1209.2', '', '293213', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 83, NULL),
(379, '3773632', '13.01.104', '', 'H10D8077', 'TOPAZ', 'T-LBK766-BHSB-R  ', '', 'Capturador de firma', '', '', 19, NULL),
(380, '3771998', 'A17.11.1.005.2', '', '294519', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 76, NULL),
(381, '3796921', 'A17.11.1.005.1', '', 'W7006S97F156901918B', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 33, NULL),
(382, '3796924', 'A17.11.1.005.3   ', '', 'K58810908001236', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 12, NULL),
(383, '3796922', 'A17.11.1.005.4 ', '', 'M482090802238', 'XTRATECH', 'M482', '', 'Mouse', '', '', 76, NULL),
(384, '3771989', 'A17.11.1.11.2', '', '294620', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 30, NULL),
(385, '3796890', '00.33.9.1187.1', '', 'W7006S97F1569020019', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 62, NULL),
(386, '3796909', '00.33.9.1187.3', '', 'K58810908001463', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 83, NULL),
(387, '3796906', '00.33.4.1187.4', '', 'M482090803952', 'XTRATECH', 'M482', '', 'Mouse', '', '', 60, NULL),
(388, '3772002', 'A17.11.1.003.2', '', '294436', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 29, NULL),
(389, '3796910', 'A17.11.1.11.1', '', 'W7006S97F156900497G', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 37, NULL),
(390, '3796913', 'A17.11.1.11.3', '', 'K58810908001489', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 59, NULL),
(391, '3796911', 'A17.11.1.11.4', '', 'M482090801198', 'XTRATECH', 'M482', '', 'Mouse', '', '', 64, NULL),
(392, '3771944', 'A17.11.1.001.2', '', '294477', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 58, NULL),
(393, '3796901', 'A17.11.1.003.1', '', 'W7006S97F156901097D', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 63, NULL),
(394, '3796903', 'A17.11.01.001.3', '', 'K58810908001347', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 17, NULL),
(395, '3796902', 'A17.11.1.001.4', '', 'M482090802167', 'XTRATECH', 'M482', '', 'Mouse', '', '', 58, NULL),
(396, '3772832', 'A17.11.1.027', '', '5120153', 'VIDEOLOGY', '24Z704USB-SYS', '', 'Camara', '', '', 41, NULL),
(397, '3771996', 'A17.11.1.037', '', 'H10D8069', 'TOPAZ', 'T-LBK766-BHSB-R  ', '', 'Capturador de firma', '', '', 49, NULL),
(398, '3771997', '00.33.9.1187.2', '', '294448', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 16, NULL),
(399, '', 'A17.11.1.001.1', '', 'W7006S97F1569014117', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 52, NULL),
(400, '3796292', 'A17.11.1.003.3', '', 'K58810908001388', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 59, NULL),
(401, 'S/N', 'A17.11.1.003.4', '', 'M482090802923', 'XTRATECH', 'M482', '', 'Mouse', '', '', 26, NULL),
(402, '3796930', 'BC.017.11.1.223.2', '', 'F3TP299000068', 'DLINK', 'Dir635', '', 'Router', '', '', 8, NULL),
(403, '3772009', 'BC.017.11.1.223.1', '', 'F3TP299000069', 'DLINK', 'Dir635', '', 'Router', '', '', 29, NULL),
(404, '3771922', 'A17.06.1.003.2', '', '293273', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 36, NULL),
(405, '3796895', 'A17.06.1.003.1', '', 'W7006S97F156901738F', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 1, NULL),
(406, '3796900', 'A17.06.4.016.3', '', 'K58810908001509', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 60, NULL),
(407, '3796897', 'A17.06.1.003.4', '', 'M482090802266', 'XTRATECH', 'M482', '', 'Mouse', '', '', 54, NULL),
(408, '3771993', 'A17.05.1.037.2', '', '293082', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 78, NULL),
(409, '3796894', 'A17.05.1.037.1', '', 'W7006S97F1728000027', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 20, NULL),
(410, '3796899', 'A17.05.1.037.3', '', 'K58810908001147', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 43, NULL),
(411, '3796898', 'A17.05.1.037.4', '', 'M482090801498', 'XTRATECH', 'M482', '', 'Mouse', '', '', 78, NULL),
(412, '3771991', 'A17.05.1.024.2', '', '293074', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 14, NULL),
(413, '3796896', 'A17.05.1.044.1', '', 'W7006S97F156900670B', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 44, NULL),
(414, 'S/N', '310.17.02.04.141.01.07.11(01)', '', 'BC3370BVBUH24N', 'HP', 'KB0316', '', 'Teclado', '', '', 17, NULL),
(415, '3796891', 'A17.05.1.044.4', '', 'M482090802337', 'XTRATECH', 'M482', '', 'Mouse', '', '', 36, NULL),
(416, '3772000', 'A17.05.1.034.2', '', '292861', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 50, NULL),
(417, '3796917', 'A17.05.1.024.1', '', 'W7006S97F156902078F', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 38, NULL),
(418, '3796919', 'A17.05.1.024.3', '', 'K58810908001110', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 8, NULL),
(419, '3796918', 'A17.05.1.024.4', '', 'M482090801510', 'XTRATECH', 'M482', '', 'Mouse', '', '', 69, NULL),
(420, '3769967', '17.01.1.100.2', '', '294446', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 47, NULL),
(421, '3795266', '17.01.1.100.1', '', 'W7006S-97F1569-007159', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 11, NULL),
(422, '3795268', '17.01.1.100.3', '', 'K58810908001495', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 12, NULL),
(423, '3795267', 'S/N', '', 'M482090803325', 'HP', 'M042KC', '', 'Mouse', '', '', 60, NULL),
(424, '', '17.01.98.2', '', 'MXJ817081S', 'HP', 'DC5800', '', 'CPU', '', '', 1, NULL),
(425, '3794532', 'BC.17.24.126', '', 'CNC808PVYG', 'HP', 'L1506', '', 'Pantalla', '', '', 55, NULL),
(426, '', 'S/N', '', 'P0508073434', 'HP', 'M042KC', '', 'Mouse', '', '', 66, NULL),
(427, '', 'S/N', '', '434820-161', 'HP', 'SK1688', '', 'Teclado', '', '', 37, NULL),
(428, '3770047', 'S/N', '', '294507', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 60, NULL),
(429, '3795460', 'A17.01.1.106.1', '', 'W7006S-97F1569-0172F', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 76, NULL),
(430, '3795461', '17.01.1.106.3', '', 'K58810908000788', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 21, NULL),
(431, 'S/N', 'BC.17.05.117', '', 'M482090802470', 'XTRATECH', 'M482', '', 'Mouse', '', '', NULL, NULL),
(432, '3770048', 'A17.05.1.110.2', '', '293365', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 65, NULL),
(433, '3795462', 'A17.05.1.110.1', '', 'W7006S-97F1569-01437B', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 22, NULL),
(434, '3795464', 'A17.05.1.110.3', '', 'K58810908001433', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 68, NULL),
(435, '3795463', 'A17.05.1.110.4', '', 'M482090803359', 'XTRATECH', 'M482', '', 'Mouse', '', '', 63, NULL),
(436, '3769840', '00.33.5157', '', 'EG320926', 'CANON', 'DR-3010C', '', 'Scaner', '', '', 5, NULL),
(437, '3795276', 'A17.05.01.036.2', '', '293191', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 31, NULL),
(438, '3795278', 'A17.05.1.041.1', '', 'W7006S-97F1569-014896', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 2, NULL),
(439, '', '310.17.02.35.141.01.07.11.(13)', '', 'ZM7502103257', 'GENIUS', 'K639', '', 'Teclado', '', '', 72, NULL),
(440, '3795279', 'S/N', '', 'M482090800351', 'XTRATECH', 'M482', '', 'Mouse', '', '', 53, NULL),
(441, '3769978', '00.33.12.76.2', '', '294433', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 81, NULL),
(442, '3795293', 'A17.05.1.031.1', '', 'W7006S-97F1728-000014', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 16, NULL),
(443, '3795295', 'A17.05.1.091.3', '', 'K58810908001239', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 23, NULL),
(444, '3795294', 'A17.05.1.028.4', '', 'M482090802578', 'XTRATECH', 'M482', '', 'Mouse', '', '', 10, NULL),
(445, '3769976', '00.33.1284.2', '', '293040', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 22, NULL),
(446, '3795290', 'A17.05.1.0381', '', 'W7006S-97F1569-02165A', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 71, NULL),
(447, '3795238', 'A17.05.1.115.3', '', 'K58810908001381', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 42, NULL),
(448, '3795291', 'A17.05.1.094.4', '', 'M482090801418', 'XTRATECH', 'M482', '', 'Mouse', '', '', 61, NULL),
(449, '3769975', 'A17.05.1.038.2', '', '293205', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 70, NULL),
(450, '3795287', 'A17.05.1.052.1', '', 'W7006S-97F1569-00915F', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 21, NULL),
(451, '3795289', 'A17.05.1.038.3', '', 'K58810908000543', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 62, NULL),
(452, '3795288', 'A17.05.01.093.4', '', 'M482090800915', 'XTRATECH', 'M482', '', 'Mouse', '', '', 64, NULL),
(453, '3769969', 'A17.05.1.052.2', '', '293015', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 70, NULL),
(454, '', '310.17.02.35.141.01.07.07(08)', '', 'PE17HVZP223234W', 'SAMSUNG', 'SAMSUNG', '', 'Pantalla', '', '', 51, NULL),
(455, '3795264', 'A17.05.1.092.3', '', 'K58810908001671', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 7, NULL),
(456, '3795270', 'S/N', '', '1,42E+11', 'GENIUS', 'NETSCROLL 120', '', 'Mouse', '', '', 49, NULL),
(457, '3795284', 'A17.05.01.092.1', '', 'W7006S-97F1569-00683F', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 24, NULL),
(458, '3795261', 'S/C', '', 'K58811006001552', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 43, NULL),
(459, '', 'S/N', '', '1,42E+11', 'XTRATECH', 'M482', '', 'Mouse', '', '', 82, NULL),
(460, '3769972', 'A17.05.1.11.6.3', '', '294413', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 82, NULL),
(461, '3795281', 'A17.05.01.94.1', '', 'W7006S-97F1569-019640', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 57, NULL),
(462, '', '310.17.02.35.141.01.07.11.(16)', '', 'ZM7502103248', 'GENIUS', 'K639', '', 'Teclado', '', '', 41, NULL),
(463, '3795282', 'A17.05.1.092.4', '', 'M482090803788', 'XTRATECH', 'M482', '', 'Mouse', '', '', 37, NULL),
(464, '3769964', 'A17.05.1.046.2', '', '293398', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 6, NULL),
(465, '3795259', 'A17.05.1.032.1', '', 'W7006S-97F1728-000324', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 6, NULL),
(466, '', 'A17.05.1.093.3', '', 'K58810908000616', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 60, NULL);
INSERT INTO `equipostecnologicos` (`idequipo`, `cod_avaluac`, `cod_ant`, `cod_esbye`, `serie`, `marca`, `modelo`, `anio`, `descripcion`, `color`, `observacion`, `custodios_idcustodio`, `tickets_idticket`) VALUES
(467, '', 'S/N', '', 'M482090803943', 'XTRATECH', 'M482', '', 'Mouse', '', '', 83, NULL),
(468, '3769965', 'A17.05.01.001.2', '', '294524', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 54, NULL),
(469, '3795262', 'S/N', '', 'W7006S-97F1569-003291', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 22, NULL),
(470, '', '310.17.02.03.141.01.07.11.06', '', 'ZM2C00090427', 'GENIUS', 'K639', '', 'Teclado', '', '', 67, NULL),
(471, '3795263', 'A17.05.1.091.4', '', 'M482090802256', 'XTRATECH', 'M482', '', 'Mouse', '', '', 50, NULL),
(472, '3769968', 'A17.05.1.031.2', '', '293057', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 18, NULL),
(473, '', '310.17.02.35.141.01.07.07(20)', '', 'HA17H9NP8165481P', 'SAMSUNG', 'S/M', '', 'Pantalla', '', '', 63, NULL),
(474, '', '310.17.02.03.141.01.07.11(02)', '', 'ZM7402137783', 'GENIUS', 'K639', '', 'Teclado', '', '', 50, NULL),
(475, '3795269', 'A17.05.1.115.4', '', 'M482090800936', 'XTRATECH', 'M482', '', 'Mouse', '', '', 69, NULL),
(476, '8,00E+13', 'A17.05.1.048.2', '', '293027', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 69, NULL),
(477, '3796939', 'A17.03.1.009.1', '', 'W7006S-97F1728-000508', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 66, NULL),
(478, '3796955', 'A17.03.1.009.3', '', 'K58810908000707', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 31, NULL),
(479, '(8004)2000136932', '', '', 'M482090800356', 'XTRATECH', 'M482', '', 'Mouse', '', '', 21, NULL),
(480, '3772011', 'A17.06.4.016.2', '', '294493', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 53, NULL),
(481, '3796940', 'A17.06.1.002.1', '', 'W7006S-97F1569-017217', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 56, NULL),
(482, '3796956', 'A17.03.1.011.3', '', 'K58810908000596', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 53, NULL),
(483, '3796942', '8,00E+13', '', '1,41E+11', 'XTRATECH', 'M482', '', 'Mouse', '', '', 33, NULL),
(484, '3772015', 'A17.05.1.030.2', '', '293055', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 44, NULL),
(485, '3796935', 'A17.05.1.030.1', '', 'W7006S-97F1569-004608', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 44, NULL),
(486, '3796951', '00.16.1092.3', '', 'K58810908001504', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 81, NULL),
(487, '3796948', '00.16.1092.4', '', 'M482090803311', 'XTRATECH', 'M482', '', 'Mouse', '', '', 28, NULL),
(488, '3772013', 'A17.03.1.011.2', '', '293221', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 4, NULL),
(489, '3796937', 'A17.03.1.008.1', '', 'W7006S-97F1569-02148D', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 1, NULL),
(490, '3796952', 'A17.05.1.041.3', '', 'K58810908000495', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 81, NULL),
(491, '3796946', '00.10.2.1320.4', '', 'M482090802928', 'XTRATECH', 'M482', '', 'Mouse', '', '', NULL, NULL),
(492, '3772014', 'A17.03.1.010.2', '', '292851', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 36, NULL),
(493, '3796936', '00.16.1092.1', '', 'W7006S-97F1569-02031A', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 49, NULL),
(494, '3796953', 'A17.05.1.030.3', '', 'K58810908000528', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 50, NULL),
(495, '3796947', 'A17.06.1.9.4', '', 'M482090803866', 'XTRATECH', 'M482', '', 'Mouse', '', '', 54, NULL),
(496, '3772016', 'A17.03.1.008.2', '', '292874', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 19, NULL),
(497, '(8004)2000136611', 'A17.06.2.006.1', '', 'W7006S-97F1569-01394D', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 83, NULL),
(498, '3796954', 'BC.A17.03.2.205', '', '19070164027', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 29, NULL),
(499, '3796945', '(8004)2000136635', '', ' M482090800357', 'XTRATECH', 'M482', '', 'Mouse', '', '', 39, NULL),
(500, '3772020', 'A17.05.01.094.2', '', '293042', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 59, NULL),
(501, '(8004)2000169985', 'A17.03.043.2', '', 'MXL13810QV', 'HP', '6200 PRO', '', 'CPU', '', '', 43, NULL),
(502, '3796964', 'A17.03.043.1', '', 'CNC121RL6S', 'HP', 'S1933', '', 'Pantalla', '', '', 12, NULL),
(503, '(8004)2000170004', 'A17.03.043.3', '', 'BAUDU0KVBOMRFV', 'HP', 'KB-0316', '', 'Teclado', '', '', 6, NULL),
(504, '3796965', '  A17.03.043.4', '', ' FATSQ0E671B7K2', 'HP', 'MOAFKOA', '', 'Mouse', '', '', 6, NULL),
(505, '3772018', 'A17.03.042.2', '', 'MXL13810RV', 'HP', '6200 PRO', '', 'CPU', '', '', 80, NULL),
(506, '3796958', 'A17.03.042.1', '', 'CNC118SGM9', 'HP', 'S1933', '', 'Pantalla', '', '', 60, NULL),
(507, '3796960', 'A17.03.042.3', '', 'BAUDU0OVBOV28Q', 'HP', 'KB-0316', '', 'Teclado', '', '', 1, NULL),
(508, '3796959', 'A17.03.042.4', '', 'FATSQ0E671B7QY', 'HP', 'MOAFKOA', '', 'Mouse', '', '', NULL, NULL),
(509, '', '00.10.2.1310.3', '', 'K58810908001360', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 8, NULL),
(510, '3769451', 'A17.03.041.2', '', 'MXL1381CYW', 'HP', '6200 PRO', '', 'CPU', '', '', 83, NULL),
(511, '3796961', 'A17.03.041.1', '', 'CNC121RLJD', 'HP', 'S1933', '', 'Pantalla', '', '', 23, NULL),
(512, '3796963', 'A17.03.041.3', '', 'BAUDU0OVB0V18I', 'HP', 'KB-0316', '', 'Teclado', '', '', 49, NULL),
(513, '3796962', 'A17.03.041.4', '', 'FATSQ0E670YAY9', 'HP', 'MOAFKOA', '', 'Mouse', '', '', 53, NULL),
(514, '3769235', '00.33.4717.2', '', 'HBJ6PW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 73, NULL),
(515, '3769237', '00.33.4717.1', '', 'CN06JX4Y641802B52APL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 51, NULL),
(516, '3794132', '00.33.4717.3', '', 'CN0C639N716162B90H38A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 52, NULL),
(517, '3794105', '00.33.4717.4', '', 'CN09RRC7487232AI05W', 'DELL', 'MS111L', '', 'Mouse', '', '', 12, NULL),
(518, '3769248', 'A17.04.036.2', '', 'MXL1381K43', 'HP', '6200 PRO', '', 'CPU', '', '', 23, NULL),
(519, '3794133', 'A17.04.04.1', '', 'CNC109RYVY', 'HP', 'S1933', '', 'Pantalla', '', '', 73, NULL),
(520, '', 'A17.04.036.4', '', 'FATSQ0E5F215G6', 'HP', 'M-SBN96', '', 'Mouse', '', '', 34, NULL),
(521, '3769250', 'A17.04.003.2', '', '293110', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 62, NULL),
(522, '3794129', 'A17.04.003.1', '', 'W7006S97F156902084C', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 31, NULL),
(523, '3794135', 'A17.01.1.0011.3  ', '', 'B28980LGAMH86F', 'COMPAQ', 'S5500', '', 'Teclado', '', '', 10, NULL),
(524, '3794134', 'A17.04.003.4  ', '', 'M482090800266', 'XTRATECH', 'M482', '', 'Mouse', '', '', 18, NULL),
(525, '3769244', 'A17.04.035.2', '', 'MXL13813XJ', 'HP', '6200 PRO', '', 'CPU', '', '', NULL, NULL),
(526, '3794121', 'A17.04.035.1', '', 'CNC121RLBJ', 'HP', 'S1933', '', 'Pantalla', '', '', 83, NULL),
(527, '3769953', '00.33.4712.2', '', 'HDQ5PW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 30, NULL),
(528, '3769955', '00.33.4712.1', '', 'CN-06JX4Y-64180-2B5-3OYL', 'DELL', 'E1913C', '', 'Pantalla', '', '', 15, NULL),
(529, '3795242', '00.33.4712.3', '', 'CN-0C639N-71616-2B9-0KC3', 'DELL', 'KB212-B', '', 'Teclado', '', '', 58, NULL),
(530, '3795240', '00.33.4712.4', '', 'CN-09RRC7-48723-2AJ-023G', 'DELL', 'MS111L', '', 'Mouse', '', '', 38, NULL),
(531, '3794122', 'A17.04.035.4', '', 'FATSQ0ECU21BOK', 'HP', 'M-SBN96', '', 'Mouse', '', '', 26, NULL),
(532, '3769240', 'A17.04.034.2', '', 'MXL13817WZ', 'HP', '6200 PRO', '', 'CPU', '', '', 15, NULL),
(533, '**', 'A17.04.034.1', '', 'CNC107QJMT', 'HP', 'S1933', '', 'Pantalla', '', '', 5, NULL),
(534, '**', 'A17.04.004.3', '', 'K58810908000526', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 19, NULL),
(535, '**', '', '', 'LZB21753690', 'HP', 'M-SBN96', '', 'Mouse', '', '', 42, NULL),
(536, '3769956', 'A17.03.1.007.2', '', '292864', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 27, NULL),
(537, '3769238', 'A17.04.033.2', '', 'MXL13813Q5', 'HP', '6200 PRO', '', 'CPU', '', '', 37, NULL),
(538, '3794109', 'A17.04.033.1', '', 'CNC121RLG1', 'HP', 'S1933', '', 'Pantalla', '', '', 5, NULL),
(539, '40333', 'A17.04.033.3', '', 'BAUDU0OVBOV4FY', 'HP', 'KB-0316', '', 'Teclado', '', '', 78, NULL),
(540, '', '', '', 'X80899100767', 'GENIUS', 'GM03022P', '', 'Mouse', '', '', 28, NULL),
(541, '3769246', 'A17.09.005.2', '', '293186', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 11, NULL),
(542, '3794125', 'A17.09.007.1', '', 'W7006S97F156900707A', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 16, NULL),
(543, '3794127', 'A17.09.005.3', '', 'K58810908001535', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 12, NULL),
(544, '3794126', '', '', 'M482090800460', 'XTRATECH', 'M482', '', 'Mouse', '', '', 77, NULL),
(545, '3769228', 'A17.04.005.2', '', '293103', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 48, NULL),
(546, '3794089', 'A17.04.005.1', '', 'W7006S97F156900007A', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 37, NULL),
(547, '3794091', 'A17.04.005.3    ', '', 'K58810908000569', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 68, NULL),
(548, '3794090', 'A17.04.005.4    ', '', 'M482090800263', 'XTRATECH', 'M482', '', 'Mouse', '', '', 10, NULL),
(549, '3769232', 'A17.04.1.011.2', '', '293367', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 13, NULL),
(550, '3794097', 'A17.04.1.012.1', '', 'W7006S97F1569003669', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 70, NULL),
(551, '3794103', 'A17.04.1.012.3', '', 'K58810908000926', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 70, NULL),
(552, '3794099', '', '', 'M482090803360', 'XTRATECH', 'M482', '', 'Mouse', '', '', 70, NULL),
(553, '3769234', 'A17.04.1.012.2', '', '293374', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 49, NULL),
(554, '3794095', 'A17.04.1.011.1', '', 'W7006S97F1569011244', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 49, NULL),
(555, '3794102', '', '', '3073073', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 81, NULL),
(556, '', '', '', 'X80899100767', 'GENIUS', 'GM03022P', '', 'Mouse', '', '', 82, NULL),
(557, '3769233', 'A17.04.004.2', '', '293056', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 32, NULL),
(558, '3794114', 'A17.04.004.1', '', 'W7006S97F156902094D', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 77, NULL),
(559, '3794104', 'A17.04.036.3', '', 'BAUDU0OVBOV52H', 'HP', 'KB-0316', '', 'Teclado', '', '', 42, NULL),
(560, '3794100', 'A17.04.034.4', '', 'FATSQ0E671B3L7', 'HP', 'M-SBN96', '', 'Mouse', '', '', 42, NULL),
(561, '', '', '', '292359', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 36, NULL),
(562, '', '', '', 'K58810908000139', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 74, NULL),
(563, '*', 'A17.04.1.016.2', '', 'CPUAGX-065', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 39, NULL),
(564, '*', 'A17.04.1.017.2', '', 'CPUAGX-028', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 83, NULL),
(565, 'S/N', 'A17.04.1.018.2', '', 'CPUAGX-055', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 26, NULL),
(566, '*', 'A17.04.1.019.2', '', 'CPUAGX-008', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 58, NULL),
(567, '*', 'A17.04.1.020.2', '', 'CPUAGX192', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 23, NULL),
(568, '*', 'A17.04.1.016.3', '', 'TECUSB198', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 44, NULL),
(569, '*', 'A17.04.1.017.3', '', 'TECUSB204', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 77, NULL),
(570, '3794113', 'A17.04.1.018.3', '', 'TECUSB210', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 3, NULL),
(571, '3794116', 'A17.04.1.019.3', '', 'TECUSB211', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 3, NULL),
(572, '*', 'A17.04.1.020.3', '', 'TECUSB245', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 41, NULL),
(573, '*', 'A17.04.1.016.4', '', 'MSEUSB158', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 5, NULL),
(574, '', 'A17.04.1.017.4', '', 'MSEUSB113', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 76, NULL),
(575, '*', 'A17.04.1.018.4', '', 'MSEUSB257', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 67, NULL),
(576, '3794118', 'A17.04.1.019.4', '', 'MSEUSB105', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 5, NULL),
(577, '', 'A17.04.1.020.4', '', 'MSEUSB171', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 78, NULL),
(578, '*', 'A17.04.1.016.1', '', 'AFZB2HA050160', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 66, NULL),
(579, 'S/N', 'A17.04.1.017.1', '', 'AFZB2HA050848', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 67, NULL),
(580, '*', 'A17.04.1.018.1', '', 'AFZB2HA050742', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 83, NULL),
(581, '*', 'A17.04.1.019.1', '', 'AFZB2HA050760', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', NULL, NULL),
(582, '*', 'A17.04.1.020.1', '', 'AFZB2HA050142', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 7, NULL),
(583, '', '', '', 'W7006S97F156900807D', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 24, NULL),
(584, '3794108', 'A17.04.003.3    ', '', 'K58810908000573', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 44, NULL),
(585, '3794098', '', '', '1,41E+11', 'GENIUS', 'GM03022P', '', 'Mouse', '', '', 10, NULL),
(586, '', '', '', 'M482090800142', 'XTRATECH', 'W7006S', '', 'Mouse', '', '', 76, NULL),
(587, '3794130', 'A17.04.1.011.4  ', '', 'M482090801416', 'XTRATECH', 'W7006S', '', 'Mouse', '', '', 18, NULL),
(588, '3794101', 'BC.A17.04.1.223.2', '', 'F3TP299000379', 'DLINK', 'DIR-615', '', 'Router Modem MIFI', '', '', 23, NULL),
(589, '3794123', 'BC.A17.04.1.225.1', '', 'F3TP299000377', 'DLINK', 'DIR-615', '', 'Router Modem MIFI', '', '', 77, NULL),
(590, '3794112', '', '', 'PL27285040296', 'DLINK', 'DES-1008A', '', 'Switch', '', '', 26, NULL),
(591, '', '', '', 'CN25BWN6HM', 'HP', 'V1905', '', 'Switch', '', '', 3, NULL),
(592, '', '00.33.5387', '', 'J13E973', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 31, NULL),
(593, '3794339', 'A17.02.1.005.3      ', '', 'K58810908001138', 'XTRATECH', 'W7006S', '', 'Teclado', '', '', 79, NULL),
(594, '', 'A17.02.1.009.3     ', '', 'K58810908001409', 'XTRATECH', 'W7006S', '', 'Teclado', '', '', 45, NULL),
(595, 'S/N', '17.02.1.006.3', '', 'K58810908000792', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 35, NULL),
(596, '3794355', 'A17.02.1.020.3', '', 'TECUSB233', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 8, NULL),
(597, '3794298', 'A17.02.1.021.3', '', 'TECUSB-176', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 18, NULL),
(598, '3794320', 'A17.02.1.022.3', '', 'TECUSB-158', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 46, NULL),
(599, '3794296', 'A17.02.1.023.3', '', 'TECUSB157', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 46, NULL),
(600, '3794322', 'A17.02.1.024.3', '', 'TECUSB-156', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 21, NULL),
(601, '3794297', 'A17.02.1.025.3', '', 'TECUSB175', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 27, NULL),
(602, '3794321', 'A17.02.1.026.3', '', 'TECUSB-161', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 5, NULL),
(603, '3794254', 'A17.02.1.027.3', '', 'TECUSB160', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 36, NULL),
(604, '3794317', 'A17.02.1.029.3', '', 'TECUSB231', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 78, NULL),
(605, '3794316', 'A17.02.1.031.3', '', 'TECUSB234', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 71, NULL),
(606, '3794318', 'A17.02.1.032.3', '', 'TECUSB241', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 66, NULL),
(607, '3794319', 'A17.02.1.033.3', '', 'TECUSB225', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 62, NULL),
(608, '3794330', 'A17.02.72.2', '', 'BAUDR0IKVZS58C', 'HP', 'KB0316', '', 'Teclado', '', '', 82, NULL),
(609, '3794329', 'A17.06.1.10.3', '', 'K58810908000843', 'XTRATECH', 'W7006S', '', 'Teclado', '', '', 73, NULL),
(610, '', '00.48.6.1235.3', '', 'K58810908001483', 'XTRATECH', 'W7006S', '', 'Teclado', '', '', 62, NULL),
(611, '', 'BC.A17.05.03.236', '', 'NW223NXT541005100367', 'Nexxt', 'S/M', '', 'Switch', '', '', 19, NULL),
(612, '', '(8004)2000415099', '', 'PL27285001505', 'DLINK', 'DES-1008A', '', 'Switch', '', '', 55, NULL),
(613, '3769456', '(8004)2000415112', '', 'CN25BWN6CG', 'HP', 'V1905-24 ', '', 'Switch', '', '', 22, NULL),
(614, '3794354', 'A17.02.1.006.4    ', '', 'M482090802567', 'XTRATECH', 'M482', '', 'Mouse', '', '', 11, NULL),
(615, '', 'A17.02.1.009.4    ', '', 'M482090800360', 'XTRATECH', 'M482', '', 'Mouse', '', '', 13, NULL),
(616, '3794310', 'A17.02.1.020.4', '', 'MSEUSB233', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 11, NULL),
(617, '3794311', 'A17.02.1.022.4', '', 'MSEUSB-115', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 28, NULL),
(618, '3794294', 'A17.02.1.023.4', '', 'MSEUSB051', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 37, NULL),
(619, '3794308', 'A17.02.1.024.4', '', 'MSEUSB-009', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 21, NULL),
(620, '3794295', 'A17.02.1.025.4', '', 'MSEUSB121', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 9, NULL),
(621, '3794293', 'A17.02.1.026.4', '', 'MSEUSB097', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 23, NULL),
(622, '3794312', 'A17.02.1.027.4', '', 'MSEUSB-032', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 76, NULL),
(623, '3794253', 'A17.02.1.028.4', '', 'MSEUSB148', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 43, NULL),
(624, '3794313', 'A17.02.1.029.4', '', 'MSEUSB006', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 55, NULL),
(625, '3794326', 'A17.02.1.030.4', '', 'MSEUSB162', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 47, NULL),
(626, '3794314', 'A17.02.1.031.4', '', 'MSEUSB157', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 26, NULL),
(627, '3794315', 'A17.02.1.032.4', '', 'MSEUSB167', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 42, NULL),
(628, '3794309', 'A17.02.1.033.4', '', 'MSEUSB208', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 29, NULL),
(629, '3794280', 'A17.02.72.3', '', 'F93AA0WN3ZD0IFP', 'HP', 'M-SBN96', '', 'Mouse', '', '', 10, NULL),
(630, '3794525', '00.33.1993.4', '', 'FATSK0KFZZC80E', 'HP', 'MUAE96', '', 'Mouse', '', '', 57, NULL),
(631, '', 'A17.02.1.009.1', '', 'W7006S-97F1569-021810', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 72, NULL),
(632, '3794323', '00.05.1209.1', '', 'W7006S-97F1569-01428D', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 60, NULL),
(633, '3794304', 'A17.02.1.020.1', '', 'AFZB2HA052123', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 40, NULL),
(634, '3794291', 'A17.02.1.021.1', '', 'AFZB2HA050844', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 78, NULL),
(635, '3794303', 'A17.02.1.022.1', '', 'AFZB2HA050774', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 41, NULL),
(636, '3794290', 'A17.02.1.023.1', '', 'AFZB2HA052106', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 6, NULL),
(637, '3794307', 'A17.02.1.024.1', '', 'AFZB2HA050775', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 65, NULL),
(638, '3794306', 'A17.02.1.025.1', '', 'AFZB2HA050614', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 79, NULL),
(639, '3794289', 'A17.02.1.026.1', '', 'AFZB2HA050750', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 54, NULL),
(640, '3794279', 'A17.02.1.027.1', '', 'AFZB2HA050756', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 36, NULL),
(641, '3794252', 'A17.02.1.028.1', '', 'AFZB2HA050837', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 45, NULL),
(642, '3794300', 'A17.02.1.029.1', '', 'AFZB2HA050856', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 81, NULL),
(643, '3794301', 'A17.02.1.030.1', '', 'AFZB2HA050150', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 14, NULL),
(644, '3794299', 'A17.02.1.031.1', '', 'AFZB2HA052101', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 75, NULL),
(645, '3794305', 'A17.02.1.032.1', '', 'AFZB2HA049918', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 6, NULL),
(646, '3794302', 'A17.02.1.033.1', '', 'AFZB2HA051180', 'AOC', 'N936Sw', '', 'Pantalla', '', '', NULL, NULL),
(647, '', 'A17.021.009.1', '', 'W7006S-97F1569-02181G', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 32, NULL),
(648, '', '00.33.2521.1', '', 'CNK0350DY5', 'HP', 'LE1911', '', 'Pantalla', '', '', 26, NULL),
(649, '3794353', '00.48.6.1235.1', '', 'W7006S-97F1569-01493D', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 80, NULL),
(650, '', '', '', 'CN25BWN48B', 'HP', 'V1905', '', 'Switch', '', '', 46, NULL),
(651, '3794327', 'BC.A17.02.1.223', '', 'F3TP299000300', 'DLINK', 'DIR615', '', 'Router', '', '', 74, NULL),
(652, '', '01.01.074', '', '5120147', 'VIDEOLOGY', '24Z704USB-SYS', '', 'Camara', '', '', 41, NULL),
(653, '', '01.01.075', '', 'H10D8072', 'TOPAZ', 'T-LBK766-BHSB-R  ', '', 'Capturador de firma', '', '', 29, NULL),
(654, '(8004)2004248983', '  00.33.6229 ', '', '1411LZ00V4C9', 'LOGITECH', 'C920', '', 'Camara', '', '', 27, NULL),
(655, '', '00.33.6230 ', '', '1411LZ00V4B9', 'LOGITECH', 'C920', '', 'Camara', 'NEGRO', 'USADO-REGULAR', 34, NULL),
(656, '520254', '00.33.6305', '', '1411LZ00UWC9', 'LOGITECH', 'C920', '', 'Camara', '', '', 39, NULL),
(657, '520266', '00.33.6293', '', '1411LZ00UV89', 'LOGITECH', 'C920', '', 'Camara', '', '', 23, NULL),
(658, '520582', '00.33.5803 ', '', 'N14A1461', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 19, NULL),
(659, '520430', '00.33.5955 ', '', 'N13L9322', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 73, NULL),
(660, '(8004)2000436964', '00.33.5797 ', '', 'N14A1460', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 61, NULL),
(661, '(8004)2000436919', '00.33.5796 ', '', 'N14A1459', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 65, NULL),
(662, '520142', '00.33.6069', '', 'H38140401217', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 66, NULL),
(663, '520140', ' 00.33.6071 ', '', 'H38140401215', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 30, NULL),
(664, '(8004)2004250771', '00.33.6050', '', 'H38140401236', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 13, NULL),
(665, '520137', '00.33.6074 ', '', 'H38140401212', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 27, NULL),
(666, '520259', '00.33.6300    ', '', '1411LZ00VGM9', 'LOGITECH', 'C920', '', 'Camara', '', '', 5, NULL),
(667, '520335', '00.33.6224 ', '', '1411LZ00VB09', 'LOGITECH', 'C920', '', 'Camara', '', '', 25, NULL),
(668, '520403', ' 00.33.6156   ', '', '1411LZ00V7T9', 'LOGITECH', 'C920', '', 'Camara', '', '', 79, NULL),
(669, '520402', '00.33.6157  ', '', '1411LZ00V7U9', 'LOGITECH', 'C920', '', 'Camara', '', '', 33, NULL),
(670, '520549', '00.33.5836  ', '', 'N14A1445', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 55, NULL),
(671, '520462', '00.33.5923  ', '', 'N14A1508', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 78, NULL),
(672, '520465', '00.33.5920 ', '', 'N14A1505', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 68, NULL),
(673, '520467', '00.33.5918 ', '', 'N14A1503', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 22, NULL),
(674, '520163', '00.33.6048 ', '', 'H38140401238', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 18, NULL),
(675, '520153', '00.33.6058   ', '', 'H38140401228', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 9, NULL),
(676, '520160', '00.33.6051   ', '', 'H38140401231', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 27, NULL),
(677, '520123', '00.33.6088 ', '', 'H38140401198', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 53, NULL),
(678, '520296', '00.33.6263  ', '', '1411LZ00VDY9', 'LOGITECH', 'C920', '', 'Camara', '', '', 55, NULL),
(679, '465926', '00.33.6152  ', '', '1411LZ08LS49', 'LOGITECH', 'C920', '', 'Camara', '', '', 56, NULL),
(680, 'S/N', '00.33.6142  ', '', '1411LZ00UQ89', 'LOGITECH', 'C920', '', 'Camara', '', '', 28, NULL),
(681, '520416', '00.33.6143   ', '', '1411LZ00UPQ9', 'LOGITECH', 'C920', '', 'Camara', '', '', 27, NULL),
(682, '520340', '00.33.6219 ', '', '1411LZ00V769', 'LOGITECH', 'C920', '', 'Camara', '', '', 39, NULL),
(683, '520427', '00.33.5958    ', '', 'N13L9325', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 18, NULL),
(684, 'S/N', '00.33.5959  ', '', 'N13L9326', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 29, NULL),
(685, '520434', '00.33.5951  ', '', 'N13L9329', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 49, NULL),
(686, '520586', '00.33.5799  ', '', 'N14A1465', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 37, NULL),
(687, '520433', '00.33.5952  ', '', 'N13L9328', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 5, NULL),
(688, '520146', '00.33.6065  ', '', 'H38140401225', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 34, NULL),
(689, '520130', '00.33.6081 ', '', 'H38140401205', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 18, NULL),
(690, 'S/N', '00.33.6075', '', 'H38140401211', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 65, NULL),
(691, '520148', '00.33.6063  ', '', 'H38140401223', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 53, NULL),
(692, '(8004)2000466305', '00.33.6273 ', '', '1411LZ00V4T9', 'LOGITECH', 'C920', '', 'Camara', '', '', 30, NULL),
(693, '520285', '00.33.6274     ', '', '1411LZ00V3N9', 'LOGITECH', 'C920', '', 'Camara', '', '', 48, NULL),
(694, ' (8004)2000466312', '00.33.6195 ', '', '1411LZ00V9U9', 'LOGITECH', 'C920', '', 'Camara', '', '', 63, NULL),
(695, ' (8004)2000466329', ' 00.33.6196  ', '', '1411LZ00V759', 'LOGITECH', 'C920', '', 'Camara', '', '', 83, NULL),
(696, ' (8004)2000436254', '00.33.5954  ', '', 'N13L9321', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 3, NULL),
(697, ' (8004)2000436384', '00.33.5828  ', '', 'N14A1454', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 71, NULL),
(698, '520585', '00.33.5800  ', '', 'N14A1464', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 59, NULL),
(699, ' (8004)2000436902', '00.33.5795  ', '', 'N14A1458', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 26, NULL),
(700, '520151', '00.33.6060  ', '', 'H38140401226', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 26, NULL),
(701, '(8004)2000438234', '00.33.6078  ', '', 'H38140401208', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 47, NULL),
(702, '(8004)2000438371', '00.33.6094  ', '', 'H38140401192', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 81, NULL),
(703, ' (8004)2000437886', '00.33.6092  ', '', 'H38140401194', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 17, NULL),
(704, '520353', '00.33.6206   ', '', '1411LZ00UUT9', 'LOGITECH', 'C920', '', 'Camara', '', '', 15, NULL),
(705, '520485', '00.33.6205   ', '', '1411LZ00UTS9', 'LOGITECH', 'C920', '', 'Camara', '', '', 63, NULL),
(706, '520464', '00.33.5921  ', '', 'N14A1506', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 2, NULL),
(707, '520540', '00.33.5845   ', '', 'N13L8772', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 64, NULL),
(708, '520162', '00.33.6049  ', '', 'H38140401237', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 21, NULL),
(709, '520155', '00.33.6056  ', '', 'H38140401230', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 77, NULL),
(710, '(8004)2000465421', '00.33.6178  ', '', '1411LZ00V9J9', 'LOGITECH', 'C920', '', 'Camara', '', '', 58, NULL),
(711, ' (8004)2000466213', '00.33.6167  ', '', '1411LZ00V6C9', 'LOGITECH', 'C920', '', 'Camara', '', '', 70, NULL),
(712, '(8004)2000436988', '00.33.5798  ', '', 'N14A1466', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 34, NULL),
(713, '(8004)2000436957', '00.33.5792  ', '', 'N14A1455', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 27, NULL),
(714, ' (8004)2000438272', '00.33.6047  ', '', 'H38140401239', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 75, NULL),
(715, '(8004)2000438012', '00.33.6055  ', '', 'H38140401235', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 61, NULL),
(716, ' (8004)2000466381', '00.33.6299   ', '', '1411LZ00UN29', 'LOGITECH', 'C920', '', 'Camara', '', '', 31, NULL),
(717, ' (8004)2000466374', ' 00.33.6298   ', '', '1411LZ00UN09', 'LOGITECH', 'C920', '', 'Camara', '', '', 9, NULL),
(718, ' (8004)2000436773', '00.33.5922  ', '', 'N14A1507', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 19, NULL),
(719, '(8004)2000436889', '00.33.5842  ', '', 'N13L8866', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 69, NULL),
(720, '(8004)2000438135', '00.33.6083 ', '', 'H38140401203', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 25, NULL),
(721, '(8004)2000438043', '00.33.6057 ', '', 'H38140401229', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 61, NULL),
(722, '3773629', 'A17.01.1.025.2', '', 'CPUAGX-294', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 25, NULL),
(723, '3773631', 'A17.01.1.026.2', '', 'CPUAGX-296', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 56, NULL),
(724, '3773630', 'A17.01.1.024.2', '', 'CPUAGX-014', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 45, NULL),
(725, '3805474', 'A17.01.1.025.1', '', 'AFZB2HA050778', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 70, NULL),
(726, '3805473', 'A17.01.1.023.1', '', 'AFZB2HA050164', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 78, NULL),
(727, '3805475', 'A17.01.1.027.1', '', 'AFZB2HA050751', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 63, NULL),
(728, '3805484', 'A17.01.1.020.3', '', 'K58810908000010', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 4, NULL),
(729, '3805482', 'A17.01.1.021.3', '', 'TECUSB-207', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 40, NULL),
(730, '3805481', 'A17.06.2.008.3', '', 'K58810908001512', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 62, NULL),
(731, '3805480', 'A17.01.1.025.4', '', 'MSEUSB-106', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 82, NULL),
(732, '3805479', 'A17.01.1.024.4', '', 'MSEUSB-156', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 40, NULL),
(733, '3805478', 'A17.01.1.027.4', '', 'MSEUSB-234', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 37, NULL),
(734, '514720', '00.33.6344', '', '21FP360662', 'CANON', 'DR-C125', '', 'Scaner', '', '', 4, NULL),
(735, '', '00.33.6411', '', 'FP341423', 'CANON', 'DR-C125', '', 'Scaner', '', '', 56, NULL),
(736, '*', '00.33.6410', '', 'FP361294', 'CANON', 'DR-C125', '', 'Scaner', '', '', 3, NULL),
(737, 'S/N', ' 00.33.6328', '', 'FP341433', 'CANON', 'DR-C125', '', 'Scaner', '', '', 10, NULL),
(738, '514734', ' 00.33.6451', '', '21FP362838', 'CANON', 'DR-C125', '', 'Scaner', '', '', 51, NULL),
(739, '514749', '00.33.6454', '', 'FP360660', 'CANON', 'DR-C125', '', 'Scaner', '', '', 53, NULL),
(740, '514719', '00.33.6345', '', '21FP360652', 'CANON', 'DR-C125', '', 'Scaner', '', '', 49, NULL),
(741, '514652', '00.33.6466', '', '21FP361312', 'CANON', 'DR-C125', '', 'Scaner', '', '', 56, NULL),
(742, '514711', ' 00.33.633', '', '21FP341440', 'CANON', 'DR-C125', '', 'Scaner', '', '', 53, NULL),
(743, '514699', '00.33.6365', '', '21FP361356', 'CANON', 'DR-C125', '', 'Scaner', '', '', 45, NULL),
(744, '514635', '00.33.6333', '', 'FP361456', 'CANON', 'DR-C125', '', 'Scaner', '', '', 30, NULL),
(745, '514766', '00.33.6464', '', 'FP361331', 'CANON', 'DR-C125', '', 'Scaner', '', '', 18, NULL),
(746, '514753', 'S/C', '', 'FP361301', 'CANON', 'DR-C125', '', 'Scaner', '', '', 82, NULL),
(747, '514694', '00.33.6370', '', 'FP360663', 'CANON', 'DR-C125', '', 'Scaner', '', '', 76, NULL),
(748, '514756', 'S/C', '', 'FP361351', 'CANON', 'DR-C125', '', 'Scaner', '', '', 37, NULL),
(749, '514795', '00.33.6493', '', 'FP361334', 'CANON', 'DR-C125', '', 'Scaner', '', '', 34, NULL),
(750, '514734', '00.33.6432', '', 'FP361357', 'CANON', 'DR-C125', '', 'Scaner', '', '', 15, NULL),
(751, '514752', '00.33.6450', '', 'FP361611', 'CANON', 'DR-C125', '', 'Scaner', '', '', 39, NULL),
(752, '514640', '8,00E+13', '', 'FP361336', 'CANON', 'DR-C125', '', 'Scaner', '', '', 77, NULL),
(753, '', '00.33.6401', '', 'FP341425', 'CANON', 'DR-C125', '', 'Scaner', '', '', 77, NULL),
(754, '514688', '00.33.6393', '', 'FP361363', 'CANON', 'DR-C125', '', 'Scaner', '', '', 25, NULL),
(755, '514646', '00.33.6351', '', 'FP360664', 'CANON', 'DR-C125', '', 'Scaner', '', '', 80, NULL),
(756, '514696', '00.33.6368', '', '21FP361310', 'CANON', 'DR-C125', '', 'Scaner', '', '', 52, NULL),
(757, '514772', '00.33.6378', '', 'FP361362', 'CANON', 'DR-C125', '', 'Scaner', '', '', 46, NULL),
(758, '', '00.33.6341', '', 'FP360650', 'CANON', 'DR-C125', '', 'Scaner', '', '', 21, NULL),
(759, '514636', '00.33.6340', '', 'FP362842', 'CANON', 'DR-C125', '', 'Scaner', '', '', 41, NULL),
(760, 'S/N', '00.33.6380', '', 'FP361383', 'CANON', 'DR-C125', '', 'Scaner', '', '', 17, NULL),
(761, '', '0.33.6385', '', 'FP361437', 'CANON', 'DR-C125', '', 'Scaner', '', '', 67, NULL),
(762, '', '00.33.6320', '', 'FP361445', 'CANON', 'DR-C125', '', 'Scaner', '', '', 10, NULL),
(763, '514773', '00.33.6377', '', 'FP341421', 'CANON', 'DR-C125', '', 'Scaner', '', '', 63, NULL),
(764, '514639', '00.33.6479', '', '21FP362853', 'CANON', 'DR-C125', '', 'Scaner', '', '', 19, NULL),
(765, '514717', '00.33.6347', '', 'FP360239', 'CANON', 'DR-C125', '', 'Scaner', '', '', 21, NULL),
(766, '520368', 'S/C', '', '1411LZ00VAS9', 'LOGITECH', 'C920', '', 'Camara', '', '', 7, NULL),
(767, '520393', '00.33.6166', '', '1411LZ00V6D9', 'LOGITECH', 'C920', '', 'Camara', '', '', NULL, NULL),
(768, '520352', 'S/C', '', '1411LZ00V839', 'LOGITECH', 'C920', '', 'Camara', '', '', 80, NULL),
(769, '520367', '00.33.6192', '', '1411LZ00VAT9', 'LOGITECH', 'C920', '', 'Camara', '', '', 27, NULL),
(770, '520434', '00.33.6154', '', '411LZ00UPN9', 'LOGITECH', 'C920', '', 'Camara', '', '', 62, NULL),
(771, '520507', '00.33.6227', '', '1411LZ00VE39', 'LOGITECH', 'C920', '', 'Camara', '', '', 12, NULL),
(772, '520358', 'S/C', '', '1411LZ00V6Y9', 'LOGITECH', 'C920', '', 'Camara', '', '', 79, NULL),
(773, '520355', 'S/C', '', '1411LZ00ULG9', 'LOGITECH', 'C920', '', 'Camara', '', '', 5, NULL),
(774, '520456', '00.33.6176', '', '1411LZ00VDE9', 'LOGITECH', 'C920', '', 'Camara', '', '', 20, NULL),
(775, '520412', '00.33.6147', '', '1411LZ00UNX9', 'LOGITECH', 'C920', '', 'Camara', '', '', 13, NULL),
(776, '520592', 'S/C', '', 'N14A1456', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 28, NULL),
(777, '520591', '00.33.5794', '', 'N14A1457', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 49, NULL),
(778, '520237', '00.33.5957', '', 'N13L9324', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 38, NULL),
(779, '520584', 'S/C', '', 'N14A1463', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 24, NULL),
(780, '520229', '00.33.5949', '', 'N13L9331', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 10, NULL),
(781, '520230', '00.33.5950', '', 'N13L9330', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 39, NULL),
(782, '520437', 'S/C', '', 'N13L9332', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 51, NULL),
(783, '520233', '00.33.5953', '', 'N13L9327', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 48, NULL),
(784, '520429', 'S/C', '', 'N13L9323', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 81, NULL),
(785, '520583', '00.33.5802', '', 'N14A1462', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 28, NULL),
(786, '520362', '00.33.6082', '', 'H38140401204', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 69, NULL),
(787, '520364', '00.33.6084', '', 'H38140401202', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 4, NULL),
(788, '520158', 's/c', '', 'H38140401233', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 7, NULL),
(789, '520157', '00.33.6054', '', 'H38140401234', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 12, NULL),
(790, '520356', '00.33.6076', '', 'H38140401210', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 66, NULL),
(791, '520144', 'S/C', '', 'H38140401219', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 62, NULL),
(792, '520165', '00.33.6046', '', 'H38140401240', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 8, NULL),
(793, '520152', 'S/C', '', 'H38140401227', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 38, NULL),
(794, '520370', '00.33.6090', '', 'H38140401196', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 51, NULL),
(795, '520138', 'S/C', '', 'H38140401213', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 41, NULL),
(796, '3795056', '00.19.4.460.3', '', 'BC3370ADPU46H4', 'HP', 'SK-2880', '', 'Teclado', '', '', 73, NULL),
(797, '3769974', 'A17.01.003.2', '', '293112', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 25, NULL),
(798, 'S/N', '17.05.3.120.4', '', 'M482090802940', 'XTRATECH', 'M482', '', 'Mouse', '', '', 68, NULL),
(799, 'S/C', '', '', 'NXT191303001454', 'Nexxt', 'S/M', '', 'Tarjeta de Red', '', '', 68, NULL),
(800, '520139', '00.33.6072', '', 'H38140401214', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 11, NULL),
(801, '8,00E+13', '00.33.6087', '', 'H38140401199', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 72, NULL),
(802, '8,00E+13', '00.33.6304', '', '1411LZ00UWB9', 'LOGITECH', 'C920', '', 'Camara', '', '', 49, NULL),
(803, '520320', '00.33.6239', '', '1411LZ00V849', 'LOGITECH', 'C920', '', 'Camara', '', '', 20, NULL),
(804, '520466', '00.33.5919', '', 'N14A1504', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 68, NULL),
(805, '8,00E+13', '00.33.5912', '', 'N14A1514', 'TOPAZ', 'T-LBK750', '', 'Capturador de firma', '', '', 7, NULL),
(806, '3772036', '00.33.1280.2', '', '293035', 'XTRATECH', 'FQC 01265', '', 'CPU', '', '', 10, NULL),
(807, '3796979', 'A17.03.1.010.1', '', 'W7006S-97F1728-000148', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 49, NULL),
(808, '3772037', 'A17.07.3.742', '', 'S/S', 'QUASAD', 'S/M', '', 'CPU', '', '', 79, NULL),
(809, '3796982', '8,00E+13', '', 'TECUSB-192', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 7, NULL),
(810, '3772039', '8,00E+13', '', 'SG3AFLY13L', 'HP', 'S/M', '', 'Switch', '', '', 33, NULL),
(811, '3772022', '8,00E+13', '', 'N13L8807', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 47, NULL),
(812, '3772006', 'A17.05.1.045.2.', '', '293050', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 21, NULL),
(813, '3796925', 'A17.05.1.045.1', '', 'W7005S97F156900930G', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 82, NULL),
(814, '3796928', 'A17.05.1.034.3', '', 'K58810908001426', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 7, NULL),
(815, '3796926', 'A17.05.01.095.4', '', 'M482090800459', 'XTRATECH', 'M482', '', 'Mouse', '', '', 66, NULL),
(816, '3769358', '00.48.6.1235.2', '', '294616', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 9, NULL),
(817, '520131', '00.33.6080', '', 'H38140401206', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 31, NULL),
(818, '3794545', '00.33.1830.3', '', 'BAUHR0IVBZL7MM', 'HP', 'KU-0316', '', 'Teclado', '', '', 13, NULL),
(819, '3795059', '8,00E+13', '', 'FB7330AN3VI1Y0N', 'HP', 'SBF96', '', 'Mouse', '', '', 19, NULL),
(820, '514718', '00.33.6346', '', 'FP361450', 'CANON', 'DR-C125', '', 'Scaner', '', '', 12, NULL),
(821, '3794331', 'A17.02.1.040.2', '', '4B1109P14033', 'APC', 'BE550G-LM', '', 'UPS', '', '', 33, NULL),
(822, '3794325', 'S/N', '', '1,40E+11', 'GENIUS', 'NETSCROLL 120', '', 'Mouse', '', '', 38, NULL),
(823, '3794359', '00.33.2.521.1', '', 'CNK03550DY5', 'HP', 'LE1911', '', 'Pantalla', '', '', 74, NULL),
(824, '3769362', '00.33.2.521.2', '', 'MXL04614QYH', 'HP', '3130 PRO', '', 'CPU', '', '', 31, NULL),
(825, '3794362', '00.33.2.521.3', '', 'BAUHR0IVBZI32X', 'HP', 'KU-0316', '', 'Teclado', '', '', 25, NULL),
(826, '3794117', '', '', 'W7006S97F1569014609', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 60, NULL),
(827, 'S/N', 'S/N', '', 'K58810908000862', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 77, NULL),
(828, '3805319', 'A17.07.034.2', '', '4B1109P1046', 'APC', 'BE550G-LM', '', 'UPS', '', '', 27, NULL),
(829, '(8004)2000474911', '', '', '44106501', 'AOPEN', 'TC-E1', '', 'Mouse', '', '', 33, NULL),
(830, '3769355', 'A17.07.011.2', '', '294459', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 52, NULL),
(831, '3794335', 'A11.01.1.145.4', '', 'FB330AN3U104TS', 'HP', 'SBF96', '', 'Mouse', '', '', 49, NULL),
(832, '3794336', '17.01.1.116.3', '', 'K58810908000960', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 19, NULL),
(833, '3794334', '17.05.2.122.1', '', 'W7006S-97F156-901496G', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 72, NULL),
(834, '520255', '00.33.6304', '', '1411LZ00UWB9', 'LOGITECH', 'C920', '', 'Camara', '', '', 35, NULL),
(835, '520124', '00.33.6087', '', 'H38140401199', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 31, NULL),
(836, '520473', '00.33.5912', '', 'N14A1514', 'TOPAZ', 'T-LBK923', '', 'Capturador de firma', '', '', 76, NULL),
(837, '3794292', 'A17.02.1.021.4', '', 'MSEUSB014', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 51, NULL),
(838, '3769357', '00.33.5391', '', 'J13E970', 'TOPAZ', 'T-LBK766-BHSB-R  ', '', 'Capturador de firma', '', '', 16, NULL),
(839, '3772584', 'A17.02.1.231', '', '0004133A1D3C', 'SPEEDMIND', 'SPEEDMIND', '', 'Telefono IP', '', '', 41, NULL),
(840, '3794363', 'A17.02.1.008.1', '', 'W7006S97F1569021840', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 16, NULL),
(841, '3772586', 'A17.02.1.230', '', '1,10E+15', 'TP LINK', 'TLWR740N', '', 'Telefono IP', '', '', 41, NULL),
(842, '3772463', 'A17.02.1.223', '', 'S/N', 'C&B', 'CB-5100MVV', '', 'RACK', '', '', 13, NULL),
(843, '3772464', 'A17.02.1.224', '', 'S/N', 'C&B', 'CB-5100MVV', '', 'RACK', '', '', 13, NULL),
(844, '3784404', 'A17.02.1.226', '', 'S/N', 'STAR', 'TSP100', '', 'Case', '', '', 27, NULL),
(845, '3778767', 'A17.02.1.227', '', '9520041Q0017', 'XTRATECH', 'O.M.E', '', 'UPS', '', '', 25, NULL),
(846, '3769336', 'A17.02.1.229', '', '23T52HB4NL1K30200329T', 'APC', 'BP100', '', 'Pantalla', '', '', 33, NULL),
(847, '3769335', 'A17.02.1.228', '', 'S/N', 'QUASAD', 'S/M', '', 'CPU', '', '', 51, NULL),
(848, 'S/N', 'S/N', '', '8,43E+13', 'XTRATECH', 'O.M.E', '', 'UPS', '', '', 45, NULL),
(849, '3769338', 'A17.02.1.221', '', 'DNI172007SU', 'CISCO', 'SR2024T', '', 'Switch', '', '', 69, NULL),
(850, '3769339', 'A17.02.1.222', '', 'DNI17200829', 'CISCO', 'SR2024T', '', 'Switch', '', '', 12, NULL),
(851, '3769340', 'A17.02.1.219', '', 'DNI17180DHS', 'CISCO', 'SR2024T', '', 'Switch', '', '', 60, NULL),
(852, '3769341', 'A17.02.1.220', '', 'DNI17200816', 'CISCO', 'SR2024T', '', 'Switch', '', '', 24, NULL),
(853, '3794324', 'S/N', '', 'S/N', 'QUASAD', 'S/M', '', 'Mouse', '', '', 6, NULL),
(854, '3794328', 'S/N', '', 'S/S', 'QUASAD', 'S/M', '', 'Teclado', '', '', 40, NULL),
(855, '3783314', 'A17.02.1.040.1', '', '11151ABF0144', 'NITGEN', 'NAC-2500 PLUS', '', 'Lector de Huella', '', '', 56, NULL),
(856, '3772585', 'A17.02.1.232', '', '4,10E+15', 'CISCO', 'SR2024T', '', 'Telefono IP', '', '', 61, NULL),
(857, '3794361', 'S/N', '', 'S/S', 'STAR', 'TSP100', '', 'Parlantes', '', '', 27, NULL),
(858, '3794282', 'A17.01.1.108.3', '', 'K58810908001467', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 19, NULL),
(859, '3794281', 'BC.A17-02.1.138', '', 'ZF753B025347', 'GENIUS', 'SW-2.1 355', '', 'Parlantes', '', '', 4, NULL),
(860, '3794533', 'A17.01.004.1', '', 'W7006S-97F1569-021449', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 71, NULL),
(861, '3795055', '00.33.4714.4', '', 'FB7330AN3U22RHM', 'HP', 'SBF96', '', 'Mouse', '', '', 28, NULL),
(862, '3769935', 'A17.05.1.025.2', '', '293009', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 47, NULL),
(863, '3795213', 'A17.05.1.025.1', '', 'W7006S-97F1569-002426', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 81, NULL),
(864, '3795215', '00.33.1276.3', '', 'K58810908000326', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 17, NULL),
(865, '3795214', 'A17.05.1.038.4', '', 'M482090800977', 'XTRATECH', 'M482', '', 'Mouse', '', '', 2, NULL),
(866, '3769407', '17.01.1.98.2', '', '294565', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 30, NULL),
(867, '3794433', '17.01.1.98.1', '', 'W7006S-97F1569-012256', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 65, NULL),
(868, '3794435', 'S/N', '', 'K58810908001576', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 19, NULL),
(869, '3794434', '17.01.1.98.4', '', 'M482090803308', 'XTRATECH', 'M482', '', 'Mouse', '', '', 49, NULL),
(870, '3795252', 'S/N', '', 'BC3370DVBVLLAW', 'HP', 'KB-0316', '', 'Teclado', '', '', 59, NULL),
(871, 'S/N', '17.05.2.122.4', '', 'M482090803016', 'XTRATECH', 'M482', '', 'Mouse', '', '', 23, NULL),
(872, '3796405', '', '', 'HLCA9101161300421', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 65, NULL),
(873, 'S/N', 'A17.01.009.3', '', 'K58810908000499', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 58, NULL),
(874, '3795260', '8,00E+11', '', 'M482090803943', 'XTRATECH', 'M482', '', 'Mouse', '', '', 76, NULL),
(875, 'S/N', 'A17.03.1.007.3', '', 'K58810908001427', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 9, NULL),
(876, '3795244', 'A17.03.1.007.1', '', 'W7006S-97F1569-02149C', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 25, NULL),
(877, '3795247', 'S/C', '', 'TECUSB147', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 14, NULL),
(878, '3795245', 'S/C', '', 'M482090800358', 'XTRATECH', 'M482', '', 'Mouse', '', '', 79, NULL),
(879, '3769405', '00.16.1092.2', '', '294577', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 53, NULL),
(880, '3794429', 'A17.05.1.107.3', '', 'K5881090800332', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 15, NULL),
(881, '3794428', 'A17.05.01.107.4', '', 'M482090802917', 'XTRATECH', 'M482', '', 'Mouse', '', '', 30, NULL),
(882, '3794427', 'A17.05.1.107.1', '', 'W7006S-97F1569-019587', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 55, NULL),
(883, '3769409', 'A17.05.1.025.2', '', '292860', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 49, NULL),
(884, '3794436', 'A17.05.1.046.1', '', 'W7006S-97F1569-017884', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 55, NULL),
(885, '3794437', '8,00E+13', '', 'M482090800901', 'XTRATECH', 'M482', '', 'Mouse', '', '', 13, NULL),
(886, '3769959', '00.33.1281.2', '', '293372', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 79, NULL),
(887, '3795253', '00.33.1281.1', '', 'W7006S-97F1569-01122A', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', NULL, NULL),
(888, '3795255', '00.33.1281.3', '', 'K5881090800930', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 21, NULL),
(889, '3769950', '00.33.4716.2', '', 'HBSDPW1', 'DELL', 'OPTIPLEX 9010', '', 'CPU', '', '', 69, NULL),
(890, '3769952', '00.33.4716.1', '', 'CN-06JX4Y-64180-28P-424S', 'DELL', 'E1913C', '', 'Pantalla', '', '', 63, NULL),
(891, '3795217', '00.33.1281.4', '', 'M48209081411', 'XTRATECH', 'M482', '', 'Mouse', '', '', 81, NULL),
(892, '3795237', '00.33.4716.3', '', 'CN-OC639N-71616-2B9-0H6X-A00', 'DELL', 'KB212-B', '', 'Teclado', '', '', 13, NULL),
(893, '3795235', '00.33.4716.4', '', 'CN-09RR07-48723-2AI-05VT', 'DELL', 'MS111-L', '', 'Mouse', '', '', 19, NULL),
(894, '3769406', 'A17.05.01.092.2', '', '293294', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 68, NULL),
(895, '3794430', 'A17.05.1.107.1', '', 'W7006S-97F1569-019288', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 17, NULL),
(896, '3794431', 'A17.05.1.111.4', '', 'M48209083844', 'XTRATECH', 'M482', '', 'Mouse', '', '', 11, NULL),
(897, '3795199', '00.33.1993.3', '', 'BAUHR0IVBZL7NW', 'HP', 'KU-0316', '', 'Teclado', '', '', 53, NULL),
(898, '3771851', 'BC.17.24.2.32', '', 'MXJ817081P', 'HP', 'DC5800', '', 'CPU', '', '', 52, NULL),
(899, '3796704', '00.45.119.1', '', 'W7006S-97F1569-017861', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 4, NULL),
(900, '3796702', 'BC.17.08.2.222', '', 'F3TP299000426', 'DLINK', 'DIR-615', '', 'Router Modem MIFI', '', '', 16, NULL),
(901, '3796705', 'S/N', '', 'M4820902232', 'XTRATECH', 'M482', '', 'Mouse', '', '', 54, NULL),
(902, '3769943', '8,00E+13', '', '293157', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 7, NULL),
(903, '3795220', 'A17.05.1.116.1', '', 'W7006S-97F1569-014744', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 7, NULL),
(904, '3795225', 'S/N', '', 'M482090803528', 'XTRATECH', 'M482', '', 'Mouse', '', '', 36, NULL),
(905, '3794461', 'S/N', '', '1,40E+11', 'GENIUS', 'GM-050009P      ', '', 'Mouse', '', '', 45, NULL),
(906, '3796706', 'S/N', '', 'C0510111307', 'HP', 'SK1688', '', 'Teclado', '', '', 63, NULL),
(907, '3795228', 'A17.05.1.032.3', '', 'K58810908000645', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 28, NULL),
(908, '3795224', '00.33.1276.4', '', 'M48209082911', 'XTRATECH', 'M482', '', 'Mouse', '', '', 61, NULL),
(909, '3771850', 'S/N', '', '292366', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 9, NULL),
(910, '3796700', 'S/N', '', 'W7006S-97F1569-005135', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 9, NULL),
(911, '3796701', '00.12.4.1803.4', '', 'M482090803529', 'XTRATECH', 'M482', '', 'Mouse', '', '', 61, NULL),
(912, '3796703', '17.01.1.103.3', '', 'k58810908001365', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 58, NULL),
(913, '3769940', 'A17.05.01.093.2', '', '293123', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 26, NULL),
(914, '3795216', '00.33.1284.1', '', 'W7006S-97F1569-001209', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 8, NULL),
(915, '3795218', '00.33.1284.3', '', 'K58810908000588', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 71, NULL),
(916, '3795254', 'S/N', '', '1,42E+11', 'GENIUS', 'NETSCROLL 120', '', 'Mouse', '', '', 9, NULL),
(917, 'S/N', 'S/N', '', 'RR167-033202', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 42, NULL),
(918, 'S/N', 'S/N', '', 'RR167-033203', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 33, NULL),
(919, 'S/N', 'S/N', '', 'RR167-033204', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 82, NULL),
(920, 'S/N', 'S/N', '', 'RR167-033205', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 48, NULL),
(921, 'S/N', 'S/N', '', 'RR167-033206', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 71, NULL),
(922, 'S/N', 'S/N', '', 'RR167-033207', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 82, NULL),
(923, 'S/N', 'S/N', '', 'RR167-033208', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 29, NULL),
(924, 'S/N', 'S/N', '', 'RR167-033209', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 38, NULL),
(925, 'S/N', 'S/N', '', 'RR167-033210', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 51, NULL),
(926, 'S/N', 'S/N', '', 'RR167-033173', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 54, NULL),
(927, 'S/N', 'S/N', '', 'RR167-033174', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 50, NULL),
(928, 'S/N', 'S/N', '', 'RR167-033221', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 1, NULL),
(929, 'S/N', 'S/N', '', 'RR167-033222', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 55, NULL),
(930, 'S/N', 'S/N', '', 'RR167-033278', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 18, NULL),
(931, 'S/N', 'S/N', '', 'RR167-033280', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 62, NULL),
(932, 'S/N', 'S/N', '', 'RR167-033281', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 62, NULL),
(933, 'S/N', 'S/N', '', 'RR167-033211', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 61, NULL),
(934, 'S/N', 'S/N', '', 'RR167-033212', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 78, NULL),
(935, 'S/N', 'S/N', '', 'RR167-033213', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 67, NULL),
(936, 'S/N', 'S/N', '', 'RR167-033214', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 36, NULL),
(937, 'S/N', 'S/N', '', 'RR167-033215', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 28, NULL);
INSERT INTO `equipostecnologicos` (`idequipo`, `cod_avaluac`, `cod_ant`, `cod_esbye`, `serie`, `marca`, `modelo`, `anio`, `descripcion`, `color`, `observacion`, `custodios_idcustodio`, `tickets_idticket`) VALUES
(938, 'S/N', 'S/N', '', 'RR167-033216', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', NULL, NULL),
(939, 'S/N', 'S/N', '', 'RR167-033217', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 20, NULL),
(940, 'S/N', 'S/N', '', 'RR167-033218', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 5, NULL),
(941, 'S/N', 'S/N', '', 'RR167-033219', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 16, NULL),
(942, 'S/N', 'S/N', '', 'RR167-033220', 'ACS', 'ACR-DUAL', '', 'Lector de chip', '', '', 16, NULL),
(943, 'S/N', 'S/N', '', 'FOC1829A44U', 'CISCO', 'WS-C2960X-24PD-L', '', 'Switch', '', '', 26, NULL),
(944, '5341126', 'S/N', '', 'FTX1837702T', 'CISCO', 'AIR-CAP3702E-AK9', '', 'Access Point', 'BLANCO', 'USADO-REGULAR', 72, NULL),
(945, '5341198', 'S/N', '', 'FOC1829S28Z', 'CISCO', 'WS-C2960X-24PD-L', '', 'Switch', '', '', 23, NULL),
(946, '5341141', 'S/N', '', 'FTX18377017', 'CISCO', 'AIR-CAP3702E-A-K9', '', 'Access Point', '', '', 82, NULL),
(947, 'S/N', 'S/N', '', 'FOC1829S2YT', 'CISCO', 'WS-C2960X-24PD-L', '', 'Switch', '', '', 15, NULL),
(948, '780009', 'S/N', '', 'FTX18377018', 'CISCO', 'AIR-CAP3702E-A-K9', '', 'Access Point', 'BLANCO', 'USADO-REGULAR', 29, NULL),
(949, '5341168', 'S/N', '', 'FOC1829S2YJ', 'CISCO', 'WS-C2960X-24PD-L', '', 'Switch', '', '', 45, NULL),
(950, '5341092', 'S/N', '', 'FTX1837701X', 'CISCO', 'AIR-CAP3702E-A-K9', '', 'Access Point', 'BLANCO', 'USADO-REGULAR', 57, NULL),
(951, '5341214', 'S/N', '', 'FCW1829A44L', 'CISCO', 'WS-C2960X-24PD-L', '', 'Switch', '', '', 42, NULL),
(952, '5341139', 'S/N', '', 'FTX18377010', 'CISCO', 'AIR-CAP3702E-A-K9', '', 'Access Point', 'BLANCO', 'USADO-REGULAR', 15, NULL),
(953, '5341212', '8,00E+13', '', 'FOC1829S28V', 'CISCO', 'WS-C2960X-24PD-L', '', 'Switch', '', '', 18, NULL),
(954, '5341142', '8,00E+13', '', 'FTX1837702J', 'CISCO', 'AIR-CAP3702E-A-K9', '', 'Access Point', '', '', 63, NULL),
(955, '3805316', '00.23.3.8.1164.1', '', 'W7006S97F1569020275', 'XTRATECH', 'W70065', '', 'Pantalla', '', '', 66, NULL),
(956, '', '', '', 'FOC1829S2YS', 'CISCO', 'WS-C2960X-24PD-L', '', 'Switch', '', '', 57, NULL),
(957, 'S/C', 'S/C', '', 'FTX1837702S', 'CISCO', 'AIR-CAP3702E-AK9', '', 'Access Point', '', '', 37, NULL),
(958, '3794347', 'S/N', '', 'FB7330AN3VH5UZU', 'HP', 'M-SBP96 ', '', 'Mouse', '', '', 28, NULL),
(959, '514747', 'S/N', '', '21FP358902', 'CANON', 'DR-C125', '', 'Scaner', '', '', 78, NULL),
(960, '8,00E+13', 'A17.01.1.020.4', '', 'S/N', 'XTRATECH', 'M482', '', 'Mouse', '', '', 5, NULL),
(961, '3773637', 'A17.01.008.2', '', '293225', 'XTRATECH', 'FQC 01265', '', 'CPU', '', '', 75, NULL),
(962, '3773636', 'A17.01.1.101', '', 'S/N', 'GRANDSTREAM', 'GXP140', '', 'Telefono IP', '', '', 36, NULL),
(963, '3773627', 'A17.01.1.100', '', '20EYWS6B9036D6B0', 'GRANDSTREAM', 'GXP140', '', 'Telefono IP', '', '', 53, NULL),
(964, '3773605', 'S/N', '', '20EYXQYC80426391', 'CISCO', 'WS-C2960S-24PS-L', '', 'Telefono IP', '', '', 43, NULL),
(965, '3805458', 'A17.06.2.008.1', '', 'W7006S-97F1569-015035', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 38, NULL),
(966, '3772575', '8,00E+13', '', '5120175', 'VIDEOLOGY', '24Z704USB-SYS', '', 'Camara', '', '', 42, NULL),
(967, '3800039', '8,00E+13', '', '2,09E+12', 'Beaucoup', '42U', '', 'RACK', '', '', 69, NULL),
(968, '3794234', 'BC.A17.06.6.2.23', '', 'F3TP299000390', 'DLINK', 'DIR615', '', 'Router', '', '', 60, NULL),
(969, '3772462', '8,00E+13', '', 'SN', 'Beaucoup', '36U', '', 'RACK', '', '', 19, NULL),
(970, '3769301', '00.33.1959', '', 'P1CUZA9000070', 'DLINK', 'DES-3028', '', 'Switch', '', '', 82, NULL),
(971, '3794438', 'A17.05.1.017.3', '', 'K5881090800804', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 19, NULL),
(972, '3794439', 'A17.05.1.046.3', '', 'K58810908001181', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 79, NULL),
(973, '3795241', '17.01.93', '', 'FB67200DB0102', 'CANON', 'EOS1100', '', 'Scaner', '', '', 41, NULL),
(974, '3794531', '17.01.1.100.1', '', 'CNC808PVY8', 'HP', 'L1506', '', 'Pantalla', '', '', 73, NULL),
(975, '3796983', '00.10.2.1310.3', '', 'K58810908001360', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 74, NULL),
(976, 'A11.01.149.3', '(8004)2000093143', '', 'TECUSB-086', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 58, NULL),
(977, '3792673', ' A05.01.1.080.4', '', 'MSEUSB-180', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 60, NULL),
(978, '3769740', ' A08.04.1.070.2', '', 'CPUAGX-073', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 76, NULL),
(979, '3794820', ' A11.01.144.1', '', 'AFZB2HA05022', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 9, NULL),
(980, '3794923', ' A11.01.1.144.3', '', 'TECUSB-155', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 60, NULL),
(981, '3804710', 'A13.04.1.025.3', '', 'MSEUSB-279', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 55, NULL),
(982, '3769669', 'A17.05.01.1.129.2', '', 'CPUAGX-270', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 2, NULL),
(983, '3794817', ' A11.01.1.145.1', '', 'AFZB2HA052124', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 5, NULL),
(984, '3794921', 'A11.01.1.140.3', '', 'TECUSB-151', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 46, NULL),
(985, '3794850', 'A23.01.1.063.5', '', 'MSEUSB253', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 74, NULL),
(986, '3769727', ' A17.05.01.1.148.2', '', 'CPUAGX-165', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 83, NULL),
(987, '(8004)20000229375', 'A13.04.1.022.3', '', 'AFZB2HA050275', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 58, NULL),
(988, '3792684', 'A05.01.1.079.3', '', 'TECUSB-173', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 76, NULL),
(989, '3794835', ' A11.01.1.148.4', '', 'MSEUSB241', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 78, NULL),
(990, '3769681', 'A23.01.1.061.1', '', 'CPUAGX-225', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 27, NULL),
(991, '3794795', '00.33.5257.1', '', 'AFZB2HA050798', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 56, NULL),
(992, '3794924', 'A11.01.1.142.3', '', 'TECUSB-153', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 37, NULL),
(993, '3804153', 'A07.03.1.023.4', '', 'MSEUSB-273', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 70, NULL),
(994, '3769744', 'A04.02.1.170.2', '', 'CPUAGX-207', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 17, NULL),
(995, '3772937', 'A07.02.033.7', '', 'AFZBB2HA051506', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 59, NULL),
(996, '3803863', 'A05.01.1.080.3', '', 'TECUSB-186', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 10, NULL),
(997, '3794836', 'A11.01.1.149.4', '', 'MSEUSB-266', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 18, NULL),
(998, '3769670', 'A02.01.1.067.3', '', 'CPUAGX-217', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 63, NULL),
(999, '', 'A17.05.01.1.144.1', '', 'AFZB2HA052121', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 52, NULL),
(1000, '3794900', 'A19.02.1.068.4', '', 'TECUSB-166', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 78, NULL),
(1001, '3803969', 'A07.02.036.3', '', 'MSEUSB-278', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 7, NULL),
(1002, '3769719', 'A17.05.01.1.133.2', '', 'CPUAGX-309', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 23, NULL),
(1003, '3804702', 'A13.04.1.22.1', '', 'AFZB2HA051446', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 1, NULL),
(1004, '3797483', 'A21.01.1.145.3', '', 'TECUSB-169', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 1, NULL),
(1005, '3803962', 'A07.02.036.2', '', 'MSEUSB-254', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 53, NULL),
(1006, '3769739', 'A08.01.1.070.4', '', 'CPUAGX-301', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 4, NULL),
(1007, '3794800', 'A17.03.1.022.1', '', 'AFZB2HA050762', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 48, NULL),
(1008, '3794917', 'A11.01.1.146.3', '', 'TECUSB-163', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 21, NULL),
(1009, '3794832', 'A11.01.1.147.4', '', 'MSEUSB056', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 79, NULL),
(1010, '3769743', 'A08.01.1.070.1', '', 'CPUAGX-194', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 67, NULL),
(1011, '3804704', 'A13.04.1.022.4', '', 'AFZB2HA051427', 'AOC', 'N936Sw', '', 'Pantalla', '', '', 76, NULL),
(1012, '3804713', 'A13.04.1.024.1', '', 'TECUSB-111', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 23, NULL),
(1013, '3792709', 'A05.01.1.079.4', '', 'MSEUSB-102', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 39, NULL),
(1014, '3769742', 'A08.04.1.070.5', '', 'CPUAGX-007', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 19, NULL),
(1015, '3794792', 'A19.02.1.068.1', '', 'AFZB2HA051319', 'AOC', 'N936Sw', '', 'Pantalla', '', '', NULL, NULL),
(1016, '3794902', 'A22.01.1.078.4', '', 'TECUSB-276', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 33, NULL),
(1017, '3803961', 'A07.02.036.8', '', 'MSEUSB-185', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 4, NULL),
(1018, '3769675', 'A04.01.1.133.2', '', 'CPUAGX-108', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 34, NULL),
(1019, '3796981', '', '', 'M482090803977', 'XTRATECH', 'M482', '', 'Mouse', '', '', 2, NULL),
(1020, '3772833', '8,00E+13', '', '3,62E+11', 'CANON', 'EOS REBEL T3', '', 'Camara', '', '', 30, NULL),
(1021, '3768982', '00.08.1237.2', '', '294603', 'XTRATECH', 'S/M', '', 'CPU', '', '', 9, NULL),
(1022, '3794546', '00.20.1.502.3', '', 'BCC3370ACPUACTT', 'HP', 'SK-2880', '', 'Teclado', '', '', 23, NULL),
(1023, '3769320', 'A17.02.1.025.2', '', 'CPUAGX260', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 75, NULL),
(1024, '3773624', '06.01.085', '', '5120160', 'VIDEOLOGY', '24Z704USB-SYS', '', 'Camara', '', '', 19, NULL),
(1025, '3769449', 'A17.01.009.2', '', '293026', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 56, NULL),
(1026, 'S/C', '23.01.001', '', 'KBPA46396', 'CANON', 'EOS1100', '', 'Scaner', '', '', 79, NULL),
(1027, 'S/C', 'A23.01.9.50.3', '', 'BC3370DVBVLNV3', 'HP', 'KB0316', '', 'Teclado', '', '', 67, NULL),
(1028, 'S/C', 'A23.01.015.3', '', '908000510', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 47, NULL),
(1029, 'S/C', '23.01.8.013.3', '', '908000513', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 6, NULL),
(1030, '3796008', '00.33.7.1341.3', '', 'BC3370DVBLL98', 'HP', 'KB0316', '', 'Teclado', '', '', 74, NULL),
(1031, '3795877', 'S/C', '', 'S/N', 'STAR', 'TSP100', '', 'Parlantes', '', '', 68, NULL),
(1032, '3796294', '00.33.2530.1', '', 'CNK00440QL5', 'HP', 'Compaq NX 6320', '', 'Pantalla', '', '', 62, NULL),
(1033, '3770199', '00.3.5.5785.2', '', 'MXJ8170806', 'HP', 'Compaq NX 6320', '', 'CPU', '', '', 4, NULL),
(1034, '3794536', '8,00E+13', '', 'M482090803435', 'XTRATECH', 'M482', '', 'Mouse', '', '', 21, NULL),
(1035, '3769300', 'S/C', '', 'FTX15368202', 'CISCO', 'Cisco 5508', '', 'Router', '', '', 76, NULL),
(1036, '3796931', 'A17.03.1.49', '', 'NW223NXT540910100122', 'Nexxt', 'S/M', '', 'Switch', '', '', 8, NULL),
(1037, '3805293', 'A17.07.1.71', '', 'XL1OLB06276', 'GENIUS', 'SW-2.1 355', '', 'Parlantes', '', '', NULL, NULL),
(1038, '3805364', 'A17.07.1.77', '', 'XL2OLB6697', 'GENIUS', 'SW-2.1 355', '', 'Parlantes', '', '', 67, NULL),
(1039, '3773586', '8,00E+13', '', 'S/N', 'Beaucoup', '42U', '', 'RACK', '', '', 30, NULL),
(1040, '3773575', 'A17.07.1.22.2', '', 'CPUAGX-090', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 58, NULL),
(1041, 'S/N', 'S/N', '', '3577131086', 'Alcatel', 'One Touch P320A', '', 'UPS', '', '', 66, NULL),
(1042, '3772817', '00.23.2.34.27', '', 'FCH1616AJLT', 'CISCO', 'Cisco 3700', '', 'Telefono IP', '', '', 70, NULL),
(1043, '3794535', 'BC.A17.03.1.117', '', '1,42E+11', 'GENIUS', 'NETSCROLL 120', '', 'Mouse', '', '', 62, NULL),
(1044, '4339914', 'A17.05.1.113.3', '', 'K8810908001030', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 47, NULL),
(1045, 'S/C', '310.17.02.35.141.01.07.12.(02)', '', '8,58E+11', 'APC', '42U', '', 'UPS', '', '', 56, NULL),
(1046, '3769345', '17.05.2.122.2', '', '294586', 'XTRATECH', 'FQC1266', '', 'CPU', '', '', 6, NULL),
(1047, '3772711', 'A17.05.1.366', '', 'FCH1616AJMY', 'CISCO', 'Cisco 3700', '', 'Telefono IP', '', '', 24, NULL),
(1048, '3795234', 'A17.05.01.1.136.1', '', 'AFZB2HA052097', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 30, NULL),
(1049, '8,00E+13', 'S/N', '', 'BC3370DVBLLAS', 'HP', 'KB0316', '', 'Teclado', '', '', 83, NULL),
(1050, 'S/C', 'S/C', '', 'D0C080AJHJ79I', 'COMPAQ', 'JBLPRO', '', 'Parlantes', '', '', 68, NULL),
(1051, '3769871', '00.33.21.4498.2', '', 'MXL1381KSL', 'HP', '6200 PRO', '', 'CPU', '', '', 9, NULL),
(1052, '3795084', '00.33.21.4498.3', '', 'BAUDU0OVB0V295', 'HP', 'KB0316', '', 'Teclado', '', '', 43, NULL),
(1053, '3795081', '00.33.21.4498.4', '', 'FATSQ0E5F21H5', 'HP', 'MSBN96', '', 'Mouse', '', '', 14, NULL),
(1054, '3794798', 'A17.05.01.1.42.1', '', 'AFZB2HA052105', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 45, NULL),
(1055, '514775', '8,00E+13', '', 'FP361348', 'CANON', 'DR-C125', '', 'Scaner', '', '', 15, NULL),
(1056, '3773614', 'A17.01.1.105', '', '20EYXQYC80142639A', 'GRANDSTREAM', 'GXP140', '', 'Telefono IP', '', '', 74, NULL),
(1057, '3773601', 'A17.01.1.230', '', 'S/N', 'Beaucoup', '42U', '', 'RACK', '', '', 7, NULL),
(1058, '3805402', 'A17.01.6.63', '', 'S/N', 'CNET', 'CSH-2400', '', 'Switch', '', '', 75, NULL),
(1059, '3773597', 'A17.01.1.231', '', 'CN29BX172P', 'HP', 'V1905-24 ', '', 'Switch', '', '', 50, NULL),
(1060, '3773598', 'A17.01.1.232', '', 'CNX29BX2707', 'HP', 'V1905', '', 'Switch', '', '', 57, NULL),
(1061, '3773600', 'S/N', '', '21AWKACBC039FE93', 'GRANDSTREAM', 'GXP140', '', 'Switch', '', '', 15, NULL),
(1062, '3805401', 'A17.01.1.107', '', 'S/N', 'Nexxt', 'S/M', '', 'Router', '', '', 66, NULL),
(1063, '3784608', 'BC.A17.01.1.28', '', 'S/N', 'Beaucoup', '42U', '', 'Tablero Electrico', '', '', 70, NULL),
(1064, 'S/N', 'A17.01.1.1.026.3', '', 'TECUSB205', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 19, NULL),
(1065, '3773608', 'A17.01.1.103', '', '2OEYXQYC80426394', 'GRANDSTREAM', 'GXP140', '', 'Telefono IP', '', '', 23, NULL),
(1066, '3773633', 'A17.01.1.99', '', '20EYY5KC503E5D02', 'GRANDSTREAM', 'GXP140', '', 'Telefono IP', '', '', 13, NULL),
(1067, '8,00E+13', '', '', 'YC5TH9LZ600922L', 'SAMSUNG', 'S/M', '', 'Pantalla', '', '', 2, NULL),
(1068, '3769447', '00.33.1993.2', '', 'MXL0470R3K', 'HP', '3130 PRO', '', 'CPU', '', '', 49, NULL),
(1069, '3794523', 'BC.00.33.63.7', '', '43CWT9R3TSX3', 'TOSHIBA', 'V63700', '', 'Disco Duro externo', '', '', 82, NULL),
(1070, '3794526', '00.33.1280.4', '', 'M48209081435', 'XTRATECH', 'M482', '', 'Mouse', '', '', 13, NULL),
(1071, '3794528', 'BC.17.01.2.22.3', '', 'F3TP299000429', 'DLINK', 'DIR615', '', 'Switch', '', '', 15, NULL),
(1072, '3772710', 'A17.05.1.073', '', 'FCH1616AJT2', 'CISCO', '6911', '', 'Telefono IP', '', '', 26, NULL),
(1073, '8,00E+11', 'BC.A17.05.229', '', '4110B06594', 'FORZA', 'SL-751', '', 'UPS', '', '', 50, NULL),
(1074, 'S/N', 'BC.A17.01.1.223', '', '26511900', 'DLINK', 'DIR-615', '', 'Router Modem MIFI', '', '', 74, NULL),
(1075, 'S/N', 'S/N', '', '11151ABF0151', 'Nexxt', 'NW122NXT19', '', 'Lector de Huella', '', '', 8, NULL),
(1076, 'S/N', '607948', '', 'S/N', 'ViewSonic', 'VS14928', '', 'Camara', '', '', 60, NULL),
(1077, '3795045', '1641', '', 'S/N', 'OMEGA', '279363BS', '', 'Parlantes', '', '', 77, NULL),
(1078, '(8004)2000443627', 'A17.01.1.234', '', 'UPS03330PF365', 'CDP', 'UPO3330', '', 'UPS', '', '', 63, NULL),
(1079, '3783542', '17.2.251', '', 'FCH1616AJFN', 'CISCO', '877-M', '', 'Telefono IP', '', '', 64, NULL),
(1080, '3773599', 'A17.01.1.233', '', 'CN2AF5Y0G2', 'HP', 'S/M', '', 'Switch', '', '', 23, NULL),
(1081, '3784610', 'A17.01.1.186', '', 'S/N', 'LG', 'FLATRON T1910B      ', '', 'Pantalla', '', '', 17, NULL),
(1082, '', '', '', 'A04B049347', 'FUJITSU', 'ScanSnap S1300', '', 'Scaner', '', '', 51, NULL),
(1083, '3772687', '17.07.0150', '', 'FCH1616AJQ3', 'CISCO', '6911', '', 'Telefono IP', '', '', 16, NULL),
(1084, '3769841', '00.43.4290', '', '41643700201', 'DELL', 'VOSTRO', '', 'Laptop', '', '', 67, NULL),
(1085, '8223862', '8,00E+13', '', 'CND5426PTD', 'HP', 'PROBOOK 440 G3  - RTL8723BE', '', 'Laptop', '', '', 67, NULL),
(1086, '3795249', '8,00E+13', '', 'CNC808PVY9', 'HP', 'L1506', '', 'Pantalla', '', '', 77, NULL),
(1087, '3795256', '8,00E+13', '', 'P0509055624', 'HP', 'MOAFKOA', '', 'Mouse', '', '', 35, NULL),
(1088, '3772730', '17.03.01.41', '', 'FCN1616AJDS', 'CISCO', '6911', '', 'Telefono IP', '', '', 22, NULL),
(1089, '8,00E+13', '17.8.252', '', 'FCH1616AJNA', 'CISCO', '6911', '', 'Telefono IP', '', '', 6, NULL),
(1090, '3772712', '00.14.14.37.49', '', 'FCH1616AJFK', 'CISCO', '6911', '', 'Telefono IP', '', '', 73, NULL),
(1091, '3795248', '8,00E+13', '', 'CNK0440QQX', 'HP', 'LE1911', '', 'Pantalla', '', '', 58, NULL),
(1092, '3795251', '00.33.14.68.3', '', 'BAUHR0IVBZI2BS', 'HP', 'KU-0316', '', 'Teclado', '', '', NULL, NULL),
(1093, '3795250', '00.33.19.68.4', '', 'FATSK0J9WZIFUN', 'HP', 'MOAFKOA', '', 'Mouse', '', '', 49, NULL),
(1094, 'S/N', 'S/N', '', 'FB7330AN3UI210G', 'HP', 'KB0316', '', 'Mouse', '', '', 37, NULL),
(1095, '3794831', 'A11.01.1.146.4', '', 'MSEUSB112', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 59, NULL),
(1096, '3768173', 'A05.01.1.077.2', '', 'CPUAGX088', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 20, NULL),
(1097, '3772936', 'A07.02.033.9', '', 'AFZB2HA052057', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 21, NULL),
(1098, '3803982', 'A07.02.035.1', '', 'TECUSB138', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 35, NULL),
(1099, '3773611', 'A17.01.1.106', '', '20EYXQYC80426399', 'GRANDSTREAM', 'GXP140', '', 'Telefono IP', '', '', 48, NULL),
(1100, '3795226', 'A17.05.1.116.4', '', 'M482090802936', 'XTRATECH', 'M482', '', 'Mouse', '', '', 18, NULL),
(1101, '3795258', '8,00E+13', '', 'BAUDR0HCPZW86M', 'HP', 'SK-2880', '', 'Teclado', '', '', 66, NULL),
(1102, '3794784', 'A08.01.1.069.5', '', 'AFZB2HA052122', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 22, NULL),
(1103, '3794813', 'A02.01.1.065', '', 'AFZB2HA050325', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 43, NULL),
(1104, '8,00E+13', 'A11.01.1.149.3', '', 'TECUSB086', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 70, NULL),
(1105, '3794838', 'A11.01.1.140.4', '', 'MSEUSB161', 'AGX PLUS', 'MSEUSB', '', 'Mouse', '', '', 9, NULL),
(1106, '3804705', '8,00E+13', '', 'AFZB2HA050276', 'AOC', 'TFT185W80PS', '', 'Pantalla', '', '', 61, NULL),
(1107, '3803975', 'A07.02.035.2', '', 'TECUSB137', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 37, NULL),
(1108, '8,00E+13', 'A17.07.019.4', '', 'M482090803989', 'XTRATECH', 'M482', '', 'Mouse', '', '', 43, NULL),
(1109, '3792685', 'A05.01.1.081.3', '', 'TECUSB-185', 'AGX PLUS', 'TECUSB', '', 'Teclado', '', '', 48, NULL),
(1110, '', 'A17.05.1.036.1', '', 'W7006S97F156901178D', 'XTRATECH', 'W7006S', '', 'Pantalla', '', '', 29, NULL),
(1111, '3796332', 'A17.05.1.036.3', '', 'K58810908001533', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 72, NULL),
(1112, 'MU?OZ CARRILLO MARIA FERNANDA', 'A17.05.1.036.4', '', 'M482090803532', 'XTRATECH', 'M482', '', 'Mouse', '', '', 61, NULL),
(1113, '', 'A10.01.1.77.3', '', 'CPUAGX-022', 'AGX PLUS', 'CPUAGX', '', 'CPU', '', '', 23, NULL),
(1114, '3769467', '00.33.5746', '', '1E022140S', 'TOSHIBA', 'P55-ASP5202SL', '', 'Laptop', '', '', 6, NULL),
(1115, '3772688', '17.01.0148', '', 'FCH1616AJ5Q', 'CISCO', '6911', '', 'Telefono IP', '', '', 44, NULL),
(1116, '3773616', 'A17.01.1.102', '', '20EYXQC8042638E', 'GRANDSTREAM', 'GXP140', '', 'Telefono IP', '', '', 32, NULL),
(1117, '3794115', '', '', 'JNZ211443', 'HP', 'M-SBN96', '', 'Mouse', '', '', 45, NULL),
(1118, '3794131', 'A17.04.034.3', '', 'BAUD0OVB0V7LH', 'HP', 'KB-0316', '', 'Teclado', '', '', 38, NULL),
(1119, '3769961', '8,00E+13', '', 'NXQ10900S7', 'HP', 'Proliant DL360 G5', '', 'Servidor', '', '', 52, NULL),
(1120, '3795390', 'A17.05.1.018.3', '', 'K58810908000614', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 35, NULL),
(1121, 'S/N', 'S/N', '', 'L2B21753849', 'LOGITECH', 'C920', '', 'Mouse', '', '', 48, NULL),
(1122, '3794120', '00.33.1212.3', '', 'K58810908000484', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 33, NULL),
(1123, '', '8,00E+13', '', 'N13L8770', 'TOPAZ', 'T-LBK750-BHSB-R', '', 'Capturador de firma', '', '', 82, NULL),
(1124, '', '00.33.6150', '', '1411LZ00V6R9', 'LOGITECH', 'C920', '', 'Camara', '', '', 17, NULL),
(1125, '', '00.33.6070', '', 'H38140401216', 'SECUGEN', 'HSDU03P', '', 'Capturador de Huella', '', '', 16, NULL),
(1126, 'A17.04.1.011.3', '', '', 'S/N', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 75, NULL),
(1127, 'S/N', 'A17.04.1.011.3', '', 'S/N', 'XTRATECH', 'K5881', '', 'Teclado', '', '', 70, NULL),
(1128, 'S/N', 'S/N', '', 'M312080767980', 'Bitrom', 'S/M', '', 'Mouse', '', '', 35, NULL),
(1129, '', 'BC.A17.19.1.180.2', '', '10191427853', 'STAR', 'TSP100', '', 'UPS', '', '', 28, NULL),
(1130, '3795194', 'BC.17.01.10.1.180', '', '10191431237', 'STAR', 'TSP100', '', 'UPS', '', '', 53, NULL),
(1131, '514780', '00.33.6478', '', 'FP361336', 'DLINK', 'DIR615', '', 'Router Modem MIFI', '', '', 67, NULL),
(1132, 'S/C', 'S/C', '', 'D0C080A5JHJ20D', 'COMPAQ', 'JBLPRO', '', 'Parlantes', '', '', 27, NULL),
(1133, 'S/C', 'S/C', '', 'D0C080AJHJ79I', 'COMPAQ', 'JBLPRO', '', 'Parlantes', '', '', 80, NULL),
(1134, '937621', '00.11.2.22222', '8004(2000)121213', 'F45120-0000001-1', 'EPSON', 'WF-7710', NULL, 'IMPRESORA INYECCCION DE TINTA', 'NEGRO', 'NUEVO-BUENO', 6, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedientes`
--

CREATE TABLE `expedientes` (
  `idExpediente` int(11) NOT NULL,
  `folio` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `resolucion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `clase` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `servicio` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `accion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fisico` varchar(128) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `archivo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `expedientes`
--

INSERT INTO `expedientes` (`idExpediente`, `folio`, `resolucion`, `fecha`, `clase`, `servicio`, `accion`, `fisico`, `descripcion`, `observacion`, `archivo`) VALUES
(5, '0367-DV-017-2020-ANT-DPP', 'ANT-DPP-DT-2020-8421320', '2020-08-07', 'DV', 'CARGA PESADA', 'MOD ', 'CUARTO: FRONTAL-SECCION:1-ESTANTE: 1-FILA: 1-COLUMNA: 3', 'RESOLUCION DESHABILITACION DE VEHICULOS', 'DOCUMENTO ATENDIDO', 'archivos/img20210130_16002027.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fisico`
--

CREATE TABLE `fisico` (
  `idfisico` int(11) NOT NULL,
  `cuarto` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `seccion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `estante` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `fila` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `columna` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `expedientes_idExpediente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fisico`
--

INSERT INTO `fisico` (`idfisico`, `cuarto`, `seccion`, `estante`, `fila`, `columna`, `expedientes_idExpediente`) VALUES
(1, 'FRONTAL', '1', '1', '1', '1', NULL),
(2, 'FRONTAL', '1', '1', '1', '2', NULL),
(3, 'FRONTAL', '1', '1', '1', '3', NULL),
(4, 'FRONTAL', '1', '1', '2', '1', NULL),
(5, 'FRONTAL', '1', '1', '2', '2', NULL),
(6, 'FRONTAL', '1', '1', '2', '3', NULL),
(7, 'FRONTAL', '1', '1', '3', '1', NULL),
(8, 'FRONTAL', '1', '1', '3', '2', NULL),
(9, 'FRONTAL', '1', '1', '3', '3', NULL),
(10, 'POSTERIOR', '1', '1', '1', '1', NULL),
(11, 'POSTERIOR', '1', '1', '1', '2', NULL),
(12, 'POSTERIOR', '1', '1', '1', '3', NULL),
(13, 'POSTERIOR', '1', '1', '2', '1', NULL),
(14, 'POSTERIOR', '1', '1', '2', '2', NULL),
(15, 'POSTERIOR', '1', '1', '2', '3', NULL),
(16, 'POSTERIOR', '1', '1', '3', '1', NULL),
(17, 'POSTERIOR', '1', '1', '3', '2', NULL),
(18, 'POSTERIOR', '1', '1', '3', '3', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimientos`
--

CREATE TABLE `mantenimientos` (
  `idmantenimiento` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `empresas_idempresas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimientos_has_tecnicos`
--

CREATE TABLE `mantenimientos_has_tecnicos` (
  `mantenimientos_idmantenimiento` int(11) NOT NULL,
  `tecnicos_idtecnico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idpersona` int(11) NOT NULL,
  `cedula` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cargo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `departamentos_iddepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idpersona`, `cedula`, `nombres`, `apellidos`, `direccion`, `telefono`, `cargo`, `email`, `foto`, `departamentos_iddepartamento`) VALUES
(1, '1704938644', 'LEONIDAS', 'ANCHATIPAN', 'CDLA. IBARRA', '981584040', 'MENSAJERIA', 'leonidas.anchatipan@ant.gob.ec', 'NULL', 5),
(2, '1714770060', 'PATRICIO WLADIMIR', 'SALAS SARANGO', '', '', 'TECNICO DE ARCHIVO Y DOCUMENTACION PROVINCIAL', 'patricio.salas@ant.gob.ec', 'x', 7),
(3, '1716796659', 'EMERSON WLADIMIR', 'CAIZA CANCHIG', '', '', 'TECNICO DE ARCHIVO Y DOCUMENTACION PROVINCIAL', 'emerson.caiza@ant.gob.ec', 'x', 12),
(4, '1001516184', 'DORA FLOR', 'SIERRA MENDEZ', '', '', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'dora.sierra@ant.gob.ec', 'x', 13),
(5, '1709333940', 'CHRISTIAN RICARDO', 'PAZ PALIS', '', '', 'TECNICO DE ARCHIVO Y DOCUMENTACION PROVINCIAL', 'christian.paz@ant.gob.ec', 'x', 7),
(6, '1710898345', 'MAURICIO RUBEN', 'OCHOA CALDERON', 'TERRANOVA MZ6 A18', '0984814350', 'EVALUADOR TEORICO-PSICOSENSOMETRICO', 'mauricio.ochoa@ant.gob.ec', 'x', 5),
(7, '603028267', 'RAQUEL JEANNETH', 'INCA FREIRE', '', '', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'raquel.inca@ant.gob.ec', 'x', 8),
(8, '1308074481', 'MARIA MONSERRATE', 'MARCILLO VELEZ', '', '', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'maria.marcillo@ant.gob.ec', 'x', 7),
(9, '1712852803', 'MARIA FERNANDA', 'MU?OZ CARRILLO', '', '', 'EVALUADOR TEORICO-PSICOSENSOMETRICO', 'maria.mu?oz@ant.gob.ec', 'x', 7),
(10, '603597634', 'MAYRA ELISABETH', 'GUILLEN TORRES', '', '', 'EVALUADOR TEORICO-PSICOSENSOMETRICO', 'mayra.guillen@ant.gob.ec', 'x', 7),
(11, '401022066', 'PAULA ANDREA', 'BUCHELI UTRERAS', '', '', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'paula.bucheli@ant.gob.ec', 'x', 7),
(12, '1724491780', 'MIGUEL ANGEL', 'LARENAS MARTINEZ', '', '', 'TECNICO DE CENTRO DE ACTUALIZACION DE DATOS P', 'miguel.larenas@ant.gob.ec', 'x', 2),
(13, '1711409399', 'CARMEN OFELIA', 'MARCHAN ROMERO', '', '', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'carmen.marchan@ant.gob.ec', 'x', 7),
(14, '1708098544', 'NANCY LUCIA', 'GALARRAGA JARAMILLO', '', '', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'nancy.galarraga@ant.gob.ec', 'x', 7),
(15, '1718454646', 'PAULINA MARGARITA', 'CALDERON IBARRA', '', '', 'TECNICO DE ARCHIVO Y DOCUMENTACION PROVINCIAL', 'paulina.calderon@ant.gob.ec', 'x', 7),
(16, '1707898779', 'MARIA BELEN', 'CHIMBO GUILLEN', '', '', 'SERVIDOR PUBLICO DE APOYO 3', 'maria.chimbo@ant.gob.ec', 'x', 7),
(17, '1714482229', 'JORGE HAROLD', 'RIVADENEIRA AGUIRRE', '', '', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'jorge.rivadeneira@ant.gob.ec', 'x', 7),
(18, '1715241202', 'PAOLA ALEXANDRA', 'URGILES ROGEL', 'CARAPUNGO', '0984483859', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'paola.urgiles@ant.gob.ec', 'x', 2),
(19, '1718801234', 'NAOMY SHALLYN', 'MORALES CARRERA', '', '', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'naomy.morales@ant.gob.ec', 'x', 7),
(20, '1721633772', 'CRISTINA ALEJANDRA', 'SOLA GRANDES', '', '', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'cristina.sola@ant.gob.ec', 'x', 7),
(21, '103219424', 'YURI IVAN', 'AGUIRRE MENDOZA', '', '', 'TECNICO DE ARCHIVO Y DOCUMENTACION PROVINCIAL', 'yuri.aguirre@ant.gob.ec', 'x', 7),
(22, '1711939502', 'NERY VERONICA', 'VELOZ SANTILLAN', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'nery.veloz@ant.gob.ec', 'x', 11),
(23, '1803601523', 'ALEXANDRA PAULINA', 'LOPEZ JACOME', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'alexandra.lopez@ant.gob.ec', 'x', 11),
(24, '201752276', 'JHONNY PATRICIO', 'RODRIGUEZ MENDOZA', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'jhonny.rodriguez@ant.gob.ec', 'x', 11),
(25, '1714767587', 'DARIO XAVIER', 'ALBUJA CERON', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'dario.albuja@ant.gob.ec', 'x', 12),
(26, '1003836283', 'LIZBETH MARIELA', 'MONTEROS JACOME', '', '', 'TECNICO EN EMISION DE MATRICULAS', 'lizbeth.monteros@ant.gob.ec', 'x', 12),
(27, '1716227267', 'MARJORYE ELIZABETH', 'HERNANDEZ JACOME', '', '', 'TECNICO EN EMISION DE MATRICULAS', 'marjorye.hernandez@ant.gob.ec', 'x', 13),
(28, '1718446634', 'ERIKA YANIRA', 'CONSTANTE SANAFRIA', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'erika.constante@ant.gob.ec', 'x', 8),
(29, '1713878500', 'STALIN ERNESTO', 'POZO NORO?A', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'stalin.pozo@ant.gob.ec', 'x', 9),
(30, '1714753736', 'CHRISTIAN GEOVANNY', 'SALAZAR SALAS', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'christian.salazar@ant.gob.ec', 'x', 6),
(31, '1724237456', 'LUIS EDUARDO', 'SANTILLAN PILLAJO', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'luis.santillan@ant.gob.ec', 'x', 9),
(32, '1714835152', 'ESTEBAN ANDRES', 'LARRETA SABAY', '', '', 'TECNICO  DE DOCUMENTACION CERTIFICACION Y ARC', 'esteban.larreta@ant.gob.ec', 'x', 7),
(33, '1711718260', 'SANTIAGO HUMBERTO', 'BALDEON PATI?O', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'santiago.baldeon@ant.gob.ec', 'x', 7),
(34, '1713162459', 'CESAR ROBERTO', 'MIELES ALARCON', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'cesar.mieles@ant.gob.ec', 'x', 5),
(35, '1708513872', 'KARINA ELIZABETH', 'TINILLO MONTALVO', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'karina.tinillo@ant.gob.ec', 'x', 8),
(36, '1704957891', 'EDWIN MAURICIO', 'TRUJILLO CAISAPASTO', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'edwin.trujillo@ant.gob.ec', 'x', 4),
(37, '1100458395', 'MIGUEL ALFREDO', 'LEON FERNANDEZ', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'miguel.leon@ant.gob.ec', 'x', 7),
(38, '602775967', 'LUIS FRANCISCO', 'GUEVARA LEON', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'luis.guevara@ant.gob.ec', 'x', 7),
(39, '1705871455', 'LEAO RENATHA', 'GARCES CARNEIRO', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'leao.garces@ant.gob.ec', 'x', 13),
(40, '1716942865', 'NANCY JEANETH', 'CANDO SAQUINGA', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'nancy.cando@ant.gob.ec', 'x', 7),
(41, '1724143498', 'JONATHAN PAUL', 'ROJAS SALAZAR', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'jonathan.rojas@ant.gob.ec', 'x', 10),
(42, '1709318966', 'PATRICIA JANNETH', 'SALAZAR SERRANO', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'patricia.salazar@ant.gob.ec', 'x', 7),
(43, '1717835910', 'GIOVANNI FERNANDO', 'CORONEL MONTALVO', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'giovanni.coronel@ant.gob.ec', 'x', 3),
(44, '503269995', 'MARIA FERNANDA', 'TIPAN VIRACOCHA', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'maria.tipan@ant.gob.ec', 'x', 3),
(45, '1712456563', 'ANGELA JUDITH', 'GODOY BEDON', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'angela.godoy@ant.gob.ec', 'x', 6),
(46, '1713294450', 'LEONARDO DAVID', 'FLORES PICO', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'leonardo.flores@ant.gob.ec', 'x', 10),
(47, '1715406664', 'VIVIANA JACQUELINE', 'CHACON ENRIQUEZ', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'viviana.chacon@ant.gob.ec', 'x', 8),
(48, '1002870002', 'VERONICA MARIBEL', 'ANDRADE MARTINEZ', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'veronica.andrade@ant.gob.ec', 'x', 4),
(49, '1803463270', 'EMMA MELISSA', 'AGUAYO ESCOBAR', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'emma.aguayo@ant.gob.ec', 'x', 9),
(50, '1714734389', 'ALEJANDRO DAVID', 'MACIAS RUIZ', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'alejandro.macias@ant.gob.ec', 'x', 7),
(51, '1717342727', 'MARIA VERONICA', 'GUILLEN HERRERA', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'maria.guillen@ant.gob.ec', 'x', 7),
(52, '1721127601', 'DIANA KARINA', 'ALDAZ RODRIGUEZ', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'diana.aldaz@ant.gob.ec', 'x', 10),
(53, '1716130057', 'MERCEDES', 'PAZMI?O IZA', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'veronica.pazmi?o@ant.gob.ec', 'x', 4),
(54, '704411982', 'BRYAN RAUL', 'JACOME BARAHONA', '', '', 'ASISTENTE DE RECAUDACION CANTONAL', 'bryan.jacome@ant.gob.ec', 'x', 11),
(55, '1710714112', 'EDWIN MIGUEL', 'SANGUANO QUIROZ', '', '', 'ASISTENTE DE RECAUDACION CANTONAL', 'edwin.sanguano@ant.gob.ec', 'x', 12),
(56, '1104016892', 'ALEXANDRA ELIZABETH', 'GARCIA JIRON', '', '', 'ANALISTA  DE RECAUDACION PROVINCIAL', 'alexandra.garcia@ant.gob.ec', 'x', 7),
(57, '1713861852', 'LORENA BEDABEECY', 'CEDE?O ZAMBRANO', '', '', 'ANALISTA DE SOPORTE TECNICO INFORMATICO PROVI', 'lorena.cede?o@ant.gob.ec', 'x', 9),
(58, '1722650171', 'MARITZA ELIZABETH', 'CHULCA SOSORANGA', '', '', 'ANALISTA  DE RECAUDACION PROVINCIAL', 'maritza.chulca@ant.gob.ec', 'x', 7),
(59, '1203575194', 'GINA MARIUXI', 'CASTRO RODRIGUEZ', '', '', 'ANALISTA  DE RECAUDACION PROVINCIAL', 'gina.castro@ant.gob.ec', 'x', 9),
(60, '1709735839', 'SANTIAGO XAVIER', 'MORENO MALDONADO', '', '', 'SERVIDOR PUBLICO 3', 'santiago.moreno@ant.gob.ec', 'x', 4),
(61, '1712283637', 'ANDREA FERNANDA', 'AREVALO BUCHELI', '', '', 'ABOGADO PROVINCIAL', 'andrea.arevalo@ant.gob.ec', 'x', 2),
(62, '1713810834', 'DORIS ANTONIETA', 'PADILLA SANCHEZ', '', '', 'ANALISTA DE CONTABILIDAD PROVINCIAL', 'doris.padilla@ant.gob.ec', 'x', 7),
(63, '201645157', 'GUSTAVO GABRIEL', 'COSTTA ESCOBAR', 'MASACOTA PUENTO Y PEDRO BOTO', '0984522484', 'JEFE DE OFICINA DE ATENCION AL USUARIO', 'gustavo.costta@ant.gob.ec', 'x', 13),
(64, '1714331137', 'XIMENA CECILIA', 'CARRERA GUERRON', '', '', 'JEFE DE OFICINA DE ATENCION AL USUARIO', 'ximena.carrera@ant.gob.ec', 'x', 9),
(65, '1708440902', 'ALEJANDRO ALBERTO', 'ARIZO ARIZO', '', '', 'SERVIDOR PUBLICO 5', 'alejandro.arizo@ant.gob.ec', 'x', 5),
(66, '1710444231', 'DANY EDUARDO', 'ZAMBRANO RUIZ', '', '', 'JEFE DE OFICINA DE ATENCION AL USUARIO', 'dany.zambrano@ant.gob.ec', 'x', 8),
(67, '1718679606', 'PATRICIA MARLENE', 'BRAVO CAIZA', '', '', 'ANALISTA DE GESTION Y CONTROL DE LOS SERVICIO', 'patricia.bravo@ant.gob.ec', 'x', 4),
(68, '1103201933', 'ASTRID DOLORES', 'FIERRO ESPINOZA', '', '', 'ANALISTA DE GESTION Y CONTROL DE LOS SERVICIO', 'astrid.fierro@ant.gob.ec', 'x', 3),
(69, '1002966602', 'LILY CELESTE', 'MORALES CABASCANGO', '', '', 'ANALISTA DE GESTION Y CONTROL DE LOS SERVICIO', 'lily.morales@ant.gob.ec', 'x', 10),
(70, '1717263709', 'YESENIA DEL CISNE', 'QUEZADA SOLANO', '', '', 'ANALISTA DE GESTION Y CONTROL DE LOS SERVICIO', 'yesenia.quezada@ant.gob.ec', 'x', 4),
(71, '1718614348', 'CARLOS GIOVANNY', 'PEREZ CHIPANTIZA', '', '', 'REVISOR VEHICULAR', 'carlos.perez@ant.gob.ec', 'x', 10),
(72, '1720224821', 'JOSE JAVIER', 'GUANO TOAQUIZA', '', '', 'FOTOGRAFO', 'jose.guano@ant.gob.ec', 'x', 6),
(73, '1703104115', 'FRANCISCO JAVIER', 'PESANTEZ ACOSTA', '', '', 'FOTOGRAFO', 'francisco.pesantez@ant.gob.ec', 'x', 13),
(74, '401024377', 'BYRON EDUARDO', 'ROBLES CADENA', '', '', 'FOTOGRAFO', 'byron.robles@ant.gob.ec', 'x', 7),
(75, '1205351255', 'VERONICA ESTEFANIA', 'CASTRO YOZA', '', '', 'FOTOGRAFO', 'veronica.castro@ant.gob.ec', 'x', 13),
(76, '1001511037', 'MARIANA DE', 'HIDALGO ACOSTA', '', '', 'AUXILIAR DE CENTRO INFANTIL', 'mariana.hidalgo@ant.gob.ec', 'x', 6),
(77, '1707919096', 'FANNY YOLANDA', 'HIDALGO VACA', '', '', 'SERVIDOR PUBLICO 4', 'fanny.hidalgo@ant.gob.ec', 'x', 7),
(78, '1704999893', 'ELSYE ZAHIA', 'FUERTES ALARCON', '', '', 'SERVIDOR PUBLICO 5', 'elsye.fuertes@ant.gob.ec', 'x', 7),
(79, '1708148505', 'SONIA ELIZABETH', 'SALGADO TORRES', '', '', 'SERVIDOR PUBLICO 5', 'sonia.salgado@ant.gob.ec', 'x', 7),
(80, '1305071563', 'VANESSA DESIRE', 'ALAVA ALVAREZ', '', '', 'ANALISTA DE TESORERIA PROVINCIAL', 'vanessa.alava@ant.gob.ec', 'x', 7),
(81, '602906398', 'PABLO PATRICIO', 'QUINTANA FREIRE', '', '', 'TECNICO EN EMISION DE LICENCIAS', 'pablo.quintana@ant.gob.ec', 'x', 7),
(82, '1722366679', 'DENISSE ', 'MARTINEZ MENDOZA', '', '', 'TECNICO DE SERVICIO AL CIUDADANO PROVINCIAL', 'denisse.martinez@ant.gob.ec', 'x', 7),
(83, '1713704979', 'SANDRA ELIZABETH', 'MALDONADO LOPEZ', 'GUAMANI A18', '23069052', 'OPERADOR DE SISTEMA', 'sandra.maldonado@ant.gob.ec', 'NULL', 7),
(86, '1789765445', 'JUAN ESTEBAN', 'JIJON VALDIVIEZO', 'MACHACHI', '0988882211', 'TECNICO DE ARCHIVO', 'juan.jijon@ant.gob.ec', NULL, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `idservicio` int(11) NOT NULL,
  `modalidad` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `expedientes_idExpediente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`idservicio`, `modalidad`, `tipo`, `expedientes_idExpediente`) VALUES
(1, 'CARGA PESADA', 'COMERCIAL', NULL),
(2, 'CUENTA PROPIA', 'COMERCIAL', NULL),
(3, 'COMPAÑÍA MIXTA', 'COMERCIAL', NULL),
(4, 'BUS DE SERVICIO PUBLICO', 'COMERCIAL', NULL),
(5, 'TRANSPORTE ESCOLAR', 'COMERCIAL', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnicos`
--

CREATE TABLE `tecnicos` (
  `idtecnico` int(11) NOT NULL,
  `nombres` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `personas_idpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `idticket` int(11) NOT NULL,
  `tipo_servicio` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `f_inicio` date NOT NULL,
  `f_fin` date DEFAULT NULL,
  `tecnicos_idtecnico` int(11) NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicaciones`
--

CREATE TABLE `ubicaciones` (
  `idubicacion` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `canton` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `provincia` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ubicaciones`
--

INSERT INTO `ubicaciones` (`idubicacion`, `descripcion`, `canton`, `provincia`, `direccion`) VALUES
(1, 'Unidad Administrativa de Pichincha', 'Quito', 'Pichincha', 'Av. Mariscal Sucre y José Sanchez - San Carlos'),
(2, 'UAP-Atención al Usuario-(1)', 'Quito', 'Pichincha', 'C.C. El Recreo S2'),
(3, 'UAP-Atención al Usuario-(2)', 'Quito', 'Pichincha', 'Luis Cordero y Joaquín Pinto'),
(4, 'UAP-Atención al Usuario-(3)', 'Quito', 'Pichincha', 'C.C Ventura Mall - Tumbaco'),
(5, 'UAP-Atención al Usuario-(4)', 'Rumiñahui', 'Pichincha', 'C.C River Mall - Sangolquí'),
(6, 'UAP-Atención al Usuario-(5)', 'Mejía', 'Pichincha', 'Barriga y César Calvachi - Machachi'),
(7, 'UAP-Atención al Usuario-(6)', 'Cayambe', 'Pichincha', 'Avenida Víctor Cartagena - Cayambe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `paswword` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `personas_idpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre`, `paswword`, `personas_idpersona`) VALUES
(1, 'Administrador', 'Admin2021', 6),
(2, 'Administrador', 'Admin2021', 65),
(3, 'Administrador', 'Admin2021', 34),
(4, 'Soporte', 'Soporte2021', 6),
(5, 'Soporte', 'Soporte2021', 65),
(6, 'Soporte', 'Soporte2021', 34),
(7, 'Archivo', 'Archivo2021', 72),
(8, 'Consulta', 'Consulta2021', 70);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acciones`
--
ALTER TABLE `acciones`
  ADD PRIMARY KEY (`idaccion`),
  ADD KEY `fk_acciones_expedientes1_idx` (`expedientes_idExpediente`);

--
-- Indices de la tabla `actas`
--
ALTER TABLE `actas`
  ADD PRIMARY KEY (`idacta`),
  ADD KEY `fk_actas_tecnicos1_idx` (`tecnicos_idtecnico`);

--
-- Indices de la tabla `bienes`
--
ALTER TABLE `bienes`
  ADD PRIMARY KEY (`idbien`),
  ADD KEY `fk_bienes_custodios1_idx` (`custodios_idcustodio`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`idclase`),
  ADD KEY `fk_clases_expedientes1_idx` (`expedientes_idExpediente`);

--
-- Indices de la tabla `custodios`
--
ALTER TABLE `custodios`
  ADD PRIMARY KEY (`idcustodio`),
  ADD KEY `fk_custodios_personas1_idx` (`personas_idpersona`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`iddepartamento`),
  ADD KEY `fk_departamentos_dependencias1_idx` (`dependencias_iddependencia`);

--
-- Indices de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  ADD PRIMARY KEY (`iddependencia`),
  ADD KEY `fk_dependencias_ubicaciones1_idx` (`ubicaciones_idubicacion`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`idempresas`);

--
-- Indices de la tabla `equipostecnologicos`
--
ALTER TABLE `equipostecnologicos`
  ADD PRIMARY KEY (`idequipo`),
  ADD KEY `fk_equipostecnologicos_custodios1_idx` (`custodios_idcustodio`),
  ADD KEY `fk_equipostecnologicos_tickets1_idx` (`tickets_idticket`);

--
-- Indices de la tabla `expedientes`
--
ALTER TABLE `expedientes`
  ADD PRIMARY KEY (`idExpediente`);

--
-- Indices de la tabla `fisico`
--
ALTER TABLE `fisico`
  ADD PRIMARY KEY (`idfisico`),
  ADD KEY `fk_fisico_expedientes1_idx` (`expedientes_idExpediente`);

--
-- Indices de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD PRIMARY KEY (`idmantenimiento`),
  ADD KEY `fk_mantenimientos_empresas1_idx` (`empresas_idempresas`);

--
-- Indices de la tabla `mantenimientos_has_tecnicos`
--
ALTER TABLE `mantenimientos_has_tecnicos`
  ADD PRIMARY KEY (`mantenimientos_idmantenimiento`,`tecnicos_idtecnico`),
  ADD KEY `fk_mantenimientos_has_tecnicos_tecnicos1_idx` (`tecnicos_idtecnico`),
  ADD KEY `fk_mantenimientos_has_tecnicos_mantenimientos1_idx` (`mantenimientos_idmantenimiento`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `fk_personas_departamentos1_idx` (`departamentos_iddepartamento`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`idservicio`),
  ADD KEY `fk_servicios_expedientes1_idx` (`expedientes_idExpediente`);

--
-- Indices de la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`idtecnico`),
  ADD KEY `fk_tecnicos_personas1_idx` (`personas_idpersona`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`idticket`),
  ADD KEY `fk_tickets_tecnicos1_idx` (`tecnicos_idtecnico`);

--
-- Indices de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  ADD PRIMARY KEY (`idubicacion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `fk_usuarios_personas1_idx` (`personas_idpersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acciones`
--
ALTER TABLE `acciones`
  MODIFY `idaccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `actas`
--
ALTER TABLE `actas`
  MODIFY `idacta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bienes`
--
ALTER TABLE `bienes`
  MODIFY `idbien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `idclase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `custodios`
--
ALTER TABLE `custodios`
  MODIFY `idcustodio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  MODIFY `iddependencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `idempresas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipostecnologicos`
--
ALTER TABLE `equipostecnologicos`
  MODIFY `idequipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1135;

--
-- AUTO_INCREMENT de la tabla `expedientes`
--
ALTER TABLE `expedientes`
  MODIFY `idExpediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `fisico`
--
ALTER TABLE `fisico`
  MODIFY `idfisico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  MODIFY `idmantenimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `idservicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
  MODIFY `idtecnico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `idticket` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  MODIFY `idubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acciones`
--
ALTER TABLE `acciones`
  ADD CONSTRAINT `fk_acciones_expedientes1` FOREIGN KEY (`expedientes_idExpediente`) REFERENCES `expedientes` (`idExpediente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `actas`
--
ALTER TABLE `actas`
  ADD CONSTRAINT `fk_actas_tecnicos1` FOREIGN KEY (`tecnicos_idtecnico`) REFERENCES `tecnicos` (`idtecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `bienes`
--
ALTER TABLE `bienes`
  ADD CONSTRAINT `fk_bienes_custodios1` FOREIGN KEY (`custodios_idcustodio`) REFERENCES `custodios` (`idcustodio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `fk_clases_expedientes1` FOREIGN KEY (`expedientes_idExpediente`) REFERENCES `expedientes` (`idExpediente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `custodios`
--
ALTER TABLE `custodios`
  ADD CONSTRAINT `fk_custodios_personas1` FOREIGN KEY (`personas_idpersona`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `fk_departamentos_dependencias1` FOREIGN KEY (`dependencias_iddependencia`) REFERENCES `dependencias` (`iddependencia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `dependencias`
--
ALTER TABLE `dependencias`
  ADD CONSTRAINT `fk_dependencias_ubicaciones1` FOREIGN KEY (`ubicaciones_idubicacion`) REFERENCES `ubicaciones` (`idubicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `equipostecnologicos`
--
ALTER TABLE `equipostecnologicos`
  ADD CONSTRAINT `fk_equipostecnologicos_custodios1` FOREIGN KEY (`custodios_idcustodio`) REFERENCES `custodios` (`idcustodio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_equipostecnologicos_tickets1` FOREIGN KEY (`tickets_idticket`) REFERENCES `tickets` (`idticket`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fisico`
--
ALTER TABLE `fisico`
  ADD CONSTRAINT `fk_fisico_expedientes1` FOREIGN KEY (`expedientes_idExpediente`) REFERENCES `expedientes` (`idExpediente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD CONSTRAINT `fk_mantenimientos_empresas1` FOREIGN KEY (`empresas_idempresas`) REFERENCES `empresas` (`idempresas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mantenimientos_has_tecnicos`
--
ALTER TABLE `mantenimientos_has_tecnicos`
  ADD CONSTRAINT `fk_mantenimientos_has_tecnicos_mantenimientos1` FOREIGN KEY (`mantenimientos_idmantenimiento`) REFERENCES `mantenimientos` (`idmantenimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mantenimientos_has_tecnicos_tecnicos1` FOREIGN KEY (`tecnicos_idtecnico`) REFERENCES `tecnicos` (`idtecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `fk_personas_departamentos1` FOREIGN KEY (`departamentos_iddepartamento`) REFERENCES `departamentos` (`iddepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `fk_servicios_expedientes1` FOREIGN KEY (`expedientes_idExpediente`) REFERENCES `expedientes` (`idExpediente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD CONSTRAINT `fk_tecnicos_personas1` FOREIGN KEY (`personas_idpersona`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `fk_tickets_tecnicos1` FOREIGN KEY (`tecnicos_idtecnico`) REFERENCES `tecnicos` (`idtecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_personas1` FOREIGN KEY (`personas_idpersona`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
