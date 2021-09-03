-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: dtisvae
-- ------------------------------------------------------
-- Server version	5.5.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `cod_estudiante` int(7) NOT NULL,
  `nombre_estudiante` varchar(70) NOT NULL,
  `apellido_estudiante` varchar(70) NOT NULL,
  `institucion` varchar(70) NOT NULL,
  `codinstu` varchar(6) NOT NULL,
  `area2` varchar(1) NOT NULL,
  `edad` int(3) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `grado` varchar(1) NOT NULL,
  `seccion` varchar(1) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `fecha_entre` date DEFAULT NULL,
  UNIQUE KEY `cod_estudiante` (`cod_estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (358,'ALFREDO ','ESPINO','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',15,'M','8','B','CANTON SAN MARCOS, CASERIO EL CHILAMO','2015-06-12'),(1117,'FABIOLA CRISTINA','CANO QUEZADA','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',15,'F','7','A','BARRIO EL CENTRO','2014-09-09'),(2314,'BALMORE','MARTINEZ','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',16,'M','7','A','BARRIO EL CENTRO','2015-01-22'),(3438,'ANA RHINA','QUEZADA','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',16,'F','7','A','BARRIO EL CALVARIO','2014-09-09'),(5209,'SANTOS','CAMPOS','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',16,'M','7','A','BARRIO EL CENTRO','2014-09-08'),(7037,'ANTONIO JOSE','MADRID','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',16,'M','7','A','BARRIO EL CALVARIO','2015-01-22'),(7079,'ELENA','VILLALTA CAMPOS','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',13,'F','7','A','BARRIO EL CENTRO','2015-01-26'),(8088,'LUIS ','DIAZ ','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',13,'M','7','A','BARRIO EL CENTRO ','2015-01-27'),(8910,'PRUEBA 43','CANO','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',15,'M','7','A','BARRIO LA CRUZ','2015-08-21'),(11047,'CELIA ','CRUZ','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',16,'F','7','A','BARRIO EL CENTRO','2014-10-06'),(12826,'BETTY','AYALA','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',14,'F','7','A','BARRIO EL CENTRO','2015-01-26'),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',17,'M','9','A','BARRIO LA CRUZ','2014-10-31'),(16172,'MARIA ANA ','MARTINEZ','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',14,'F','8','A','CALLE NUEVA, BARRIO EL CALVARIO','2015-06-12'),(16408,'CALOS ARMANDO','ROMERO','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',13,'M','7','A','BARRIO LA CRUZ','2015-01-27'),(17755,'PRUEBA 44','CANO','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',15,'M','7','A','BARRIO LA CRUZ','2015-08-21'),(18996,'SARA','MONTIEL','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',15,'F','7','A','BARRIO LA CRUZ','2015-08-19'),(20455,'MARIA ','VELIZ','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',16,'F','7','A','BARRIO LA CRUZ','2015-07-30'),(21155,'MANUEL','MEDINA','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',15,'M','7','A','BARRIO EL CENTRO','2014-09-09'),(21994,'RHINA ALEXANDRA','CANO QUEZADA','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',15,'F','7','A','BARRIO EL CENTRO','2014-09-09'),(23719,'CATALINA ','SERPAS','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',16,'F','8','A','BARRIO LA CRUZ','2015-06-12'),(24807,'WALTER','GUEVARA','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',18,'M','7','A','LA CRUZ','2015-01-27'),(25455,'JUANA','DE ARCO MARTINEZ','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',14,'F','8','A','CALLE NUEVA, BARRIO EL CALVARIO','2015-06-12'),(27356,'MAURICIO','BERRIOS AVILA','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',19,'M','7','A','BARRIO EL CENTRO','2015-02-11'),(27869,'LUIS   ','ROMERO','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',15,'F','7','A','BARRIO EL CENTRO','0000-00-00'),(28663,'SAMUEL ALEJANDRO','CANO','CENTRO ESCOLAR BARRIO LA CRUZ','12951','U',13,'M','7','A','BARRIO EL CENTRO','2015-01-27');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form1`
--

DROP TABLE IF EXISTS `form1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form1` (
  `id_f1` int(7) NOT NULL,
  `nombreestF1` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `apellidoestF1` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `codigoescF1` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `gradoF1` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `seccionF1` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `sexoF1` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `edadF1` int(2) NOT NULL,
  `fechaentrevistaF1` date NOT NULL,
  `item1F1` int(1) NOT NULL,
  `item2F1` int(1) NOT NULL,
  `item3F1` int(1) NOT NULL,
  `item4F1` int(1) NOT NULL,
  `item5F1` int(1) NOT NULL,
  `item6F1` int(1) NOT NULL,
  `item7F1` int(1) NOT NULL,
  `item8F1` int(1) NOT NULL,
  `item9F1` int(1) NOT NULL,
  `item10F1` int(1) NOT NULL,
  `item11F1` int(1) NOT NULL,
  `item12F1` int(1) NOT NULL,
  `item13F1` int(1) NOT NULL,
  `item14F1` int(1) NOT NULL,
  `item15F1` int(1) NOT NULL,
  `item16F1` int(1) NOT NULL,
  `item17F1` int(1) NOT NULL,
  `item18F1` int(1) NOT NULL,
  `item19F1` int(1) NOT NULL,
  `item20F1` int(1) NOT NULL,
  `item21F1` int(1) NOT NULL,
  `item22F1` int(1) NOT NULL,
  `item23F1` int(1) NOT NULL,
  `item24F1` int(1) NOT NULL,
  `item25F1` int(1) NOT NULL,
  `item26F1` int(1) NOT NULL,
  `item27F1` int(1) NOT NULL,
  `puntajeF1` int(2) NOT NULL,
  `cohesionF1` int(2) NOT NULL,
  `expresividadF1` int(2) NOT NULL,
  `conflictoF1` int(2) NOT NULL,
  `nivel_coheF1` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nivel_expresiF1` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nivel_conflicF1` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `codigo_coheF1` int(1) NOT NULL,
  `codigo_expresiF1` int(1) NOT NULL,
  `codigo_conflicF1` int(1) NOT NULL,
  UNIQUE KEY `id_f1` (`id_f1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form1`
--

LOCK TABLES `form1` WRITE;
/*!40000 ALTER TABLE `form1` DISABLE KEYS */;
INSERT INTO `form1` VALUES (358,'ALFREDO ','ESPINO','12951','8','B','M',15,'2015-06-12',2,1,2,1,1,1,2,1,2,2,2,1,1,2,2,2,1,2,1,2,1,2,0,2,2,2,1,41,15,12,14,'ALTA','MEDIA','MEDIA',3,2,2),(1117,'FABIOLA CRISTINA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',2,1,1,1,1,2,1,2,1,1,2,1,1,2,2,2,2,1,2,1,2,1,0,1,1,1,1,36,12,12,12,'MEDIA','MEDIA','MEDIA',2,2,2),(2314,'BALMORE','MARTINEZ','12951','7','A','M',16,'2015-01-22',2,2,2,2,2,2,2,2,2,1,2,2,1,1,2,1,1,1,1,1,1,1,0,2,1,2,2,41,12,13,16,'MEDIA','MEDIA','ALTA',2,2,3),(3438,'ANA RHINA','QUEZADA','12951','7','A','F',16,'2014-09-09',2,1,2,2,1,2,2,1,2,2,2,1,1,2,2,2,1,2,1,2,1,1,0,2,2,2,1,42,15,12,15,'ALTA','MEDIA','ALTA',3,2,3),(5209,'SANTOS','CAMPOS','12951','7','A','M',16,'2014-09-08',2,1,2,2,2,1,2,1,2,2,1,2,2,1,2,2,1,2,1,2,1,2,0,2,2,1,1,42,17,10,15,'ALTA','MEDIA','ALTA',3,2,3),(7037,'ANTONIO JOSE','MADRID','12951','7','A','M',16,'2015-01-22',1,1,2,1,1,1,2,1,2,2,1,1,1,2,2,2,1,2,1,2,1,1,0,2,2,2,2,39,13,11,15,'MEDIA','MEDIA','ALTA',2,2,3),(7079,'ELENA','VILLALTA CAMPOS','12951','7','A','F',13,'2015-01-26',2,2,2,1,2,1,2,1,2,2,2,1,1,2,2,2,1,2,1,2,1,2,0,2,2,2,2,44,15,14,15,'ALTA','MEDIA','ALTA',3,2,3),(8088,'LUIS ','DIAZ ','12951','7','A','M',13,'2015-01-27',1,1,2,2,2,2,1,1,2,1,1,2,1,2,2,1,2,2,1,1,2,1,0,2,1,1,1,38,10,11,17,'MEDIA','MEDIA','ALTA',2,2,3),(8910,'PRUEBA 43','CANO','12951','7','A','M',15,'2015-08-21',2,1,2,1,2,1,2,1,2,2,2,1,1,2,2,2,1,2,1,2,1,2,0,2,1,2,1,41,14,13,14,'MEDIA','MEDIA','MEDIA',2,2,2),(11047,'CELIA ','CRUZ','12951','7','A','F',16,'2014-10-06',2,1,2,1,2,1,1,2,1,1,1,2,2,1,1,2,1,2,1,2,2,1,0,2,2,2,1,39,13,12,14,'MEDIA','MEDIA','MEDIA',2,2,2),(12826,'BETTY','AYALA','12951','7','A','F',14,'2015-01-26',2,1,2,1,2,1,2,1,2,2,2,1,1,2,2,2,1,2,1,2,1,2,0,2,2,2,1,42,15,13,14,'ALTA','MEDIA','MEDIA',3,2,2),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','12951','9','A','M',17,'2014-10-31',2,1,2,2,2,1,2,2,2,2,1,1,1,2,2,1,1,2,1,2,2,2,0,2,2,2,2,44,15,13,16,'ALTA','MEDIA','ALTA',3,2,3),(16172,'MARIA ANA ','MARTINEZ','12951','8','A','F',14,'2015-06-12',2,2,2,1,2,1,2,1,2,2,2,1,1,2,2,2,1,2,1,2,1,2,0,2,2,2,1,43,15,14,14,'ALTA','MEDIA','MEDIA',3,2,2),(16408,'CALOS ARMANDO','ROMERO','12951','7','A','M',13,'2015-01-27',1,1,2,1,2,1,1,1,2,1,1,2,1,2,2,1,2,2,2,2,2,1,0,1,2,1,1,38,11,12,15,'MEDIA','MEDIA','ALTA',2,2,3),(17755,'PRUEBA 44','CANO','12951','7','A','M',15,'2015-08-21',2,1,2,1,2,1,2,1,2,2,2,1,1,2,2,2,1,2,1,2,1,2,0,2,2,2,1,42,15,13,14,'ALTA','MEDIA','MEDIA',3,2,2),(20455,'MARIA ','VELIZ','12951','7','A','F',16,'2015-07-30',2,1,2,1,2,1,2,1,2,2,2,1,1,2,2,2,1,2,1,2,1,2,0,2,2,2,1,42,15,13,14,'ALTA','MEDIA','MEDIA',3,2,2),(21994,'RHINA ALEXANDRA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',2,1,2,1,2,1,2,1,2,2,1,1,1,2,2,1,1,2,1,2,1,2,0,2,2,2,1,40,14,12,14,'MEDIA','MEDIA','MEDIA',2,2,2),(23719,'CATALINA ','SERPAS','12951','8','A','F',16,'2015-06-12',2,1,2,1,2,1,2,1,2,2,2,1,1,2,2,2,1,2,1,2,1,2,0,2,2,2,1,42,15,13,14,'ALTA','MEDIA','MEDIA',3,2,2),(24807,'WALTER','GUEVARA','12951','7','A','M',18,'2015-01-27',1,2,1,2,1,2,1,1,1,2,1,1,2,2,1,1,1,1,1,1,1,1,0,1,1,2,2,34,12,11,11,'MEDIA','MEDIA','MEDIA',2,2,2),(25455,'JUANA','DE ARCO MARTINEZ','12951','8','A','F',14,'2015-06-12',2,1,2,1,2,1,2,1,2,2,2,1,1,2,2,2,1,2,1,2,1,2,0,2,2,2,1,42,15,13,14,'ALTA','MEDIA','MEDIA',3,2,2),(27356,'MAURICIO','BERRIOS AVILA','12951','7','A','M',19,'2015-02-11',2,2,2,2,2,1,2,2,2,2,2,2,1,2,2,2,1,1,2,2,2,2,0,1,2,1,1,45,17,14,14,'ALTA','MEDIA','MEDIA',3,2,2),(27869,'LUIS   ','ROMERO','12951','7','A','F',15,'0000-00-00',2,2,1,2,1,1,1,2,1,2,1,2,1,1,1,2,1,1,2,1,2,1,0,2,1,2,2,38,14,11,13,'MEDIA','MEDIA','MEDIA',2,2,2),(28663,'SAMUEL ALEJANDRO','CANO','12951','7','A','M',13,'2015-01-27',1,1,2,1,1,1,2,2,2,2,2,1,1,2,1,2,1,2,1,2,2,2,0,2,2,1,2,41,14,12,15,'MEDIA','MEDIA','ALTA',2,2,3);
/*!40000 ALTER TABLE `form1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form10`
--

DROP TABLE IF EXISTS `form10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form10` (
  `id_f10` int(7) NOT NULL,
  `nombreestF10` varchar(70) NOT NULL,
  `apellidoestF10` varchar(70) NOT NULL,
  `codigoescF10` varchar(6) NOT NULL,
  `gradoF10` varchar(1) NOT NULL,
  `seccionF10` varchar(1) NOT NULL,
  `sexoF10` varchar(1) NOT NULL,
  `edadF10` int(2) NOT NULL,
  `fechaentrevistaF10` date NOT NULL,
  `item1F10` int(1) NOT NULL,
  `item2F10` int(1) NOT NULL,
  `item3F10` int(1) NOT NULL,
  `item4F10` int(1) NOT NULL,
  `item5F10` int(1) NOT NULL,
  `item6F10` int(1) NOT NULL,
  `item7F10` int(1) NOT NULL,
  `item8F10` int(1) NOT NULL,
  `item9F10` int(1) NOT NULL,
  `item10F10` int(1) NOT NULL,
  `item11F10` int(1) NOT NULL,
  `item12F10` int(1) NOT NULL,
  `item13F10` int(1) NOT NULL,
  `item14F10` int(1) NOT NULL,
  `item15F10` int(1) NOT NULL,
  `item16F10` int(1) NOT NULL,
  `item17F10` int(1) NOT NULL,
  `item18F10` int(1) NOT NULL,
  `item19F10` int(1) NOT NULL,
  `item20F10` int(1) NOT NULL,
  `item21F10` int(1) NOT NULL,
  `item22F10` int(1) NOT NULL,
  `item23F10` int(1) NOT NULL,
  `item24F10` int(1) NOT NULL,
  `item25F10` int(1) NOT NULL,
  `item26F10` int(1) NOT NULL,
  `item27F10` int(1) NOT NULL,
  `item28F10` int(1) NOT NULL,
  `item29F10` int(1) NOT NULL,
  `item30F10` int(1) NOT NULL,
  `puntajeF10` int(2) NOT NULL,
  `P_implicacionF10` int(2) NOT NULL,
  `P_afilalumnosF10` int(2) NOT NULL,
  `P_ayudaprofesorF10` int(2) NOT NULL,
  `N_implicacionF10` varchar(20) NOT NULL,
  `C_implicacionF10` int(1) NOT NULL,
  `N_afilalumnosF10` varchar(20) NOT NULL,
  `C_afilalumnosF10` int(1) NOT NULL,
  `N_ayudaprofesorF10` varchar(20) NOT NULL,
  `C_ayudaprofesorF10` int(1) NOT NULL,
  `B_implicacionF10` varchar(6) NOT NULL,
  `B_afiliacionF10` varchar(6) NOT NULL,
  `B_ayudaF10` varchar(6) NOT NULL,
  UNIQUE KEY `id_f10` (`id_f10`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form10`
--

LOCK TABLES `form10` WRITE;
/*!40000 ALTER TABLE `form10` DISABLE KEYS */;
INSERT INTO `form10` VALUES (0,'','','','','','',0,'0000-00-00',2,2,1,1,1,2,1,2,2,2,2,2,1,2,1,1,2,1,2,2,1,1,1,2,2,1,1,2,1,1,45,15,15,15,'MEDIA',2,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(358,'ALFREDO ','ESPINO','12951','8','B','M',15,'2015-06-12',2,2,1,1,1,2,1,2,2,2,2,2,1,2,1,1,2,1,2,2,1,1,1,2,2,1,1,2,1,1,45,15,15,15,'MEDIA',2,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(1117,'FABIOLA CRISTINA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',2,1,1,1,1,2,1,2,1,1,1,2,1,2,1,2,1,1,2,2,2,1,1,2,2,2,2,1,2,2,45,14,15,16,'MEDIA',2,'MEDIA',2,'ALTA',3,'FALSO','FALSO','FALSO'),(2314,'BALMORE','MARTINEZ','12951','7','A','M',16,'2015-01-22',1,2,1,2,1,1,1,1,2,1,2,1,1,1,1,2,2,2,2,1,1,2,1,1,2,2,1,1,1,2,42,15,14,13,'MEDIA',2,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(3438,'ANA RHINA','QUEZADA','12951','7','A','F',16,'2014-09-09',2,2,1,2,2,1,1,2,2,2,2,1,1,2,1,2,2,1,2,2,2,1,1,2,2,1,2,2,1,1,48,17,17,14,'ALTA',3,'ALTA',3,'MEDIA',2,'FALSO','FALSO','FALSO'),(5209,'SANTOS','CAMPOS','12951','7','A','M',16,'2014-09-08',2,2,1,1,1,2,1,1,1,1,2,2,1,2,1,2,2,1,2,2,1,1,1,2,2,1,1,2,1,1,43,15,14,14,'MEDIA',2,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(7037,'ANTONIO JOSE','MADRID','12951','7','A','M',16,'2015-01-22',1,1,2,2,2,2,1,1,1,1,1,1,2,1,2,2,1,2,1,1,2,2,2,1,1,2,2,1,2,2,45,14,15,16,'MEDIA',2,'MEDIA',2,'ALTA',3,'FALSO','FALSO','FALSO'),(7079,'ELENA','VILLALTA CAMPOS','12951','7','A','F',13,'2015-01-26',2,2,1,1,1,2,1,2,2,2,2,2,1,2,1,1,2,1,2,2,1,1,1,2,2,1,1,2,1,1,45,15,15,15,'MEDIA',2,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(8088,'LUIS ','DIAZ ','12951','7','A','M',13,'2015-01-27',1,1,2,1,2,1,2,1,2,1,1,1,1,1,2,2,2,2,1,1,2,2,2,2,1,2,2,1,1,1,44,13,15,16,'MEDIA',2,'MEDIA',2,'ALTA',3,'FALSO','FALSO','FALSO'),(8910,'PRUEBA 43','CANO','12951','','','',0,'0000-00-00',2,2,2,1,1,2,1,2,2,2,2,2,1,2,1,1,2,1,2,2,1,1,1,2,2,1,1,2,1,2,47,15,15,17,'MEDIA',2,'MEDIA',2,'ALTA',3,'FALSO','FALSO','FALSO'),(11047,'CELIA ','CRUZ','12951','7','A','F',16,'2014-10-06',2,2,1,1,1,2,1,1,2,2,2,2,1,2,1,2,2,1,2,2,1,1,1,2,2,1,1,2,1,1,45,16,14,15,'ALTA',3,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(12826,'BETTY','AYALA','12951','7','A','F',14,'2015-01-26',2,2,1,1,1,2,1,2,2,2,2,2,1,2,1,1,2,1,2,2,1,1,1,2,2,1,1,2,1,1,45,15,15,15,'MEDIA',2,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','12951','9','A','M',17,'2014-10-31',2,2,1,1,1,2,1,2,2,2,2,2,1,2,1,1,2,1,2,2,1,1,1,2,2,1,1,2,1,1,45,15,15,15,'MEDIA',2,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(16172,'MARIA ANA ','MARTINEZ','12951','8','A','F',14,'2015-06-12',1,1,1,1,1,2,1,2,2,2,2,2,1,2,1,1,1,1,2,2,1,1,1,2,2,1,1,2,1,1,42,14,13,15,'MEDIA',2,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(16408,'CALOS ARMANDO','ROMERO','12951','7','A','M',13,'2015-01-27',1,1,1,1,2,2,2,2,1,2,1,2,2,2,2,1,1,1,1,2,2,1,2,2,1,1,2,2,2,1,46,14,16,16,'MEDIA',2,'ALTA',3,'ALTA',3,'FALSO','FALSO','FALSO'),(17755,'PRUEBA 44','CANO','12951','7','A','M',15,'2015-08-21',2,2,1,1,1,2,1,2,2,2,2,2,1,2,1,1,2,1,2,2,1,1,1,2,2,1,1,2,1,1,45,15,15,15,'MEDIA',2,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(20455,'MARIA ','VELIZ','12951','7','A','F',16,'2015-07-30',2,2,1,1,1,2,1,2,1,2,2,2,1,2,2,2,2,1,2,2,1,1,2,2,2,1,1,2,1,1,47,16,16,15,'ALTA',3,'ALTA',3,'MEDIA',2,'FALSO','FALSO','FALSO'),(21994,'RHINA ALEXANDRA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',2,2,1,1,1,2,2,2,2,2,1,1,2,2,1,1,1,2,1,1,2,1,1,2,2,1,1,2,1,1,44,16,14,14,'ALTA',3,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(23719,'CATALINA ','SERPAS','12951','8','A','F',16,'2015-06-12',1,2,2,2,1,2,1,2,2,2,2,2,1,2,1,1,2,1,2,2,1,1,1,2,2,1,1,2,1,1,46,15,15,16,'MEDIA',2,'MEDIA',2,'ALTA',3,'FALSO','FALSO','FALSO'),(24807,'WALTER','GUEVARA','12951','7','A','M',18,'2015-01-27',1,2,2,1,2,2,2,2,1,2,1,2,2,2,2,1,1,1,1,2,2,1,2,2,1,2,1,1,1,1,46,13,17,16,'MEDIA',2,'ALTA',3,'ALTA',3,'FALSO','FALSO','FALSO'),(25455,'JUANA','DE ARCO MARTINEZ','12951','8','A','F',14,'2015-06-12',1,2,2,1,1,2,1,2,2,2,2,2,1,2,1,1,2,1,2,2,1,1,1,2,2,1,1,2,1,1,45,14,15,16,'MEDIA',2,'MEDIA',2,'ALTA',3,'FALSO','FALSO','FALSO'),(27356,'MAURICIO','BERRIOS AVILA','12951','7','A','M',19,'2015-02-11',2,1,1,1,1,2,1,2,2,2,2,2,1,2,1,1,2,1,2,2,1,1,1,2,2,1,1,2,1,1,44,15,14,15,'MEDIA',2,'MEDIA',2,'MEDIA',2,'FALSO','FALSO','FALSO'),(27869,'LUIS   ','ROMERO','12951','7','A','F',15,'0000-00-00',2,1,1,2,1,2,1,2,1,2,1,2,1,2,1,1,1,1,1,1,2,2,2,1,1,2,2,1,2,2,44,14,16,14,'MEDIA',2,'ALTA',3,'MEDIA',2,'FALSO','FALSO','FALSO'),(28663,'SAMUEL ALEJANDRO','CANO','12951','7','A','M',13,'2015-01-27',2,1,2,1,1,1,1,2,1,1,1,1,2,1,1,2,2,2,2,2,1,1,1,2,1,2,2,2,1,2,44,15,13,16,'MEDIA',2,'MEDIA',2,'ALTA',3,'FALSO','FALSO','FALSO');
/*!40000 ALTER TABLE `form10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `form10_7pdf`
--

DROP TABLE IF EXISTS `form10_7pdf`;
/*!50001 DROP VIEW IF EXISTS `form10_7pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form10_7pdf` (
  `id_f10` int(7),
  `nombreestF10` varchar(70),
  `apellidoestF10` varchar(70),
  `gradoF10` varchar(1),
  `seccionF10` varchar(1),
  `edadF10` int(2),
  `N_implicacionF10` varchar(20),
  `N_afilalumnosF10` varchar(20),
  `N_ayudaprofesorF10` varchar(20),
  `B_implicacionF10` varchar(6),
  `B_afiliacionF10` varchar(6),
  `B_ayudaF10` varchar(6)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form10_8pdf`
--

DROP TABLE IF EXISTS `form10_8pdf`;
/*!50001 DROP VIEW IF EXISTS `form10_8pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form10_8pdf` (
  `id_f10` int(7),
  `nombreestF10` varchar(70),
  `apellidoestF10` varchar(70),
  `gradoF10` varchar(1),
  `seccionF10` varchar(1),
  `edadF10` int(2),
  `N_implicacionF10` varchar(20),
  `N_afilalumnosF10` varchar(20),
  `N_ayudaprofesorF10` varchar(20),
  `B_implicacionF10` varchar(6),
  `B_afiliacionF10` varchar(6),
  `B_ayudaF10` varchar(6)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form10_9pdf`
--

DROP TABLE IF EXISTS `form10_9pdf`;
/*!50001 DROP VIEW IF EXISTS `form10_9pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form10_9pdf` (
  `id_f10` int(7),
  `nombreestF10` varchar(70),
  `apellidoestF10` varchar(70),
  `gradoF10` varchar(1),
  `seccionF10` varchar(1),
  `edadF10` int(2),
  `N_implicacionF10` varchar(20),
  `N_afilalumnosF10` varchar(20),
  `N_ayudaprofesorF10` varchar(20),
  `B_implicacionF10` varchar(6),
  `B_afiliacionF10` varchar(6),
  `B_ayudaF10` varchar(6)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form10_va`
--

DROP TABLE IF EXISTS `form10_va`;
/*!50001 DROP VIEW IF EXISTS `form10_va`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form10_va` (
  `nombreestF10` varchar(70),
  `apellidoestF10` varchar(70),
  `codigoescF10` varchar(6),
  `gradoF10` varchar(1),
  `seccionF10` varchar(1),
  `sexoF10` varchar(1),
  `edadF10` int(2),
  `fechaentrevistaF10` date,
  `puntajeF10` int(2),
  `P_implicacionF10` int(2),
  `P_afilalumnosF10` int(2),
  `P_ayudaprofesorF10` int(2),
  `N_implicacionF10` varchar(20),
  `N_afilalumnosF10` varchar(20),
  `N_ayudaprofesorF10` varchar(20),
  `B_implicacionF10` varchar(6),
  `B_afiliacionF10` varchar(6),
  `B_ayudaF10` varchar(6)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `form11`
--

DROP TABLE IF EXISTS `form11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form11` (
  `id_f11` int(7) NOT NULL,
  `nombreestF11` varchar(70) NOT NULL,
  `apellidoestF11` varchar(70) NOT NULL,
  `codigoescF11` varchar(6) NOT NULL,
  `gradoF11` varchar(1) NOT NULL,
  `seccionF11` varchar(1) NOT NULL,
  `sexoF11` varchar(1) NOT NULL,
  `edadF11` int(2) NOT NULL,
  `fechaentrevistaF11` date NOT NULL,
  `F_paterna` int(2) NOT NULL,
  `F_materna` int(2) NOT NULL,
  `P_tacticaspadres1` int(2) NOT NULL,
  `P_tacticaspadres2` int(2) NOT NULL,
  `N_tacticaspadres1B` varchar(20) NOT NULL,
  `C_tacticaspadres1A` int(1) NOT NULL,
  `N_tacticaspadres2B` varchar(20) NOT NULL,
  `C_tacticaspadres2A` int(1) NOT NULL,
  `P_tacticaspadres3` int(2) NOT NULL,
  `P_tacticaspadres4` int(2) NOT NULL,
  `N_tacticaspadres3B` varchar(20) NOT NULL,
  `C_tacticaspadres3A` int(1) NOT NULL,
  `N_tacticaspadres4B` varchar(20) NOT NULL,
  `C_tacticaspadres4A` int(1) NOT NULL,
  `P_tacticaspadres5` int(2) NOT NULL,
  `P_tacticaspadres6` int(2) NOT NULL,
  `N_tacticaspadres5B` varchar(20) NOT NULL,
  `C_tacticaspadres5A` int(1) NOT NULL,
  `N_tacticaspadres6B` varchar(20) NOT NULL,
  `C_tacticaspadres6A` int(1) NOT NULL,
  `P_tacticaspadres7` int(2) NOT NULL,
  `P_tacticaspadres8` int(2) NOT NULL,
  `N_tacticaspadres7B` varchar(20) NOT NULL,
  `C_tacticaspadres7A` int(1) NOT NULL,
  `N_tacticaspadres8B` varchar(20) NOT NULL,
  `C_tacticaspadres8A` int(1) NOT NULL,
  `P_tacticaspadres9` int(2) NOT NULL,
  `P_tacticaspadres10` int(2) NOT NULL,
  `N_tacticaspadres9B` varchar(20) NOT NULL,
  `C_tacticaspadres9A` int(1) NOT NULL,
  `N_tacticaspadres10B` varchar(20) NOT NULL,
  `C_tacticaspadres10A` int(1) NOT NULL,
  `N_tacticaspadres1BB` varchar(20) NOT NULL,
  `C_tacticaspadres1AB` int(1) NOT NULL,
  `N_tacticaspadres2BB` varchar(20) NOT NULL,
  `C_tacticaspadres2AB` int(1) NOT NULL,
  `N_tacticaspadres3BB` varchar(20) NOT NULL,
  `C_tacticaspadres3AB` int(1) NOT NULL,
  `N_tacticaspadres4BB` varchar(20) NOT NULL,
  `C_tacticaspadres4AB` int(1) NOT NULL,
  `N_tacticaspadres5BB` varchar(20) NOT NULL,
  `C_tacticaspadres5AB` int(1) NOT NULL,
  `N_tacticaspadres6BB` varchar(20) NOT NULL,
  `C_tacticaspadres6AB` int(1) NOT NULL,
  `N_tacticaspadres7BB` varchar(20) NOT NULL,
  `C_tacticaspadres7AB` int(1) NOT NULL,
  `N_tacticaspadres8BB` varchar(20) NOT NULL,
  `C_tacticaspadres8AB` int(1) NOT NULL,
  `N_tacticaspadres9BB` varchar(20) NOT NULL,
  `C_tacticaspadres9AB` int(1) NOT NULL,
  `N_tacticaspadres10BB` varchar(20) NOT NULL,
  `C_tacticaspadres10AB` int(1) NOT NULL,
  UNIQUE KEY `id_f2` (`id_f11`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form11`
--

LOCK TABLES `form11` WRITE;
/*!40000 ALTER TABLE `form11` DISABLE KEYS */;
INSERT INTO `form11` VALUES (358,'ALFREDO ','ESPINO','12951','8','B','M',15,'2015-06-12',0,1,7,0,'EVENTUAL',2,'',0,11,0,'EVENTUAL',2,'',0,10,0,'EVENTUAL',2,'',0,7,0,'EVENTUAL',2,'',0,9,0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0),(1117,'FABIOLA CRISTINA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,0,0,7,'',0,'EVENTUAL',2,0,12,'',0,'EVENTUAL',2,0,11,'',0,'EVENTUAL',2,0,9,'',0,'EVENTUAL',2,0,8,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2),(2314,'BALMORE','MARTINEZ','12951','7','A','M',16,'2015-01-22',1,1,10,10,'RECURRENTE',3,'RECURRENTE',3,15,15,'RECURRENTE',3,'RECURRENTE',3,15,15,'RECURRENTE',3,'RECURRENTE',3,12,12,'RECURRENTE',3,'RECURRENTE',3,12,12,'RECURRENTE',3,'RECURRENTE',3,'FALSO',0,'FALSO',0,'RECURRENTE',3,'RECURRENTE',3,'RECURRENTE',3,'RECURRENTE',3,'RECURRENTE',3,'RECURRENTE',3,'RECURRENTE',3,'RECURRENTE',3),(3438,'ANA RHINA','QUEZADA','12951','7','A','F',16,'2014-09-09',0,1,7,0,'EVENTUAL',2,'',0,10,0,'EVENTUAL',2,'',0,10,0,'EVENTUAL',2,'',0,9,0,'EVENTUAL',2,'',0,10,0,'RECURRENTE',3,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'RECURRENTE',3,'',0),(5209,'SANTOS','CAMPOS','12951','7','A','M',16,'2014-09-08',0,1,5,0,'NULA',1,'',0,9,0,'EVENTUAL',2,'',0,9,0,'EVENTUAL',2,'',0,8,0,'EVENTUAL',2,'',0,8,0,'EVENTUAL',2,'',0,'NULA',1,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0),(7037,'ANTONIO JOSE','MADRID','12951','7','A','M',16,'2015-01-22',0,1,10,0,'RECURRENTE',3,'',0,13,0,'RECURRENTE',3,'',0,15,0,'RECURRENTE',3,'',0,10,0,'RECURRENTE',3,'',0,12,0,'RECURRENTE',3,'',0,'FALSO',0,'',0,'RECURRENTE',3,'',0,'RECURRENTE',3,'',0,'RECURRENTE',3,'',0,'RECURRENTE',3,'',0),(7079,'ELENA','VILLALTA CAMPOS','12951','7','A','F',13,'2015-01-26',1,0,0,5,'',0,'NULA',1,0,6,'',0,'NULA',1,0,5,'',0,'NULA',1,0,4,'',0,'NULA',1,0,4,'',0,'NULA',1,'',0,'NULA',1,'',0,'FALSO',0,'',0,'FALSO',0,'',0,'FALSO',0,'',0,'FALSO',0),(8088,'LUIS ','DIAZ ','12951','7','A','M',13,'2015-01-27',2,3,4,6,'NULA',1,'EVENTUAL',2,7,7,'NULA',1,'NULA',1,9,8,'EVENTUAL',2,'EVENTUAL',2,7,7,'EVENTUAL',2,'EVENTUAL',2,5,9,'NULA',1,'EVENTUAL',2,'NULA',1,'EVENTUAL',2,'FALSO',0,'FALSO',0,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'FALSO',0,'EVENTUAL',2),(8910,'PRUEBA 43','CANO','12951','','','',0,'0000-00-00',0,1,5,0,'NULA',1,'',0,7,0,'NULA',1,'',0,8,0,'EVENTUAL',2,'',0,5,0,'NULA',1,'',0,6,0,'EVENTUAL',2,'',0,'NULA',1,'',0,'FALSO',0,'',0,'EVENTUAL',2,'',0,'FALSO',0,'',0,'EVENTUAL',2,'',0),(11047,'CELIA ','CRUZ','12951','7','A','F',16,'2014-10-06',0,1,6,0,'EVENTUAL',2,'',0,11,0,'EVENTUAL',2,'',0,9,0,'EVENTUAL',2,'',0,9,0,'EVENTUAL',2,'',0,9,0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0),(12826,'BETTY','AYALA','12951','7','A','F',14,'2015-01-26',0,1,7,0,'EVENTUAL',2,'',0,7,0,'NULA',1,'',0,11,0,'EVENTUAL',2,'',0,7,0,'EVENTUAL',2,'',0,5,0,'NULA',1,'',0,'EVENTUAL',2,'',0,'FALSO',0,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'FALSO',0,'',0),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','12951','9','A','M',17,'2014-10-31',2,2,12,10,'RECURRENTE',3,'RECURRENTE',3,15,12,'RECURRENTE',3,'EVENTUAL',2,14,11,'RECURRENTE',3,'EVENTUAL',2,12,10,'RECURRENTE',3,'RECURRENTE',3,12,9,'RECURRENTE',3,'EVENTUAL',2,'FALSO',0,'FALSO',0,'RECURRENTE',3,'EVENTUAL',2,'RECURRENTE',3,'EVENTUAL',2,'RECURRENTE',3,'RECURRENTE',3,'RECURRENTE',3,'EVENTUAL',2),(16172,'MARIA ANA ','MARTINEZ','12951','8','A','F',14,'2015-06-12',1,0,0,6,'',0,'EVENTUAL',2,0,6,'',0,'NULA',1,0,7,'',0,'NULA',1,0,5,'',0,'NULA',1,0,4,'',0,'NULA',1,'',0,'EVENTUAL',2,'',0,'FALSO',0,'',0,'FALSO',0,'',0,'FALSO',0,'',0,'FALSO',0),(16408,'CALOS ARMANDO','ROMERO','12951','7','A','M',13,'2015-01-27',0,1,5,0,'NULA',1,'',0,9,0,'EVENTUAL',2,'',0,9,0,'EVENTUAL',2,'',0,6,0,'EVENTUAL',2,'',0,4,0,'NULA',1,'',0,'NULA',1,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'FALSO',0,'',0),(17755,'PRUEBA 44','CANO','12951','7','A','M',15,'2015-08-21',1,1,4,4,'NULA',1,'NULA',1,5,5,'NULA',1,'NULA',1,5,5,'NULA',1,'NULA',1,4,4,'NULA',1,'NULA',1,4,4,'NULA',1,'NULA',1,'NULA',1,'NULA',1,'FALSO',0,'FALSO',0,'FALSO',0,'FALSO',0,'FALSO',0,'FALSO',0,'FALSO',0,'FALSO',0),(20455,'MARIA ','VELIZ','12951','7','A','F',16,'2015-07-30',1,0,0,7,'',0,'EVENTUAL',2,0,10,'',0,'EVENTUAL',2,0,10,'',0,'EVENTUAL',2,0,8,'',0,'EVENTUAL',2,0,7,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2),(21994,'RHINA ALEXANDRA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,1,9,9,'EVENTUAL',2,'EVENTUAL',2,11,8,'EVENTUAL',2,'EVENTUAL',2,12,10,'EVENTUAL',2,'EVENTUAL',2,8,8,'EVENTUAL',2,'EVENTUAL',2,8,7,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2),(23719,'CATALINA ','SERPAS','12951','8','A','F',16,'2015-06-12',1,0,0,5,'',0,'NULA',1,0,6,'',0,'NULA',1,0,8,'',0,'EVENTUAL',2,0,4,'',0,'NULA',1,0,4,'',0,'NULA',1,'',0,'NULA',1,'',0,'FALSO',0,'',0,'EVENTUAL',2,'',0,'FALSO',0,'',0,'FALSO',0),(24807,'WALTER','GUEVARA','12951','7','A','M',18,'2015-01-27',0,1,7,0,'EVENTUAL',2,'',0,6,0,'NULA',1,'',0,6,0,'NULA',1,'',0,7,0,'EVENTUAL',2,'',0,8,0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'FALSO',0,'',0,'FALSO',0,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0),(25455,'JUANA','DE ARCO MARTINEZ','12951','8','A','F',14,'2015-06-12',4,0,0,6,'',0,'EVENTUAL',2,0,5,'',0,'NULA',1,0,7,'',0,'NULA',1,0,4,'',0,'NULA',1,0,4,'',0,'NULA',1,'',0,'EVENTUAL',2,'',0,'FALSO',0,'',0,'FALSO',0,'',0,'FALSO',0,'',0,'FALSO',0),(27356,'MAURICIO','BERRIOS AVILA','12951','7','A','M',19,'2015-02-11',1,0,0,7,'',0,'EVENTUAL',2,0,12,'',0,'EVENTUAL',2,0,12,'',0,'EVENTUAL',2,0,7,'',0,'EVENTUAL',2,0,8,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2,'',0,'EVENTUAL',2),(27869,'LUIS   ','ROMERO','12951','7','A','F',15,'0000-00-00',1,1,11,8,'RECURRENTE',3,'EVENTUAL',2,15,7,'RECURRENTE',3,'NULA',1,14,10,'RECURRENTE',3,'EVENTUAL',2,12,6,'RECURRENTE',3,'EVENTUAL',2,12,6,'RECURRENTE',3,'EVENTUAL',2,'FALSO',0,'EVENTUAL',2,'RECURRENTE',3,'FALSO',0,'RECURRENTE',3,'EVENTUAL',2,'RECURRENTE',3,'EVENTUAL',2,'RECURRENTE',3,'EVENTUAL',2),(28663,'SAMUEL ALEJANDRO','CANO','12951','7','A','M',13,'2015-01-27',2,2,7,6,'EVENTUAL',2,'EVENTUAL',2,12,11,'EVENTUAL',2,'EVENTUAL',2,10,10,'EVENTUAL',2,'EVENTUAL',2,9,8,'EVENTUAL',2,'EVENTUAL',2,9,10,'EVENTUAL',2,'RECURRENTE',3,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'EVENTUAL',2,'RECURRENTE',3);
/*!40000 ALTER TABLE `form11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `form11_7pdf`
--

DROP TABLE IF EXISTS `form11_7pdf`;
/*!50001 DROP VIEW IF EXISTS `form11_7pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form11_7pdf` (
  `id_f11` int(7),
  `nombreestF11` varchar(70),
  `apellidoestF11` varchar(70),
  `gradoF11` varchar(1),
  `seccionF11` varchar(1),
  `edadF11` int(2),
  `N_tacticaspadres1B` varchar(20),
  `N_tacticaspadres2B` varchar(20),
  `N_tacticaspadres3B` varchar(20),
  `N_tacticaspadres4B` varchar(20),
  `N_tacticaspadres5B` varchar(20),
  `N_tacticaspadres6B` varchar(20),
  `N_tacticaspadres7B` varchar(20),
  `N_tacticaspadres8B` varchar(20),
  `N_tacticaspadres9B` varchar(20),
  `N_tacticaspadres10B` varchar(20),
  `N_tacticaspadres1BB` varchar(20),
  `N_tacticaspadres2BB` varchar(20),
  `N_tacticaspadres3BB` varchar(20),
  `N_tacticaspadres4BB` varchar(20),
  `N_tacticaspadres5BB` varchar(20),
  `N_tacticaspadres6BB` varchar(20),
  `N_tacticaspadres7BB` varchar(20),
  `N_tacticaspadres8BB` varchar(20),
  `N_tacticaspadres9BB` varchar(20),
  `N_tacticaspadres10BB` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form11_8pdf`
--

DROP TABLE IF EXISTS `form11_8pdf`;
/*!50001 DROP VIEW IF EXISTS `form11_8pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form11_8pdf` (
  `id_f11` int(7),
  `nombreestF11` varchar(70),
  `apellidoestF11` varchar(70),
  `gradoF11` varchar(1),
  `seccionF11` varchar(1),
  `edadF11` int(2),
  `N_tacticaspadres1B` varchar(20),
  `N_tacticaspadres2B` varchar(20),
  `N_tacticaspadres3B` varchar(20),
  `N_tacticaspadres4B` varchar(20),
  `N_tacticaspadres5B` varchar(20),
  `N_tacticaspadres6B` varchar(20),
  `N_tacticaspadres7B` varchar(20),
  `N_tacticaspadres8B` varchar(20),
  `N_tacticaspadres9B` varchar(20),
  `N_tacticaspadres10B` varchar(20),
  `N_tacticaspadres1BB` varchar(20),
  `N_tacticaspadres2BB` varchar(20),
  `N_tacticaspadres3BB` varchar(20),
  `N_tacticaspadres4BB` varchar(20),
  `N_tacticaspadres5BB` varchar(20),
  `N_tacticaspadres6BB` varchar(20),
  `N_tacticaspadres7BB` varchar(20),
  `N_tacticaspadres8BB` varchar(20),
  `N_tacticaspadres9BB` varchar(20),
  `N_tacticaspadres10BB` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form11_9pdf`
--

DROP TABLE IF EXISTS `form11_9pdf`;
/*!50001 DROP VIEW IF EXISTS `form11_9pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form11_9pdf` (
  `id_f11` int(7),
  `nombreestF11` varchar(70),
  `apellidoestF11` varchar(70),
  `gradoF11` varchar(1),
  `seccionF11` varchar(1),
  `edadF11` int(2),
  `N_tacticaspadres1B` varchar(20),
  `N_tacticaspadres2B` varchar(20),
  `N_tacticaspadres3B` varchar(20),
  `N_tacticaspadres4B` varchar(20),
  `N_tacticaspadres5B` varchar(20),
  `N_tacticaspadres6B` varchar(20),
  `N_tacticaspadres7B` varchar(20),
  `N_tacticaspadres8B` varchar(20),
  `N_tacticaspadres9B` varchar(20),
  `N_tacticaspadres10B` varchar(20),
  `N_tacticaspadres1BB` varchar(20),
  `N_tacticaspadres2BB` varchar(20),
  `N_tacticaspadres3BB` varchar(20),
  `N_tacticaspadres4BB` varchar(20),
  `N_tacticaspadres5BB` varchar(20),
  `N_tacticaspadres6BB` varchar(20),
  `N_tacticaspadres7BB` varchar(20),
  `N_tacticaspadres8BB` varchar(20),
  `N_tacticaspadres9BB` varchar(20),
  `N_tacticaspadres10BB` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form11_va`
--

DROP TABLE IF EXISTS `form11_va`;
/*!50001 DROP VIEW IF EXISTS `form11_va`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form11_va` (
  `nombreestF11` varchar(70),
  `apellidoestF11` varchar(70),
  `codigoescF11` varchar(6),
  `gradoF11` varchar(1),
  `seccionF11` varchar(1),
  `sexoF11` varchar(1),
  `edadF11` int(2),
  `fechaentrevistaF11` date,
  `F_paterna` int(2),
  `F_materna` int(2),
  `P_tacticaspadres1` int(2),
  `P_tacticaspadres2` int(2),
  `N_tacticaspadres1B` varchar(20),
  `N_tacticaspadres2B` varchar(20),
  `P_tacticaspadres3` int(2),
  `P_tacticaspadres4` int(2),
  `N_tacticaspadres3B` varchar(20),
  `N_tacticaspadres4B` varchar(20),
  `P_tacticaspadres5` int(2),
  `P_tacticaspadres6` int(2),
  `N_tacticaspadres5B` varchar(20),
  `N_tacticaspadres6B` varchar(20),
  `P_tacticaspadres7` int(2),
  `P_tacticaspadres8` int(2),
  `N_tacticaspadres7B` varchar(20),
  `N_tacticaspadres8B` varchar(20),
  `P_tacticaspadres9` int(2),
  `P_tacticaspadres10` int(2),
  `N_tacticaspadres9B` varchar(20),
  `N_tacticaspadres10B` varchar(20),
  `N_tacticaspadres1BB` varchar(20),
  `N_tacticaspadres2BB` varchar(20),
  `N_tacticaspadres3BB` varchar(20),
  `N_tacticaspadres4BB` varchar(20),
  `N_tacticaspadres5BB` varchar(20),
  `N_tacticaspadres6BB` varchar(20),
  `N_tacticaspadres7BB` varchar(20),
  `N_tacticaspadres8BB` varchar(20),
  `N_tacticaspadres9BB` varchar(20),
  `N_tacticaspadres10BB` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form1_7pdf`
--

DROP TABLE IF EXISTS `form1_7pdf`;
/*!50001 DROP VIEW IF EXISTS `form1_7pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form1_7pdf` (
  `id_f1` int(7),
  `nombreestF1` varchar(70),
  `apellidoestF1` varchar(70),
  `gradoF1` varchar(1),
  `seccionF1` varchar(1),
  `edadF1` int(2),
  `nivel_coheF1` varchar(10),
  `nivel_expresiF1` varchar(10),
  `nivel_conflicF1` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form1_8pdf`
--

DROP TABLE IF EXISTS `form1_8pdf`;
/*!50001 DROP VIEW IF EXISTS `form1_8pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form1_8pdf` (
  `id_f1` int(7),
  `nombreestF1` varchar(70),
  `apellidoestF1` varchar(70),
  `gradoF1` varchar(1),
  `seccionF1` varchar(1),
  `edadF1` int(2),
  `nivel_coheF1` varchar(10),
  `nivel_expresiF1` varchar(10),
  `nivel_conflicF1` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form1_9pdf`
--

DROP TABLE IF EXISTS `form1_9pdf`;
/*!50001 DROP VIEW IF EXISTS `form1_9pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form1_9pdf` (
  `id_f1` int(7),
  `nombreestF1` varchar(70),
  `apellidoestF1` varchar(70),
  `gradoF1` varchar(1),
  `seccionF1` varchar(1),
  `edadF1` int(2),
  `nivel_coheF1` varchar(10),
  `nivel_expresiF1` varchar(10),
  `nivel_conflicF1` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form1_v7`
--

DROP TABLE IF EXISTS `form1_v7`;
/*!50001 DROP VIEW IF EXISTS `form1_v7`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form1_v7` (
  `id_f1` int(7),
  `nombreestF1` varchar(70),
  `apellidoestF1` varchar(70),
  `codigoescF1` varchar(6),
  `gradoF1` varchar(1),
  `seccionF1` varchar(1),
  `sexoF1` varchar(1),
  `edadF1` int(2),
  `fechaentrevistaF1` date,
  `item1F1` int(1),
  `item2F1` int(1),
  `item3F1` int(1),
  `item4F1` int(1),
  `item5F1` int(1),
  `item6F1` int(1),
  `item7F1` int(1),
  `item8F1` int(1),
  `item9F1` int(1),
  `item10F1` int(1),
  `item11F1` int(1),
  `item12F1` int(1),
  `item13F1` int(1),
  `item14F1` int(1),
  `item15F1` int(1),
  `item16F1` int(1),
  `item17F1` int(1),
  `item18F1` int(1),
  `item19F1` int(1),
  `item20F1` int(1),
  `item21F1` int(1),
  `item22F1` int(1),
  `item23F1` int(1),
  `item24F1` int(1),
  `item25F1` int(1),
  `item26F1` int(1),
  `item27F1` int(1),
  `puntajeF1` int(2),
  `cohesionF1` int(2),
  `expresividadF1` int(2),
  `conflictoF1` int(2),
  `nivel_coheF1` varchar(10),
  `nivel_expresiF1` varchar(10),
  `nivel_conflicF1` varchar(10),
  `codigo_coheF1` int(1),
  `codigo_expresiF1` int(1),
  `codigo_conflicF1` int(1)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form1_v8`
--

DROP TABLE IF EXISTS `form1_v8`;
/*!50001 DROP VIEW IF EXISTS `form1_v8`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form1_v8` (
  `id_f1` int(7),
  `nombreestF1` varchar(70),
  `apellidoestF1` varchar(70),
  `codigoescF1` varchar(6),
  `gradoF1` varchar(1),
  `seccionF1` varchar(1),
  `sexoF1` varchar(1),
  `edadF1` int(2),
  `fechaentrevistaF1` date,
  `item1F1` int(1),
  `item2F1` int(1),
  `item3F1` int(1),
  `item4F1` int(1),
  `item5F1` int(1),
  `item6F1` int(1),
  `item7F1` int(1),
  `item8F1` int(1),
  `item9F1` int(1),
  `item10F1` int(1),
  `item11F1` int(1),
  `item12F1` int(1),
  `item13F1` int(1),
  `item14F1` int(1),
  `item15F1` int(1),
  `item16F1` int(1),
  `item17F1` int(1),
  `item18F1` int(1),
  `item19F1` int(1),
  `item20F1` int(1),
  `item21F1` int(1),
  `item22F1` int(1),
  `item23F1` int(1),
  `item24F1` int(1),
  `item25F1` int(1),
  `item26F1` int(1),
  `item27F1` int(1),
  `puntajeF1` int(2),
  `cohesionF1` int(2),
  `expresividadF1` int(2),
  `conflictoF1` int(2),
  `nivel_coheF1` varchar(10),
  `nivel_expresiF1` varchar(10),
  `nivel_conflicF1` varchar(10),
  `codigo_coheF1` int(1),
  `codigo_expresiF1` int(1),
  `codigo_conflicF1` int(1)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `form2`
--

DROP TABLE IF EXISTS `form2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2` (
  `id_f2` int(7) NOT NULL,
  `nombreestF2` varchar(70) NOT NULL,
  `apellidoestF2` varchar(70) NOT NULL,
  `codigoescF2` varchar(6) NOT NULL,
  `gradoF2` varchar(1) NOT NULL,
  `seccionF2` varchar(1) NOT NULL,
  `sexoF2` varchar(1) NOT NULL,
  `edadF2` int(2) NOT NULL,
  `fechaentrevistaF2` date NOT NULL,
  `item1F2` int(1) NOT NULL,
  `item2F2` int(1) NOT NULL,
  `item3F2` int(1) NOT NULL,
  `item4F2` int(1) NOT NULL,
  `item5F2` int(1) NOT NULL,
  `item6F2` int(1) NOT NULL,
  `item7F2` int(1) NOT NULL,
  `item8F2` int(1) NOT NULL,
  `item9F2` int(1) NOT NULL,
  `item10F2` int(1) NOT NULL,
  `prointeescF2` int(2) NOT NULL,
  `rendiescF2` int(2) NOT NULL,
  `expacademicaF2` int(2) NOT NULL,
  `N_prointeescF2` varchar(10) NOT NULL,
  `N_rendiescF2` varchar(10) NOT NULL,
  `N_expacademicaF2` varchar(10) NOT NULL,
  `C_prointeescF2` int(1) NOT NULL,
  `C_rendiescF2` int(1) NOT NULL,
  `C_expacademicaF2` int(1) NOT NULL,
  `punta_ajusteescoF2` int(2) NOT NULL,
  `N_ajusteescoF2` varchar(10) NOT NULL,
  `C_ajusteescoF2` int(1) NOT NULL,
  PRIMARY KEY (`id_f2`),
  UNIQUE KEY `id_f2` (`id_f2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2`
--

LOCK TABLES `form2` WRITE;
/*!40000 ALTER TABLE `form2` DISABLE KEYS */;
INSERT INTO `form2` VALUES (0,'','','','','','',0,'0000-00-00',1,1,1,1,1,1,1,1,1,1,5,3,2,'BAJA','BAJA','BAJA',1,1,1,35,'MEDIA',2),(358,'ALFREDO ','ESPINO','12951','8','B','M',15,'2015-06-12',4,1,1,1,1,1,1,1,1,1,5,6,2,'BAJA','BAJA','BAJA',1,1,1,38,'MEDIA',2),(1117,'FABIOLA CRISTINA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,2,2,2,2,2,3,3,3,4,15,5,4,'MEDIA','BAJA','BAJA',2,1,1,29,'MEDIA',2),(2314,'BALMORE','MARTINEZ','12951','7','A','M',16,'2015-01-22',1,1,1,1,1,1,1,1,1,1,5,3,2,'BAJA','BAJA','BAJA',1,1,1,35,'MEDIA',2),(3438,'ANA RHINA','QUEZADA','12951','7','A','F',16,'2014-09-09',1,1,3,3,3,3,4,4,4,3,18,5,6,'MEDIA','BAJA','MEDIA',2,1,2,28,'MEDIA',2),(5209,'SANTOS','CAMPOS','12951','7','A','M',16,'2014-09-08',1,2,2,3,3,3,3,3,4,4,17,6,5,'MEDIA','BAJA','BAJA',2,1,1,29,'MEDIA',2),(7037,'ANTONIO JOSE','MADRID','12951','7','A','M',16,'2015-01-22',1,1,1,1,1,1,1,1,1,1,5,3,2,'BAJA','BAJA','BAJA',1,1,1,35,'MEDIA',2),(7079,'ELENA','VILLALTA CAMPOS','12951','7','A','F',13,'2015-01-26',1,1,1,1,1,1,1,1,1,1,5,3,2,'BAJA','BAJA','BAJA',1,1,1,35,'MEDIA',2),(8088,'LUIS ','DIAZ ','12951','7','A','M',13,'2015-01-27',2,3,2,3,4,6,2,4,3,4,19,9,5,'MEDIA','MEDIA','BAJA',2,2,1,30,'MEDIA',2),(8910,'PRUEBA 43','CANO','12951','7','A','M',15,'2015-08-21',1,1,1,1,1,2,2,2,2,1,9,3,2,'BAJA','BAJA','BAJA',1,1,1,31,'MEDIA',2),(11047,'CELIA ','CRUZ','12951','7','A','F',16,'2014-10-06',1,1,1,2,2,2,2,2,3,3,12,4,3,'BAJA','BAJA','BAJA',1,1,1,30,'MEDIA',2),(12826,'BETTY','AYALA','12951','7','A','F',14,'2015-01-26',1,2,2,2,1,1,1,1,1,1,5,4,4,'BAJA','BAJA','BAJA',1,1,1,38,'MEDIA',2),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','12951','9','A','M',17,'2014-10-31',1,2,2,1,1,1,1,1,1,1,5,4,3,'BAJA','BAJA','BAJA',1,1,1,37,'MEDIA',2),(16172,'MARIA ANA ','MARTINEZ','12951','8','A','F',14,'2015-06-12',3,3,3,3,4,4,4,4,4,4,20,10,6,'MEDIA','MEDIA','MEDIA',2,2,2,31,'MEDIA',2),(16408,'CALOS ARMANDO','ROMERO','12951','7','A','M',13,'2015-01-27',6,5,6,6,4,6,6,4,3,6,25,15,12,'ALTA','ALTA','ALTA',3,3,3,37,'MEDIA',2),(17755,'PRUEBA 44','CANO','12951','7','A','M',15,'2015-08-21',1,2,1,1,1,1,1,1,1,1,5,4,2,'BAJA','BAJA','BAJA',1,1,1,36,'MEDIA',2),(20455,'MARIA ','VELIZ','12951','7','A','F',16,'2015-07-30',1,1,1,1,1,1,1,3,4,4,13,3,2,'BAJA','BAJA','BAJA',1,1,1,27,'MEDIA',2),(21994,'RHINA ALEXANDRA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,1,2,2,2,2,2,2,2,2,10,4,4,'BAJA','BAJA','BAJA',1,1,1,33,'MEDIA',2),(23719,'CATALINA ','SERPAS','12951','8','A','F',16,'2015-06-12',1,2,2,2,3,1,1,1,1,1,5,6,4,'BAJA','BAJA','BAJA',1,1,1,40,'MEDIA',2),(24807,'WALTER','GUEVARA','12951','7','A','M',18,'2015-01-27',1,2,2,1,2,1,2,1,2,1,7,5,3,'BAJA','BAJA','BAJA',1,1,1,36,'MEDIA',2),(25455,'JUANA','DE ARCO MARTINEZ','12951','8','A','F',14,'2015-06-12',1,2,2,3,3,3,3,3,3,3,15,6,5,'MEDIA','BAJA','BAJA',2,1,1,31,'MEDIA',2),(27356,'MAURICIO','BERRIOS AVILA','12951','7','A','M',19,'2015-02-11',6,6,6,6,6,1,1,1,1,1,5,18,12,'BAJA','ALTA','ALTA',1,3,3,60,'ALTA',3),(27869,'LUIS   ','ROMERO','12951','7','A','F',15,'0000-00-00',1,2,2,2,2,2,2,1,2,1,8,5,4,'BAJA','BAJA','BAJA',1,1,1,36,'MEDIA',2),(28663,'SAMUEL ALEJANDRO','CANO','12951','7','A','M',13,'2015-01-27',1,1,1,1,2,6,6,1,6,6,25,4,2,'ALTA','BAJA','BAJA',3,1,1,16,'BAJA',1);
/*!40000 ALTER TABLE `form2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `form2_7pdf`
--

DROP TABLE IF EXISTS `form2_7pdf`;
/*!50001 DROP VIEW IF EXISTS `form2_7pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form2_7pdf` (
  `id_f2` int(7),
  `nombreestF2` varchar(70),
  `apellidoestF2` varchar(70),
  `gradoF2` varchar(1),
  `seccionF2` varchar(1),
  `edadF2` int(2),
  `N_prointeescF2` varchar(10),
  `N_rendiescF2` varchar(10),
  `N_expacademicaF2` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form2_8pdf`
--

DROP TABLE IF EXISTS `form2_8pdf`;
/*!50001 DROP VIEW IF EXISTS `form2_8pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form2_8pdf` (
  `id_f2` int(7),
  `nombreestF2` varchar(70),
  `apellidoestF2` varchar(70),
  `gradoF2` varchar(1),
  `seccionF2` varchar(1),
  `edadF2` int(2),
  `N_prointeescF2` varchar(10),
  `N_rendiescF2` varchar(10),
  `N_expacademicaF2` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form2_9pdf`
--

DROP TABLE IF EXISTS `form2_9pdf`;
/*!50001 DROP VIEW IF EXISTS `form2_9pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form2_9pdf` (
  `id_f2` int(7),
  `nombreestF2` varchar(70),
  `apellidoestF2` varchar(70),
  `gradoF2` varchar(1),
  `seccionF2` varchar(1),
  `edadF2` int(2),
  `N_prointeescF2` varchar(10),
  `N_rendiescF2` varchar(10),
  `N_expacademicaF2` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `form3`
--

DROP TABLE IF EXISTS `form3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form3` (
  `id_f3` int(7) NOT NULL,
  `nombreestF3` varchar(70) NOT NULL,
  `apellidoestF3` varchar(70) NOT NULL,
  `codigoescF3` varchar(6) NOT NULL,
  `gradoF3` varchar(1) NOT NULL,
  `seccionF3` varchar(1) NOT NULL,
  `sexoF3` varchar(1) NOT NULL,
  `edadF3` int(2) NOT NULL,
  `fechaentrevistaF3` date NOT NULL,
  `item1F3` int(1) NOT NULL,
  `item2F3` int(1) NOT NULL,
  `item3F3` int(1) NOT NULL,
  `item4F3` int(1) NOT NULL,
  `item5F3` int(1) NOT NULL,
  `item6F3` int(1) NOT NULL,
  `item7F3` int(1) NOT NULL,
  `item8F3` int(1) NOT NULL,
  `item9F3` int(1) NOT NULL,
  `item10F3` int(1) NOT NULL,
  `item11F3` int(1) NOT NULL,
  `item12F3` int(1) NOT NULL,
  `item13F3` int(1) NOT NULL,
  `item14F3` int(1) NOT NULL,
  `item15F3` int(1) NOT NULL,
  `item16F3` int(1) NOT NULL,
  `item17F3` int(1) NOT NULL,
  `item18F3` int(1) NOT NULL,
  `item19F3` int(1) NOT NULL,
  `item20F3` int(1) NOT NULL,
  `item21F3` int(1) NOT NULL,
  `item22F3` int(1) NOT NULL,
  `P_manifisicaF3` int(2) NOT NULL,
  `P_maniverbalF3` int(2) NOT NULL,
  `P_vicrelacionalF3` int(2) NOT NULL,
  `P_item21F3` int(2) NOT NULL,
  `P_item22F3` int(2) NOT NULL,
  `N_manifisicaF3` varchar(20) NOT NULL,
  `C_manifisicaF3` int(1) NOT NULL,
  `N_maniverbalF3` varchar(20) NOT NULL,
  `C_maniverbalF3` int(1) NOT NULL,
  `N_relacionalF3` varchar(20) NOT NULL,
  `C_relacionalF3` int(1) NOT NULL,
  `S_victimizadorHF3` varchar(15) NOT NULL,
  `C_S_victimizadorHF3` int(3) NOT NULL,
  `S_victimizadorMF3` varchar(15) NOT NULL,
  `C_S_victimizadorMF3` int(3) NOT NULL,
  `S_victimizadorCF3` varchar(15) NOT NULL,
  `C_S_victimizadorCF3` int(3) NOT NULL,
  `N_frecuenciaF3` varchar(15) NOT NULL,
  `C_frecuenciaF3` int(3) NOT NULL,
  `sospechaF3` int(1) NOT NULL,
  PRIMARY KEY (`id_f3`),
  UNIQUE KEY `id_f2` (`id_f3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form3`
--

LOCK TABLES `form3` WRITE;
/*!40000 ALTER TABLE `form3` DISABLE KEYS */;
INSERT INTO `form3` VALUES (0,'','','12951','7','A','M',15,'2015-08-18',1,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,4,8,11,1,2,'NULA',1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'EVENTUAL',2,0),(358,'ALFREDO ','ESPINO','12951','8','B','M',15,'2015-06-12',2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,5,6,10,3,1,'POCO FRECUENTE',2,'NULA',1,'NULA',1,'COLECTIVO',3,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(1117,'FABIOLA CRISTINA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,2,3,3,4,3,3,3,2,2,2,2,3,3,3,3,3,3,3,3,1,1,9,17,28,1,1,'POCO FRECUENTE',2,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(2314,'BALMORE','MARTINEZ','12951','7','A','M',16,'2015-01-22',1,2,3,3,3,2,1,2,3,4,3,2,1,2,3,4,3,2,1,4,1,1,8,19,22,1,1,'POCO FRECUENTE',2,'MUY FRECUENTE',3,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(3438,'ANA RHINA','QUEZADA','12951','7','A','F',16,'2014-09-09',1,2,3,3,3,4,3,3,3,2,3,3,3,3,3,3,2,2,2,2,1,1,10,18,25,1,1,'POCO FRECUENTE',2,'MUY FRECUENTE',3,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(5209,'SANTOS','CAMPOS','12951','7','A','M',16,'2014-09-08',1,2,3,3,3,3,3,3,3,3,3,2,3,3,3,3,2,2,2,2,2,1,10,17,25,2,1,'POCO FRECUENTE',2,'MUY FRECUENTE',3,'POCO FRECUENTE',2,'NINGUNO',0,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',1,0),(7037,'ANTONIO JOSE','MADRID','12951','7','A','M',16,'2015-01-22',3,4,4,4,3,4,4,4,4,3,3,3,3,4,4,4,3,3,3,4,1,1,14,23,34,1,1,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(7079,'ELENA','VILLALTA CAMPOS','12951','7','A','F',13,'2015-01-26',1,2,3,1,4,3,2,1,2,3,3,1,1,1,1,1,1,1,1,1,1,1,5,12,17,1,1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(8088,'LUIS ','DIAZ ','12951','7','A','M',13,'2015-01-27',2,3,2,3,4,3,2,4,2,1,3,1,4,1,3,3,3,2,4,3,3,4,11,17,25,3,4,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'POCO FRECUENTE',2,'COLECTIVO',3,'NINGUNO',0,'NINGUNO',0,'REITERADA',345,0),(8910,'PRUEBA 43','CANO','12951','7','A','M',15,'2015-08-21',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,6,10,1,1,'NULA',1,'NULA',1,'NULA',1,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,1),(11047,'CELIA ','CRUZ','12951','7','A','F',16,'2014-10-06',1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,2,1,1,7,13,23,1,1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(12826,'BETTY','AYALA','12951','7','A','F',14,'2015-01-26',1,2,2,2,3,3,3,3,2,2,1,1,1,1,1,1,1,1,1,1,1,1,5,10,18,1,1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','12951','9','A','M',17,'2014-10-31',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,4,6,11,1,1,'NULA',1,'NULA',1,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(16172,'MARIA ANA ','MARTINEZ','12951','8','A','F',14,'2015-06-12',4,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,1,10,13,21,3,1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'COLECTIVO',3,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(16408,'CALOS ARMANDO','ROMERO','12951','7','A','M',13,'2015-01-27',3,3,3,3,4,3,2,4,3,3,4,3,2,3,2,4,3,4,4,3,4,5,10,20,33,4,5,'POCO FRECUENTE',2,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'NINGUNO',0,'COLECTIVO',3,'NINGUNO',0,'REITERADA',345,0),(17755,'PRUEBA 44','CANO','12951','7','A','M',15,'2015-08-21',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,4,6,10,1,2,'NULA',1,'NULA',1,'NULA',1,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'EVENTUAL',2,1),(20455,'MARIA ','VELIZ','12951','7','A','F',16,'2015-07-30',1,2,3,3,3,4,3,3,3,3,2,2,3,3,4,3,3,3,2,2,1,1,11,17,27,1,1,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(21994,'RHINA ALEXANDRA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,2,2,2,2,3,3,4,3,3,2,2,2,2,2,2,2,2,2,2,1,1,8,13,24,1,1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(23719,'CATALINA ','SERPAS','12951','8','A','F',16,'2015-06-12',2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,6,11,1,1,'POCO FRECUENTE',2,'NULA',1,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(24807,'WALTER','GUEVARA','12951','7','A','M',18,'2015-01-27',1,2,3,2,1,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,2,2,10,14,22,2,2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'NINGUNO',0,'INDIVIDUAL',1,'NINGUNO',0,'EVENTUAL',2,0),(25455,'JUANA','DE ARCO MARTINEZ','12951','8','A','F',14,'2015-06-12',3,3,3,2,2,2,2,2,2,3,3,3,3,3,3,4,3,2,2,2,3,1,11,16,25,3,1,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'POCO FRECUENTE',2,'COLECTIVO',3,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(27356,'MAURICIO','BERRIOS AVILA','12951','7','A','M',19,'2015-02-11',1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,6,11,1,1,'NULA',1,'NULA',1,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'NINGUNO',1,0),(27869,'LUIS   ','ROMERO','12951','7','A','F',15,'0000-00-00',2,1,2,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,5,11,15,3,2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'COLECTIVO',3,'NINGUNO',0,'NINGUNO',0,'EVENTUAL',2,0),(28663,'SAMUEL ALEJANDRO','CANO','12951','7','A','M',13,'2015-01-27',1,2,2,2,1,2,2,1,1,1,1,1,1,1,1,1,2,2,2,2,1,2,4,10,15,1,2,'NULA',1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'INDIVIDUAL',1,'NINGUNO',0,'NINGUNO',0,'EVENTUAL',2,0);
/*!40000 ALTER TABLE `form3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `form3_7pdf`
--

DROP TABLE IF EXISTS `form3_7pdf`;
/*!50001 DROP VIEW IF EXISTS `form3_7pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form3_7pdf` (
  `id_f3` int(7),
  `nombreestF3` varchar(70),
  `apellidoestF3` varchar(70),
  `gradoF3` varchar(1),
  `seccionF3` varchar(1),
  `edadF3` int(2),
  `N_manifisicaF3` varchar(20),
  `N_maniverbalF3` varchar(20),
  `N_relacionalF3` varchar(20),
  `S_victimizadorHF3` varchar(15),
  `S_victimizadorMF3` varchar(15),
  `S_victimizadorCF3` varchar(15),
  `N_frecuenciaF3` varchar(15),
  `sospechaF3` int(1)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form3_8pdf`
--

DROP TABLE IF EXISTS `form3_8pdf`;
/*!50001 DROP VIEW IF EXISTS `form3_8pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form3_8pdf` (
  `id_f3` int(7),
  `nombreestF3` varchar(70),
  `apellidoestF3` varchar(70),
  `gradoF3` varchar(1),
  `seccionF3` varchar(1),
  `edadF3` int(2),
  `N_manifisicaF3` varchar(20),
  `N_maniverbalF3` varchar(20),
  `N_relacionalF3` varchar(20),
  `S_victimizadorHF3` varchar(15),
  `S_victimizadorMF3` varchar(15),
  `S_victimizadorCF3` varchar(15),
  `N_frecuenciaF3` varchar(15),
  `sospechaF3` int(1)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form3_9pdf`
--

DROP TABLE IF EXISTS `form3_9pdf`;
/*!50001 DROP VIEW IF EXISTS `form3_9pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form3_9pdf` (
  `id_f3` int(7),
  `nombreestF3` varchar(70),
  `apellidoestF3` varchar(70),
  `gradoF3` varchar(1),
  `seccionF3` varchar(1),
  `edadF3` int(2),
  `N_manifisicaF3` varchar(20),
  `N_maniverbalF3` varchar(20),
  `N_relacionalF3` varchar(20),
  `S_victimizadorHF3` varchar(15),
  `S_victimizadorMF3` varchar(15),
  `S_victimizadorCF3` varchar(15),
  `N_frecuenciaF3` varchar(15),
  `sospechaF3` int(1)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form3_va`
--

DROP TABLE IF EXISTS `form3_va`;
/*!50001 DROP VIEW IF EXISTS `form3_va`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form3_va` (
  `nombreestF3` varchar(70),
  `apellidoestF3` varchar(70),
  `codigoescF3` varchar(6),
  `gradoF3` varchar(1),
  `seccionF3` varchar(1),
  `sexoF3` varchar(1),
  `edadF3` int(2),
  `fechaentrevistaF3` date,
  `P_manifisicaF3` int(2),
  `P_maniverbalF3` int(2),
  `P_vicrelacionalF3` int(2),
  `P_item21F3` int(2),
  `P_item22F3` int(2),
  `N_manifisicaF3` varchar(20),
  `N_maniverbalF3` varchar(20),
  `N_relacionalF3` varchar(20),
  `S_victimizadorHF3` varchar(15),
  `S_victimizadorMF3` varchar(15),
  `S_victimizadorCF3` varchar(15),
  `N_frecuenciaF3` varchar(15),
  `C_frecuenciaF3` int(3),
  `sospechaF3` int(1)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `form4`
--

DROP TABLE IF EXISTS `form4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form4` (
  `id_f4` int(7) NOT NULL,
  `nombreestF4` varchar(70) NOT NULL,
  `apellidoestF4` varchar(70) NOT NULL,
  `codigoescF4` varchar(6) NOT NULL,
  `gradoF4` varchar(1) NOT NULL,
  `seccionF4` varchar(1) NOT NULL,
  `sexoF4` varchar(1) NOT NULL,
  `edadF4` int(2) NOT NULL,
  `fechaentrevistaF4` date NOT NULL,
  `item1F4` int(1) NOT NULL,
  `item2F4` int(1) NOT NULL,
  `item3F4` int(1) NOT NULL,
  `item4F4` int(1) NOT NULL,
  `item5F4` int(1) NOT NULL,
  `item6F4` int(1) NOT NULL,
  `item7F4` int(1) NOT NULL,
  `item8F4` int(1) NOT NULL,
  `item9F4` int(1) NOT NULL,
  `P_positivaautoF4` int(2) NOT NULL,
  `P_positivatransF4` int(2) NOT NULL,
  `N_positivaautoInsF4` varchar(10) NOT NULL,
  `C_positivaautoInsF4` int(1) NOT NULL,
  `N_positivatransnormasF4` varchar(10) NOT NULL,
  `C_positivatransnormasF4` int(1) NOT NULL,
  PRIMARY KEY (`id_f4`),
  UNIQUE KEY `id_f2` (`id_f4`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form4`
--

LOCK TABLES `form4` WRITE;
/*!40000 ALTER TABLE `form4` DISABLE KEYS */;
INSERT INTO `form4` VALUES (0,'','','12951','7','A','M',15,'2015-08-18',1,1,1,2,2,2,2,2,2,8,7,'BAJA',1,'BAJA',1),(358,'ALFREDO ','ESPINO','12951','8','B','M',15,'2015-06-12',3,2,2,2,2,2,2,1,2,11,7,'MEDIA',2,'BAJA',1),(1117,'FABIOLA CRISTINA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,2,2,2,3,3,3,4,3,11,12,'MEDIA',2,'ALTA',3),(2314,'BALMORE','MARTINEZ','12951','7','A','M',16,'2015-01-22',4,4,3,4,4,3,3,4,3,19,13,'ALTA',3,'ALTA',3),(3438,'ANA RHINA','QUEZADA','12951','7','A','F',16,'2014-09-09',1,2,2,2,3,3,4,3,2,11,11,'MEDIA',2,'MEDIA',2),(5209,'SANTOS','CAMPOS','12951','7','A','M',16,'2014-09-08',1,1,2,2,2,3,3,3,2,9,10,'BAJA',1,'MEDIA',2),(7037,'ANTONIO JOSE','MADRID','12951','7','A','M',16,'2015-01-22',1,1,1,2,2,2,1,2,1,8,5,'BAJA',1,'BAJA',1),(7079,'ELENA','VILLALTA CAMPOS','12951','7','A','F',13,'2015-01-26',1,2,2,2,2,2,2,2,2,9,8,'BAJA',1,'MEDIA',2),(8088,'LUIS ','DIAZ ','12951','7','A','M',13,'2015-01-27',4,4,3,3,4,2,2,2,1,17,8,'ALTA',3,'MEDIA',2),(8910,'PRUEBA 43','CANO','12951','','','',0,'0000-00-00',1,3,3,3,3,3,3,2,2,13,10,'MEDIA',2,'MEDIA',2),(11047,'CELIA ','CRUZ','12951','7','A','F',16,'2014-10-06',1,2,2,2,2,2,2,2,2,9,8,'BAJA',1,'MEDIA',2),(12826,'BETTY','AYALA','12951','7','A','F',14,'2015-01-26',4,4,4,4,4,4,4,4,4,20,16,'ALTA',3,'ALTA',3),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','12951','9','A','M',17,'2014-10-31',1,1,1,1,1,1,1,1,1,5,4,'BAJA',1,'BAJA',1),(16172,'MARIA ANA ','MARTINEZ','12951','8','A','F',14,'2015-06-12',4,3,3,3,3,4,3,3,3,17,12,'ALTA',3,'ALTA',3),(16408,'CALOS ARMANDO','ROMERO','12951','7','A','M',13,'2015-01-27',1,1,1,2,1,2,1,2,1,7,5,'BAJA',1,'BAJA',1),(17755,'PRUEBA 44','CANO','12951','7','A','M',15,'2015-08-21',1,2,3,3,4,4,4,3,1,14,11,'MEDIA',2,'MEDIA',2),(20455,'MARIA ','VELIZ','12951','7','A','F',16,'2015-07-30',1,1,2,2,2,2,2,2,1,8,7,'BAJA',1,'BAJA',1),(21994,'RHINA ALEXANDRA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,1,2,2,2,2,2,2,2,8,8,'BAJA',1,'MEDIA',2),(23719,'CATALINA ','SERPAS','12951','8','A','F',16,'2015-06-12',4,1,1,1,1,1,1,1,1,8,4,'BAJA',1,'BAJA',1),(24807,'WALTER','GUEVARA','12951','7','A','M',18,'2015-01-27',1,1,1,1,1,1,1,1,1,5,4,'BAJA',1,'BAJA',1),(25455,'JUANA','DE ARCO MARTINEZ','12951','8','A','F',14,'2015-06-12',2,3,3,1,1,1,1,1,1,8,6,'BAJA',1,'BAJA',1),(27356,'MAURICIO','BERRIOS AVILA','12951','7','A','M',19,'2015-02-11',1,2,3,3,4,4,4,3,3,14,13,'MEDIA',2,'ALTA',3),(27869,'LUIS   ','ROMERO','12951','7','A','F',15,'0000-00-00',1,1,2,3,1,3,1,2,3,9,8,'BAJA',1,'MEDIA',2),(28663,'SAMUEL ALEJANDRO','CANO','12951','7','A','M',13,'2015-01-27',2,2,1,2,2,1,4,4,4,9,13,'BAJA',1,'ALTA',3);
/*!40000 ALTER TABLE `form4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `form4_7pdf`
--

DROP TABLE IF EXISTS `form4_7pdf`;
/*!50001 DROP VIEW IF EXISTS `form4_7pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form4_7pdf` (
  `id_f4` int(7),
  `nombreestF4` varchar(70),
  `apellidoestF4` varchar(70),
  `gradoF4` varchar(1),
  `seccionF4` varchar(1),
  `edadF4` int(2),
  `N_positivaautoInsF4` varchar(10),
  `N_positivatransnormasF4` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form4_8pdf`
--

DROP TABLE IF EXISTS `form4_8pdf`;
/*!50001 DROP VIEW IF EXISTS `form4_8pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form4_8pdf` (
  `id_f4` int(7),
  `nombreestF4` varchar(70),
  `apellidoestF4` varchar(70),
  `gradoF4` varchar(1),
  `seccionF4` varchar(1),
  `edadF4` int(2),
  `N_positivaautoInsF4` varchar(10),
  `N_positivatransnormasF4` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form4_9pdf`
--

DROP TABLE IF EXISTS `form4_9pdf`;
/*!50001 DROP VIEW IF EXISTS `form4_9pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form4_9pdf` (
  `id_f4` int(7),
  `nombreestF4` varchar(70),
  `apellidoestF4` varchar(70),
  `gradoF4` varchar(1),
  `seccionF4` varchar(1),
  `edadF4` int(2),
  `N_positivaautoInsF4` varchar(10),
  `N_positivatransnormasF4` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form4_va`
--

DROP TABLE IF EXISTS `form4_va`;
/*!50001 DROP VIEW IF EXISTS `form4_va`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form4_va` (
  `nombreestF4` varchar(70),
  `apellidoestF4` varchar(70),
  `codigoescF4` varchar(6),
  `gradoF4` varchar(1),
  `seccionF4` varchar(1),
  `sexoF4` varchar(1),
  `edadF4` int(2),
  `fechaentrevistaF4` date,
  `P_positivaautoF4` int(2),
  `P_positivatransF4` int(2),
  `N_positivaautoInsF4` varchar(10),
  `N_positivatransnormasF4` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `form6`
--

DROP TABLE IF EXISTS `form6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form6` (
  `id_f6` int(7) NOT NULL,
  `nombreestF6` varchar(70) NOT NULL,
  `apellidoestF6` varchar(70) NOT NULL,
  `codigoescF6` varchar(6) NOT NULL,
  `gradoF6` varchar(1) NOT NULL,
  `seccionF6` varchar(1) NOT NULL,
  `sexoF6` varchar(1) NOT NULL,
  `edadF6` int(2) NOT NULL,
  `fechaentrevistaF6` date NOT NULL,
  `item1F6` int(1) NOT NULL,
  `item2F6` int(1) NOT NULL,
  `item3F6` int(1) NOT NULL,
  `item4F6` int(1) NOT NULL,
  `item5F6` int(1) NOT NULL,
  `item6F6` int(1) NOT NULL,
  `item7F6` int(1) NOT NULL,
  `item8F6` int(1) NOT NULL,
  `item9F6` int(1) NOT NULL,
  `item10F6` int(1) NOT NULL,
  `item11F6` int(1) NOT NULL,
  `item12F6` int(1) NOT NULL,
  `item13F6` int(1) NOT NULL,
  `item14F6` int(1) NOT NULL,
  `item15F6` int(1) NOT NULL,
  `item16F6` int(1) NOT NULL,
  `item17F6` int(1) NOT NULL,
  `item18F6` int(1) NOT NULL,
  `item19F6` int(1) NOT NULL,
  `item20F6` int(1) NOT NULL,
  `item21F6` int(1) NOT NULL,
  `item22F6` int(1) NOT NULL,
  `item23F6` int(1) NOT NULL,
  `item24F6` int(1) NOT NULL,
  `item25F6` int(1) NOT NULL,
  `P_manipuraF6` int(2) NOT NULL,
  `P_manireactivaF6` int(2) NOT NULL,
  `P_maniinstrumentalF6` int(2) NOT NULL,
  `P_relapuraF6` int(2) NOT NULL,
  `P_relareactivaF6` int(2) NOT NULL,
  `P_relainstrumentalF6` int(2) NOT NULL,
  `N_manipuraF6` varchar(20) NOT NULL,
  `C_manipuraF6` int(1) NOT NULL,
  `N_manireactivaF6` varchar(20) NOT NULL,
  `C_manireactivaF6` int(1) NOT NULL,
  `N_maniinstrumentalF6` varchar(20) NOT NULL,
  `C_maniinstrumentalF6` int(1) NOT NULL,
  `N_relapuraF6` varchar(20) NOT NULL,
  `C_relapuraF6` int(1) NOT NULL,
  `N_relareactivaF6` varchar(20) NOT NULL,
  `C_relareactivaF6` int(1) NOT NULL,
  `N_relainstrumentalF6` varchar(20) NOT NULL,
  `C_relainstrumentalF6` int(1) NOT NULL,
  PRIMARY KEY (`id_f6`),
  UNIQUE KEY `id_f2` (`id_f6`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form6`
--

LOCK TABLES `form6` WRITE;
/*!40000 ALTER TABLE `form6` DISABLE KEYS */;
INSERT INTO `form6` VALUES (358,'ALFREDO ','ESPINO','12951','8','B','M',15,'2015-06-12',4,3,3,3,2,2,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,4,7,6,7,5,'POCO FRECUENTE',2,'NULA',1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2),(1117,'FABIOLA CRISTINA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,2,2,3,3,4,3,3,3,3,3,4,3,2,2,2,2,2,2,2,2,2,1,2,2,9,10,11,10,8,12,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'MUY FRECUENTE',3),(2314,'BALMORE','MARTINEZ','12951','7','A','M',16,'2015-01-22',4,4,3,3,3,3,4,4,3,3,3,4,3,3,3,4,3,2,3,2,3,4,4,3,2,14,12,14,14,14,12,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3),(3438,'ANA RHINA','QUEZADA','12951','7','A','F',16,'2014-09-09',1,2,3,3,4,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,9,11,13,11,11,10,'POCO FRECUENTE',2,'MUY FRECUENTE',3,'POCO FRECUENTE',2,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'POCO FRECUENTE',2),(5209,'SANTOS','CAMPOS','12951','7','A','M',16,'2014-09-08',1,1,1,1,1,1,1,1,1,2,2,1,1,1,2,2,2,1,1,1,1,1,2,2,2,4,5,7,6,6,5,'NULA',1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2),(7037,'ANTONIO JOSE','MADRID','12951','7','A','M',16,'2015-01-22',4,4,4,4,4,4,4,4,3,4,4,4,3,4,4,3,4,3,3,3,3,2,3,4,3,14,15,17,13,15,15,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3),(7079,'ELENA','VILLALTA CAMPOS','12951','7','A','F',13,'2015-01-26',1,2,3,3,3,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,7,6,7,6,'NULA',1,'NULA',1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2),(8088,'LUIS ','DIAZ ','12951','7','A','M',13,'2015-01-27',2,3,3,2,2,3,2,1,3,2,2,2,3,1,2,2,2,2,2,1,1,1,1,1,1,9,5,10,7,8,8,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2),(8910,'PRUEBA 43','CANO','12951','7','A','M',15,'2015-08-21',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,5,4,4,4,'NULA',1,'NULA',1,'NULA',1,'NULA',1,'NULA',1,'NULA',1),(11047,'CELIA ','CRUZ','12951','7','A','F',16,'2014-10-06',1,1,2,2,2,2,3,2,3,3,3,3,2,2,2,2,2,2,3,2,2,2,2,2,2,9,9,11,9,7,9,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2),(12826,'BETTY','AYALA','12951','7','A','F',14,'2015-01-26',4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,16,16,20,16,16,16,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','12951','9','A','M',17,'2014-10-31',1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,6,4,4,4,'NULA',1,'NULA',1,'POCO FRECUENTE',2,'NULA',1,'NULA',1,'NULA',1),(16172,'MARIA ANA ','MARTINEZ','12951','8','A','F',14,'2015-06-12',3,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,6,4,5,5,5,4,'POCO FRECUENTE',2,'NULA',1,'NULA',1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'NULA',1),(16408,'CALOS ARMANDO','ROMERO','12951','7','A','M',13,'2015-01-27',4,3,4,3,4,3,4,4,4,4,4,3,4,3,4,3,4,3,4,3,3,3,3,4,3,16,14,18,13,14,13,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'MUY FRECUENTE',3),(17755,'PRUEBA 44','CANO','12951','7','A','M',15,'2015-08-21',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,5,4,4,4,'NULA',1,'NULA',1,'NULA',1,'NULA',1,'NULA',1,'NULA',1),(18996,'SARA','MONTIEL','12951','7','A','F',15,'2015-08-19',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,5,4,4,4,'NULA',1,'NULA',1,'NULA',1,'NULA',1,'NULA',1,'NULA',1),(20455,'MARIA ','VELIZ','12951','7','A','F',16,'2015-07-30',1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,6,4,5,4,'NULA',1,'NULA',1,'POCO FRECUENTE',2,'NULA',1,'POCO FRECUENTE',2,'NULA',1),(21994,'RHINA ALEXANDRA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,1,1,1,2,2,2,2,2,2,2,3,2,2,2,2,2,3,3,3,2,2,3,2,2,8,9,9,7,8,10,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2),(23719,'CATALINA ','SERPAS','12951','8','A','F',16,'2015-06-12',3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,4,5,4,5,4,'POCO FRECUENTE',2,'NULA',1,'NULA',1,'NULA',1,'POCO FRECUENTE',2,'NULA',1),(24807,'WALTER','GUEVARA','12951','7','A','M',18,'2015-01-27',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,5,4,4,4,'NULA',1,'NULA',1,'NULA',1,'NULA',1,'NULA',1,'NULA',1),(25455,'JUANA','DE ARCO MARTINEZ','12951','8','A','F',14,'2015-06-12',2,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,4,5,4,6,4,'POCO FRECUENTE',2,'NULA',1,'NULA',1,'NULA',1,'POCO FRECUENTE',2,'NULA',1),(27356,'MAURICIO','BERRIOS AVILA','12951','7','A','M',19,'2015-02-11',1,2,3,3,4,3,3,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,5,7,7,8,6,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2),(27869,'LUIS   ','ROMERO','12951','7','A','F',15,'0000-00-00',1,2,2,1,3,4,3,3,4,3,4,2,3,4,3,3,2,3,3,4,3,3,3,4,3,10,15,15,10,10,13,'POCO FRECUENTE',2,'MUY FRECUENTE',3,'MUY FRECUENTE',3,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'MUY FRECUENTE',3),(28663,'SAMUEL ALEJANDRO','CANO','12951','7','A','M',13,'2015-01-27',1,2,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,4,4,5,6,5,5,'NULA',1,'NULA',1,'NULA',1,'POCO FRECUENTE',2,'POCO FRECUENTE',2,'POCO FRECUENTE',2);
/*!40000 ALTER TABLE `form6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `form6_7pdf`
--

DROP TABLE IF EXISTS `form6_7pdf`;
/*!50001 DROP VIEW IF EXISTS `form6_7pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form6_7pdf` (
  `id_f6` int(7),
  `nombreestF6` varchar(70),
  `apellidoestF6` varchar(70),
  `gradoF6` varchar(1),
  `seccionF6` varchar(1),
  `edadF6` int(2),
  `N_manipuraF6` varchar(20),
  `N_manireactivaF6` varchar(20),
  `N_maniinstrumentalF6` varchar(20),
  `N_relapuraF6` varchar(20),
  `N_relareactivaF6` varchar(20),
  `N_relainstrumentalF6` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form6_8pdf`
--

DROP TABLE IF EXISTS `form6_8pdf`;
/*!50001 DROP VIEW IF EXISTS `form6_8pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form6_8pdf` (
  `id_f6` int(7),
  `nombreestF6` varchar(70),
  `apellidoestF6` varchar(70),
  `gradoF6` varchar(1),
  `seccionF6` varchar(1),
  `edadF6` int(2),
  `N_manipuraF6` varchar(20),
  `N_manireactivaF6` varchar(20),
  `N_maniinstrumentalF6` varchar(20),
  `N_relapuraF6` varchar(20),
  `N_relareactivaF6` varchar(20),
  `N_relainstrumentalF6` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form6_9pdf`
--

DROP TABLE IF EXISTS `form6_9pdf`;
/*!50001 DROP VIEW IF EXISTS `form6_9pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form6_9pdf` (
  `id_f6` int(7),
  `nombreestF6` varchar(70),
  `apellidoestF6` varchar(70),
  `gradoF6` varchar(1),
  `seccionF6` varchar(1),
  `edadF6` int(2),
  `N_manipuraF6` varchar(20),
  `N_manireactivaF6` varchar(20),
  `N_maniinstrumentalF6` varchar(20),
  `N_relapuraF6` varchar(20),
  `N_relareactivaF6` varchar(20),
  `N_relainstrumentalF6` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form6_va`
--

DROP TABLE IF EXISTS `form6_va`;
/*!50001 DROP VIEW IF EXISTS `form6_va`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form6_va` (
  `nombreestF6` varchar(70),
  `apellidoestF6` varchar(70),
  `codigoescF6` varchar(6),
  `gradoF6` varchar(1),
  `seccionF6` varchar(1),
  `sexoF6` varchar(1),
  `edadF6` int(2),
  `fechaentrevistaF6` date,
  `P_manipuraF6` int(2),
  `P_manireactivaF6` int(2),
  `P_maniinstrumentalF6` int(2),
  `P_relapuraF6` int(2),
  `P_relareactivaF6` int(2),
  `P_relainstrumentalF6` int(2),
  `N_manipuraF6` varchar(20),
  `N_manireactivaF6` varchar(20),
  `N_maniinstrumentalF6` varchar(20),
  `N_relapuraF6` varchar(20),
  `N_relareactivaF6` varchar(20),
  `N_relainstrumentalF6` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `form7`
--

DROP TABLE IF EXISTS `form7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form7` (
  `id_f7` int(7) NOT NULL,
  `nombreestF7` varchar(70) NOT NULL,
  `apellidoestF7` varchar(70) NOT NULL,
  `codigoescF7` varchar(6) NOT NULL,
  `gradoF7` varchar(1) NOT NULL,
  `seccionF7` varchar(1) NOT NULL,
  `sexoF7` varchar(1) NOT NULL,
  `edadF7` int(2) NOT NULL,
  `fechaentrevistaF7` date NOT NULL,
  `item1F7` int(1) NOT NULL,
  `item2F7` int(1) NOT NULL,
  `item3F7` int(1) NOT NULL,
  `item4F7` int(1) NOT NULL,
  `item5F7` int(1) NOT NULL,
  `item6F7` int(1) NOT NULL,
  `item7F7` int(1) NOT NULL,
  `descuentoF7` int(2) NOT NULL,
  `P_animodepreF7` int(2) NOT NULL,
  `N_sintomadepreF7` varchar(20) NOT NULL,
  `C_sintomadepreF7` int(1) NOT NULL,
  PRIMARY KEY (`id_f7`),
  UNIQUE KEY `id_f2` (`id_f7`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form7`
--

LOCK TABLES `form7` WRITE;
/*!40000 ALTER TABLE `form7` DISABLE KEYS */;
INSERT INTO `form7` VALUES (358,'ALFREDO ','ESPINO','12951','8','B','M',15,'2015-06-12',2,2,2,2,3,2,3,1,15,'POCO FRECUENTE',2),(1117,'FABIOLA CRISTINA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,2,2,2,3,3,3,0,13,'POCO FRECUENTE',2),(2314,'BALMORE','MARTINEZ','12951','7','A','M',16,'2015-01-22',4,3,3,4,3,2,3,1,21,'MUY FRECUENTE',3),(3438,'ANA RHINA','QUEZADA','12951','7','A','F',16,'2014-09-09',1,1,1,2,2,2,2,0,9,'NULA',1),(5209,'SANTOS','CAMPOS','12951','7','A','M',16,'2014-09-08',1,1,2,2,2,2,2,0,10,'POCO FRECUENTE',2),(7037,'ANTONIO JOSE','MADRID','12951','7','A','M',16,'2015-01-22',4,4,4,3,3,3,4,0,22,'MUY FRECUENTE',3),(7079,'ELENA','VILLALTA CAMPOS','12951','7','A','F',13,'2015-01-26',1,2,2,2,2,2,2,0,11,'POCO FRECUENTE',2),(8088,'LUIS ','DIAZ ','12951','7','A','M',13,'2015-01-27',4,3,4,3,4,4,4,0,22,'MUY FRECUENTE',3),(8910,'PRUEBA 43','CANO','12951','7','A','M',15,'2015-08-21',1,2,2,2,2,2,2,0,11,'POCO FRECUENTE',2),(11047,'CELIA ','CRUZ','12951','7','A','F',16,'2014-10-06',1,1,1,1,1,2,2,-1,6,'NULA',1),(12826,'BETTY','AYALA','12951','7','A','F',14,'2015-01-26',4,4,4,4,3,3,4,0,23,'MUY FRECUENTE',3),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','12951','9','A','M',17,'2014-10-31',1,1,1,1,1,1,2,0,7,'NULA',1),(16172,'MARIA ANA ','MARTINEZ','12951','8','A','F',14,'2015-06-12',3,2,3,3,3,2,3,1,18,'POCO FRECUENTE',2),(16408,'CALOS ARMANDO','ROMERO','12951','7','A','M',13,'2015-01-27',4,4,3,4,3,4,3,-1,20,'MUY FRECUENTE',3),(17755,'PRUEBA 44','CANO','12951','7','A','M',15,'2015-08-21',1,2,2,2,2,2,2,0,11,'POCO FRECUENTE',2),(18996,'SARA','MONTIEL','12951','7','A','F',15,'2015-08-19',1,1,1,2,2,3,3,-1,9,'NULA',1),(20455,'MARIA ','VELIZ','12951','7','A','F',16,'2015-07-30',1,1,2,2,2,2,2,0,10,'POCO FRECUENTE',2),(21994,'RHINA ALEXANDRA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,1,2,2,2,2,2,0,10,'POCO FRECUENTE',2),(23719,'CATALINA ','SERPAS','12951','8','A','F',16,'2015-06-12',4,3,2,2,2,2,2,0,15,'POCO FRECUENTE',2),(24807,'WALTER','GUEVARA','12951','7','A','M',18,'2015-01-27',1,1,1,1,1,1,1,0,6,'NULA',1),(25455,'JUANA','DE ARCO MARTINEZ','12951','8','A','F',14,'2015-06-12',1,2,2,2,2,2,3,0,12,'POCO FRECUENTE',2),(27356,'MAURICIO','BERRIOS AVILA','12951','7','A','M',19,'2015-02-11',2,2,2,2,1,2,3,-1,11,'POCO FRECUENTE',2),(27869,'LUIS   ','ROMERO','12951','7','A','F',15,'0000-00-00',1,2,3,4,3,3,3,0,16,'POCO FRECUENTE',2),(28663,'SAMUEL ALEJANDRO','CANO','12951','7','A','M',13,'2015-01-27',4,3,3,3,4,1,4,3,24,'MUY FRECUENTE',3);
/*!40000 ALTER TABLE `form7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `form7_7pdf`
--

DROP TABLE IF EXISTS `form7_7pdf`;
/*!50001 DROP VIEW IF EXISTS `form7_7pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form7_7pdf` (
  `id_f7` int(7),
  `nombreestF7` varchar(70),
  `apellidoestF7` varchar(70),
  `gradoF7` varchar(1),
  `seccionF7` varchar(1),
  `edadF7` int(2),
  `N_sintomadepreF7` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form7_8pdf`
--

DROP TABLE IF EXISTS `form7_8pdf`;
/*!50001 DROP VIEW IF EXISTS `form7_8pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form7_8pdf` (
  `id_f7` int(7),
  `nombreestF7` varchar(70),
  `apellidoestF7` varchar(70),
  `gradoF7` varchar(1),
  `seccionF7` varchar(1),
  `edadF7` int(2),
  `N_sintomadepreF7` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form7_9pdf`
--

DROP TABLE IF EXISTS `form7_9pdf`;
/*!50001 DROP VIEW IF EXISTS `form7_9pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form7_9pdf` (
  `id_f7` int(7),
  `nombreestF7` varchar(70),
  `apellidoestF7` varchar(70),
  `gradoF7` varchar(1),
  `seccionF7` varchar(1),
  `edadF7` int(2),
  `N_sintomadepreF7` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form7_va`
--

DROP TABLE IF EXISTS `form7_va`;
/*!50001 DROP VIEW IF EXISTS `form7_va`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form7_va` (
  `nombreestF7` varchar(70),
  `apellidoestF7` varchar(70),
  `codigoescF7` varchar(6),
  `gradoF7` varchar(1),
  `seccionF7` varchar(1),
  `sexoF7` varchar(1),
  `edadF7` int(2),
  `fechaentrevistaF7` date,
  `descuentoF7` int(2),
  `P_animodepreF7` int(2),
  `N_sintomadepreF7` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `form8`
--

DROP TABLE IF EXISTS `form8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form8` (
  `id_f8` int(7) NOT NULL,
  `nombreestF8` varchar(70) NOT NULL,
  `apellidoestF8` varchar(70) NOT NULL,
  `codigoescF8` varchar(6) NOT NULL,
  `gradoF8` varchar(1) NOT NULL,
  `seccionF8` varchar(1) NOT NULL,
  `sexoF8` varchar(1) NOT NULL,
  `edadF8` int(2) NOT NULL,
  `fechaentrevistaF8` date NOT NULL,
  `item1F8` int(1) NOT NULL,
  `item2F8` int(1) NOT NULL,
  `item3F8` int(1) NOT NULL,
  `item4F8` int(1) NOT NULL,
  `item5F8` int(1) NOT NULL,
  `item6F8` int(1) NOT NULL,
  `item7F8` int(1) NOT NULL,
  `item8F8` int(1) NOT NULL,
  `item9F8` int(1) NOT NULL,
  `item10F8` int(1) NOT NULL,
  `P_malkesslerF8` int(2) NOT NULL,
  `N_malkesslerF8` varchar(20) NOT NULL,
  `C_malkesslerF8` int(1) NOT NULL,
  PRIMARY KEY (`id_f8`),
  UNIQUE KEY `id_f2` (`id_f8`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form8`
--

LOCK TABLES `form8` WRITE;
/*!40000 ALTER TABLE `form8` DISABLE KEYS */;
INSERT INTO `form8` VALUES (0,'','','','','','',0,'0000-00-00',1,1,1,1,1,1,1,2,2,2,13,'SIN MALESTAR',1),(358,'ALFREDO ','ESPINO','12951','8','B','M',15,'2015-06-12',2,1,2,3,3,3,3,3,3,3,26,'MODERADO MALESTAR',3),(1117,'FABIOLA CRISTINA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,1,2,2,2,2,2,2,3,3,20,'LEVE MALESTAR',2),(2314,'BALMORE','MARTINEZ','12951','7','A','M',16,'2015-01-22',5,5,5,5,5,5,5,5,5,5,50,'EXTREMO MALESTAR',4),(3438,'ANA RHINA','QUEZADA','12951','7','A','F',16,'2014-09-09',1,1,2,2,2,3,3,3,4,3,24,'LEVE MALESTAR',2),(5209,'SANTOS','CAMPOS','12951','7','A','M',16,'2014-09-08',1,1,2,2,2,2,2,2,2,1,17,'SIN MALESTAR',1),(7037,'ANTONIO JOSE','MADRID','12951','7','A','M',16,'2015-01-22',5,5,5,5,5,5,5,5,5,5,50,'EXTREMO MALESTAR',4),(7079,'ELENA','VILLALTA CAMPOS','12951','7','A','F',13,'2015-01-26',1,2,2,2,2,2,3,2,2,2,20,'LEVE MALESTAR',2),(8088,'LUIS ','DIAZ ','12951','7','A','M',13,'2015-01-27',5,5,5,4,4,5,4,4,4,4,44,'EXTREMO MALESTAR',4),(8910,'PRUEBA 43','CANO','12951','','','',0,'0000-00-00',1,2,2,2,2,2,2,2,2,2,19,'SIN MALESTAR',1),(11047,'CELIA ','CRUZ','12951','7','A','F',16,'2014-10-06',1,1,1,2,2,2,2,2,2,1,16,'SIN MALESTAR',1),(12826,'BETTY','AYALA','12951','7','A','F',14,'2015-01-26',5,4,4,3,3,2,2,2,1,1,27,'MODERADO MALESTAR',3),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','12951','9','A','M',17,'2014-10-31',1,1,1,1,1,1,1,1,1,1,10,'SIN MALESTAR',1),(16172,'MARIA ANA ','MARTINEZ','12951','8','A','F',14,'2015-06-12',3,3,3,3,3,3,2,3,2,2,27,'MODERADO MALESTAR',3),(16408,'CALOS ARMANDO','ROMERO','12951','7','A','M',13,'2015-01-27',4,5,4,5,4,5,4,5,4,5,45,'EXTREMO MALESTAR',4),(17755,'PRUEBA 44','CANO','12951','7','A','M',15,'2015-08-21',1,1,1,1,1,1,1,1,1,1,10,'SIN MALESTAR',1),(20455,'MARIA ','VELIZ','12951','7','A','F',16,'2015-07-30',2,2,2,2,2,2,2,2,2,2,20,'LEVE MALESTAR',2),(21994,'RHINA ALEXANDRA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,2,2,2,2,2,3,3,3,2,22,'LEVE MALESTAR',2),(23719,'CATALINA ','SERPAS','12951','8','A','F',16,'2015-06-12',2,3,3,3,3,2,2,2,2,1,23,'LEVE MALESTAR',2),(24807,'WALTER','GUEVARA','12951','7','A','M',18,'2015-01-27',1,1,1,1,1,1,1,1,1,1,10,'SIN MALESTAR',1),(25455,'JUANA','DE ARCO MARTINEZ','12951','8','A','F',14,'2015-06-12',2,3,3,3,3,3,3,3,2,2,27,'MODERADO MALESTAR',3),(27356,'MAURICIO','BERRIOS AVILA','12951','7','A','M',19,'2015-02-11',5,4,3,3,2,2,2,1,2,2,26,'MODERADO MALESTAR',3),(27869,'LUIS   ','ROMERO','12951','7','A','F',15,'0000-00-00',1,2,3,2,3,2,3,5,4,2,27,'MODERADO MALESTAR',3),(28663,'SAMUEL ALEJANDRO','CANO','12951','7','A','M',13,'2015-01-27',3,4,3,1,1,1,1,5,5,5,29,'MODERADO MALESTAR',3);
/*!40000 ALTER TABLE `form8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `form8_7pdf`
--

DROP TABLE IF EXISTS `form8_7pdf`;
/*!50001 DROP VIEW IF EXISTS `form8_7pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form8_7pdf` (
  `id_f8` int(7),
  `nombreestF8` varchar(70),
  `apellidoestF8` varchar(70),
  `gradoF8` varchar(1),
  `seccionF8` varchar(1),
  `edadF8` int(2),
  `N_malkesslerF8` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form8_8pdf`
--

DROP TABLE IF EXISTS `form8_8pdf`;
/*!50001 DROP VIEW IF EXISTS `form8_8pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form8_8pdf` (
  `id_f8` int(7),
  `nombreestF8` varchar(70),
  `apellidoestF8` varchar(70),
  `gradoF8` varchar(1),
  `seccionF8` varchar(1),
  `edadF8` int(2),
  `N_malkesslerF8` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form8_9pdf`
--

DROP TABLE IF EXISTS `form8_9pdf`;
/*!50001 DROP VIEW IF EXISTS `form8_9pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form8_9pdf` (
  `id_f8` int(7),
  `nombreestF8` varchar(70),
  `apellidoestF8` varchar(70),
  `gradoF8` varchar(1),
  `seccionF8` varchar(1),
  `edadF8` int(2),
  `N_malkesslerF8` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form8_va`
--

DROP TABLE IF EXISTS `form8_va`;
/*!50001 DROP VIEW IF EXISTS `form8_va`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form8_va` (
  `nombreestF8` varchar(70),
  `apellidoestF8` varchar(70),
  `codigoescF8` varchar(6),
  `gradoF8` varchar(1),
  `seccionF8` varchar(1),
  `sexoF8` varchar(1),
  `edadF8` int(2),
  `fechaentrevistaF8` date,
  `P_malkesslerF8` int(2),
  `N_malkesslerF8` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `form9`
--

DROP TABLE IF EXISTS `form9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form9` (
  `id_f9` int(7) NOT NULL,
  `nombreestF9` varchar(70) NOT NULL,
  `apellidoestF9` varchar(70) NOT NULL,
  `codigoescF9` varchar(6) NOT NULL,
  `gradoF9` varchar(1) NOT NULL,
  `seccionF9` varchar(1) NOT NULL,
  `sexoF9` varchar(1) NOT NULL,
  `edadF9` int(2) NOT NULL,
  `fechaentrevistaF9` date NOT NULL,
  `item1F9` int(1) NOT NULL,
  `item2F9` int(1) NOT NULL,
  `item3F9` int(1) NOT NULL,
  `item4F9` int(1) NOT NULL,
  `P_ideasuicidaF9` int(2) NOT NULL,
  `N_ideasuicidaF9` varchar(20) NOT NULL,
  `C_ideasuicidaF9` int(1) NOT NULL,
  PRIMARY KEY (`id_f9`),
  UNIQUE KEY `id_f2` (`id_f9`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form9`
--

LOCK TABLES `form9` WRITE;
/*!40000 ALTER TABLE `form9` DISABLE KEYS */;
INSERT INTO `form9` VALUES (0,'','','','','','',0,'0000-00-00',1,1,1,1,4,'NULA',1),(358,'ALFREDO ','ESPINO','12951','8','B','M',15,'2015-06-12',1,2,2,2,7,'FRECUENTE',2),(1117,'FABIOLA CRISTINA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,2,2,3,8,'FRECUENTE',2),(2314,'BALMORE','MARTINEZ','12951','7','A','M',16,'2015-01-22',4,4,4,4,16,'MUY FRECUENTE',3),(3438,'ANA RHINA','QUEZADA','12951','7','A','F',16,'2014-09-09',1,1,2,2,6,'FRECUENTE',2),(5209,'SANTOS','CAMPOS','12951','7','A','M',16,'2014-09-08',1,1,2,2,6,'FRECUENTE',2),(7037,'ANTONIO JOSE','MADRID','12951','7','A','M',16,'2015-01-22',4,4,4,4,16,'MUY FRECUENTE',3),(7079,'ELENA','VILLALTA CAMPOS','12951','7','A','F',13,'2015-01-26',1,2,2,2,7,'FRECUENTE',2),(8088,'LUIS ','DIAZ ','12951','7','A','M',13,'2015-01-27',3,3,3,3,12,'MUY FRECUENTE',3),(8910,'PRUEBA 43','CANO','12951','','','',0,'0000-00-00',1,2,2,2,7,'FRECUENTE',2),(11047,'CELIA ','CRUZ','12951','7','A','F',16,'2014-10-06',1,1,2,2,6,'FRECUENTE',2),(12826,'BETTY','AYALA','12951','7','A','F',14,'2015-01-26',4,3,3,3,13,'MUY FRECUENTE',3),(15256,'MAURICIO ADGUSTO','BERRIOS AVILA','12951','9','A','M',17,'2014-10-31',1,1,1,1,4,'NULA',1),(16172,'MARIA ANA ','MARTINEZ','12951','8','A','F',14,'2015-06-12',3,2,2,2,9,'FRECUENTE',2),(16408,'CALOS ARMANDO','ROMERO','12951','7','A','M',13,'2015-01-27',4,3,4,3,14,'MUY FRECUENTE',3),(17755,'PRUEBA 44','CANO','12951','7','A','M',15,'2015-08-21',1,2,2,2,7,'FRECUENTE',2),(20455,'MARIA ','VELIZ','12951','7','A','F',16,'2015-07-30',1,2,2,2,7,'FRECUENTE',2),(21994,'RHINA ALEXANDRA','CANO QUEZADA','12951','7','A','F',15,'2014-09-09',1,1,2,2,6,'FRECUENTE',2),(23719,'CATALINA ','SERPAS','12951','8','A','F',16,'2015-06-12',3,2,2,2,9,'FRECUENTE',2),(24807,'WALTER','GUEVARA','12951','7','A','M',18,'2015-01-27',1,1,1,1,4,'NULA',1),(25455,'JUANA','DE ARCO MARTINEZ','12951','8','A','F',14,'2015-06-12',4,3,2,1,10,'MUY FRECUENTE',3),(27356,'MAURICIO','BERRIOS AVILA','12951','7','A','M',19,'2015-02-11',1,2,3,4,10,'MUY FRECUENTE',3),(27869,'LUIS   ','ROMERO','12951','7','A','F',15,'0000-00-00',1,2,3,3,9,'FRECUENTE',2),(28663,'SAMUEL ALEJANDRO','CANO','12951','7','A','M',13,'2015-01-27',3,2,2,3,10,'MUY FRECUENTE',3);
/*!40000 ALTER TABLE `form9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `form9_7pdf`
--

DROP TABLE IF EXISTS `form9_7pdf`;
/*!50001 DROP VIEW IF EXISTS `form9_7pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form9_7pdf` (
  `id_f9` int(7),
  `nombreestF9` varchar(70),
  `apellidoestF9` varchar(70),
  `gradoF9` varchar(1),
  `seccionF9` varchar(1),
  `edadF9` int(2),
  `N_ideasuicidaF9` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form9_8pdf`
--

DROP TABLE IF EXISTS `form9_8pdf`;
/*!50001 DROP VIEW IF EXISTS `form9_8pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form9_8pdf` (
  `id_f9` int(7),
  `nombreestF9` varchar(70),
  `apellidoestF9` varchar(70),
  `gradoF9` varchar(1),
  `seccionF9` varchar(1),
  `edadF9` int(2),
  `N_ideasuicidaF9` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form9_9pdf`
--

DROP TABLE IF EXISTS `form9_9pdf`;
/*!50001 DROP VIEW IF EXISTS `form9_9pdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form9_9pdf` (
  `id_f9` int(7),
  `nombreestF9` varchar(70),
  `apellidoestF9` varchar(70),
  `gradoF9` varchar(1),
  `seccionF9` varchar(1),
  `edadF9` int(2),
  `N_ideasuicidaF9` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `form9_va`
--

DROP TABLE IF EXISTS `form9_va`;
/*!50001 DROP VIEW IF EXISTS `form9_va`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `form9_va` (
  `nombreestF9` varchar(70),
  `apellidoestF9` varchar(70),
  `codigoescF9` varchar(6),
  `gradoF9` varchar(1),
  `seccionF9` varchar(1),
  `sexoF9` varchar(1),
  `edadF9` int(2),
  `fechaentrevistaF9` date,
  `P_ideasuicidaF9` int(2),
  `N_ideasuicidaF9` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucion` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `cod_institucion` varchar(7) NOT NULL,
  `area` varchar(1) NOT NULL,
  `nombre_institucion` varchar(60) NOT NULL,
  `modalidad` varchar(4) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `municipio` varchar(45) NOT NULL,
  `direccion_inst` varchar(60) DEFAULT NULL,
  `canton` varchar(65) DEFAULT NULL,
  `caserio` varchar(65) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `longitud` double(5,5) DEFAULT NULL,
  `latitud` double(5,5) DEFAULT NULL,
  `altura` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES (2,'12951','U','CENTRO ESCOLAR BARRIO LA CRUZ','CDE','SAN MIGUEL','SAN ANTONIO','BARRIO LA CRUZ CALLE A CTN. S. MARCOS','','','',0.00000,0.00000,0);
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `institucionpdf`
--

DROP TABLE IF EXISTS `institucionpdf`;
/*!50001 DROP VIEW IF EXISTS `institucionpdf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `institucionpdf` (
  `cod_institucion` varchar(7),
  `nombre_institucion` varchar(60),
  `departamento` varchar(45),
  `municipio` varchar(45),
  `direccion_inst` varchar(60),
  `canton` varchar(65),
  `caserio` varchar(65)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
INSERT INTO `login_attempts` VALUES (2,'1407950920'),(2,'1407951573'),(2,'1407951871'),(2,'1407951946'),(2,'1407961393'),(2,'1407964828'),(2,'1408120561'),(2,'1408123957'),(2,'1408557506'),(3,'1410371860'),(2,'1412613590'),(2,'1412613600'),(2,'1412613612'),(2,'1412613626'),(2,'1412613659'),(2,'1412613676'),(3,'1412614290'),(3,'1412614723'),(3,'1412616781'),(3,'1412616840'),(3,'1412616858'),(3,'1412616875'),(2,'1412626750'),(2,'1412626805'),(2,'1412626825'),(2,'1412626840'),(2,'1412626872'),(2,'1412626886'),(3,'1412627086'),(3,'1412627109'),(3,'1412627129'),(3,'1412627147'),(3,'1412627168'),(5,'1412892046'),(5,'1414786999'),(5,'1414787014'),(4,'1414787143'),(4,'1414787173'),(5,'1421960516'),(5,'1422378177'),(4,'1422567759'),(4,'1422567777'),(5,'1423689307'),(5,'1423689319'),(5,'1433972697'),(5,'1433972814'),(5,'1434141316'),(5,'1439500654'),(5,'1439500681'),(7,'1439844010');
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'test_user','test@example.com','00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc','f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef'),(4,'knosac','knosac@yahoo.es','469c0947ccaa00e0fdbfa7ad4123be580884185b3e8fb17b5b7ccd3ba349a7345b797ce4e3b9c45d5f154ac4ea2d77126d39b408ab10e009b1f6af74eeea047f','a9f95ddae3a7543415d77e8359eb99a9262e62c559f8c0eb3e1a834d9c104e15277f937c3f896c274b513428b9ac2398cdfacee12840d20cd513b57c8a81b410'),(5,'sackno','sackno@gmail.com','b20f8fa37de3c40567ca424692bbef8f9f6486b11dc2c1082ea2017ffec0ab47530bf33511fb5d13804261a848c9e8c94c94984e6a000347b877eceb8832569c','c2e35810e41bcca2f710bb8b89e2ba0c062f8d8ac199df0fedc4eadd469aaabe407c10c007028a8a96242f280a1319ae7a0ecfa2403114cbf28e09a3f60a1824'),(6,'profesor','profesor@localhost.localdomain','8776714687f48651d1192a5c6152ff6324bc708698a37d49cf0a75bbbbc36834f5ff030653a818486cce79c21a570d74f4a8f46a7bcb6040027ea1f1403628b7','7a710b9e25b51d9a05d5f0ae7dad583ae719b142cea5120d4f6fc8a2cb2d99f0ba07ecaf40c5d5d5118480b36edc172fe7579cae2ca186d24ab5800837374552'),(7,'profesor','profesor@gmail.com','36b7811aff903e90ebafa283eed364e94c14904de97d7925d8cfe047ed3030dddd51ef5cfcd1903779f1663741d61b413ff0f035f9c4420728780805eef34b58','6873c0b55c596ab6e5504ce829f9d800e9f607e27baa775c0f6975e9242265680222661638723010bc50a074a8bba19f126694af0f42674af6018c3b5619d4fa');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_user` int(2) NOT NULL AUTO_INCREMENT,
  `user` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre_completo` varchar(50) NOT NULL,
  `cargo` varchar(40) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `usuario` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (10,'sackno','69ddbeb87f0c2942677a65d1a92ebd57','samuel cano','administrador'),(12,'juan','a94652aa97c7211ba8954dd15a3cf838','juan','administrador');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dtisvae'
--

--
-- Final view structure for view `form10_7pdf`
--

/*!50001 DROP TABLE IF EXISTS `form10_7pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form10_7pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form10_7pdf` AS select `form10`.`id_f10` AS `id_f10`,`form10`.`nombreestF10` AS `nombreestF10`,`form10`.`apellidoestF10` AS `apellidoestF10`,`form10`.`gradoF10` AS `gradoF10`,`form10`.`seccionF10` AS `seccionF10`,`form10`.`edadF10` AS `edadF10`,`form10`.`N_implicacionF10` AS `N_implicacionF10`,`form10`.`N_afilalumnosF10` AS `N_afilalumnosF10`,`form10`.`N_ayudaprofesorF10` AS `N_ayudaprofesorF10`,`form10`.`B_implicacionF10` AS `B_implicacionF10`,`form10`.`B_afiliacionF10` AS `B_afiliacionF10`,`form10`.`B_ayudaF10` AS `B_ayudaF10` from `form10` where (`form10`.`gradoF10` = 7) order by `form10`.`seccionF10` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form10_8pdf`
--

/*!50001 DROP TABLE IF EXISTS `form10_8pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form10_8pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form10_8pdf` AS select `form10`.`id_f10` AS `id_f10`,`form10`.`nombreestF10` AS `nombreestF10`,`form10`.`apellidoestF10` AS `apellidoestF10`,`form10`.`gradoF10` AS `gradoF10`,`form10`.`seccionF10` AS `seccionF10`,`form10`.`edadF10` AS `edadF10`,`form10`.`N_implicacionF10` AS `N_implicacionF10`,`form10`.`N_afilalumnosF10` AS `N_afilalumnosF10`,`form10`.`N_ayudaprofesorF10` AS `N_ayudaprofesorF10`,`form10`.`B_implicacionF10` AS `B_implicacionF10`,`form10`.`B_afiliacionF10` AS `B_afiliacionF10`,`form10`.`B_ayudaF10` AS `B_ayudaF10` from `form10` where (`form10`.`gradoF10` = 8) order by `form10`.`seccionF10` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form10_9pdf`
--

/*!50001 DROP TABLE IF EXISTS `form10_9pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form10_9pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form10_9pdf` AS select `form10`.`id_f10` AS `id_f10`,`form10`.`nombreestF10` AS `nombreestF10`,`form10`.`apellidoestF10` AS `apellidoestF10`,`form10`.`gradoF10` AS `gradoF10`,`form10`.`seccionF10` AS `seccionF10`,`form10`.`edadF10` AS `edadF10`,`form10`.`N_implicacionF10` AS `N_implicacionF10`,`form10`.`N_afilalumnosF10` AS `N_afilalumnosF10`,`form10`.`N_ayudaprofesorF10` AS `N_ayudaprofesorF10`,`form10`.`B_implicacionF10` AS `B_implicacionF10`,`form10`.`B_afiliacionF10` AS `B_afiliacionF10`,`form10`.`B_ayudaF10` AS `B_ayudaF10` from `form10` where (`form10`.`gradoF10` = 9) order by `form10`.`seccionF10` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form10_va`
--

/*!50001 DROP TABLE IF EXISTS `form10_va`*/;
/*!50001 DROP VIEW IF EXISTS `form10_va`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form10_va` AS select `form10`.`nombreestF10` AS `nombreestF10`,`form10`.`apellidoestF10` AS `apellidoestF10`,`form10`.`codigoescF10` AS `codigoescF10`,`form10`.`gradoF10` AS `gradoF10`,`form10`.`seccionF10` AS `seccionF10`,`form10`.`sexoF10` AS `sexoF10`,`form10`.`edadF10` AS `edadF10`,`form10`.`fechaentrevistaF10` AS `fechaentrevistaF10`,`form10`.`puntajeF10` AS `puntajeF10`,`form10`.`P_implicacionF10` AS `P_implicacionF10`,`form10`.`P_afilalumnosF10` AS `P_afilalumnosF10`,`form10`.`P_ayudaprofesorF10` AS `P_ayudaprofesorF10`,`form10`.`N_implicacionF10` AS `N_implicacionF10`,`form10`.`N_afilalumnosF10` AS `N_afilalumnosF10`,`form10`.`N_ayudaprofesorF10` AS `N_ayudaprofesorF10`,`form10`.`B_implicacionF10` AS `B_implicacionF10`,`form10`.`B_afiliacionF10` AS `B_afiliacionF10`,`form10`.`B_ayudaF10` AS `B_ayudaF10` from `form10` order by `form10`.`fechaentrevistaF10` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form11_7pdf`
--

/*!50001 DROP TABLE IF EXISTS `form11_7pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form11_7pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form11_7pdf` AS select `form11`.`id_f11` AS `id_f11`,`form11`.`nombreestF11` AS `nombreestF11`,`form11`.`apellidoestF11` AS `apellidoestF11`,`form11`.`gradoF11` AS `gradoF11`,`form11`.`seccionF11` AS `seccionF11`,`form11`.`edadF11` AS `edadF11`,`form11`.`N_tacticaspadres1B` AS `N_tacticaspadres1B`,`form11`.`N_tacticaspadres2B` AS `N_tacticaspadres2B`,`form11`.`N_tacticaspadres3B` AS `N_tacticaspadres3B`,`form11`.`N_tacticaspadres4B` AS `N_tacticaspadres4B`,`form11`.`N_tacticaspadres5B` AS `N_tacticaspadres5B`,`form11`.`N_tacticaspadres6B` AS `N_tacticaspadres6B`,`form11`.`N_tacticaspadres7B` AS `N_tacticaspadres7B`,`form11`.`N_tacticaspadres8B` AS `N_tacticaspadres8B`,`form11`.`N_tacticaspadres9B` AS `N_tacticaspadres9B`,`form11`.`N_tacticaspadres10B` AS `N_tacticaspadres10B`,`form11`.`N_tacticaspadres1BB` AS `N_tacticaspadres1BB`,`form11`.`N_tacticaspadres2BB` AS `N_tacticaspadres2BB`,`form11`.`N_tacticaspadres3BB` AS `N_tacticaspadres3BB`,`form11`.`N_tacticaspadres4BB` AS `N_tacticaspadres4BB`,`form11`.`N_tacticaspadres5BB` AS `N_tacticaspadres5BB`,`form11`.`N_tacticaspadres6BB` AS `N_tacticaspadres6BB`,`form11`.`N_tacticaspadres7BB` AS `N_tacticaspadres7BB`,`form11`.`N_tacticaspadres8BB` AS `N_tacticaspadres8BB`,`form11`.`N_tacticaspadres9BB` AS `N_tacticaspadres9BB`,`form11`.`N_tacticaspadres10BB` AS `N_tacticaspadres10BB` from `form11` where (`form11`.`gradoF11` = 7) order by `form11`.`seccionF11` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form11_8pdf`
--

/*!50001 DROP TABLE IF EXISTS `form11_8pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form11_8pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form11_8pdf` AS select `form11`.`id_f11` AS `id_f11`,`form11`.`nombreestF11` AS `nombreestF11`,`form11`.`apellidoestF11` AS `apellidoestF11`,`form11`.`gradoF11` AS `gradoF11`,`form11`.`seccionF11` AS `seccionF11`,`form11`.`edadF11` AS `edadF11`,`form11`.`N_tacticaspadres1B` AS `N_tacticaspadres1B`,`form11`.`N_tacticaspadres2B` AS `N_tacticaspadres2B`,`form11`.`N_tacticaspadres3B` AS `N_tacticaspadres3B`,`form11`.`N_tacticaspadres4B` AS `N_tacticaspadres4B`,`form11`.`N_tacticaspadres5B` AS `N_tacticaspadres5B`,`form11`.`N_tacticaspadres6B` AS `N_tacticaspadres6B`,`form11`.`N_tacticaspadres7B` AS `N_tacticaspadres7B`,`form11`.`N_tacticaspadres8B` AS `N_tacticaspadres8B`,`form11`.`N_tacticaspadres9B` AS `N_tacticaspadres9B`,`form11`.`N_tacticaspadres10B` AS `N_tacticaspadres10B`,`form11`.`N_tacticaspadres1BB` AS `N_tacticaspadres1BB`,`form11`.`N_tacticaspadres2BB` AS `N_tacticaspadres2BB`,`form11`.`N_tacticaspadres3BB` AS `N_tacticaspadres3BB`,`form11`.`N_tacticaspadres4BB` AS `N_tacticaspadres4BB`,`form11`.`N_tacticaspadres5BB` AS `N_tacticaspadres5BB`,`form11`.`N_tacticaspadres6BB` AS `N_tacticaspadres6BB`,`form11`.`N_tacticaspadres7BB` AS `N_tacticaspadres7BB`,`form11`.`N_tacticaspadres8BB` AS `N_tacticaspadres8BB`,`form11`.`N_tacticaspadres9BB` AS `N_tacticaspadres9BB`,`form11`.`N_tacticaspadres10BB` AS `N_tacticaspadres10BB` from `form11` where (`form11`.`gradoF11` = 8) order by `form11`.`seccionF11` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form11_9pdf`
--

/*!50001 DROP TABLE IF EXISTS `form11_9pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form11_9pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form11_9pdf` AS select `form11`.`id_f11` AS `id_f11`,`form11`.`nombreestF11` AS `nombreestF11`,`form11`.`apellidoestF11` AS `apellidoestF11`,`form11`.`gradoF11` AS `gradoF11`,`form11`.`seccionF11` AS `seccionF11`,`form11`.`edadF11` AS `edadF11`,`form11`.`N_tacticaspadres1B` AS `N_tacticaspadres1B`,`form11`.`N_tacticaspadres2B` AS `N_tacticaspadres2B`,`form11`.`N_tacticaspadres3B` AS `N_tacticaspadres3B`,`form11`.`N_tacticaspadres4B` AS `N_tacticaspadres4B`,`form11`.`N_tacticaspadres5B` AS `N_tacticaspadres5B`,`form11`.`N_tacticaspadres6B` AS `N_tacticaspadres6B`,`form11`.`N_tacticaspadres7B` AS `N_tacticaspadres7B`,`form11`.`N_tacticaspadres8B` AS `N_tacticaspadres8B`,`form11`.`N_tacticaspadres9B` AS `N_tacticaspadres9B`,`form11`.`N_tacticaspadres10B` AS `N_tacticaspadres10B`,`form11`.`N_tacticaspadres1BB` AS `N_tacticaspadres1BB`,`form11`.`N_tacticaspadres2BB` AS `N_tacticaspadres2BB`,`form11`.`N_tacticaspadres3BB` AS `N_tacticaspadres3BB`,`form11`.`N_tacticaspadres4BB` AS `N_tacticaspadres4BB`,`form11`.`N_tacticaspadres5BB` AS `N_tacticaspadres5BB`,`form11`.`N_tacticaspadres6BB` AS `N_tacticaspadres6BB`,`form11`.`N_tacticaspadres7BB` AS `N_tacticaspadres7BB`,`form11`.`N_tacticaspadres8BB` AS `N_tacticaspadres8BB`,`form11`.`N_tacticaspadres9BB` AS `N_tacticaspadres9BB`,`form11`.`N_tacticaspadres10BB` AS `N_tacticaspadres10BB` from `form11` where (`form11`.`gradoF11` = 9) order by `form11`.`seccionF11` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form11_va`
--

/*!50001 DROP TABLE IF EXISTS `form11_va`*/;
/*!50001 DROP VIEW IF EXISTS `form11_va`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form11_va` AS select `form11`.`nombreestF11` AS `nombreestF11`,`form11`.`apellidoestF11` AS `apellidoestF11`,`form11`.`codigoescF11` AS `codigoescF11`,`form11`.`gradoF11` AS `gradoF11`,`form11`.`seccionF11` AS `seccionF11`,`form11`.`sexoF11` AS `sexoF11`,`form11`.`edadF11` AS `edadF11`,`form11`.`fechaentrevistaF11` AS `fechaentrevistaF11`,`form11`.`F_paterna` AS `F_paterna`,`form11`.`F_materna` AS `F_materna`,`form11`.`P_tacticaspadres1` AS `P_tacticaspadres1`,`form11`.`P_tacticaspadres2` AS `P_tacticaspadres2`,`form11`.`N_tacticaspadres1B` AS `N_tacticaspadres1B`,`form11`.`N_tacticaspadres2B` AS `N_tacticaspadres2B`,`form11`.`P_tacticaspadres3` AS `P_tacticaspadres3`,`form11`.`P_tacticaspadres4` AS `P_tacticaspadres4`,`form11`.`N_tacticaspadres3B` AS `N_tacticaspadres3B`,`form11`.`N_tacticaspadres4B` AS `N_tacticaspadres4B`,`form11`.`P_tacticaspadres5` AS `P_tacticaspadres5`,`form11`.`P_tacticaspadres6` AS `P_tacticaspadres6`,`form11`.`N_tacticaspadres5B` AS `N_tacticaspadres5B`,`form11`.`N_tacticaspadres6B` AS `N_tacticaspadres6B`,`form11`.`P_tacticaspadres7` AS `P_tacticaspadres7`,`form11`.`P_tacticaspadres8` AS `P_tacticaspadres8`,`form11`.`N_tacticaspadres7B` AS `N_tacticaspadres7B`,`form11`.`N_tacticaspadres8B` AS `N_tacticaspadres8B`,`form11`.`P_tacticaspadres9` AS `P_tacticaspadres9`,`form11`.`P_tacticaspadres10` AS `P_tacticaspadres10`,`form11`.`N_tacticaspadres9B` AS `N_tacticaspadres9B`,`form11`.`N_tacticaspadres10B` AS `N_tacticaspadres10B`,`form11`.`N_tacticaspadres1BB` AS `N_tacticaspadres1BB`,`form11`.`N_tacticaspadres2BB` AS `N_tacticaspadres2BB`,`form11`.`N_tacticaspadres3BB` AS `N_tacticaspadres3BB`,`form11`.`N_tacticaspadres4BB` AS `N_tacticaspadres4BB`,`form11`.`N_tacticaspadres5BB` AS `N_tacticaspadres5BB`,`form11`.`N_tacticaspadres6BB` AS `N_tacticaspadres6BB`,`form11`.`N_tacticaspadres7BB` AS `N_tacticaspadres7BB`,`form11`.`N_tacticaspadres8BB` AS `N_tacticaspadres8BB`,`form11`.`N_tacticaspadres9BB` AS `N_tacticaspadres9BB`,`form11`.`N_tacticaspadres10BB` AS `N_tacticaspadres10BB` from `form11` order by `form11`.`fechaentrevistaF11` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form1_7pdf`
--

/*!50001 DROP TABLE IF EXISTS `form1_7pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form1_7pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form1_7pdf` AS select `form1`.`id_f1` AS `id_f1`,`form1`.`nombreestF1` AS `nombreestF1`,`form1`.`apellidoestF1` AS `apellidoestF1`,`form1`.`gradoF1` AS `gradoF1`,`form1`.`seccionF1` AS `seccionF1`,`form1`.`edadF1` AS `edadF1`,`form1`.`nivel_coheF1` AS `nivel_coheF1`,`form1`.`nivel_expresiF1` AS `nivel_expresiF1`,`form1`.`nivel_conflicF1` AS `nivel_conflicF1` from `form1` where (`form1`.`gradoF1` = 7) order by `form1`.`seccionF1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form1_8pdf`
--

/*!50001 DROP TABLE IF EXISTS `form1_8pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form1_8pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form1_8pdf` AS select `form1`.`id_f1` AS `id_f1`,`form1`.`nombreestF1` AS `nombreestF1`,`form1`.`apellidoestF1` AS `apellidoestF1`,`form1`.`gradoF1` AS `gradoF1`,`form1`.`seccionF1` AS `seccionF1`,`form1`.`edadF1` AS `edadF1`,`form1`.`nivel_coheF1` AS `nivel_coheF1`,`form1`.`nivel_expresiF1` AS `nivel_expresiF1`,`form1`.`nivel_conflicF1` AS `nivel_conflicF1` from `form1` where (`form1`.`gradoF1` = 8) order by `form1`.`seccionF1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form1_9pdf`
--

/*!50001 DROP TABLE IF EXISTS `form1_9pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form1_9pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form1_9pdf` AS select `form1`.`id_f1` AS `id_f1`,`form1`.`nombreestF1` AS `nombreestF1`,`form1`.`apellidoestF1` AS `apellidoestF1`,`form1`.`gradoF1` AS `gradoF1`,`form1`.`seccionF1` AS `seccionF1`,`form1`.`edadF1` AS `edadF1`,`form1`.`nivel_coheF1` AS `nivel_coheF1`,`form1`.`nivel_expresiF1` AS `nivel_expresiF1`,`form1`.`nivel_conflicF1` AS `nivel_conflicF1` from `form1` where (`form1`.`gradoF1` = 9) order by `form1`.`seccionF1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form1_v7`
--

/*!50001 DROP TABLE IF EXISTS `form1_v7`*/;
/*!50001 DROP VIEW IF EXISTS `form1_v7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form1_v7` AS select `form1`.`id_f1` AS `id_f1`,`form1`.`nombreestF1` AS `nombreestF1`,`form1`.`apellidoestF1` AS `apellidoestF1`,`form1`.`codigoescF1` AS `codigoescF1`,`form1`.`gradoF1` AS `gradoF1`,`form1`.`seccionF1` AS `seccionF1`,`form1`.`sexoF1` AS `sexoF1`,`form1`.`edadF1` AS `edadF1`,`form1`.`fechaentrevistaF1` AS `fechaentrevistaF1`,`form1`.`item1F1` AS `item1F1`,`form1`.`item2F1` AS `item2F1`,`form1`.`item3F1` AS `item3F1`,`form1`.`item4F1` AS `item4F1`,`form1`.`item5F1` AS `item5F1`,`form1`.`item6F1` AS `item6F1`,`form1`.`item7F1` AS `item7F1`,`form1`.`item8F1` AS `item8F1`,`form1`.`item9F1` AS `item9F1`,`form1`.`item10F1` AS `item10F1`,`form1`.`item11F1` AS `item11F1`,`form1`.`item12F1` AS `item12F1`,`form1`.`item13F1` AS `item13F1`,`form1`.`item14F1` AS `item14F1`,`form1`.`item15F1` AS `item15F1`,`form1`.`item16F1` AS `item16F1`,`form1`.`item17F1` AS `item17F1`,`form1`.`item18F1` AS `item18F1`,`form1`.`item19F1` AS `item19F1`,`form1`.`item20F1` AS `item20F1`,`form1`.`item21F1` AS `item21F1`,`form1`.`item22F1` AS `item22F1`,`form1`.`item23F1` AS `item23F1`,`form1`.`item24F1` AS `item24F1`,`form1`.`item25F1` AS `item25F1`,`form1`.`item26F1` AS `item26F1`,`form1`.`item27F1` AS `item27F1`,`form1`.`puntajeF1` AS `puntajeF1`,`form1`.`cohesionF1` AS `cohesionF1`,`form1`.`expresividadF1` AS `expresividadF1`,`form1`.`conflictoF1` AS `conflictoF1`,`form1`.`nivel_coheF1` AS `nivel_coheF1`,`form1`.`nivel_expresiF1` AS `nivel_expresiF1`,`form1`.`nivel_conflicF1` AS `nivel_conflicF1`,`form1`.`codigo_coheF1` AS `codigo_coheF1`,`form1`.`codigo_expresiF1` AS `codigo_expresiF1`,`form1`.`codigo_conflicF1` AS `codigo_conflicF1` from `form1` where (`form1`.`gradoF1` = 7) order by `form1`.`seccionF1`,`form1`.`sexoF1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form1_v8`
--

/*!50001 DROP TABLE IF EXISTS `form1_v8`*/;
/*!50001 DROP VIEW IF EXISTS `form1_v8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form1_v8` AS select `form1`.`id_f1` AS `id_f1`,`form1`.`nombreestF1` AS `nombreestF1`,`form1`.`apellidoestF1` AS `apellidoestF1`,`form1`.`codigoescF1` AS `codigoescF1`,`form1`.`gradoF1` AS `gradoF1`,`form1`.`seccionF1` AS `seccionF1`,`form1`.`sexoF1` AS `sexoF1`,`form1`.`edadF1` AS `edadF1`,`form1`.`fechaentrevistaF1` AS `fechaentrevistaF1`,`form1`.`item1F1` AS `item1F1`,`form1`.`item2F1` AS `item2F1`,`form1`.`item3F1` AS `item3F1`,`form1`.`item4F1` AS `item4F1`,`form1`.`item5F1` AS `item5F1`,`form1`.`item6F1` AS `item6F1`,`form1`.`item7F1` AS `item7F1`,`form1`.`item8F1` AS `item8F1`,`form1`.`item9F1` AS `item9F1`,`form1`.`item10F1` AS `item10F1`,`form1`.`item11F1` AS `item11F1`,`form1`.`item12F1` AS `item12F1`,`form1`.`item13F1` AS `item13F1`,`form1`.`item14F1` AS `item14F1`,`form1`.`item15F1` AS `item15F1`,`form1`.`item16F1` AS `item16F1`,`form1`.`item17F1` AS `item17F1`,`form1`.`item18F1` AS `item18F1`,`form1`.`item19F1` AS `item19F1`,`form1`.`item20F1` AS `item20F1`,`form1`.`item21F1` AS `item21F1`,`form1`.`item22F1` AS `item22F1`,`form1`.`item23F1` AS `item23F1`,`form1`.`item24F1` AS `item24F1`,`form1`.`item25F1` AS `item25F1`,`form1`.`item26F1` AS `item26F1`,`form1`.`item27F1` AS `item27F1`,`form1`.`puntajeF1` AS `puntajeF1`,`form1`.`cohesionF1` AS `cohesionF1`,`form1`.`expresividadF1` AS `expresividadF1`,`form1`.`conflictoF1` AS `conflictoF1`,`form1`.`nivel_coheF1` AS `nivel_coheF1`,`form1`.`nivel_expresiF1` AS `nivel_expresiF1`,`form1`.`nivel_conflicF1` AS `nivel_conflicF1`,`form1`.`codigo_coheF1` AS `codigo_coheF1`,`form1`.`codigo_expresiF1` AS `codigo_expresiF1`,`form1`.`codigo_conflicF1` AS `codigo_conflicF1` from `form1` where (`form1`.`gradoF1` = 8) order by `form1`.`seccionF1`,`form1`.`sexoF1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form2_7pdf`
--

/*!50001 DROP TABLE IF EXISTS `form2_7pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form2_7pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form2_7pdf` AS select `form2`.`id_f2` AS `id_f2`,`form2`.`nombreestF2` AS `nombreestF2`,`form2`.`apellidoestF2` AS `apellidoestF2`,`form2`.`gradoF2` AS `gradoF2`,`form2`.`seccionF2` AS `seccionF2`,`form2`.`edadF2` AS `edadF2`,`form2`.`N_prointeescF2` AS `N_prointeescF2`,`form2`.`N_rendiescF2` AS `N_rendiescF2`,`form2`.`N_expacademicaF2` AS `N_expacademicaF2` from `form2` where (`form2`.`gradoF2` = 7) order by `form2`.`seccionF2` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form2_8pdf`
--

/*!50001 DROP TABLE IF EXISTS `form2_8pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form2_8pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form2_8pdf` AS select `form2`.`id_f2` AS `id_f2`,`form2`.`nombreestF2` AS `nombreestF2`,`form2`.`apellidoestF2` AS `apellidoestF2`,`form2`.`gradoF2` AS `gradoF2`,`form2`.`seccionF2` AS `seccionF2`,`form2`.`edadF2` AS `edadF2`,`form2`.`N_prointeescF2` AS `N_prointeescF2`,`form2`.`N_rendiescF2` AS `N_rendiescF2`,`form2`.`N_expacademicaF2` AS `N_expacademicaF2` from `form2` where (`form2`.`gradoF2` = 8) order by `form2`.`seccionF2` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form2_9pdf`
--

/*!50001 DROP TABLE IF EXISTS `form2_9pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form2_9pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form2_9pdf` AS select `form2`.`id_f2` AS `id_f2`,`form2`.`nombreestF2` AS `nombreestF2`,`form2`.`apellidoestF2` AS `apellidoestF2`,`form2`.`gradoF2` AS `gradoF2`,`form2`.`seccionF2` AS `seccionF2`,`form2`.`edadF2` AS `edadF2`,`form2`.`N_prointeescF2` AS `N_prointeescF2`,`form2`.`N_rendiescF2` AS `N_rendiescF2`,`form2`.`N_expacademicaF2` AS `N_expacademicaF2` from `form2` where (`form2`.`gradoF2` = 9) order by `form2`.`seccionF2` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form3_7pdf`
--

/*!50001 DROP TABLE IF EXISTS `form3_7pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form3_7pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form3_7pdf` AS select `form3`.`id_f3` AS `id_f3`,`form3`.`nombreestF3` AS `nombreestF3`,`form3`.`apellidoestF3` AS `apellidoestF3`,`form3`.`gradoF3` AS `gradoF3`,`form3`.`seccionF3` AS `seccionF3`,`form3`.`edadF3` AS `edadF3`,`form3`.`N_manifisicaF3` AS `N_manifisicaF3`,`form3`.`N_maniverbalF3` AS `N_maniverbalF3`,`form3`.`N_relacionalF3` AS `N_relacionalF3`,`form3`.`S_victimizadorHF3` AS `S_victimizadorHF3`,`form3`.`S_victimizadorMF3` AS `S_victimizadorMF3`,`form3`.`S_victimizadorCF3` AS `S_victimizadorCF3`,`form3`.`N_frecuenciaF3` AS `N_frecuenciaF3`,`form3`.`sospechaF3` AS `sospechaF3` from `form3` where (`form3`.`gradoF3` = 7) order by `form3`.`seccionF3` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form3_8pdf`
--

/*!50001 DROP TABLE IF EXISTS `form3_8pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form3_8pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form3_8pdf` AS select `form3`.`id_f3` AS `id_f3`,`form3`.`nombreestF3` AS `nombreestF3`,`form3`.`apellidoestF3` AS `apellidoestF3`,`form3`.`gradoF3` AS `gradoF3`,`form3`.`seccionF3` AS `seccionF3`,`form3`.`edadF3` AS `edadF3`,`form3`.`N_manifisicaF3` AS `N_manifisicaF3`,`form3`.`N_maniverbalF3` AS `N_maniverbalF3`,`form3`.`N_relacionalF3` AS `N_relacionalF3`,`form3`.`S_victimizadorHF3` AS `S_victimizadorHF3`,`form3`.`S_victimizadorMF3` AS `S_victimizadorMF3`,`form3`.`S_victimizadorCF3` AS `S_victimizadorCF3`,`form3`.`N_frecuenciaF3` AS `N_frecuenciaF3`,`form3`.`sospechaF3` AS `sospechaF3` from `form3` where (`form3`.`gradoF3` = 8) order by `form3`.`seccionF3` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form3_9pdf`
--

/*!50001 DROP TABLE IF EXISTS `form3_9pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form3_9pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form3_9pdf` AS select `form3`.`id_f3` AS `id_f3`,`form3`.`nombreestF3` AS `nombreestF3`,`form3`.`apellidoestF3` AS `apellidoestF3`,`form3`.`gradoF3` AS `gradoF3`,`form3`.`seccionF3` AS `seccionF3`,`form3`.`edadF3` AS `edadF3`,`form3`.`N_manifisicaF3` AS `N_manifisicaF3`,`form3`.`N_maniverbalF3` AS `N_maniverbalF3`,`form3`.`N_relacionalF3` AS `N_relacionalF3`,`form3`.`S_victimizadorHF3` AS `S_victimizadorHF3`,`form3`.`S_victimizadorMF3` AS `S_victimizadorMF3`,`form3`.`S_victimizadorCF3` AS `S_victimizadorCF3`,`form3`.`N_frecuenciaF3` AS `N_frecuenciaF3`,`form3`.`sospechaF3` AS `sospechaF3` from `form3` where (`form3`.`gradoF3` = 9) order by `form3`.`seccionF3` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form3_va`
--

/*!50001 DROP TABLE IF EXISTS `form3_va`*/;
/*!50001 DROP VIEW IF EXISTS `form3_va`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form3_va` AS select `form3`.`nombreestF3` AS `nombreestF3`,`form3`.`apellidoestF3` AS `apellidoestF3`,`form3`.`codigoescF3` AS `codigoescF3`,`form3`.`gradoF3` AS `gradoF3`,`form3`.`seccionF3` AS `seccionF3`,`form3`.`sexoF3` AS `sexoF3`,`form3`.`edadF3` AS `edadF3`,`form3`.`fechaentrevistaF3` AS `fechaentrevistaF3`,`form3`.`P_manifisicaF3` AS `P_manifisicaF3`,`form3`.`P_maniverbalF3` AS `P_maniverbalF3`,`form3`.`P_vicrelacionalF3` AS `P_vicrelacionalF3`,`form3`.`P_item21F3` AS `P_item21F3`,`form3`.`P_item22F3` AS `P_item22F3`,`form3`.`N_manifisicaF3` AS `N_manifisicaF3`,`form3`.`N_maniverbalF3` AS `N_maniverbalF3`,`form3`.`N_relacionalF3` AS `N_relacionalF3`,`form3`.`S_victimizadorHF3` AS `S_victimizadorHF3`,`form3`.`S_victimizadorMF3` AS `S_victimizadorMF3`,`form3`.`S_victimizadorCF3` AS `S_victimizadorCF3`,`form3`.`N_frecuenciaF3` AS `N_frecuenciaF3`,`form3`.`C_frecuenciaF3` AS `C_frecuenciaF3`,`form3`.`sospechaF3` AS `sospechaF3` from `form3` order by `form3`.`fechaentrevistaF3` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form4_7pdf`
--

/*!50001 DROP TABLE IF EXISTS `form4_7pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form4_7pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form4_7pdf` AS select `form4`.`id_f4` AS `id_f4`,`form4`.`nombreestF4` AS `nombreestF4`,`form4`.`apellidoestF4` AS `apellidoestF4`,`form4`.`gradoF4` AS `gradoF4`,`form4`.`seccionF4` AS `seccionF4`,`form4`.`edadF4` AS `edadF4`,`form4`.`N_positivaautoInsF4` AS `N_positivaautoInsF4`,`form4`.`N_positivatransnormasF4` AS `N_positivatransnormasF4` from `form4` where (`form4`.`gradoF4` = 7) order by `form4`.`seccionF4` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form4_8pdf`
--

/*!50001 DROP TABLE IF EXISTS `form4_8pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form4_8pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form4_8pdf` AS select `form4`.`id_f4` AS `id_f4`,`form4`.`nombreestF4` AS `nombreestF4`,`form4`.`apellidoestF4` AS `apellidoestF4`,`form4`.`gradoF4` AS `gradoF4`,`form4`.`seccionF4` AS `seccionF4`,`form4`.`edadF4` AS `edadF4`,`form4`.`N_positivaautoInsF4` AS `N_positivaautoInsF4`,`form4`.`N_positivatransnormasF4` AS `N_positivatransnormasF4` from `form4` where (`form4`.`gradoF4` = 8) order by `form4`.`seccionF4` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form4_9pdf`
--

/*!50001 DROP TABLE IF EXISTS `form4_9pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form4_9pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form4_9pdf` AS select `form4`.`id_f4` AS `id_f4`,`form4`.`nombreestF4` AS `nombreestF4`,`form4`.`apellidoestF4` AS `apellidoestF4`,`form4`.`gradoF4` AS `gradoF4`,`form4`.`seccionF4` AS `seccionF4`,`form4`.`edadF4` AS `edadF4`,`form4`.`N_positivaautoInsF4` AS `N_positivaautoInsF4`,`form4`.`N_positivatransnormasF4` AS `N_positivatransnormasF4` from `form4` where (`form4`.`gradoF4` = 9) order by `form4`.`seccionF4` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form4_va`
--

/*!50001 DROP TABLE IF EXISTS `form4_va`*/;
/*!50001 DROP VIEW IF EXISTS `form4_va`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form4_va` AS select `form4`.`nombreestF4` AS `nombreestF4`,`form4`.`apellidoestF4` AS `apellidoestF4`,`form4`.`codigoescF4` AS `codigoescF4`,`form4`.`gradoF4` AS `gradoF4`,`form4`.`seccionF4` AS `seccionF4`,`form4`.`sexoF4` AS `sexoF4`,`form4`.`edadF4` AS `edadF4`,`form4`.`fechaentrevistaF4` AS `fechaentrevistaF4`,`form4`.`P_positivaautoF4` AS `P_positivaautoF4`,`form4`.`P_positivatransF4` AS `P_positivatransF4`,`form4`.`N_positivaautoInsF4` AS `N_positivaautoInsF4`,`form4`.`N_positivatransnormasF4` AS `N_positivatransnormasF4` from `form4` order by `form4`.`fechaentrevistaF4` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form6_7pdf`
--

/*!50001 DROP TABLE IF EXISTS `form6_7pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form6_7pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form6_7pdf` AS select `form6`.`id_f6` AS `id_f6`,`form6`.`nombreestF6` AS `nombreestF6`,`form6`.`apellidoestF6` AS `apellidoestF6`,`form6`.`gradoF6` AS `gradoF6`,`form6`.`seccionF6` AS `seccionF6`,`form6`.`edadF6` AS `edadF6`,`form6`.`N_manipuraF6` AS `N_manipuraF6`,`form6`.`N_manireactivaF6` AS `N_manireactivaF6`,`form6`.`N_maniinstrumentalF6` AS `N_maniinstrumentalF6`,`form6`.`N_relapuraF6` AS `N_relapuraF6`,`form6`.`N_relareactivaF6` AS `N_relareactivaF6`,`form6`.`N_relainstrumentalF6` AS `N_relainstrumentalF6` from `form6` where (`form6`.`gradoF6` = 7) order by `form6`.`seccionF6` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form6_8pdf`
--

/*!50001 DROP TABLE IF EXISTS `form6_8pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form6_8pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form6_8pdf` AS select `form6`.`id_f6` AS `id_f6`,`form6`.`nombreestF6` AS `nombreestF6`,`form6`.`apellidoestF6` AS `apellidoestF6`,`form6`.`gradoF6` AS `gradoF6`,`form6`.`seccionF6` AS `seccionF6`,`form6`.`edadF6` AS `edadF6`,`form6`.`N_manipuraF6` AS `N_manipuraF6`,`form6`.`N_manireactivaF6` AS `N_manireactivaF6`,`form6`.`N_maniinstrumentalF6` AS `N_maniinstrumentalF6`,`form6`.`N_relapuraF6` AS `N_relapuraF6`,`form6`.`N_relareactivaF6` AS `N_relareactivaF6`,`form6`.`N_relainstrumentalF6` AS `N_relainstrumentalF6` from `form6` where (`form6`.`gradoF6` = 8) order by `form6`.`seccionF6` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form6_9pdf`
--

/*!50001 DROP TABLE IF EXISTS `form6_9pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form6_9pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form6_9pdf` AS select `form6`.`id_f6` AS `id_f6`,`form6`.`nombreestF6` AS `nombreestF6`,`form6`.`apellidoestF6` AS `apellidoestF6`,`form6`.`gradoF6` AS `gradoF6`,`form6`.`seccionF6` AS `seccionF6`,`form6`.`edadF6` AS `edadF6`,`form6`.`N_manipuraF6` AS `N_manipuraF6`,`form6`.`N_manireactivaF6` AS `N_manireactivaF6`,`form6`.`N_maniinstrumentalF6` AS `N_maniinstrumentalF6`,`form6`.`N_relapuraF6` AS `N_relapuraF6`,`form6`.`N_relareactivaF6` AS `N_relareactivaF6`,`form6`.`N_relainstrumentalF6` AS `N_relainstrumentalF6` from `form6` where (`form6`.`gradoF6` = 9) order by `form6`.`seccionF6` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form6_va`
--

/*!50001 DROP TABLE IF EXISTS `form6_va`*/;
/*!50001 DROP VIEW IF EXISTS `form6_va`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form6_va` AS select `form6`.`nombreestF6` AS `nombreestF6`,`form6`.`apellidoestF6` AS `apellidoestF6`,`form6`.`codigoescF6` AS `codigoescF6`,`form6`.`gradoF6` AS `gradoF6`,`form6`.`seccionF6` AS `seccionF6`,`form6`.`sexoF6` AS `sexoF6`,`form6`.`edadF6` AS `edadF6`,`form6`.`fechaentrevistaF6` AS `fechaentrevistaF6`,`form6`.`P_manipuraF6` AS `P_manipuraF6`,`form6`.`P_manireactivaF6` AS `P_manireactivaF6`,`form6`.`P_maniinstrumentalF6` AS `P_maniinstrumentalF6`,`form6`.`P_relapuraF6` AS `P_relapuraF6`,`form6`.`P_relareactivaF6` AS `P_relareactivaF6`,`form6`.`P_relainstrumentalF6` AS `P_relainstrumentalF6`,`form6`.`N_manipuraF6` AS `N_manipuraF6`,`form6`.`N_manireactivaF6` AS `N_manireactivaF6`,`form6`.`N_maniinstrumentalF6` AS `N_maniinstrumentalF6`,`form6`.`N_relapuraF6` AS `N_relapuraF6`,`form6`.`N_relareactivaF6` AS `N_relareactivaF6`,`form6`.`N_relainstrumentalF6` AS `N_relainstrumentalF6` from `form6` order by `form6`.`fechaentrevistaF6` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form7_7pdf`
--

/*!50001 DROP TABLE IF EXISTS `form7_7pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form7_7pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form7_7pdf` AS select `form7`.`id_f7` AS `id_f7`,`form7`.`nombreestF7` AS `nombreestF7`,`form7`.`apellidoestF7` AS `apellidoestF7`,`form7`.`gradoF7` AS `gradoF7`,`form7`.`seccionF7` AS `seccionF7`,`form7`.`edadF7` AS `edadF7`,`form7`.`N_sintomadepreF7` AS `N_sintomadepreF7` from `form7` where (`form7`.`gradoF7` = 7) order by `form7`.`seccionF7` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form7_8pdf`
--

/*!50001 DROP TABLE IF EXISTS `form7_8pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form7_8pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form7_8pdf` AS select `form7`.`id_f7` AS `id_f7`,`form7`.`nombreestF7` AS `nombreestF7`,`form7`.`apellidoestF7` AS `apellidoestF7`,`form7`.`gradoF7` AS `gradoF7`,`form7`.`seccionF7` AS `seccionF7`,`form7`.`edadF7` AS `edadF7`,`form7`.`N_sintomadepreF7` AS `N_sintomadepreF7` from `form7` where (`form7`.`gradoF7` = 8) order by `form7`.`seccionF7` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form7_9pdf`
--

/*!50001 DROP TABLE IF EXISTS `form7_9pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form7_9pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form7_9pdf` AS select `form7`.`id_f7` AS `id_f7`,`form7`.`nombreestF7` AS `nombreestF7`,`form7`.`apellidoestF7` AS `apellidoestF7`,`form7`.`gradoF7` AS `gradoF7`,`form7`.`seccionF7` AS `seccionF7`,`form7`.`edadF7` AS `edadF7`,`form7`.`N_sintomadepreF7` AS `N_sintomadepreF7` from `form7` where (`form7`.`gradoF7` = 9) order by `form7`.`seccionF7` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form7_va`
--

/*!50001 DROP TABLE IF EXISTS `form7_va`*/;
/*!50001 DROP VIEW IF EXISTS `form7_va`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form7_va` AS select `form7`.`nombreestF7` AS `nombreestF7`,`form7`.`apellidoestF7` AS `apellidoestF7`,`form7`.`codigoescF7` AS `codigoescF7`,`form7`.`gradoF7` AS `gradoF7`,`form7`.`seccionF7` AS `seccionF7`,`form7`.`sexoF7` AS `sexoF7`,`form7`.`edadF7` AS `edadF7`,`form7`.`fechaentrevistaF7` AS `fechaentrevistaF7`,`form7`.`descuentoF7` AS `descuentoF7`,`form7`.`P_animodepreF7` AS `P_animodepreF7`,`form7`.`N_sintomadepreF7` AS `N_sintomadepreF7` from `form7` order by `form7`.`fechaentrevistaF7` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form8_7pdf`
--

/*!50001 DROP TABLE IF EXISTS `form8_7pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form8_7pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form8_7pdf` AS select `form8`.`id_f8` AS `id_f8`,`form8`.`nombreestF8` AS `nombreestF8`,`form8`.`apellidoestF8` AS `apellidoestF8`,`form8`.`gradoF8` AS `gradoF8`,`form8`.`seccionF8` AS `seccionF8`,`form8`.`edadF8` AS `edadF8`,`form8`.`N_malkesslerF8` AS `N_malkesslerF8` from `form8` where (`form8`.`gradoF8` = 7) order by `form8`.`seccionF8` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form8_8pdf`
--

/*!50001 DROP TABLE IF EXISTS `form8_8pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form8_8pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form8_8pdf` AS select `form8`.`id_f8` AS `id_f8`,`form8`.`nombreestF8` AS `nombreestF8`,`form8`.`apellidoestF8` AS `apellidoestF8`,`form8`.`gradoF8` AS `gradoF8`,`form8`.`seccionF8` AS `seccionF8`,`form8`.`edadF8` AS `edadF8`,`form8`.`N_malkesslerF8` AS `N_malkesslerF8` from `form8` where (`form8`.`gradoF8` = 8) order by `form8`.`seccionF8` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form8_9pdf`
--

/*!50001 DROP TABLE IF EXISTS `form8_9pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form8_9pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form8_9pdf` AS select `form8`.`id_f8` AS `id_f8`,`form8`.`nombreestF8` AS `nombreestF8`,`form8`.`apellidoestF8` AS `apellidoestF8`,`form8`.`gradoF8` AS `gradoF8`,`form8`.`seccionF8` AS `seccionF8`,`form8`.`edadF8` AS `edadF8`,`form8`.`N_malkesslerF8` AS `N_malkesslerF8` from `form8` where (`form8`.`gradoF8` = 9) order by `form8`.`seccionF8` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form8_va`
--

/*!50001 DROP TABLE IF EXISTS `form8_va`*/;
/*!50001 DROP VIEW IF EXISTS `form8_va`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form8_va` AS select `form8`.`nombreestF8` AS `nombreestF8`,`form8`.`apellidoestF8` AS `apellidoestF8`,`form8`.`codigoescF8` AS `codigoescF8`,`form8`.`gradoF8` AS `gradoF8`,`form8`.`seccionF8` AS `seccionF8`,`form8`.`sexoF8` AS `sexoF8`,`form8`.`edadF8` AS `edadF8`,`form8`.`fechaentrevistaF8` AS `fechaentrevistaF8`,`form8`.`P_malkesslerF8` AS `P_malkesslerF8`,`form8`.`N_malkesslerF8` AS `N_malkesslerF8` from `form8` order by `form8`.`fechaentrevistaF8` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form9_7pdf`
--

/*!50001 DROP TABLE IF EXISTS `form9_7pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form9_7pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form9_7pdf` AS select `form9`.`id_f9` AS `id_f9`,`form9`.`nombreestF9` AS `nombreestF9`,`form9`.`apellidoestF9` AS `apellidoestF9`,`form9`.`gradoF9` AS `gradoF9`,`form9`.`seccionF9` AS `seccionF9`,`form9`.`edadF9` AS `edadF9`,`form9`.`N_ideasuicidaF9` AS `N_ideasuicidaF9` from `form9` where (`form9`.`gradoF9` = 7) order by `form9`.`seccionF9` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form9_8pdf`
--

/*!50001 DROP TABLE IF EXISTS `form9_8pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form9_8pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form9_8pdf` AS select `form9`.`id_f9` AS `id_f9`,`form9`.`nombreestF9` AS `nombreestF9`,`form9`.`apellidoestF9` AS `apellidoestF9`,`form9`.`gradoF9` AS `gradoF9`,`form9`.`seccionF9` AS `seccionF9`,`form9`.`edadF9` AS `edadF9`,`form9`.`N_ideasuicidaF9` AS `N_ideasuicidaF9` from `form9` where (`form9`.`gradoF9` = 8) order by `form9`.`seccionF9` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form9_9pdf`
--

/*!50001 DROP TABLE IF EXISTS `form9_9pdf`*/;
/*!50001 DROP VIEW IF EXISTS `form9_9pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form9_9pdf` AS select `form9`.`id_f9` AS `id_f9`,`form9`.`nombreestF9` AS `nombreestF9`,`form9`.`apellidoestF9` AS `apellidoestF9`,`form9`.`gradoF9` AS `gradoF9`,`form9`.`seccionF9` AS `seccionF9`,`form9`.`edadF9` AS `edadF9`,`form9`.`N_ideasuicidaF9` AS `N_ideasuicidaF9` from `form9` where (`form9`.`gradoF9` = 9) order by `form9`.`seccionF9` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `form9_va`
--

/*!50001 DROP TABLE IF EXISTS `form9_va`*/;
/*!50001 DROP VIEW IF EXISTS `form9_va`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form9_va` AS select `form9`.`nombreestF9` AS `nombreestF9`,`form9`.`apellidoestF9` AS `apellidoestF9`,`form9`.`codigoescF9` AS `codigoescF9`,`form9`.`gradoF9` AS `gradoF9`,`form9`.`seccionF9` AS `seccionF9`,`form9`.`sexoF9` AS `sexoF9`,`form9`.`edadF9` AS `edadF9`,`form9`.`fechaentrevistaF9` AS `fechaentrevistaF9`,`form9`.`P_ideasuicidaF9` AS `P_ideasuicidaF9`,`form9`.`N_ideasuicidaF9` AS `N_ideasuicidaF9` from `form9` order by `form9`.`fechaentrevistaF9` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `institucionpdf`
--

/*!50001 DROP TABLE IF EXISTS `institucionpdf`*/;
/*!50001 DROP VIEW IF EXISTS `institucionpdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `institucionpdf` AS select `institucion`.`cod_institucion` AS `cod_institucion`,`institucion`.`nombre_institucion` AS `nombre_institucion`,`institucion`.`departamento` AS `departamento`,`institucion`.`municipio` AS `municipio`,`institucion`.`direccion_inst` AS `direccion_inst`,`institucion`.`canton` AS `canton`,`institucion`.`caserio` AS `caserio` from `institucion` where 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-21 15:26:47
