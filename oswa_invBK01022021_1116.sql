-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2021 a las 11:27:28
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
-- Base de datos: `oswa_inv`
--
CREATE DATABASE IF NOT EXISTS `oswa_inv` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oswa_inv`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asociacion`
--

CREATE TABLE `asociacion` (
  `cod_asociacion` int(11) NOT NULL,
  `nom_asociacion` varchar(60) NOT NULL,
  `abr_asociacion` varchar(10) NOT NULL,
  `nit_asociacion` varchar(14) NOT NULL,
  `tel_asociacion` varchar(8) NOT NULL,
  `dir_asociacion` varchar(100) NOT NULL,
  `cod_departamento` int(11) NOT NULL,
  `cod_municipio` int(11) NOT NULL,
  `cel_asociacion` varchar(10) NOT NULL,
  `rep_asociacion` varchar(40) NOT NULL,
  `dui_rep_asoc` varchar(12) NOT NULL,
  `nit_rep_asoc` varchar(18) NOT NULL,
  `prof_rep_asoc` varchar(20) NOT NULL,
  `fech_nac_rep_asoc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asociacion`
--

INSERT INTO `asociacion` (`cod_asociacion`, `nom_asociacion`, `abr_asociacion`, `nit_asociacion`, `tel_asociacion`, `dir_asociacion`, `cod_departamento`, `cod_municipio`, `cel_asociacion`, `rep_asociacion`, `dui_rep_asoc`, `nit_rep_asoc`, `prof_rep_asoc`, `fech_nac_rep_asoc`) VALUES
(18, 'Asocacion Uno', 'AS1', '1111-111111-11', '1111-111', 'direccion 1', 3, 167, '1111-1111', 'representante 1', '11111111-1', '1111-111111-111-1', 'profesion 1', '2020-07-08'),
(20, 'asociacion tres', 'asoc3', '3333-333333-33', '3333-333', 'direccion3', 10, 128, '3333-3333', 'representante 3', '44444444-4', '4444-444444-444-4', 'Licenciado', '2006-01-14');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `asociacion1`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `asociacion1` (
`cod_asociacion` int(11)
,`nom_asociacion` varchar(60)
,`abr_asociacion` varchar(10)
,`nit_asociacion` varchar(14)
,`departamento` varchar(30)
,`municipio` varchar(30)
,`dir_asociacion` varchar(100)
,`tel_asociacion` varchar(8)
,`cel_asociacion` varchar(10)
,`rep_asociacion` varchar(40)
,`dui_rep_asoc` varchar(12)
,`nit_rep_asoc` varchar(18)
,`prof_rep_asoc` varchar(20)
,`fech_nac_rep_asoc` date
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(2, 'Clientes'),
(1, 'Repuestos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordenadas_tuberias`
--

CREATE TABLE `coordenadas_tuberias` (
  `idCoordenadas` int(11) NOT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `geom` geometry DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coordenadas_tuberias`
--

INSERT INTO `coordenadas_tuberias` (`idCoordenadas`, `Descripcion`, `geom`) VALUES
(1, 'Tuberia metal', NULL),
(2, 'Tuberia pvc', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_linestring`
--

CREATE TABLE `data_linestring` (
  `gid` int(3) NOT NULL,
  `notes` char(50) COLLATE utf8_spanish_ci NOT NULL,
  `geom` linestring NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `data_linestring`
--

INSERT INTO `data_linestring` (`gid`, `notes`, `geom`) VALUES
(11, 'TUBERIA PRINCIPAL', 0xe6100000010200000005000000aca92c0abb0456c0d2a6ea1ed9fc2a4076e09c11a50456c0abb019e082fc2a402a711de38a0456c07bf8325184fc2a40dc48d922690456c0abb019e082fc2a40a0dcb6ef510456c0abb019e082fc2a40),
(12, 'TUBERIA SECUNDARIA', 0xe61000000102000000020000007d3cf4ddad0456c087c43d963efc2a406a4c88b9a40456c01d588e9081fc2a40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_point`
--

CREATE TABLE `data_point` (
  `gid` int(3) NOT NULL,
  `notes` char(50) COLLATE utf8_spanish_ci NOT NULL,
  `geom` point NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `data_point`
--

INSERT INTO `data_point` (`gid`, `notes`, `geom`) VALUES
(9, 'CLIENTE1', 0xe610000001010000005e6743fe990456c038328ffcc1002b40),
(10, 'CLIENTE 1', 0xe6100000010100000022c7d633840456c09d84d21742fe2a40),
(11, 'CLIENTE 3', 0xe61000000101000000ff21fdf6750456c00caf2479aeff2a40),
(12, 'CLIENTE 4', 0xe6100000010100000062484e266e0456c08cf7e3f6cbff2a40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_polygon`
--

CREATE TABLE `data_polygon` (
  `gid` int(3) NOT NULL,
  `notes` char(50) COLLATE utf8_spanish_ci NOT NULL,
  `geom` polygon NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `data_polygon`
--

INSERT INTO `data_polygon` (`gid`, `notes`, `geom`) VALUES
(4, 'CEMENTERIO LOLOTIQUE', 0xe61000000103000000010000001800000073672618ce1656c0209738f2401c2b409cdd5a26c31656c07349d576131c2b40e38920cec31656c0ff40b96ddf1b2b4083161230ba1656c05aba826dc41b2b408faa2688ba1656c093a8177c9a1b2b40001e51a1ba1656c0990e9d9e771b2b4016dee522be1656c0ddcd531d721b2b4095d233bdc41656c02a5437177f1b2b40ed815660c81656c0e6948098841b2b40f793313ecc1656c0e9818fc18a1b2b40ef54c03dcf1656c01c2785798f1b2b40f4ddad2cd11656c0490f43ab931b2b40be4eeacbd21656c066c0594a961b2b403a22dfa5d41656c0b8e68efe971b2b40cd1dfd2fd71656c0168733bf9a1b2b40d87dc7f0d81656c09f2287889b1b2b4013622ea9da1656c07427d87f9d1b2b408f1b7e37dd1656c0446ff1f09e1b2b40e71890bdde1656c0969526a5a01b2b40e0f3c308e11656c06b9a779ca21b2b4021af0793e21656c0828e56b5a41b2b406f66f4a3e11656c0c687d9cbb61b2b40e71890bdde1656c02c634337fb1b2b4073672618ce1656c0209738f2401c2b40),
(7, 'CONUNICA1', 0xe610000001030000000100000006000000ed116a86540b56c02907b30930f42a40a565a4de530b56c092e7fa3e1cf42a40b2135e82530b56c06d8c9df012f42a407a1c06f3570b56c0c652245f09f42a4044a7e7dd580b56c081cd397826f42a40ed116a86540b56c02907b30930f42a40),
(8, 'CONUNICA2', 0xe610000001030000000100000007000000f1660dde570b56c08a20cec309f42a4033a48ae2550b56c07619fed30df42a403961c268560b56c0373465a71ff42a40700a2b15540b56c02fa704c424f42a40a54bff92540b56c02907b30930f42a40732b84d5580b56c0c879ff1f27f42a40f1660dde570b56c08a20cec309f42a40),
(9, 'ESTACION DE  BOMBEO', 0xe61000000103000000010000000500000036ccd078220456c061a7583508fb2a402a013109170456c05bb56b425afb2a4010069e7b0f0456c0890cab7823fb2a4028999cda190456c001a60c1cd0fa2a4036ccd078220456c061a7583508fb2a40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_cliente`
--

CREATE TABLE `inv_cliente` (
  `cod_cliente` int(5) UNSIGNED ZEROFILL NOT NULL,
  `num_cuenta` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_crea` date NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_naci` date NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cod_municipio` int(3) NOT NULL,
  `cod_departamento` int(2) NOT NULL,
  `sexo` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `dui` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nit` varchar(18) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `num_medidor` int(5) DEFAULT NULL,
  `lectura_ini` int(5) NOT NULL,
  `estado` varchar(8) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inv_cliente`
--

INSERT INTO `inv_cliente` (`cod_cliente`, `num_cuenta`, `fecha_crea`, `nombre`, `apellido`, `fecha_naci`, `direccion`, `cod_municipio`, `cod_departamento`, `sexo`, `dui`, `telefono`, `celular`, `nit`, `mail`, `num_medidor`, `lectura_ini`, `estado`) VALUES
(00163, '123', '2020-06-16', 'Samuel Alejandro', 'Cano', '1964-02-22', 'Cantón El brazo No. 34', 1, 1, '2', '02699386-5', '2222-5855', '6125-4325', '1225-220264-254-5', 'samuel.cano@unab.edu.sv', 7, 0, '2'),
(00165, '321', '2020-06-19', 'Samuel Alejandro ', 'Cano Quezada', '1993-03-10', 'Cantón El brazo No. 34', 1, 1, '2', '04788318-0', '0', '7758-4522', '1217-100393-109-3', 'playciclista@hotmail.com', 45678, 0, '2'),
(00166, '2312', '2020-06-19', 'Fabiola Cristina', 'Cano Quezada', '1992-04-03', 'Cantón El brazo No. 34', 1, 1, '1', '04607073-4', '6125-8989', '7576-4997', '1217-040492-101-9', 'borenocrystal@hotmail.com', 656565, 0, '2'),
(00167, '3685', '2020-06-19', 'Rhina Alexandra', 'Cano Quezada', '1987-09-27', 'Cantón El brazo No. 36', 1, 1, '1', '03799349-6', '0', '6147-5874', '1217-270987-109-0', '0', 0, 0, '1'),
(00171, '625042020', '2020-12-28', 'Claudia Elizabeth', 'Benavides Franco', '1993-03-15', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25455255-5', '0', '6125-4325', '0245-150393-586-2', '0', 878787, 0, '2'),
(00172, '748042020', '2020-12-28', 'Joel Enrique', 'Benitez Gomez', '1993-03-16', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '25455255-6', '0', '6725-1251', '2513-160393-585-4', '0', 0, 0, '1'),
(00173, '535042018', '2020-12-28', 'Gabriela Margarita', '', '1993-03-17', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25455255-7', '0', '6725-1260', '0877-170393-787-6', '0', 0, 0, '1'),
(00174, '1595042018', '2020-12-28', 'Sulma Yesenia', 'Caceres Canales', '1993-03-18', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25455255-8', '0', '6725-1269', '9876-180393-981-2', '0', 0, 0, '1'),
(00175, '309042018', '2020-12-28', 'Sandra Beatriz', 'Campio Martinez', '1993-03-19', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25455255-9', '0', '6725-1278', '6582-190393-698-5', '0', 0, 0, '1'),
(00176, '1220042018', '2020-12-28', 'Nora Stefany', 'Canales Santana', '1993-03-20', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25455255-1', '0', '6725-1287', '8985-200393-689-5', '0', 0, 0, '1'),
(00177, '292042018', '2020-12-28', 'Jaqueline Del Carmen', 'Carranza Flores', '1993-03-21', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25455255-1', '0', '6725-1296', '0', '0', 0, 0, '1'),
(00178, '329042018', '2020-12-28', 'Gerson Alfredo', 'Castro Alvarado', '1993-03-22', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '05456255-1', '0', '6725-1305', '0', '0', 0, 0, '1'),
(00179, '1544042019', '2020-12-28', 'Oscar Daniel', 'Chavez Argueta', '1993-03-23', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '05456255-2', '0', '6725-1314', '4548-230393-695-4', '0', 0, 0, '1'),
(00180, '183042018', '2020-12-28', 'Yenifer Sarai', 'Chavez Rivas', '1993-03-24', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '5456255-3', '0', '6725-1323', '0', '0', 0, 0, '1'),
(00181, '527042018', '2020-12-28', 'Bryan Roberto', 'Clar? Ventura', '1993-03-25', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '5456255-4', '0', '6725-1332', '0', '0', 0, 0, '1'),
(00182, '225042017', '2020-12-28', 'Erik Argelio', 'Constanza Coreas', '1993-03-26', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '05456255-5', '0', '6725-1341', '0', '0', 0, 0, '1'),
(00183, '404042018', '2020-12-28', 'Yaquelin Estefany', 'Contreras Romero', '1993-03-27', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '05456255-6', '0', '6725-1350', '0', '0', 0, 0, '1'),
(00184, '253042018', '2020-12-28', 'Blanca Leticia', 'Cruz Navarrete', '1993-03-28', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '05456255-7', '0', '6725-1359', '0', '0', 0, 0, '1'),
(00185, '1683042013', '2020-12-28', 'Blanca Alicia', 'Cruz Sorto', '1993-03-29', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '05456255-8', '0', '6725-1368', '0', '0', 0, 0, '1'),
(00186, '147042018', '2020-12-28', 'Beberlin Yulissa', 'Cuadra Quintanilla', '1994-05-14', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '95456295-1', '0', '6725-1377', '0', '0', 0, 0, '1'),
(00187, '985042020', '2020-12-28', 'Monica Gissel', 'Delgado Argueta', '1994-05-15', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '95456295-2', '0', '6725-1386', '0', '0', 0, 0, '1'),
(00188, '23042018', '2020-12-28', 'Mois?s Francisco', 'Diaz Alvarado', '1994-05-16', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '95456295-3', '0', '6725-1395', '0', '0', 0, 0, '1'),
(00189, '647042018', '2020-12-28', 'Douglas Alexander', 'Duran Andrade', '1994-05-17', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '95456295-4', '0', '6725-1404', '0', '0', 0, 0, '1'),
(00190, '764042018', '2020-12-28', 'Claudia Patricia', 'Escobar Garcia', '1994-05-18', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '95456295-5', '0', '6725-1413', '0', '0', 0, 0, '1'),
(00191, '948042018', '2020-12-28', 'Vanessa Isabel', 'Escobar Jimenez', '1994-05-19', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '95456295-6', '0', '6725-1422', '0', '0', 0, 0, '1'),
(00192, '167042018', '2020-12-28', 'Zuleima Beatriz', 'Esquivel De Blanco', '1994-05-20', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '95456295-7', '0', '6725-1431', '0', '0', 0, 0, '1'),
(00193, '927042020', '2020-12-28', 'Yonis Alberto', 'Fuentes Miranda', '1994-05-21', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '95456295-8', '0', '6725-1440', '0', '0', 0, 0, '1'),
(00194, '1048042018', '2020-12-28', 'Emely Maria', 'Galeas Rosales', '1994-05-22', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '95456295-9', '0', '6725-1449', '0', '0', 0, 0, '1'),
(00195, '1039042020', '2020-12-28', 'Walter Alexander', 'Gomez Aguilar', '1990-07-13', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '95456295-0', '0', '6725-1458', '0', '0', 0, 0, '1'),
(00196, '323042020', '2020-12-28', 'Oscar Alexander', 'Gomez Quintanilla', '1990-07-14', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '25484214-1', '0', '6725-1467', '0', '0', 0, 0, '1'),
(00197, '768042018', '2020-12-28', 'Elsy Nohemi', 'Gonzalez Trejo', '1990-07-15', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25484358-2', '0', '6725-1476', '0', '0', 0, 0, '1'),
(00198, '505042018', '2020-12-28', 'Aracely Iveth', 'Guevara Flores', '1990-07-16', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25484502-3', '0', '6725-1485', '0', '0', 0, 0, '1'),
(00199, '225042018', '2020-12-28', 'Katia Odaly', 'Gutierrez Arriaza', '1990-07-17', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25484646-5', '0', '6725-1494', '0', '0', 0, 0, '1'),
(00200, '738042018', '2020-12-28', 'Mario Francisco', 'Henriquez Merlos', '1990-07-18', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '25484790-8', '0', '6725-1503', '0', '0', 0, 0, '1'),
(00201, '669042018', '2020-12-28', 'Yaritza Sujey', 'Hernandez Colato', '1990-07-19', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25484934-5', '0', '6725-6512', '0', '0', 0, 0, '1'),
(00202, '137042018', '2020-12-28', 'Oneyda Estefani', 'Hernandez Gutierrez', '1990-07-20', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25485078-4', '0', '6725-1521', '0', '0', 0, 0, '1'),
(00203, '787042018', '2020-12-28', 'Silvia Yamileth', 'Hernandez Posada', '1990-07-21', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25485222-7', '0', '6725-1530', '0', '0', 0, 0, '1'),
(00204, '487042020', '2020-12-28', 'Judith Clarissa', 'Machado Alvarez', '1990-07-22', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25485366-5', '0', '6725-1539', '0', '0', 0, 0, '1'),
(00205, '266042018', '2020-12-28', 'Steffany Guadalupe', 'Marquez Merlos', '1990-07-23', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25485510-8', '0', '6725-1548', '0', '0', 0, 0, '1'),
(00206, '660042018', '2020-12-28', 'Estefani Corina', 'Mart?nez Benavides', '1990-07-24', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25485654-6', '0', '6725-1557', '0', '0', 0, 0, '1'),
(00207, '790042017', '2020-12-28', 'Saul Ernesto', 'Mart?nez L?pez', '1990-07-25', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '25485798-5', '0', '6725-1566', '0', '0', 0, 0, '1'),
(00208, '43042020', '2020-12-28', 'Dennis Jonathan', 'Mejia Ramirez', '1990-07-26', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '25485942-6', '0', '6725-1575', '0', '0', 0, 0, '1'),
(00209, '1223042018', '2020-12-28', 'Samuel Franklin', 'Mendizabal Gamez', '1990-07-27', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '25486086-7', '0', '6725-1584', '0', '0', 0, 0, '1'),
(00210, '1605042018', '2020-12-28', 'Jose Rudy', 'Morales Mejia', '1990-07-28', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '2', '25486230-7', '0', '6725-1593', '0', '0', 0, 0, '1'),
(00211, '963042018', '2020-12-28', 'Esmeralda Alejandra', 'Quintanilla Leon', '1990-07-29', 'Cant?n El Tabl?n, caser?o Los Juanes', 20, 1, '1', '25486374-5', '0', '6725-1602', '0', '0', 0, 0, '1'),
(00349, '333', '2021-01-25', 'M', 'R', '2000-01-01', '1a c pte', 1, 1, '2', '00000000-0', '0000-0000', '0000-0000', '0000-000000-000-0', '1@gmail.com', 0, 0, '1'),
(00350, '4444', '2021-01-25', 'X', 'X', '2000-01-01', '1a c pte', 1, 1, '2', '00000000-0', '0000-0000', '0000-0000', '0000-000000-000-0', '1@gmail.com', 1, 0, '2'),
(00351, '5555', '2021-01-25', 'Y', 'Y', '2000-01-01', '1a c pte', 260, 1, '2', '00000000-0', '0000-0000', '0000-0000', '0000-000000-000-0', '1@gmail.com', 2, 0, '2'),
(00352, '6666', '2021-01-26', 'n', 'n', '2000-01-01', '1a c pte', 42, 13, '2', '00000000-0', '0000-0000', '0000-0000', '0000-000000-000-0', '1@gmail.com', 4, 0, '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_departamento`
--

CREATE TABLE `inv_departamento` (
  `cod_departamento` int(3) NOT NULL,
  `departamento` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inv_departamento`
--

INSERT INTO `inv_departamento` (`cod_departamento`, `departamento`) VALUES
(1, 'San Miguel'),
(2, 'Usulutan'),
(3, 'La Union'),
(4, 'Morazan'),
(5, 'San Vicente'),
(6, 'Cuscatlan'),
(7, 'La Paz'),
(8, 'Cabañas'),
(9, 'San Salvador'),
(10, 'La Libertad'),
(11, 'Sonsonate'),
(12, 'Ahuachapan'),
(13, 'Chalatenango'),
(14, 'Santa Ana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_desconexion`
--

CREATE TABLE `inv_desconexion` (
  `cod_orden_desco` int(5) NOT NULL,
  `cod_cuenta` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_orden` date NOT NULL,
  `motivo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_ejecucion` date NOT NULL,
  `ejecutada` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `observacion` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inv_desconexion`
--

INSERT INTO `inv_desconexion` (`cod_orden_desco`, `cod_cuenta`, `fecha_orden`, `motivo`, `fecha_ejecucion`, `ejecutada`, `observacion`) VALUES
(24, '1234', '2021-01-25', 'Reparaciones', '2021-01-25', 'SI', 'Reparaciones'),
(25, '321', '2021-01-25', 'Acumulación de Mora', '2021-01-25', 'SI', 'Acumulación'),
(26, '2312', '2021-01-25', 'Reparaciones', '2021-01-25', 'SI', 'Reparaciones'),
(14, '123', '2020-07-24', 'AcumulaciÃ³n de Mora', '2020-07-24', 'SI', 'Mora'),
(19, '3685', '2020-11-06', 'Acumulación de Mora', '2020-11-09', 'SI', 'Saldo en mora'),
(27, '625042020', '2021-01-25', 'Acumulación de Mora', '2021-01-25', 'SI', 'Mora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_manttoval`
--

CREATE TABLE `inv_manttoval` (
  `id` int(4) NOT NULL,
  `num_inventario` int(12) NOT NULL,
  `fecha_mantto` date NOT NULL,
  `ejecutado` varchar(2) NOT NULL,
  `observaciones` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inv_manttoval`
--

INSERT INTO `inv_manttoval` (`id`, `num_inventario`, `fecha_mantto`, `ejecutado`, `observaciones`) VALUES
(1, 111, '2020-09-26', 'SI', 'Ejecutado reemplazando la válvula '),
(7, 112, '2020-09-26', 'SI', 'Se efectuó el mantenimiento '),
(8, 112, '2020-09-26', 'SI', 'Se realizo el mantenimiento '),
(9, 112, '2020-09-30', 'SI', 'Se efectuó el mantenimiento '),
(10, 111, '2020-09-26', 'SI', 'Se realizo el mantenimiento en el cantón '),
(11, 114, '2020-09-30', 'SI', 'Se efectuó el mantenimiento '),
(12, 111, '2020-12-26', 'NO', '-----'),
(13, 112, '2020-12-30', 'NO', '-----'),
(14, 113, '2020-09-26', 'NO', '-----'),
(15, 1114, '2020-09-30', 'NO', '-----'),
(16, 1114, '2020-09-26', 'NO', '-----'),
(17, 114, '2020-12-30', 'NO', '-----'),
(18, 111, '2021-03-26', 'NO', '-----'),
(19, 112, '2021-03-30', 'NO', '-----'),
(20, 113, '2020-12-26', 'NO', '-----'),
(21, 111, '2020-09-26', 'NO', '-----'),
(22, 111, '2020-12-26', 'NO', '-----'),
(23, 111, '2020-06-26', 'NO', '-----'),
(24, 112, '2021-06-30', 'NO', '-----'),
(25, 111, '2020-09-26', 'NO', '-----'),
(26, 112, '2020-09-26', 'NO', '-----'),
(27, 113, '2020-09-26', 'NO', '-----'),
(28, 1114, '2020-09-28', 'NO', '-----'),
(29, 114, '2020-09-30', 'NO', '-----'),
(30, 112, '2020-09-26', 'SI', 'Ejecución normal'),
(31, 111, '2020-09-26', 'SI', 'Ejecutado sin problemas'),
(32, 111, '2020-12-26', 'NO', '-----');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_medidor`
--

CREATE TABLE `inv_medidor` (
  `cod_medidor` int(5) NOT NULL,
  `numero` int(10) NOT NULL,
  `fecha_crea` date NOT NULL,
  `cod_marca` int(3) NOT NULL,
  `serie` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `asignado` varchar(2) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inv_medidor`
--

INSERT INTO `inv_medidor` (`cod_medidor`, `numero`, `fecha_crea`, `cod_marca`, `serie`, `estado`, `asignado`) VALUES
(1, 45678, '2020-10-04', 2, '5ttttt', 'Nuevo', 'SI'),
(2, 656565, '2020-05-21', 2, '5xxx', 'Nuevo', 'SI'),
(4, 878787, '2020-09-22', 6, '9xxxx', 'Nuevo', 'SI'),
(6, 666666, '2020-08-20', 1, '66666', 'Nuevo', 'NO'),
(7, 545454, '2020-07-15', 3, '4xxx', 'Usado', 'NO'),
(9, 44444, '2020-08-12', 4, '4g4g', 'Nuevo', 'NO'),
(10, 66666, '2021-01-27', 1, 'h4h4h4', 'Nuevo', 'NO'),
(115, 1, '2020-08-07', 2, 'as2', 'Nuevo', 'SI'),
(116, 2, '2020-09-07', 2, 'as2', 'Nuevo', 'SI'),
(117, 3, '2020-06-17', 2, 'as2', 'Nuevo', 'NO'),
(118, 4, '2020-11-01', 2, 'as2', 'Nuevo', 'SI'),
(119, 5, '2020-07-23', 2, 'as2', 'Nuevo', 'NO'),
(120, 6, '2020-08-10', 2, 'as2', 'Nuevo', 'NO'),
(121, 7, '2020-07-20', 2, 'as2', 'Nuevo', 'SI'),
(122, 8, '2020-08-26', 2, 'as2', 'Nuevo', 'NO'),
(123, 9, '0000-00-00', 2, 'as2', 'Nuevo', 'NO'),
(124, 10, '0000-00-00', 2, 'as2', 'Nuevo', 'NO'),
(125, 11, '0000-00-00', 2, 'as2', 'Nuevo', 'NO'),
(126, 12, '2020-11-18', 2, 'as2', 'Nuevo', 'NO'),
(127, 13, '2020-11-18', 2, 'as2', 'Nuevo', 'NO'),
(128, 14, '2020-11-18', 2, 'as2', 'Nuevo', 'NO'),
(129, 15, '2020-11-18', 2, 'as2', 'Nuevo', 'NO'),
(130, 16, '2020-11-18', 2, 'as2', 'Nuevo', 'NO'),
(131, 17, '2020-11-18', 2, 'as2', 'Nuevo', 'NO'),
(138, 99999, '2021-01-19', 365, 'mk3-4', 'Nuevo', 'NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_municipio`
--

CREATE TABLE `inv_municipio` (
  `cod_municipio` int(3) NOT NULL,
  `cod_departamento` int(3) NOT NULL,
  `municipio` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inv_municipio`
--

INSERT INTO `inv_municipio` (`cod_municipio`, `cod_departamento`, `municipio`) VALUES
(1, 1, 'San Miguel'),
(2, 1, 'Quelepa'),
(3, 1, 'San Luis de la Reina'),
(4, 1, 'Moncagua'),
(5, 1, 'Sesori'),
(6, 1, 'Chirilagua'),
(7, 1, 'Nueva Guadalupe'),
(8, 1, 'Chinameca'),
(10, 1, 'Chapeltique'),
(11, 1, 'Ciudad Barrios'),
(12, 1, 'Comacarán'),
(13, 1, 'El Tránsito'),
(14, 1, 'Lolotique'),
(15, 1, 'Nuevo Edén de San Juan'),
(16, 1, 'San Antonio del Mosco'),
(17, 1, 'San Gerardo'),
(18, 1, 'San Jorge'),
(19, 1, 'San Rafael Oriente'),
(20, 1, 'Uluazapa'),
(21, 12, 'Ahuachapán'),
(22, 12, 'Apaneca'),
(23, 12, 'Atiquizaya'),
(24, 12, 'Concepción de Ataco'),
(25, 12, 'El Refugio'),
(26, 12, 'Guaymango'),
(27, 12, 'Jujutla'),
(28, 12, 'San Francisco Menéndez'),
(29, 12, 'San Lorenzo'),
(30, 12, 'San Pedro Puxtla'),
(31, 12, 'Tacuba'),
(32, 12, 'Turín'),
(33, 8, 'Ilobasco'),
(34, 8, 'Cinquera'),
(35, 8, 'Villa Dolores'),
(36, 8, 'Guacotecti'),
(37, 8, 'Jutiapa'),
(38, 8, 'San Isidro'),
(39, 8, 'Sensuntepeque'),
(40, 8, 'Tejutepeque'),
(41, 8, 'Victoria'),
(42, 13, 'Agua Caliente'),
(43, 13, 'Arcatao'),
(44, 13, 'Azacualpa'),
(45, 13, 'Chalatenango'),
(46, 13, 'Citalá'),
(47, 13, 'Comalapa'),
(48, 13, 'Concepción Quezaltepeque'),
(49, 13, 'Dulce Nombre de María'),
(50, 13, 'El Carrizal'),
(51, 13, 'El Paraíso'),
(52, 13, 'La Laguna'),
(53, 13, 'La Palma'),
(54, 13, 'La Reina'),
(55, 13, 'Las Vueltas'),
(56, 13, 'Nombre de Jesús'),
(57, 13, 'Nueva Concepción'),
(58, 13, 'Nueva Trinidad'),
(59, 13, 'Ojos de Agua'),
(60, 13, 'Potonico'),
(61, 13, 'San Antonio de la Cruz'),
(62, 13, 'San Antonio Los Ranchos'),
(63, 13, 'San Fernando'),
(64, 13, 'San Francisco Lempa'),
(65, 13, 'San Francisco Morazán'),
(66, 13, 'San Ignacio'),
(67, 13, 'San Isidro Labrador'),
(68, 13, 'San José Cancasque / Cancasque'),
(69, 13, 'San José Las Flores / Las Flor'),
(70, 13, 'San Luis del Carmen'),
(71, 13, 'San Miguel de Mercedes'),
(72, 13, 'San Rafael'),
(73, 13, 'Santa Rita'),
(74, 13, 'Tejutla'),
(75, 6, 'Candelaria'),
(76, 6, 'Cojutepeque'),
(77, 6, 'El Carmen'),
(78, 6, 'El Rosario'),
(79, 6, 'Monte San Juan'),
(80, 6, 'Oratorio de Concepción'),
(81, 6, 'San Bartolomé Perulapía'),
(82, 6, 'San Cristóbal'),
(83, 6, 'San José Guayabal'),
(84, 6, 'San Pedro Perulapán'),
(85, 6, 'San Rafael Cedros'),
(88, 6, 'San Ramón'),
(89, 6, 'Santa Cruz Analquito'),
(90, 6, 'Santa Cruz Michapa'),
(91, 6, 'Suchitoto'),
(92, 6, 'Tenancingo'),
(93, 4, 'Arambala'),
(94, 4, 'Cacaopera'),
(95, 4, 'Chilanga'),
(96, 4, 'Corinto'),
(97, 4, 'Delicias de Concepción'),
(98, 4, 'El Divisadero'),
(99, 4, 'El Rosario'),
(100, 4, 'Gualococti'),
(101, 4, 'Guatajiagua'),
(102, 4, 'Joateca'),
(103, 4, 'Jocoaitique'),
(104, 4, 'Jocoro'),
(105, 4, 'Lolotiquillo'),
(106, 4, 'Meanguera'),
(107, 4, 'Osicala'),
(108, 4, 'Perquín'),
(109, 4, 'San Carlos'),
(110, 4, 'San Fernando'),
(111, 4, 'San Francisco Gotera'),
(112, 4, 'San Isidro'),
(113, 4, 'San Simón'),
(114, 4, 'Sensembra'),
(115, 4, 'Sociedad'),
(116, 4, 'Torola'),
(117, 4, 'Yamabal'),
(118, 4, 'Yoloaiquín'),
(119, 10, 'Antiguo Cuscatlán'),
(120, 10, 'Chiltiupán'),
(121, 10, 'Ciudad Arce'),
(122, 10, 'Colón'),
(123, 10, 'Comasagua'),
(124, 10, 'Huizúcar'),
(125, 10, 'Jayaque'),
(126, 10, 'Jicalapa'),
(127, 10, 'La Libertad'),
(128, 10, 'Santa Tecla'),
(129, 10, 'Nuevo Cuscatlán'),
(130, 10, 'San Juan Opico'),
(131, 10, 'Quezaltepeque'),
(132, 10, 'Sacacoyo'),
(133, 10, 'San José Villanueva'),
(134, 10, 'San Matías'),
(135, 10, 'San Pablo Tacachico'),
(136, 10, 'Talnique'),
(137, 10, 'Tamanique'),
(138, 10, 'Teotepeque'),
(139, 10, 'Tepecoyo'),
(140, 10, 'Zaragoza'),
(141, 7, 'Cuyultitán'),
(142, 7, 'El Rosario'),
(143, 7, 'Jerusalén'),
(144, 7, 'Mercedes La Ceiba'),
(145, 7, 'Olocuilta'),
(146, 7, 'Paraíso de Osorio'),
(147, 7, 'San Antonio Masahuat'),
(148, 7, 'San Emigdio'),
(149, 7, 'San Francisco Chinameca'),
(150, 7, 'San Juan Nonualco'),
(151, 7, 'San Juan Talpa'),
(152, 7, 'San Juan Tepezontes'),
(153, 7, 'San Luis La Herradura'),
(154, 7, 'San Luis Talpa'),
(155, 7, 'San Miguel Tepezontes'),
(156, 7, 'San Pedro Masahuat'),
(157, 7, 'San Pedro Nonualco'),
(158, 7, 'San Rafael Obrajuelo'),
(159, 7, 'Santa María Ostuma'),
(160, 7, 'Santiago Nonualco'),
(161, 7, 'Tapalhuaca'),
(162, 7, 'Zacatecoluca'),
(163, 3, 'La Unión'),
(164, 3, 'Anamorós'),
(165, 3, 'Bolívar'),
(166, 3, 'Concepción de Oriente'),
(167, 3, 'Conchagua'),
(168, 3, 'El Carmen'),
(169, 3, 'El Sauce'),
(170, 3, 'Intipucá'),
(171, 3, 'Lilisque'),
(172, 3, 'Meanguera del Golfo'),
(173, 3, 'Nueva Esparta'),
(174, 3, 'Pasaquina'),
(175, 3, 'Polorós'),
(176, 3, 'San Alejo'),
(177, 3, 'San José'),
(178, 3, 'Santa Rosa de Lima'),
(179, 3, 'Yayantique'),
(180, 3, 'Yucuaiquín'),
(181, 9, 'San Salvador'),
(182, 9, 'Aguilares'),
(183, 9, 'Apopa'),
(184, 9, 'Ayutuxtepeque'),
(185, 9, 'Delgado'),
(186, 9, 'Cuscatancingo'),
(187, 9, 'El Paisnal'),
(188, 9, 'Guazapa'),
(189, 9, 'Ilopango'),
(190, 9, 'Mejicanos'),
(191, 9, 'Nejapa'),
(192, 9, 'Panchimalco'),
(193, 9, 'Rosario de Mora'),
(194, 9, 'San Marcos'),
(195, 9, 'San Martín'),
(196, 9, 'Santiago Texacuangos'),
(197, 9, 'Santo Tomás'),
(198, 9, 'Soyapango'),
(199, 9, 'Tonacatepeque'),
(200, 5, 'San Vicente'),
(210, 5, 'Tecoluca'),
(211, 5, 'Tepetitán'),
(212, 5, 'Verapaz'),
(213, 14, 'Candelaria de la Frontera'),
(214, 14, 'Chalchuapa'),
(215, 14, 'Coatepeque'),
(216, 14, 'El Congo'),
(217, 14, 'El Porvenir'),
(218, 14, 'Masahuat'),
(219, 14, 'Metapán'),
(220, 14, 'San Antonio Pajonal'),
(221, 14, 'San Sebastián Salitrillo'),
(222, 14, 'Santa Rosa Guachipilín'),
(223, 14, 'Santiago de la Frontera'),
(224, 14, 'Texistepeque'),
(225, 14, 'Santa Ana'),
(226, 11, 'Sonsonate'),
(227, 11, 'Acajutla'),
(228, 11, 'Armenia'),
(229, 11, 'Caluco'),
(230, 11, 'Cuisnahuat'),
(231, 11, 'Izalco'),
(232, 11, 'Juayúa'),
(233, 11, 'Nahuizalco'),
(234, 11, 'Nahulingo'),
(235, 11, 'Salcoatitán'),
(236, 11, 'San Antonio del Monte'),
(237, 11, 'San Julián'),
(238, 11, 'Santa Catarina Masahuat'),
(239, 11, 'Santa Isabel Ishuatán'),
(240, 11, 'Santo Domingo de Guzmán'),
(241, 11, 'Sonzacate'),
(242, 2, 'Alegría'),
(243, 2, 'Berlín'),
(244, 2, 'California'),
(245, 2, 'Concepción Batres'),
(246, 2, 'El Triunfo'),
(247, 2, 'Ereguayquín'),
(248, 2, 'Estanzuelas'),
(249, 2, 'Jiquilisco'),
(250, 2, 'Jucuapa'),
(251, 5, 'Apastepeque'),
(252, 5, 'Guadalupe'),
(253, 5, 'San Cayetano Istepeque'),
(254, 5, 'San Esteban Catarina'),
(255, 5, 'San Ildefonso'),
(256, 5, 'San Lorenzo'),
(257, 5, 'San Sebastián'),
(258, 5, 'Santa Clara'),
(259, 5, 'Santo Domingo'),
(260, 1, 'Carolina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_reclamo`
--

CREATE TABLE `inv_reclamo` (
  `cod_reclamo` int(6) NOT NULL,
  `num_cuenta` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_rec` date NOT NULL,
  `nombres_rec` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos_rec` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `motivo_rec` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `detalle_rec` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `solucion_rec` varchar(2) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inv_reclamo`
--

INSERT INTO `inv_reclamo` (`cod_reclamo`, `num_cuenta`, `fecha_rec`, `nombres_rec`, `apellidos_rec`, `motivo_rec`, `detalle_rec`, `solucion_rec`) VALUES
(9, '1234', '2020-06-19', 'Samuel Alejandro', 'Cano', 'Factura atrazada', 'fdsdfs', 'SI'),
(10, '123', '2020-06-19', 'Fabiola Cristina', 'Cano Quezada', 'Quejas', 'El servicio es irregular ', 'SI'),
(11, '3685', '2020-06-19', 'Rhina Alexandra', 'Cano Quezada', 'Robos', 'Urgente: en la noche le robaron el contador.\r\nSe le asigno un contador', 'SI'),
(12, '1595042018', '2021-01-19', 'Sulma Yesenia', 'Caceres Canales', 'Cobro excesivo', 'Le esta llegando un incremento sin motivo', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_reconexion`
--

CREATE TABLE `inv_reconexion` (
  `cod_orden_recon` int(5) NOT NULL,
  `cod_cuenta` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_orden` date NOT NULL,
  `fecha_ejecucion` date DEFAULT NULL,
  `ejecutada` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `observacion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inv_reconexion`
--

INSERT INTO `inv_reconexion` (`cod_orden_recon`, `cod_cuenta`, `fecha_orden`, `fecha_ejecucion`, `ejecutada`, `observacion`) VALUES
(4, '3685', '2020-09-24', '2020-09-24', 'SI', 'reco 1525'),
(5, '321', '2021-01-20', '2021-01-20', 'SI', 'Se reconecto, la cuenta '),
(6, '625042020', '2021-01-20', '2021-01-20', 'SI', 'Solicitud de reconexión y pago de saldo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_servicio`
--

CREATE TABLE `inv_servicio` (
  `cod_servicio` int(5) UNSIGNED ZEROFILL NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `costo` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inv_servicio`
--

INSERT INTO `inv_servicio` (`cod_servicio`, `nombre`, `costo`) VALUES
(00001, 'Servicio de Aguas', '7.50'),
(00002, 'Pago de Acometida', '60.00'),
(00003, 'Alcantarillado', '2.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_tarifa`
--

CREATE TABLE `inv_tarifa` (
  `cod_tarifa` int(2) NOT NULL,
  `nivel` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `inicio` int(3) NOT NULL,
  `final` int(3) NOT NULL,
  `precio` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inv_tarifa`
--

INSERT INTO `inv_tarifa` (`cod_tarifa`, `nivel`, `inicio`, `final`, `precio`) VALUES
(1, 'Bajo', 0, 12, '7.35'),
(2, 'Medio', 13, 24, '10.00'),
(3, 'Alto', 25, 1000000, '15.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_tiposval`
--

CREATE TABLE `inv_tiposval` (
  `id` int(4) NOT NULL,
  `tipo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inv_tiposval`
--

INSERT INTO `inv_tiposval` (`id`, `tipo`) VALUES
(1, 'Válvulas swing-check, cuerpo de Ho. Fo.'),
(2, 'Válvulas de compuerta de asiento elástico, AWWA C-509 '),
(3, 'Válvulas de compuerta de asiento elástico, AWWA 515'),
(4, 'Válvulas de compuerta de hierro fundido montadas en bronce doble disco.'),
(5, 'Válvulas de compuerta de hierro fundido montadas en bronce disco sólido.'),
(6, 'vástago no ascendente: AWWA C-500'),
(7, 'válvulas de compuerta Ho. Fo.'),
(8, 'Válvula ANSI B16.1 clase 125'),
(9, 'Válvula ANSI B16.1 clase 250'),
(10, 'Válvula reguladora de presión'),
(11, 'Válvula de retención'),
(12, 'Válvula anti-golpe de ariete'),
(13, 'Válvulas de ventosas'),
(14, 'Válvula de mariposa.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_tuberias`
--

CREATE TABLE `inv_tuberias` (
  `cod_tuberia` int(5) NOT NULL,
  `cod_material` int(3) NOT NULL,
  `cod_jerarquia` int(3) NOT NULL,
  `diametro_nominal` decimal(4,2) NOT NULL,
  `presion_nominal` decimal(5,1) NOT NULL,
  `longitud_tub` decimal(4,2) NOT NULL,
  `estado` int(3) NOT NULL,
  `idCoordenadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inv_tuberias`
--

INSERT INTO `inv_tuberias` (`cod_tuberia`, `cod_material`, `cod_jerarquia`, `diametro_nominal`, `presion_nominal`, `longitud_tub`, `estado`, `idCoordenadas`) VALUES
(12, 9, 21, '0.11', '0.2', '2.00', 1, 1),
(13, 1, 1, '0.20', '0.2', '1.00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inv_valvula`
--

CREATE TABLE `inv_valvula` (
  `cod_valvula` int(5) NOT NULL,
  `num_inventario` varchar(12) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `tipo` varchar(150) NOT NULL,
  `instalacion` date NOT NULL,
  `estado` varchar(15) NOT NULL,
  `lugar` varchar(50) NOT NULL,
  `mantenimiento` date NOT NULL,
  `latitud` decimal(10,6) DEFAULT NULL,
  `longitud` decimal(10,6) DEFAULT NULL,
  `altura` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inv_valvula`
--

INSERT INTO `inv_valvula` (`cod_valvula`, `num_inventario`, `marca`, `tipo`, `instalacion`, `estado`, `lugar`, `mantenimiento`, `latitud`, `longitud`, `altura`) VALUES
(1, '111', 'PRAHER', 'Válvulas swing-check, cuerpo de Ho. Fo.', '2020-06-26', 'nuevo', 'cantón carbón ', '2020-12-26', NULL, NULL, NULL),
(2, '112', 'PRAHER', 'Válvulas de compuerta de asiento elástico, AWWA C-509', '2020-06-26', 'nuevo', 'cantón dos', '2020-12-26', NULL, NULL, NULL),
(3, '113', 'PRAHER', 'Válvulas de compuerta de hierro fundido montadas en bronce doble disco.', '2020-06-26', 'nuevo', 'cantón tres', '2020-09-26', NULL, NULL, NULL),
(4, '1114', 'PRAHER', 'Válvula ANSI B16.1 clase 125', '2020-06-28', 'Nueva', 'Cantón cuatro ', '2020-09-28', NULL, NULL, NULL),
(5, '114', 'GEMU', 'Válvula ANSI B16.1 clase 250', '2020-06-30', 'Nueva', 'Cantón cinco', '2020-09-30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jerarquia_tuberia`
--

CREATE TABLE `jerarquia_tuberia` (
  `cod_jerarquia` int(11) NOT NULL,
  `jerarquia` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jerarquia_tuberia`
--

INSERT INTO `jerarquia_tuberia` (`cod_jerarquia`, `jerarquia`) VALUES
(1, 'Red en alta'),
(21, 'jerarquia 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lecturas`
--

CREATE TABLE `lecturas` (
  `cod_lectura` int(11) NOT NULL,
  `num_cuenta` varchar(20) NOT NULL,
  `mes` int(2) NOT NULL,
  `anio` int(4) NOT NULL,
  `fecha_lectura` date NOT NULL,
  `lectura_anterior` int(10) NOT NULL,
  `lectura_actual` int(10) NOT NULL,
  `consumo` int(10) NOT NULL,
  `user` varchar(11) NOT NULL,
  `cobro` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lecturas`
--

INSERT INTO `lecturas` (`cod_lectura`, `num_cuenta`, `mes`, `anio`, `fecha_lectura`, `lectura_anterior`, `lectura_actual`, `consumo`, `user`, `cobro`) VALUES
(319, '23042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(320, '647042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(321, '764042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(322, '948042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(323, '167042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(324, '927042020', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(325, '1048042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(326, '1039042020', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(327, '323042020', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(328, '768042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(329, '505042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(330, '225042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(331, '738042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(332, '669042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(333, '137042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(334, '787042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(335, '487042020', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(336, '266042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(337, '660042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(338, '790042017', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(339, '43042020', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(340, '1223042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(341, '1605042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(342, '963042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(343, '333', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(344, '123', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(345, '321', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(346, '2312', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(347, '3685', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(348, '625042020', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(349, '748042020', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(350, '535042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(351, '1595042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(352, '309042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(353, '1220042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(354, '292042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(355, '329042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(356, '1544042019', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(357, '183042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(358, '527042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(359, '225042017', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(360, '404042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(361, '253042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(362, '1683042013', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(363, '147042018', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(364, '985042020', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(365, '4444', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(366, '5555', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(367, '6666', 1, 2021, '2021-01-31', 0, 0, 0, 'Admin Users', 'c'),
(368, '123', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(369, '321', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(370, '2312', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(371, '3685', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(372, '625042020', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(373, '748042020', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(374, '535042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(375, '1595042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(376, '309042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(377, '1220042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(378, '292042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(379, '329042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(380, '1544042019', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(381, '183042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(382, '527042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(383, '225042017', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(384, '404042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(385, '253042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(386, '1683042013', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(387, '147042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(388, '985042020', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(389, '23042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(390, '647042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(391, '764042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(392, '948042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(393, '167042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(394, '927042020', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(395, '1048042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(396, '1039042020', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(397, '323042020', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(398, '768042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(399, '505042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(400, '225042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(401, '738042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(402, '669042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(403, '137042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(404, '787042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(405, '487042020', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(406, '266042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(407, '660042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(408, '790042017', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(409, '43042020', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(410, '1223042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(411, '1605042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(412, '963042018', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(413, '333', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(414, '4444', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(415, '5555', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(416, '6666', 2, 2021, '2021-02-28', 0, 1, 1, 'Admin Users', 'c'),
(417, '123', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(418, '321', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(419, '2312', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(420, '3685', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(421, '625042020', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(422, '748042020', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(423, '535042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(424, '1595042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(425, '309042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(426, '1220042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(427, '292042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(428, '329042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(429, '1544042019', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(430, '183042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(431, '527042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(432, '225042017', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(433, '404042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(434, '253042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(435, '1683042013', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(436, '147042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(437, '985042020', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(438, '23042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(439, '647042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(440, '764042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(441, '948042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(442, '167042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(443, '927042020', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(444, '1048042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(445, '1039042020', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(446, '323042020', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(447, '768042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(448, '505042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(449, '225042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(450, '738042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(451, '669042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(452, '137042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(453, '787042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(454, '487042020', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(455, '266042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(456, '660042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(457, '790042017', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(458, '43042020', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(459, '1223042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(460, '1605042018', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(461, '963042018', 3, 2021, '2021-03-31', 1, 2, 2, 'Admin Users', 'c'),
(462, '333', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(463, '4444', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(464, '5555', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(465, '6666', 3, 2021, '2021-03-31', 1, 2, 1, 'Admin Users', 'c'),
(466, '123', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(467, '321', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(468, '2312', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(469, '3685', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(470, '625042020', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(471, '748042020', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(472, '535042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(473, '1595042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(474, '309042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(475, '1220042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(476, '292042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(477, '329042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(478, '1544042019', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(479, '183042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(480, '527042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(481, '225042017', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(482, '404042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(483, '253042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(484, '1683042013', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(485, '147042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(486, '985042020', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(487, '23042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(488, '647042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(489, '764042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(490, '948042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(491, '167042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(492, '927042020', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(493, '1048042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(494, '1039042020', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(495, '323042020', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(496, '768042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(497, '505042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(498, '225042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(499, '738042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(500, '669042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(501, '137042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(502, '787042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(503, '487042020', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(504, '266042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(505, '660042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(506, '790042017', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(507, '43042020', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(508, '1223042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(509, '1605042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(510, '963042018', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(511, '333', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(512, '4444', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(513, '5555', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(514, '6666', 4, 2021, '2021-04-30', 2, 3, 1, 'Admin Users', 'c'),
(515, '123', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(516, '321', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(517, '2312', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(518, '3685', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(519, '625042020', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(520, '748042020', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(521, '535042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(522, '1595042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(523, '309042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(524, '1220042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(525, '292042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(526, '329042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(527, '1544042019', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(528, '183042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(529, '527042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(530, '225042017', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(531, '404042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(532, '253042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(533, '1683042013', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(534, '147042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(535, '985042020', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(536, '23042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(537, '647042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(538, '764042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(539, '948042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(540, '167042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(541, '927042020', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(542, '1048042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(543, '1039042020', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(544, '323042020', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(545, '768042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(546, '505042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(547, '225042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(548, '738042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(549, '669042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(550, '137042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(551, '787042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(552, '487042020', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(553, '266042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(554, '660042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(555, '790042017', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(556, '43042020', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(557, '1223042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(558, '1605042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(559, '963042018', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(560, '333', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(561, '4444', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(562, '5555', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c'),
(563, '6666', 5, 2021, '2021-05-31', 3, 4, 1, 'Admin Users', 'c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mat_tuberia`
--

CREATE TABLE `mat_tuberia` (
  `cod_material` int(11) NOT NULL,
  `material` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mat_tuberia`
--

INSERT INTO `mat_tuberia` (`cod_material`, `material`) VALUES
(1, 'PVC'),
(9, 'material 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(1, 'filter.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(1, 'Filtro de gasolina', '100', '5.00', '10.00', 1, 1, '2017-06-16 07:03:16'),
(2, 'Cuenta', '1', '1.00', '2.00', 2, 0, '2020-05-26 02:35:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptos`
--

CREATE TABLE `ptos` (
  `puntos` geometry NOT NULL,
  `lugar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ptos`
--

INSERT INTO `ptos` (`puntos`, `lugar`) VALUES
(0x000000000101000000cd21a98592a92a40b360e28fa20a56c0, 'la canoa lote 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recargo`
--

CREATE TABLE `recargo` (
  `cod_recargo` int(11) NOT NULL,
  `monto` decimal(6,2) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recargo`
--

INSERT INTO `recargo` (`cod_recargo`, `monto`, `nombre`) VALUES
(1, '2.00', 'recargo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibos`
--

CREATE TABLE `recibos` (
  `cod_recibo` int(10) NOT NULL,
  `num_recibo` int(15) NOT NULL,
  `num_cuenta` varchar(20) NOT NULL,
  `fecha_cobro` date NOT NULL,
  `fecha_pago` date NOT NULL,
  `fecha_pagado` date NOT NULL,
  `mes` int(2) NOT NULL,
  `anio` int(4) NOT NULL,
  `cod_lectura` int(11) NOT NULL,
  `monto` decimal(6,2) NOT NULL,
  `recargo` decimal(6,2) NOT NULL,
  `total_pagado` decimal(6,2) NOT NULL,
  `pagado` varchar(2) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `anulado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recibos`
--

INSERT INTO `recibos` (`cod_recibo`, `num_recibo`, `num_cuenta`, `fecha_cobro`, `fecha_pago`, `fecha_pagado`, `mes`, `anio`, `cod_lectura`, `monto`, `recargo`, `total_pagado`, `pagado`, `estado`, `anulado`) VALUES
(34, 1, '0963042018', '2021-01-31', '2021-01-03', '2021-01-29', 1, 2021, 342, '7.35', '2.00', '9.35', 'SI', 'Activo', 'NO'),
(35, 2, '1039042020', '2021-01-31', '2021-01-03', '2021-01-29', 1, 2021, 326, '7.35', '2.00', '7.35', 'SI', 'Activo', 'NO'),
(36, 3, '1048042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 325, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(37, 4, '1220042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 307, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(38, 5, '1223042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 340, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(39, 6, '137042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 333, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(40, 7, '147042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 317, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(41, 8, '1544042019', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 310, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(42, 9, '1595042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 305, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(43, 10, '1605042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 341, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(44, 11, '167042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 323, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(45, 12, '1683042013', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 316, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(46, 13, '183042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 311, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(47, 14, '225042017', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 313, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(48, 15, '225042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 330, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(49, 16, '23042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 319, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(50, 17, '2312', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 301, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(51, 18, '253042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 315, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(52, 19, '266042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 336, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(53, 20, '292042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 308, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(54, 21, '309042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 306, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(55, 22, '321', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 296, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(56, 23, '323042020', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 327, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(57, 24, '329042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 309, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(58, 25, '333', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 343, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(59, 26, '3685', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 302, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(60, 27, '404042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 314, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(61, 28, '43042020', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 339, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(62, 29, '487042020', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 335, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(63, 30, '505042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 329, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(64, 31, '527042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 312, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(65, 32, '535042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 304, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(66, 33, '625042020', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 303, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(67, 34, '647042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 320, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(68, 35, '660042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 337, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(69, 36, '669042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 332, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(70, 37, '738042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 331, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(71, 38, '748042020', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 300, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(72, 39, '764042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 321, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(73, 40, '768042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 328, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(74, 41, '787042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 334, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(75, 42, '790042017', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 338, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(76, 43, '927042020', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 324, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(77, 44, '948042018', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 322, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(78, 45, '985042020', '2021-01-31', '2021-01-03', '0000-00-00', 1, 2021, 318, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(79, 46, '1039042020', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 396, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(80, 47, '1048042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 395, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(81, 48, '1220042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 377, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(82, 49, '1223042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 410, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(83, 50, '137042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 403, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(84, 51, '147042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 387, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(85, 52, '1544042019', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 380, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(86, 53, '1595042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 375, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(87, 54, '1605042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 411, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(88, 55, '167042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 393, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(89, 56, '1683042013', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 386, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(90, 57, '183042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 381, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(91, 58, '225042017', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 383, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(92, 59, '225042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 400, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(93, 60, '23042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 389, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(94, 61, '2312', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 370, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(95, 62, '253042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 385, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(96, 63, '266042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 406, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(97, 64, '292042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 378, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(98, 65, '309042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 376, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(99, 66, '321', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 369, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(100, 67, '323042020', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 397, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(101, 68, '329042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 379, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(102, 69, '333', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 413, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(103, 70, '3685', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 371, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(104, 71, '404042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 384, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(105, 72, '43042020', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 409, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(106, 73, '487042020', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 405, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(107, 74, '505042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 399, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(108, 75, '527042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 382, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(109, 76, '535042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 374, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(110, 77, '625042020', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 372, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(111, 78, '647042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 390, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(112, 79, '660042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 407, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(113, 80, '669042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 402, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(114, 81, '738042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 401, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(115, 82, '748042020', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 373, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(116, 83, '764042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 391, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(117, 84, '768042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 398, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(118, 85, '787042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 404, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(119, 86, '790042017', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 408, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(120, 87, '927042020', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 394, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(121, 88, '948042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 392, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(122, 89, '963042018', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 412, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(123, 90, '985042020', '2021-02-28', '2021-02-15', '0000-00-00', 2, 2021, 388, '7.35', '2.00', '0.00', 'NO', 'Activo', 'NO'),
(124, 91, '123', '2021-01-29', '2021-02-15', '0000-00-00', 1, 2021, 344, '62.00', '0.00', '0.00', 'NO', 'Activo', 'NO'),
(125, 92, '123', '2021-01-29', '2021-02-15', '0000-00-00', 1, 2021, 344, '60.00', '0.00', '0.00', 'NO', 'Activo', 'NO'),
(126, 93, '123', '2021-01-29', '2021-02-15', '0000-00-00', 1, 2021, 344, '62.00', '0.00', '0.00', 'NO', 'Activo', 'NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo_linea`
--

CREATE TABLE `recibo_linea` (
  `cod_recibo_linea` int(10) NOT NULL,
  `cod_recibo` int(10) NOT NULL,
  `cod_servicio` int(10) UNSIGNED ZEROFILL NOT NULL,
  `costo` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recibo_linea`
--

INSERT INTO `recibo_linea` (`cod_recibo_linea`, `cod_recibo`, `cod_servicio`, `costo`) VALUES
(34, 1, 0000000001, '7.35'),
(35, 2, 0000000001, '7.35'),
(36, 3, 0000000001, '7.35'),
(37, 4, 0000000001, '7.35'),
(38, 5, 0000000001, '7.35'),
(39, 6, 0000000001, '7.35'),
(40, 7, 0000000001, '7.35'),
(41, 8, 0000000001, '7.35'),
(42, 9, 0000000001, '7.35'),
(43, 10, 0000000001, '7.35'),
(44, 11, 0000000001, '7.35'),
(45, 12, 0000000001, '7.35'),
(46, 13, 0000000001, '7.35'),
(47, 14, 0000000001, '7.35'),
(48, 15, 0000000001, '7.35'),
(49, 16, 0000000001, '7.35'),
(50, 17, 0000000001, '7.35'),
(51, 18, 0000000001, '7.35'),
(52, 19, 0000000001, '7.35'),
(53, 20, 0000000001, '7.35'),
(54, 21, 0000000001, '7.35'),
(55, 22, 0000000001, '7.35'),
(56, 23, 0000000001, '7.35'),
(57, 24, 0000000001, '7.35'),
(58, 25, 0000000001, '7.35'),
(59, 26, 0000000001, '7.35'),
(60, 27, 0000000001, '7.35'),
(61, 28, 0000000001, '7.35'),
(62, 29, 0000000001, '7.35'),
(63, 30, 0000000001, '7.35'),
(64, 31, 0000000001, '7.35'),
(65, 32, 0000000001, '7.35'),
(66, 33, 0000000001, '7.35'),
(67, 34, 0000000001, '7.35'),
(68, 35, 0000000001, '7.35'),
(69, 36, 0000000001, '7.35'),
(70, 37, 0000000001, '7.35'),
(71, 38, 0000000001, '7.35'),
(72, 39, 0000000001, '7.35'),
(73, 40, 0000000001, '7.35'),
(74, 41, 0000000001, '7.35'),
(75, 42, 0000000001, '7.35'),
(76, 43, 0000000001, '7.35'),
(77, 44, 0000000001, '7.35'),
(78, 45, 0000000001, '7.35'),
(79, 79, 0000000001, '7.35'),
(80, 80, 0000000001, '7.35'),
(81, 81, 0000000001, '7.35'),
(82, 82, 0000000001, '7.35'),
(83, 83, 0000000001, '7.35'),
(84, 84, 0000000001, '7.35'),
(85, 85, 0000000001, '7.35'),
(86, 86, 0000000001, '7.35'),
(87, 87, 0000000001, '7.35'),
(88, 88, 0000000001, '7.35'),
(89, 89, 0000000001, '7.35'),
(90, 90, 0000000001, '7.35'),
(91, 91, 0000000001, '7.35'),
(92, 92, 0000000001, '7.35'),
(93, 93, 0000000001, '7.35'),
(94, 94, 0000000001, '7.35'),
(95, 95, 0000000001, '7.35'),
(96, 96, 0000000001, '7.35'),
(97, 97, 0000000001, '7.35'),
(98, 98, 0000000001, '7.35'),
(99, 99, 0000000001, '7.35'),
(100, 100, 0000000001, '7.35'),
(101, 101, 0000000001, '7.35'),
(102, 102, 0000000001, '7.35'),
(103, 103, 0000000001, '7.35'),
(104, 104, 0000000001, '7.35'),
(105, 105, 0000000001, '7.35'),
(106, 106, 0000000001, '7.35'),
(107, 107, 0000000001, '7.35'),
(108, 108, 0000000001, '7.35'),
(109, 109, 0000000001, '7.35'),
(110, 110, 0000000001, '7.35'),
(111, 111, 0000000001, '7.35'),
(112, 112, 0000000001, '7.35'),
(113, 113, 0000000001, '7.35'),
(114, 114, 0000000001, '7.35'),
(115, 115, 0000000001, '7.35'),
(116, 116, 0000000001, '7.35'),
(117, 117, 0000000001, '7.35'),
(118, 118, 0000000001, '7.35'),
(119, 119, 0000000001, '7.35'),
(120, 120, 0000000001, '7.35'),
(121, 121, 0000000001, '7.35'),
(122, 122, 0000000001, '7.35'),
(123, 123, 0000000001, '7.35'),
(124, 124, 0000000002, '60.00'),
(125, 124, 0000000003, '2.00'),
(126, 125, 0000000002, '60.00'),
(127, 126, 0000000002, '60.00'),
(128, 126, 0000000003, '2.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo_linea_tmp`
--

CREATE TABLE `recibo_linea_tmp` (
  `cod_servicio_linea_tmp` int(10) NOT NULL,
  `cod_servicio` int(5) UNSIGNED ZEROFILL NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `costo` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `reportecliente2pdf`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `reportecliente2pdf` (
`cod_cliente` int(5) unsigned zerofill
,`num_cuenta` varchar(20)
,`fecha_crea` date
,`nombre` varchar(50)
,`apellido` varchar(30)
,`fecha_naci` date
,`direccion` varchar(100)
,`departamento` varchar(30)
,`municipio` varchar(30)
,`sexo` varchar(9)
,`dui` varchar(10)
,`telefono` varchar(10)
,`celular` varchar(10)
,`nit` varchar(18)
,`mail` varchar(50)
,`num_medidor` int(5)
,`lectura_ini` int(5)
,`estado` varchar(8)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `reporteclientepdf`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `reporteclientepdf` (
`cod_cliente` int(5) unsigned zerofill
,`num_cuenta` varchar(20)
,`fecha_crea` date
,`nombre` varchar(50)
,`apellido` varchar(30)
,`departamento` varchar(30)
,`municipio` varchar(30)
,`dui` varchar(10)
,`num_medidor` int(5)
,`estado` varchar(8)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `reportelecturas3pdf`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `reportelecturas3pdf` (
`num_cuenta` varchar(20)
,`nombre` varchar(50)
,`apellido` varchar(30)
,`mes` int(2)
,`anio` int(4)
,`lectura_anterior` int(10)
,`lectura_actual` int(10)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `reportlecturas2pdf`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `reportlecturas2pdf` (
`num_cuenta` varchar(20)
,`nombre` varchar(50)
,`apellido` varchar(30)
,`lectura_actual` int(10)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `reportlecturas4pdf`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `reportlecturas4pdf` (
`num_cuenta` varchar(20)
,`nombre` varchar(50)
,`apellido` varchar(30)
,`direccion` varchar(100)
,`mes` int(2)
,`anio` int(4)
,`lectura_anterior` int(10)
,`lectura_actual` int(10)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `reportvalvulaspdf`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `reportvalvulaspdf` (
`num_inventario` varchar(12)
,`marca` varchar(30)
,`tipo` varchar(150)
,`instalacion` date
,`lugar` varchar(50)
,`mantenimiento` date
,`ejecutado` varchar(2)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Admin Users', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'hhskvuf1.jpg', 1, '2021-02-01 08:33:25'),
(2, 'Special User', 'special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'special002.jpg', 1, '2021-01-06 08:58:19'),
(3, 'Default User', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'user001.jpg', 1, '2021-01-06 09:03:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'Special', 2, 1),
(3, 'User', 3, 1);

-- --------------------------------------------------------

--
-- Estructura para la vista `asociacion1`
--
DROP TABLE IF EXISTS `asociacion1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asociacion1`  AS  select `a`.`cod_asociacion` AS `cod_asociacion`,`a`.`nom_asociacion` AS `nom_asociacion`,`a`.`abr_asociacion` AS `abr_asociacion`,`a`.`nit_asociacion` AS `nit_asociacion`,`d`.`departamento` AS `departamento`,`m`.`municipio` AS `municipio`,`a`.`dir_asociacion` AS `dir_asociacion`,`a`.`tel_asociacion` AS `tel_asociacion`,`a`.`cel_asociacion` AS `cel_asociacion`,`a`.`rep_asociacion` AS `rep_asociacion`,`a`.`dui_rep_asoc` AS `dui_rep_asoc`,`a`.`nit_rep_asoc` AS `nit_rep_asoc`,`a`.`prof_rep_asoc` AS `prof_rep_asoc`,`a`.`fech_nac_rep_asoc` AS `fech_nac_rep_asoc` from ((`asociacion` `a` join `inv_departamento` `d` on(`d`.`cod_departamento` = `a`.`cod_departamento`)) join `inv_municipio` `m` on(`m`.`cod_municipio` = `a`.`cod_municipio`)) order by `a`.`cod_asociacion` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `reportecliente2pdf`
--
DROP TABLE IF EXISTS `reportecliente2pdf`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reportecliente2pdf`  AS  select `c`.`cod_cliente` AS `cod_cliente`,`c`.`num_cuenta` AS `num_cuenta`,`c`.`fecha_crea` AS `fecha_crea`,`c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,`c`.`fecha_naci` AS `fecha_naci`,`c`.`direccion` AS `direccion`,`d`.`departamento` AS `departamento`,`m`.`municipio` AS `municipio`,`c`.`sexo` AS `sexo`,`c`.`dui` AS `dui`,`c`.`telefono` AS `telefono`,`c`.`celular` AS `celular`,`c`.`nit` AS `nit`,`c`.`mail` AS `mail`,`c`.`num_medidor` AS `num_medidor`,`c`.`lectura_ini` AS `lectura_ini`,`c`.`estado` AS `estado` from ((`inv_cliente` `c` join `inv_departamento` `d` on(`d`.`cod_departamento` = `c`.`cod_departamento`)) join `inv_municipio` `m` on(`m`.`cod_municipio` = `c`.`cod_municipio`)) order by `c`.`cod_cliente` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `reporteclientepdf`
--
DROP TABLE IF EXISTS `reporteclientepdf`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reporteclientepdf`  AS  select `c`.`cod_cliente` AS `cod_cliente`,`c`.`num_cuenta` AS `num_cuenta`,`c`.`fecha_crea` AS `fecha_crea`,`c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,`d`.`departamento` AS `departamento`,`m`.`municipio` AS `municipio`,`c`.`dui` AS `dui`,`c`.`num_medidor` AS `num_medidor`,`c`.`estado` AS `estado` from ((`inv_cliente` `c` join `inv_departamento` `d` on(`d`.`cod_departamento` = `c`.`cod_departamento`)) join `inv_municipio` `m` on(`m`.`cod_municipio` = `c`.`cod_municipio`)) order by `c`.`cod_cliente` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `reportelecturas3pdf`
--
DROP TABLE IF EXISTS `reportelecturas3pdf`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reportelecturas3pdf`  AS  select `inv_cliente`.`num_cuenta` AS `num_cuenta`,`inv_cliente`.`nombre` AS `nombre`,`inv_cliente`.`apellido` AS `apellido`,`lecturas`.`mes` AS `mes`,`lecturas`.`anio` AS `anio`,`lecturas`.`lectura_anterior` AS `lectura_anterior`,`lecturas`.`lectura_actual` AS `lectura_actual` from (`inv_cliente` join `lecturas` on(`inv_cliente`.`num_cuenta` = `lecturas`.`num_cuenta`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `reportlecturas2pdf`
--
DROP TABLE IF EXISTS `reportlecturas2pdf`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reportlecturas2pdf`  AS  select `inv_cliente`.`num_cuenta` AS `num_cuenta`,`inv_cliente`.`nombre` AS `nombre`,`inv_cliente`.`apellido` AS `apellido`,`lecturas`.`lectura_actual` AS `lectura_actual` from (`inv_cliente` join `lecturas` on(`inv_cliente`.`num_cuenta` = `lecturas`.`num_cuenta`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `reportlecturas4pdf`
--
DROP TABLE IF EXISTS `reportlecturas4pdf`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reportlecturas4pdf`  AS  select `inv_cliente`.`num_cuenta` AS `num_cuenta`,`inv_cliente`.`nombre` AS `nombre`,`inv_cliente`.`apellido` AS `apellido`,`inv_cliente`.`direccion` AS `direccion`,`lecturas`.`mes` AS `mes`,`lecturas`.`anio` AS `anio`,`lecturas`.`lectura_anterior` AS `lectura_anterior`,`lecturas`.`lectura_actual` AS `lectura_actual` from (`inv_cliente` join `lecturas` on(`inv_cliente`.`num_cuenta` = `lecturas`.`num_cuenta`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `reportvalvulaspdf`
--
DROP TABLE IF EXISTS `reportvalvulaspdf`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reportvalvulaspdf`  AS  select `inv_valvula`.`num_inventario` AS `num_inventario`,`inv_valvula`.`marca` AS `marca`,`inv_valvula`.`tipo` AS `tipo`,`inv_valvula`.`instalacion` AS `instalacion`,`inv_valvula`.`lugar` AS `lugar`,`inv_valvula`.`mantenimiento` AS `mantenimiento`,`inv_manttoval`.`ejecutado` AS `ejecutado` from (`inv_valvula` join `inv_manttoval` on(`inv_valvula`.`num_inventario` = `inv_manttoval`.`num_inventario`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asociacion`
--
ALTER TABLE `asociacion`
  ADD PRIMARY KEY (`cod_asociacion`),
  ADD KEY `cod_municipio` (`cod_municipio`),
  ADD KEY `cod_departamento` (`cod_departamento`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `coordenadas_tuberias`
--
ALTER TABLE `coordenadas_tuberias`
  ADD PRIMARY KEY (`idCoordenadas`);

--
-- Indices de la tabla `data_linestring`
--
ALTER TABLE `data_linestring`
  ADD PRIMARY KEY (`gid`);

--
-- Indices de la tabla `data_point`
--
ALTER TABLE `data_point`
  ADD PRIMARY KEY (`gid`);

--
-- Indices de la tabla `data_polygon`
--
ALTER TABLE `data_polygon`
  ADD PRIMARY KEY (`gid`);

--
-- Indices de la tabla `inv_cliente`
--
ALTER TABLE `inv_cliente`
  ADD PRIMARY KEY (`cod_cliente`),
  ADD KEY `cod_municipio` (`cod_municipio`),
  ADD KEY `cod_departamento` (`cod_departamento`);

--
-- Indices de la tabla `inv_departamento`
--
ALTER TABLE `inv_departamento`
  ADD PRIMARY KEY (`cod_departamento`);

--
-- Indices de la tabla `inv_desconexion`
--
ALTER TABLE `inv_desconexion`
  ADD PRIMARY KEY (`cod_orden_desco`),
  ADD KEY `cod_cuenta` (`cod_cuenta`);

--
-- Indices de la tabla `inv_manttoval`
--
ALTER TABLE `inv_manttoval`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inv_medidor`
--
ALTER TABLE `inv_medidor`
  ADD PRIMARY KEY (`cod_medidor`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD KEY `cod_marca` (`cod_marca`);

--
-- Indices de la tabla `inv_municipio`
--
ALTER TABLE `inv_municipio`
  ADD PRIMARY KEY (`cod_municipio`),
  ADD KEY `cod_departamento` (`cod_departamento`);

--
-- Indices de la tabla `inv_reclamo`
--
ALTER TABLE `inv_reclamo`
  ADD PRIMARY KEY (`cod_reclamo`),
  ADD KEY `cod_cliente` (`num_cuenta`);

--
-- Indices de la tabla `inv_reconexion`
--
ALTER TABLE `inv_reconexion`
  ADD PRIMARY KEY (`cod_orden_recon`),
  ADD KEY `cod_cuenta` (`cod_cuenta`);

--
-- Indices de la tabla `inv_servicio`
--
ALTER TABLE `inv_servicio`
  ADD PRIMARY KEY (`cod_servicio`);

--
-- Indices de la tabla `inv_tarifa`
--
ALTER TABLE `inv_tarifa`
  ADD PRIMARY KEY (`cod_tarifa`);

--
-- Indices de la tabla `inv_tiposval`
--
ALTER TABLE `inv_tiposval`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inv_tuberias`
--
ALTER TABLE `inv_tuberias`
  ADD PRIMARY KEY (`cod_tuberia`),
  ADD KEY `cod_material` (`cod_material`),
  ADD KEY `cod_jerarquia` (`cod_jerarquia`),
  ADD KEY `idCoordenadas` (`idCoordenadas`);

--
-- Indices de la tabla `inv_valvula`
--
ALTER TABLE `inv_valvula`
  ADD PRIMARY KEY (`cod_valvula`);

--
-- Indices de la tabla `jerarquia_tuberia`
--
ALTER TABLE `jerarquia_tuberia`
  ADD PRIMARY KEY (`cod_jerarquia`);

--
-- Indices de la tabla `lecturas`
--
ALTER TABLE `lecturas`
  ADD PRIMARY KEY (`cod_lectura`),
  ADD KEY `id_user` (`user`),
  ADD KEY `num_cuenta` (`num_cuenta`);

--
-- Indices de la tabla `mat_tuberia`
--
ALTER TABLE `mat_tuberia`
  ADD PRIMARY KEY (`cod_material`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indices de la tabla `recargo`
--
ALTER TABLE `recargo`
  ADD PRIMARY KEY (`cod_recargo`);

--
-- Indices de la tabla `recibos`
--
ALTER TABLE `recibos`
  ADD PRIMARY KEY (`cod_recibo`),
  ADD KEY `cod_lectura` (`cod_lectura`),
  ADD KEY `num_cuenta` (`num_cuenta`);

--
-- Indices de la tabla `recibo_linea`
--
ALTER TABLE `recibo_linea`
  ADD PRIMARY KEY (`cod_recibo_linea`),
  ADD KEY `cod_servicio` (`cod_servicio`),
  ADD KEY `cod_recibo` (`cod_recibo`) USING BTREE;

--
-- Indices de la tabla `recibo_linea_tmp`
--
ALTER TABLE `recibo_linea_tmp`
  ADD PRIMARY KEY (`cod_servicio_linea_tmp`),
  ADD KEY `cod_servicio` (`cod_servicio`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_level` (`user_level`);

--
-- Indices de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asociacion`
--
ALTER TABLE `asociacion`
  MODIFY `cod_asociacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `coordenadas_tuberias`
--
ALTER TABLE `coordenadas_tuberias`
  MODIFY `idCoordenadas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `data_linestring`
--
ALTER TABLE `data_linestring`
  MODIFY `gid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `data_point`
--
ALTER TABLE `data_point`
  MODIFY `gid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `data_polygon`
--
ALTER TABLE `data_polygon`
  MODIFY `gid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `inv_cliente`
--
ALTER TABLE `inv_cliente`
  MODIFY `cod_cliente` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT de la tabla `inv_departamento`
--
ALTER TABLE `inv_departamento`
  MODIFY `cod_departamento` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `inv_desconexion`
--
ALTER TABLE `inv_desconexion`
  MODIFY `cod_orden_desco` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `inv_manttoval`
--
ALTER TABLE `inv_manttoval`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `inv_medidor`
--
ALTER TABLE `inv_medidor`
  MODIFY `cod_medidor` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `inv_municipio`
--
ALTER TABLE `inv_municipio`
  MODIFY `cod_municipio` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT de la tabla `inv_reclamo`
--
ALTER TABLE `inv_reclamo`
  MODIFY `cod_reclamo` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `inv_reconexion`
--
ALTER TABLE `inv_reconexion`
  MODIFY `cod_orden_recon` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `inv_servicio`
--
ALTER TABLE `inv_servicio`
  MODIFY `cod_servicio` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `inv_tarifa`
--
ALTER TABLE `inv_tarifa`
  MODIFY `cod_tarifa` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inv_tiposval`
--
ALTER TABLE `inv_tiposval`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `inv_tuberias`
--
ALTER TABLE `inv_tuberias`
  MODIFY `cod_tuberia` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `inv_valvula`
--
ALTER TABLE `inv_valvula`
  MODIFY `cod_valvula` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `jerarquia_tuberia`
--
ALTER TABLE `jerarquia_tuberia`
  MODIFY `cod_jerarquia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `lecturas`
--
ALTER TABLE `lecturas`
  MODIFY `cod_lectura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567;

--
-- AUTO_INCREMENT de la tabla `mat_tuberia`
--
ALTER TABLE `mat_tuberia`
  MODIFY `cod_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `recargo`
--
ALTER TABLE `recargo`
  MODIFY `cod_recargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `recibos`
--
ALTER TABLE `recibos`
  MODIFY `cod_recibo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `recibo_linea`
--
ALTER TABLE `recibo_linea`
  MODIFY `cod_recibo_linea` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `recibo_linea_tmp`
--
ALTER TABLE `recibo_linea_tmp`
  MODIFY `cod_servicio_linea_tmp` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inv_cliente`
--
ALTER TABLE `inv_cliente`
  ADD CONSTRAINT `inv_cliente_ibfk_1` FOREIGN KEY (`cod_municipio`) REFERENCES `inv_municipio` (`cod_municipio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inv_cliente_ibfk_2` FOREIGN KEY (`cod_departamento`) REFERENCES `inv_municipio` (`cod_departamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inv_municipio`
--
ALTER TABLE `inv_municipio`
  ADD CONSTRAINT `inv_municipio_ibfk_1` FOREIGN KEY (`cod_departamento`) REFERENCES `inv_departamento` (`cod_departamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inv_tuberias`
--
ALTER TABLE `inv_tuberias`
  ADD CONSTRAINT `jerarquia` FOREIGN KEY (`cod_jerarquia`) REFERENCES `jerarquia_tuberia` (`cod_jerarquia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `material` FOREIGN KEY (`cod_material`) REFERENCES `mat_tuberia` (`cod_material`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
