-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: aquaweb
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `exposicion_solar`
--

DROP TABLE IF EXISTS `exposicion_solar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exposicion_solar` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exposicion_solar`
--

LOCK TABLES `exposicion_solar` WRITE;
/*!40000 ALTER TABLE `exposicion_solar` DISABLE KEYS */;
INSERT INTO `exposicion_solar` VALUES (1,'BAJA','1','2017-07-02 15:36:07','2017-07-02 15:36:07'),(2,'BAJA - MEDIA','1','2017-07-02 15:36:07','2017-07-02 15:36:07'),(3,'MEDIA','1','2017-07-02 15:36:07','2017-07-02 15:36:07'),(4,'MEDIA - ALTA','1','2017-07-02 15:36:07','2017-07-02 15:36:07'),(5,'ALTA','1','2017-07-02 15:36:07','2017-07-02 15:36:07');
/*!40000 ALTER TABLE `exposicion_solar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria`
--

DROP TABLE IF EXISTS `galeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `planta_id` int(11) DEFAULT NULL,
  `pez_id` int(11) DEFAULT NULL,
  `codigo` varchar(100) NOT NULL DEFAULT 'UUID()',
  `extension` varchar(45) NOT NULL DEFAULT 'jpg',
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `GALERIA_FK1_idx` (`planta_id`),
  KEY `GALERIA_FK2_idx` (`pez_id`),
  KEY `GALERIA_FK3_idx` (`usuario_id`),
  CONSTRAINT `GALERIA_FK1` FOREIGN KEY (`planta_id`) REFERENCES `planta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `GALERIA_FK2` FOREIGN KEY (`pez_id`) REFERENCES `pez` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `GALERIA_FK3` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria`
--

LOCK TABLES `galeria` WRITE;
/*!40000 ALTER TABLE `galeria` DISABLE KEYS */;
INSERT INTO `galeria` VALUES (1,1,1,NULL,'d66d3f0c-4838-4089-844e-44e757b37ab1','jpg',NULL,NULL,'1','2017-04-21 20:28:45','2017-04-21 20:28:45'),(2,1,1,NULL,'ef808cc6-c84d-4e3f-b934-04d09c19081c','jpg',NULL,NULL,'1','2017-04-21 20:28:58','2017-04-21 20:28:58'),(3,1,2,NULL,'685344db-ef98-41b7-957e-00091def1115','jpg',NULL,NULL,'1','2017-04-21 20:30:37','2017-04-21 20:30:37'),(4,1,2,NULL,'8d84af05-ab9e-4d06-bb7c-12b420a7e2c8','jpg',NULL,NULL,'1','2017-04-21 20:30:38','2017-04-21 20:30:38'),(5,1,3,NULL,'dab88922-cb5b-4cee-92e9-502ca7831f48','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(6,1,4,NULL,'3f8fb1be-5759-4004-a84d-ab380a3d181d','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(7,1,5,NULL,'95825654-e282-45d4-8f6b-47038ad55d69','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(8,1,6,NULL,'fcd24f2b-737e-45c6-94fc-c1abf8f40757','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(9,1,6,NULL,'46ac23f6-ce1b-4f14-b4cc-18095d31f083','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(10,1,7,NULL,'480ea7db-9703-4be5-b29c-050debec3ab1','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(11,1,8,NULL,'17f3032e-83ee-460e-bbd6-cac6ebed6b23','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(12,1,8,NULL,'3cfc458c-2d0e-4fa8-8345-a52767a4b1c3','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(13,1,8,NULL,'13920ed9-2dc6-4dc8-959f-c19ba5a0a083','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(14,1,9,NULL,'16a6eb94-fa4d-4a5f-aed0-46fa33045571','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(15,1,10,NULL,'37edaffd-aecd-4ed0-9f6e-a80965149cd0','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(16,1,10,NULL,'5dab7d41-8f09-403d-9e1c-5f6bb93475bd','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(17,1,11,NULL,'c7ba088d-c040-4657-baca-f0562bc5da2e','jpg',NULL,NULL,'1','2017-04-21 20:58:38','2017-04-21 20:58:38'),(18,1,11,NULL,'413bb931-3ce9-411b-9fdb-0817fb2756a7','jpg',NULL,NULL,'1','2017-04-21 20:58:39','2017-04-21 20:58:39'),(29,1,NULL,1,'ab4288e5-bc6e-41f7-80c8-4fca6c752435','jpg',NULL,NULL,'1','2017-04-21 21:24:45','2017-04-21 21:24:45'),(30,1,NULL,2,'cb333ccf-3039-4863-898f-4fec7aa721f9','jpg',NULL,NULL,'1','2017-04-21 21:24:45','2017-04-21 21:24:45'),(31,1,NULL,3,'82c297a1-4cc9-4109-821c-09d07d13f32a','jpg',NULL,NULL,'1','2017-04-21 21:24:45','2017-04-21 21:24:45'),(32,1,NULL,4,'30d44e1d-5814-4ad0-ba6c-a55c2afa3a6b','jpg',NULL,NULL,'1','2017-04-21 21:24:45','2017-04-21 21:24:45'),(33,1,NULL,6,'0e603932-e5e4-4d03-a8a9-5217461f98e8','jpg','Camaron de Rio','Camaron de Rio','1','2017-04-21 21:24:45','2017-04-21 21:24:45');
/*!40000 ALTER TABLE `galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permiso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `slug_UNIQUE` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso_tusuario`
--

DROP TABLE IF EXISTS `permiso_tusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permiso_tusuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tusuario_id` int(11) NOT NULL,
  `permiso_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `PERMISO_ROL_FK1_idx` (`tusuario_id`),
  KEY `PERMISO_ROL_FK0_idx` (`permiso_id`),
  CONSTRAINT `PERMISO_ROL_FK0` FOREIGN KEY (`permiso_id`) REFERENCES `permiso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PERMISO_ROL_FK1` FOREIGN KEY (`tusuario_id`) REFERENCES `tipo_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso_tusuario`
--

LOCK TABLES `permiso_tusuario` WRITE;
/*!40000 ALTER TABLE `permiso_tusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `permiso_tusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pez`
--

DROP TABLE IF EXISTS `pez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pez` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `tacceso_id` enum('1','2','3') NOT NULL DEFAULT '3',
  `nombre` varchar(100) NOT NULL,
  `temperatura_vital_min` int(11) NOT NULL,
  `temperatura_vital_max` int(11) NOT NULL,
  `temperatura_optima_min` int(11) NOT NULL,
  `temperatura_optima_max` int(11) NOT NULL,
  `nitrogeno_nat` double NOT NULL,
  `nitrito` double NOT NULL,
  `oxigeno` int(11) NOT NULL,
  `porcentaje_proteina_min` int(11) NOT NULL,
  `porcentaje_proteina_max` int(11) NOT NULL,
  `crecimiento_peso` int(11) NOT NULL,
  `crecimiento_tiempo` int(11) NOT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `PEZ_FK01_idx` (`usuario_id`),
  KEY `PEZ_FK02_idx` (`tacceso_id`),
  CONSTRAINT `PEZ_FK01` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PEZ_FK02` FOREIGN KEY (`tacceso_id`) REFERENCES `tipo_acceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pez`
--

LOCK TABLES `pez` WRITE;
/*!40000 ALTER TABLE `pez` DISABLE KEYS */;
INSERT INTO `pez` VALUES (1,3,'3','CARPA COMÚN',4,34,25,30,1,1,4,30,38,600,10,'1','2017-04-21 20:13:06','2017-07-29 17:29:36'),(2,3,'3','TILAPIA DEL NILO',14,36,27,30,2,1,4,28,32,600,7,'1','2017-04-21 20:14:08','2017-04-21 20:14:08'),(3,3,'3','BAGRE DEL CANAL',5,34,25,30,1,1,3,25,36,400,8,'1','2017-04-21 20:15:23','2017-04-21 20:15:23'),(4,3,'3','TRUCHA ARCO IRIS',10,18,14,16,0.5,0.3,6,42,42,1000,15,'1','2017-04-21 20:16:14','2017-04-21 20:16:14'),(6,3,'3','CAMARON DE AGUA DULCE',18,34,26,29,0.5,2,3,35,35,30,4,'1','2017-04-21 20:18:09','2017-04-21 20:18:09'),(7,1,'3','BESUCON',1,1,1,1,1,1,1,1,1,1,1,'1','2017-07-08 16:59:51','2017-07-08 16:59:51'),(11,3,'3','CAMARON DE AGUA DULCE',18,34,26,29,1,2,3,35,35,30,4,'2','2017-07-21 17:04:31','2017-07-21 17:04:31');
/*!40000 ALTER TABLE `pez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planta`
--

DROP TABLE IF EXISTS `planta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `tacceso_id` enum('1','2','3') NOT NULL DEFAULT '3',
  `nombre` varchar(100) NOT NULL,
  `ph_min` double NOT NULL,
  `ph_max` double NOT NULL,
  `planta_m2_min` int(11) NOT NULL,
  `planta_m2_max` int(11) NOT NULL,
  `tiempo_germinacion_min` int(11) NOT NULL,
  `tiempo_germinacion_max` int(11) NOT NULL,
  `tiempo_crecimiento_min` int(11) NOT NULL,
  `tiempo_crecimiento_max` int(11) NOT NULL,
  `temperatura_min` int(11) NOT NULL,
  `temperatura_max` int(11) NOT NULL,
  `solar_id` int(11) NOT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `PLANTA_FK01_idx` (`usuario_id`),
  KEY `PLANTA_FK02_idx` (`solar_id`),
  KEY `PLANTA_FK03_idx` (`tacceso_id`),
  CONSTRAINT `PLANTA_FK01` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PLANTA_FK02` FOREIGN KEY (`solar_id`) REFERENCES `exposicion_solar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PLANTA_FK03` FOREIGN KEY (`tacceso_id`) REFERENCES `tipo_acceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planta`
--

LOCK TABLES `planta` WRITE;
/*!40000 ALTER TABLE `planta` DISABLE KEYS */;
INSERT INTO `planta` VALUES (1,3,'3','ACELGAS',6,7.5,15,20,4,5,4,5,15,25,1,'1','2017-04-21 16:48:11','2017-07-29 18:18:49'),(2,3,'3','ALBAHACA',5.5,6.5,8,40,6,7,5,6,20,25,4,'1','2017-04-21 16:49:25','2017-04-21 16:49:25'),(3,3,'3','BERENJENA',5.5,7,3,5,8,10,12,16,15,25,5,'1','2017-04-21 16:50:21','2017-07-29 18:21:20'),(4,3,'3','BROCOLI',6,7,3,5,4,7,8,12,10,20,4,'1','2017-04-21 16:51:54','2017-04-21 16:51:54'),(5,3,'3','COLIFLOR',6,6.5,3,5,4,7,8,16,10,20,5,'1','2017-04-21 16:56:02','2017-04-21 16:56:02'),(6,3,'3','LECHUGA',6,7,20,25,3,6,4,5,15,22,2,'1','2017-04-21 19:55:48','2017-07-29 18:20:51'),(7,3,'3','PIMIENTO',5.5,6.5,3,4,8,12,8,12,15,30,5,'1','2017-04-21 19:55:48','2017-04-21 19:55:48'),(8,3,'3','PEPINO',5.5,6.5,2,5,3,6,7,9,18,26,4,'1','2017-04-21 19:55:48','2017-07-29 18:21:01'),(9,3,'3','PEREJIL',6,7,10,15,8,10,3,4,15,25,4,'1','2017-04-21 19:55:48','2017-04-21 19:55:48'),(10,3,'3','REPOLLO',6,7.2,4,8,4,7,6,10,15,20,5,'1','2017-04-21 19:55:48','2017-04-21 19:55:48'),(11,3,'3','TOMATE',5.5,6.5,3,5,4,7,8,12,15,25,4,'1','2017-04-21 19:55:48','2017-07-29 18:21:10'),(13,1,'3','DSF',1,2,3,4,5,6,7,8,9,10,1,'1','2017-07-02 19:30:47','2017-07-02 19:30:47'),(14,1,'3','CILANTRO',10,10,10,10,10,10,10,10,10,10,4,'1','2017-07-03 20:10:20','2017-07-03 20:10:20'),(15,1,'3','1',1,1,1,1,1,1,1,1,1,1,1,'1','2017-07-08 16:00:45','2017-07-08 16:00:45'),(16,1,'3','1',1,1,1,1,1,1,1,1,1,1,3,'1','2017-07-08 16:08:29','2017-07-08 16:08:29'),(17,1,'3','2',2,2,2,2,2,2,2,2,2,2,4,'1','2017-07-08 16:09:00','2017-07-08 16:09:00');
/*!40000 ALTER TABLE `planta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proceso`
--

DROP TABLE IF EXISTS `proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `tacceso_id` enum('1','2','3') NOT NULL DEFAULT '3',
  `codigo` varchar(100) NOT NULL DEFAULT 'UUID()',
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `fecha_implementacion` date DEFAULT NULL,
  `area_cultivo` double DEFAULT NULL,
  `volumen_cultivo` double DEFAULT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `PROCESO_FK0_idx` (`usuario_id`),
  KEY `PROCESO_FK0_idx1` (`tacceso_id`),
  CONSTRAINT `PROCESO_FK0` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso`
--

LOCK TABLES `proceso` WRITE;
/*!40000 ALTER TABLE `proceso` DISABLE KEYS */;
INSERT INTO `proceso` VALUES (1,3,'3','6576e65f-d640-410a-943e-4b75a0e6c409','PROYECTO GENERAL MARK-00','Proyecto de prueba ubicado en las instalaciones de Ceindetec','2017-04-26',10,25,'1','2017-04-26 00:00:28','2017-04-26 00:00:28'),(2,3,'3','cc07e8dd-e5ab-4be4-a2e3-35cbbba615aa','PROYECTO PRUEBA DOS','Proyecto de prueba ubicado en las instalaciones de Ceindetec','2017-04-25',15,20,'2','2017-05-07 00:35:58','2017-05-07 00:35:58');
/*!40000 ALTER TABLE `proceso` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `procesoUUID`
BEFORE INSERT ON `aquaweb`.`proceso`
FOR EACH ROW
  SET NEW.`codigo` = UUID() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proceso_pez`
--

DROP TABLE IF EXISTS `proceso_pez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proceso_pez` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proceso_id` int(11) NOT NULL,
  `pez_id` int(11) NOT NULL,
  `porcentaje` double NOT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `PROCESO_PEZ_FK1_idx` (`proceso_id`),
  KEY `PROCESO_PEZ_FK2_idx` (`pez_id`),
  CONSTRAINT `PROCESO_PEZ_FK1` FOREIGN KEY (`proceso_id`) REFERENCES `proceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PROCESO_PEZ_FK2` FOREIGN KEY (`pez_id`) REFERENCES `pez` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso_pez`
--

LOCK TABLES `proceso_pez` WRITE;
/*!40000 ALTER TABLE `proceso_pez` DISABLE KEYS */;
INSERT INTO `proceso_pez` VALUES (1,1,1,100,'1','2017-04-26 00:01:24','2017-04-26 00:01:24');
/*!40000 ALTER TABLE `proceso_pez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proceso_planta`
--

DROP TABLE IF EXISTS `proceso_planta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proceso_planta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proceso_id` int(11) NOT NULL,
  `planta_id` int(11) NOT NULL,
  `porcentaje` double NOT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `PROCESO_PLANTA_FK1_idx` (`proceso_id`),
  KEY `PROCESO_PLANTA_FK2_idx` (`planta_id`),
  CONSTRAINT `PROCESO_PLANTA_FK1` FOREIGN KEY (`proceso_id`) REFERENCES `proceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PROCESO_PLANTA_FK2` FOREIGN KEY (`planta_id`) REFERENCES `planta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso_planta`
--

LOCK TABLES `proceso_planta` WRITE;
/*!40000 ALTER TABLE `proceso_planta` DISABLE KEYS */;
INSERT INTO `proceso_planta` VALUES (5,1,7,25,'1','2017-04-26 00:03:09','2017-04-26 00:03:09'),(6,1,3,50,'1','2017-04-26 00:03:10','2017-04-26 00:03:10'),(7,1,5,25,'1','2017-04-26 00:03:10','2017-04-26 00:03:10');
/*!40000 ALTER TABLE `proceso_planta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor`
--

DROP TABLE IF EXISTS `sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tsensor_id` int(11) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `valor` double NOT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `captured_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SENSOR_FK1_idx` (`tsensor_id`),
  KEY `SESNOR_FK2_idx` (`proceso_id`),
  CONSTRAINT `SENSOR_FK1` FOREIGN KEY (`tsensor_id`) REFERENCES `tipo_sensor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SESNOR_FK2` FOREIGN KEY (`proceso_id`) REFERENCES `proceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25524 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor`
--

LOCK TABLES `sensor` WRITE;
/*!40000 ALTER TABLE `sensor` DISABLE KEYS */;
INSERT INTO `sensor` VALUES (1,1,1,0.23347619,'1','2017-06-02 22:09:28'),(2,1,1,0.87400293,'1','2017-06-02 22:14:02'),(3,2,1,29.07868,'1','2017-06-02 22:09:28'),(4,2,1,29.584385,'1','2017-06-02 22:14:02'),(5,3,1,26.59441,'1','2017-06-02 22:09:28'),(6,3,1,32.600285,'1','2017-06-02 22:14:02'),(7,4,1,0.44472844,'1','2017-06-02 22:09:28'),(8,4,1,0.24472844,'1','2017-06-02 22:14:02'),(9,5,1,0.434539,'1','2017-06-02 22:09:28'),(10,5,1,0.21966738,'1','2017-06-02 22:14:02'),(11,6,1,0.5,'1','2017-06-02 22:09:28'),(12,6,1,0.3,'1','2017-06-02 22:14:02'),(13,2,1,29.100746,'1','2017-06-03 01:06:59'),(14,3,1,34.96067,'1','2017-06-03 01:06:59'),(15,4,1,0.54472844,'1','2017-06-03 01:06:59'),(16,5,1,0.18682843,'1','2017-06-03 01:07:44'),(17,6,1,0.4,'1','2017-06-03 01:08:29'),(18,1,1,0.10543607,'1','2017-06-03 01:08:29'),(25278,1,1,0.23347619,'1','2017-07-20 22:12:37'),(25279,1,2,0.18601827,'1','2017-07-20 22:12:38'),(25280,2,1,32.867878,'1','2017-07-20 22:12:38'),(25281,2,2,25.577091,'1','2017-07-20 22:12:38'),(25282,3,1,32.005356,'1','2017-07-20 22:12:38'),(25283,3,2,33.74822,'1','2017-07-20 22:12:38'),(25284,4,1,0.34472844,'1','2017-07-20 22:12:38'),(25285,4,2,0.13974907,'1','2017-07-20 22:12:38'),(25286,5,1,0.434539,'1','2017-07-20 22:12:38'),(25287,5,2,0.21966738,'1','2017-07-20 22:12:38'),(25288,6,1,0.047761444,'1','2017-07-20 22:12:38'),(25289,6,2,0.21295679,'1','2017-07-20 22:12:38'),(25290,1,1,0.12060568,'1','2017-07-20 22:13:38'),(25291,1,2,0.10543607,'1','2017-07-20 22:13:38'),(25292,2,1,29.07868,'1','2017-07-20 22:13:38'),(25293,2,2,32.148167,'1','2017-07-20 22:13:38'),(25294,3,1,26.59441,'1','2017-07-20 22:13:38'),(25295,3,2,25.601574,'1','2017-07-20 22:13:38'),(25296,4,1,0.49965164,'1','2017-07-20 22:13:39'),(25297,4,2,0.1419398,'1','2017-07-20 22:13:39'),(25298,5,1,0.34959206,'1','2017-07-20 22:13:39'),(25299,5,2,0.02506377,'1','2017-07-20 22:13:39'),(25300,6,1,0.11762774,'1','2017-07-20 22:13:39'),(25301,6,2,0.15835254,'1','2017-07-20 22:13:39'),(25302,1,1,0.87400293,'1','2017-07-20 22:14:39'),(25303,1,2,0.6561807,'1','2017-07-20 22:14:39'),(25304,2,1,29.584385,'1','2017-07-20 22:14:39'),(25305,2,2,32.2195,'1','2017-07-20 22:14:39'),(25306,3,1,34.265423,'1','2017-07-20 22:14:39'),(25307,3,2,32.600285,'1','2017-07-20 22:14:39'),(25308,4,1,0.42591947,'1','2017-07-20 22:14:39'),(25309,4,2,0.17217736,'1','2017-07-20 22:14:39'),(25310,5,1,0.18682843,'1','2017-07-20 22:14:39'),(25311,5,2,0.20368528,'1','2017-07-20 22:14:39'),(25312,6,1,0.26584995,'1','2017-07-20 22:14:39'),(25313,6,2,0.00418405,'1','2017-07-20 22:14:39'),(25314,1,1,0.03183044,'1','2017-07-20 22:15:39'),(25315,1,2,0.74154973,'1','2017-07-20 22:15:39'),(25316,2,1,29.100746,'1','2017-07-20 22:15:39'),(25317,2,2,34.67016,'1','2017-07-20 22:15:39'),(25318,3,1,34.96067,'1','2017-07-20 22:15:39'),(25319,3,2,34.328255,'1','2017-07-20 22:15:40'),(25320,4,1,0.0065910625,'1','2017-07-20 22:15:40'),(25321,4,2,0.36438137,'1','2017-07-20 22:15:40'),(25322,5,1,0.45459735,'1','2017-07-20 22:15:40'),(25323,5,2,0.030289086,'1','2017-07-20 22:15:40'),(25324,6,1,0.23528549,'1','2017-07-20 22:15:40'),(25325,6,2,0.28006664,'1','2017-07-20 22:15:40'),(25326,1,1,0.63294077,'1','2017-07-20 22:16:40'),(25327,1,2,0.71922106,'1','2017-07-20 22:16:40'),(25328,2,1,32.56877,'1','2017-07-20 22:16:40'),(25329,2,2,33.269196,'1','2017-07-20 22:16:40'),(25330,3,1,32.378048,'1','2017-07-20 22:16:40'),(25331,3,2,32.13333,'1','2017-07-20 22:16:40'),(25332,4,1,0.061778344,'1','2017-07-20 22:16:40'),(25333,4,2,0.42130113,'1','2017-07-20 22:16:40'),(25334,5,1,0.032830425,'1','2017-07-20 22:16:40'),(25335,5,2,0.29174766,'1','2017-07-20 22:16:40'),(25336,6,1,0.0835276,'1','2017-07-20 22:16:40'),(25337,6,2,0.23689544,'1','2017-07-20 22:16:40'),(25338,1,1,0.98719484,'1','2017-07-20 22:17:40'),(25339,1,2,0.8615443,'1','2017-07-20 22:17:40'),(25340,2,1,32.553894,'1','2017-07-20 22:17:40'),(25341,2,2,31.073093,'1','2017-07-20 22:17:40'),(25342,3,1,33.756878,'1','2017-07-20 22:17:41'),(25343,3,2,33.924316,'1','2017-07-20 22:17:41'),(25344,4,1,0.08514842,'1','2017-07-20 22:17:41'),(25345,4,2,0.17480472,'1','2017-07-20 22:17:41'),(25346,5,1,0.37466326,'1','2017-07-20 22:17:41'),(25347,5,2,0.38980186,'1','2017-07-20 22:17:41'),(25348,6,1,0.10384292,'1','2017-07-20 22:17:41'),(25349,6,2,0.014079014,'1','2017-07-20 22:17:41'),(25350,1,1,0.9961347,'1','2017-07-20 22:18:41'),(25351,1,2,0.5117945,'1','2017-07-20 22:18:41'),(25352,2,1,34.031143,'1','2017-07-20 22:18:41'),(25353,2,2,28.58349,'1','2017-07-20 22:18:41'),(25354,3,1,30.88779,'1','2017-07-20 22:18:41'),(25355,3,2,31.113493,'1','2017-07-20 22:18:41'),(25356,4,1,0.36451313,'1','2017-07-20 22:18:41'),(25357,4,2,0.23825152,'1','2017-07-20 22:18:41'),(25358,5,1,0.110462226,'1','2017-07-20 22:18:41'),(25359,5,2,0.35383725,'1','2017-07-20 22:18:41'),(25360,6,1,0.2732257,'1','2017-07-20 22:18:41'),(25361,6,2,0.17272548,'1','2017-07-20 22:18:41'),(25362,1,1,0.35247263,'1','2017-07-20 22:19:41'),(25363,1,2,0.28413552,'1','2017-07-20 22:19:42'),(25364,2,1,34.035328,'1','2017-07-20 22:19:42'),(25365,2,2,27.048004,'1','2017-07-20 22:19:42'),(25366,3,1,27.379318,'1','2017-07-20 22:19:42'),(25367,3,2,29.726995,'1','2017-07-20 22:19:42'),(25368,4,1,0.47129273,'1','2017-07-20 22:19:42'),(25369,4,2,0.20826937,'1','2017-07-20 22:19:42'),(25370,5,1,0.31516656,'1','2017-07-20 22:19:42'),(25371,5,2,0.088924594,'1','2017-07-20 22:19:42'),(25372,6,1,0.28806967,'1','2017-07-20 22:19:42'),(25373,6,2,0.03020915,'1','2017-07-20 22:19:42'),(25374,1,1,0.002519897,'1','2017-07-20 22:20:42'),(25375,1,2,0.9997678,'1','2017-07-20 22:20:42'),(25376,2,1,30.61798,'1','2017-07-20 22:20:42'),(25377,2,2,34.39035,'1','2017-07-20 22:20:42'),(25378,3,1,33.08301,'1','2017-07-20 22:20:42'),(25379,3,2,28.965237,'1','2017-07-20 22:20:42'),(25380,4,1,0.46740997,'1','2017-07-20 22:20:42'),(25381,4,2,0.31905824,'1','2017-07-20 22:20:42'),(25382,5,1,0.25893793,'1','2017-07-20 22:20:42'),(25383,5,2,0.13797931,'1','2017-07-20 22:20:42'),(25384,6,1,0.27559578,'1','2017-07-20 22:20:42'),(25385,6,2,0.18340082,'1','2017-07-20 22:20:42'),(25386,1,1,0.34140912,'1','2017-07-21 14:32:43'),(25387,1,2,0.56674826,'1','2017-07-21 14:32:43'),(25388,2,1,28.684639,'1','2017-07-21 14:32:43'),(25389,2,2,27.567759,'1','2017-07-21 14:32:43'),(25390,3,1,28.338985,'1','2017-07-21 14:32:43'),(25391,3,2,26.440119,'1','2017-07-21 14:32:43'),(25392,4,1,0.19630507,'1','2017-07-21 14:32:43'),(25393,4,2,0.46077967,'1','2017-07-21 14:32:43'),(25394,5,1,0.49524263,'1','2017-07-21 14:32:43'),(25395,5,2,0.109978735,'1','2017-07-21 14:32:43'),(25396,6,1,0.205396,'1','2017-07-21 14:32:44'),(25397,6,2,0.23914906,'1','2017-07-21 14:32:44'),(25398,1,1,0.20698863,'1','2017-07-21 14:33:44'),(25399,1,2,0.9578122,'1','2017-07-21 14:33:44'),(25400,2,1,27.73618,'1','2017-07-21 14:33:44'),(25401,2,2,30.449041,'1','2017-07-21 14:33:44'),(25402,3,1,26.361883,'1','2017-07-21 14:33:44'),(25403,3,2,31.921556,'1','2017-07-21 14:33:44'),(25404,4,1,0.006196999,'1','2017-07-21 14:33:44'),(25405,4,2,0.13477582,'1','2017-07-21 14:33:44'),(25406,5,1,0.06275166,'1','2017-07-21 14:33:44'),(25407,5,2,0.14138113,'1','2017-07-21 14:33:44'),(25408,6,1,0.15157592,'1','2017-07-21 14:33:44'),(25409,6,2,0.23600653,'1','2017-07-21 14:33:44'),(25410,1,1,0.1634966,'1','2017-07-21 14:34:44'),(25411,1,2,0.48533213,'1','2017-07-21 14:34:44'),(25412,2,1,25.435322,'1','2017-07-21 14:34:44'),(25413,2,2,31.583752,'1','2017-07-21 14:34:44'),(25414,3,1,33.663612,'1','2017-07-21 14:34:44'),(25415,3,2,28.763727,'1','2017-07-21 14:34:44'),(25416,4,1,0.4263086,'1','2017-07-21 14:34:44'),(25417,4,2,0.4207575,'1','2017-07-21 14:34:45'),(25418,5,1,0.15302873,'1','2017-07-21 14:34:45'),(25419,5,2,0.3864067,'1','2017-07-21 14:34:45'),(25420,6,1,0.090596996,'1','2017-07-21 14:34:45'),(25421,6,2,0.26992556,'1','2017-07-21 14:34:45'),(25422,1,1,0.65851974,'1','2017-07-21 14:35:45'),(25423,1,2,0.14650513,'1','2017-07-21 14:35:46'),(25424,2,1,34.849846,'1','2017-07-21 14:35:46'),(25425,2,2,34.924362,'1','2017-07-21 14:35:46'),(25426,3,1,32.33373,'1','2017-07-21 14:35:46'),(25427,3,2,32.49579,'1','2017-07-21 14:35:46'),(25428,4,1,0.36801657,'1','2017-07-21 14:35:46'),(25429,4,2,0.13656656,'1','2017-07-21 14:35:46'),(25430,5,1,0.4679196,'1','2017-07-21 14:35:46'),(25431,5,2,0.26935294,'1','2017-07-21 14:35:46'),(25432,6,1,0.21616948,'1','2017-07-21 14:35:46'),(25433,6,2,0.27160373,'1','2017-07-21 14:35:46'),(25434,1,1,0.4514253,'1','2017-07-21 14:40:43'),(25435,1,2,0.4747144,'1','2017-07-21 14:40:43'),(25436,2,1,29.402601,'1','2017-07-21 14:40:43'),(25437,2,2,31.140451,'1','2017-07-21 14:40:43'),(25438,3,1,31.252607,'1','2017-07-21 14:40:43'),(25439,3,2,34.44424,'1','2017-07-21 14:40:43'),(25440,4,1,0.24906635,'1','2017-07-21 14:40:43'),(25441,4,2,0.32937664,'1','2017-07-21 14:40:43'),(25442,5,1,0.26417932,'1','2017-07-21 14:40:44'),(25443,5,2,0.4869025,'1','2017-07-21 14:40:44'),(25444,6,1,0.24510491,'1','2017-07-21 14:40:44'),(25445,6,2,0.28099135,'1','2017-07-21 14:40:44'),(25446,1,1,0.1906922,'1','2017-07-21 14:41:44'),(25447,1,2,0.6784759,'1','2017-07-21 14:41:44'),(25448,2,1,26.227732,'1','2017-07-21 14:41:44'),(25449,2,2,32.267464,'1','2017-07-21 14:41:44'),(25450,3,1,29.897057,'1','2017-07-21 14:41:44'),(25451,3,2,25.964178,'1','2017-07-21 14:41:44'),(25452,4,1,0.25543818,'1','2017-07-21 14:41:44'),(25453,4,2,0.41435978,'1','2017-07-21 14:41:44'),(25454,5,1,0.3996029,'1','2017-07-21 14:41:44'),(25455,5,2,0.08595089,'1','2017-07-21 14:41:44'),(25456,6,1,0.23927096,'1','2017-07-21 14:41:44'),(25457,6,2,0.026617719,'1','2017-07-21 14:41:44'),(25458,1,1,0.7916365,'1','2017-07-21 14:42:44'),(25459,1,2,0.5032476,'1','2017-07-21 14:42:44'),(25460,2,1,29.860943,'1','2017-07-21 14:42:44'),(25461,2,2,25.802345,'1','2017-07-21 14:42:44'),(25462,3,1,33.876617,'1','2017-07-21 14:42:44'),(25463,3,2,26.69877,'1','2017-07-21 14:42:44'),(25464,4,1,0.024713788,'1','2017-07-21 14:42:45'),(25465,4,2,0.14732048,'1','2017-07-21 14:42:45'),(25466,5,1,0.22866803,'1','2017-07-21 14:42:45'),(25467,5,2,0.2705165,'1','2017-07-21 14:42:45'),(25468,6,1,0.1070886,'1','2017-07-21 14:42:45'),(25469,6,2,0.27728721,'1','2017-07-21 14:42:45'),(25470,1,1,0.76874536,'1','2017-07-21 14:43:45'),(25471,1,2,0.08670672,'1','2017-07-21 14:43:45'),(25472,2,1,34.79769,'1','2017-07-21 14:43:45'),(25473,2,2,25.792442,'1','2017-07-21 14:43:45'),(25474,3,1,33.528442,'1','2017-07-21 14:43:45'),(25475,3,2,33.607212,'1','2017-07-21 14:43:45'),(25476,4,1,0.39878818,'1','2017-07-21 14:43:45'),(25477,4,2,0.034579538,'1','2017-07-21 14:43:45'),(25478,5,1,0.45366445,'1','2017-07-21 14:43:45'),(25479,5,2,0.25329494,'1','2017-07-21 14:43:45'),(25480,6,1,0.2400932,'1','2017-07-21 14:43:45'),(25481,6,2,0.060887232,'1','2017-07-21 14:43:45'),(25482,1,1,0.59772563,'1','2017-07-21 14:44:45'),(25483,1,2,0.348682,'1','2017-07-21 14:44:45'),(25484,2,1,27.280361,'1','2017-07-21 14:44:45'),(25485,2,2,29.11485,'1','2017-07-21 14:44:45'),(25486,3,1,31.304855,'1','2017-07-21 14:44:45'),(25487,3,2,28.743853,'1','2017-07-21 14:44:45'),(25488,4,1,0.11267174,'1','2017-07-21 14:44:46'),(25489,4,2,0.44107786,'1','2017-07-21 14:44:46'),(25490,5,1,0.13535982,'1','2017-07-21 14:44:46'),(25491,5,2,0.3436894,'1','2017-07-21 14:44:46'),(25492,6,1,0.29991677,'1','2017-07-21 14:44:46'),(25493,6,2,0.24288595,'1','2017-07-21 14:44:46'),(25494,1,1,0.19943795,'1','2017-07-31 12:45:29'),(25495,2,1,27.515087,'1','2017-07-31 12:45:29'),(25496,3,1,29.695204,'1','2017-07-31 12:45:29'),(25497,4,1,0.3736361,'1','2017-07-31 12:45:29'),(25498,5,1,0.3261619,'1','2017-07-31 12:45:29'),(25499,6,1,0.11347352,'1','2017-07-31 12:45:29'),(25500,1,1,0.011220877,'1','2017-07-31 12:47:29'),(25501,2,1,32.001,'1','2017-07-31 12:47:29'),(25502,3,1,26.163612,'1','2017-07-31 12:47:29'),(25503,4,1,0.15449889,'1','2017-07-31 12:47:29'),(25504,5,1,0.37880263,'1','2017-07-31 12:47:29'),(25505,6,1,0.17007926,'1','2017-07-31 12:47:29'),(25506,1,1,0.68355656,'1','2017-07-31 12:48:29'),(25507,2,1,28.139458,'1','2017-07-31 12:48:29'),(25508,3,1,33.525665,'1','2017-07-31 12:48:29'),(25509,4,1,0.26395103,'1','2017-07-31 12:48:29'),(25510,5,1,0.3424424,'1','2017-07-31 12:48:29'),(25511,6,1,0.0046947314,'1','2017-07-31 12:48:30'),(25512,1,1,0.49227935,'1','2017-07-31 12:49:30'),(25513,2,1,33.98788,'1','2017-07-31 12:49:30'),(25514,3,1,25.7044,'1','2017-07-31 12:49:30'),(25515,4,1,0.13507824,'1','2017-07-31 12:49:30'),(25516,5,1,0.17966223,'1','2017-07-31 12:49:30'),(25517,6,1,0.22654334,'1','2017-07-31 12:49:30'),(25518,1,1,0.07999005,'1','2017-07-31 12:50:30'),(25519,2,1,32.496838,'1','2017-07-31 12:50:30'),(25520,3,1,32.896908,'1','2017-07-31 12:50:30'),(25521,4,1,0.09228198,'1','2017-07-31 12:50:30'),(25522,5,1,0.09851146,'1','2017-07-31 12:50:30'),(25523,6,1,0.19789079,'1','2017-07-31 12:50:30');
/*!40000 ALTER TABLE `sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_acceso`
--

DROP TABLE IF EXISTS `tipo_acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_acceso` (
  `id` enum('1','2','3') NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_acceso`
--

LOCK TABLES `tipo_acceso` WRITE;
/*!40000 ALTER TABLE `tipo_acceso` DISABLE KEYS */;
INSERT INTO `tipo_acceso` VALUES ('1','PUBLICO','1','2017-07-31 13:06:18','2017-07-31 13:06:18'),('2','COMPARTIDO','1','2017-07-31 13:06:18','2017-07-31 13:06:18'),('3','PRIVADO','1','2017-07-31 13:06:18','2017-07-31 13:06:18');
/*!40000 ALTER TABLE `tipo_acceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_sensor`
--

DROP TABLE IF EXISTS `tipo_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_sensor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `unidad` varchar(45) NOT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_sensor`
--

LOCK TABLES `tipo_sensor` WRITE;
/*!40000 ALTER TABLE `tipo_sensor` DISABLE KEYS */;
INSERT INTO `tipo_sensor` VALUES (1,'CAUDAL','q','1','2017-04-21 16:45:49','2017-04-21 16:45:49'),(2,'TEMPERATURA AGUA','°c','1','2017-04-21 16:45:49','2017-04-21 16:45:49'),(3,'TEMPERATURA AMBIENTE','°c','1','2017-04-21 16:45:49','2017-04-21 16:45:49'),(4,'pH','pH','1','2017-04-21 16:45:49','2017-04-21 16:45:49'),(5,'AMONIO','mg/l','1','2017-04-21 16:45:49','2017-04-21 16:45:49'),(6,'FLUJO','m³/s','1','2017-05-10 03:08:57','2017-05-10 03:08:57');
/*!40000 ALTER TABLE `tipo_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'user','1','2017-07-01 18:33:42','2017-07-01 18:33:42'),(2,'admin','1','2017-07-01 18:33:42','2017-07-01 18:33:42'),(3,'superadmin','1','2017-07-01 18:33:42','2017-07-01 18:33:42');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaccion_tabla` varchar(1000) NOT NULL,
  `transaccion_data` varchar(1000) NOT NULL,
  `created_at` varchar(45) DEFAULT 'CURRENT_TIMESTAMP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (12,'usuario','Usuario: PRUEBA','CURRENT_TIMESTAMP'),(13,'usuario','Pass: $2y$10$NfmZdSS8x.5L9Cigfga6qO7U0yqKje2MOkaY5pIHZ247jbh265qwq','CURRENT_TIMESTAMP'),(14,'usuario','Email: prueba@prueba.prueba','CURRENT_TIMESTAMP'),(15,'usuario','Primer Nombre: prueba','CURRENT_TIMESTAMP'),(16,'usuario','Segundo Nombre: prueba','CURRENT_TIMESTAMP'),(17,'usuario','Primer Apellido: prueba','CURRENT_TIMESTAMP'),(18,'usuario','Segundo Apellido: prueba','CURRENT_TIMESTAMP'),(19,'usuario','Tipo Usuario: 2','CURRENT_TIMESTAMP'),(29,'usuario','Usuario: PRUEBA','CURRENT_TIMESTAMP'),(30,'usuario','Pass: $2y$10$NQAvS3DpMVVE/RxGVtg2iOS0wEZGBmA6EYFwmrc.Sqf5sG.tq2uIq','CURRENT_TIMESTAMP'),(31,'usuario','Email: prueba@prueba.prueba','CURRENT_TIMESTAMP'),(32,'usuario','Primer Nombre: prueba','CURRENT_TIMESTAMP'),(33,'usuario','Segundo Nombre: prueba','CURRENT_TIMESTAMP'),(34,'usuario','Primer Apellido: prueba','CURRENT_TIMESTAMP'),(35,'usuario','Segundo Apellido: prueba','CURRENT_TIMESTAMP'),(36,'usuario','Tipo Usuario: 2','CURRENT_TIMESTAMP'),(37,'usuario','INSERT INTO usuario (username, password, email, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tusuario_id) VALUES (PRUEBA,$2y$10$NQAvS3DpMVVE/RxGVtg2iOS0wEZGBmA6EYFwmrc.Sqf5sG.tq2uIq,prueba@prueba.prueba,prueba,prueba,prueba,prueba,2);','CURRENT_TIMESTAMP'),(38,'usuario','Usuario: PRUEBA','CURRENT_TIMESTAMP'),(39,'usuario','Pass: $2y$10$sJTLJmbjL20swzuAgh2ze.MwNYVBycqUVbmsKkbZu4TWl9FaU5nFC','CURRENT_TIMESTAMP'),(40,'usuario','Email: prueba@prueba.prueba','CURRENT_TIMESTAMP'),(41,'usuario','Primer Nombre: prueba','CURRENT_TIMESTAMP'),(42,'usuario','Segundo Nombre: prueba','CURRENT_TIMESTAMP'),(43,'usuario','Primer Apellido: prueba','CURRENT_TIMESTAMP'),(44,'usuario','Segundo Apellido: prueba','CURRENT_TIMESTAMP'),(45,'usuario','Tipo Usuario: 2','CURRENT_TIMESTAMP'),(46,'usuario','INSERT INTO usuario (username, password, email, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tusuario_id) VALUES (\'PRUEBA\',\'$2y$10$sJTLJmbjL20swzuAgh2ze.MwNYVBycqUVbmsKkbZu4TWl9FaU5nFC\',\'prueba@prueba.prueba\',\'prueba\',\'prueba\',\'prueba\',\'prueba\',\'2);','CURRENT_TIMESTAMP'),(47,'usuario','Usuario: PRUEBA','CURRENT_TIMESTAMP'),(48,'usuario','Pass: $2y$10$uU/e6XQJApKDQ2Jf4Zq9ruZ8D1JVXEgceZdLOiEAkaAcfnOjRAVBm','CURRENT_TIMESTAMP'),(49,'usuario','Email: prueba@prueba.prueba','CURRENT_TIMESTAMP'),(50,'usuario','Primer Nombre: prueba','CURRENT_TIMESTAMP'),(51,'usuario','Segundo Nombre: prueba','CURRENT_TIMESTAMP'),(52,'usuario','Primer Apellido: prueba','CURRENT_TIMESTAMP'),(53,'usuario','Segundo Apellido: prueba','CURRENT_TIMESTAMP'),(54,'usuario','Tipo Usuario: 2','CURRENT_TIMESTAMP'),(55,'usuario','INSERT INTO usuario (username, password, email, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tusuario_id) VALUES (\'PRUEBA\',\'$2y$10$uU/e6XQJApKDQ2Jf4Zq9ruZ8D1JVXEgceZdLOiEAkaAcfnOjRAVBm\',\'prueba@prueba.prueba\',\'prueba\',\'prueba\',\'prueba\',\'prueba\',2);','CURRENT_TIMESTAMP'),(56,'usuario','Usuario: PRUEBA_AJAX','CURRENT_TIMESTAMP'),(57,'usuario','Pass: $2y$10$8eQv5Mj4otj7thjmduPi6eRq7vSYx6wgi1Whw10tscfEzkr3FapKW','CURRENT_TIMESTAMP'),(58,'usuario','Email: pruebaajax@pruebaajax.pruebaajax','CURRENT_TIMESTAMP'),(59,'usuario','Primer Nombre: prueba_ajax','CURRENT_TIMESTAMP'),(60,'usuario','Segundo Nombre: prueba_ajax','CURRENT_TIMESTAMP'),(61,'usuario','Primer Apellido: prueba_ajax','CURRENT_TIMESTAMP'),(62,'usuario','Segundo Apellido: prueba_ajax','CURRENT_TIMESTAMP'),(63,'usuario','Tipo Usuario: 2','CURRENT_TIMESTAMP'),(64,'usuario','INSERT INTO usuario (username, password, email, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tusuario_id) VALUES (\'PRUEBA_AJAX\',\'$2y$10$8eQv5Mj4otj7thjmduPi6eRq7vSYx6wgi1Whw10tscfEzkr3FapKW\',\'pruebaajax@pruebaajax.pruebaajax\',\'prueba_ajax\',\'prueba_ajax\',\'prueba_ajax\',\'prueba_ajax\',2);','CURRENT_TIMESTAMP'),(65,'usuario','Usuario: TESTA','CURRENT_TIMESTAMP'),(66,'usuario','Pass: $2y$10$qjlLPKkcGcgerzKkJvGylOQ6BU7J.vzpBD3m8L8GgPPIMksWnKhvu','CURRENT_TIMESTAMP'),(67,'usuario','Email: testa@testa.testa','CURRENT_TIMESTAMP'),(68,'usuario','Primer Nombre: testa','CURRENT_TIMESTAMP'),(69,'usuario','Segundo Nombre: testa','CURRENT_TIMESTAMP'),(70,'usuario','Primer Apellido: testa','CURRENT_TIMESTAMP'),(71,'usuario','Segundo Apellido: testa','CURRENT_TIMESTAMP'),(72,'usuario','Tipo Usuario: 2','CURRENT_TIMESTAMP'),(73,'usuario','INSERT INTO usuario (username, password, email, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tusuario_id) VALUES (\'TESTA\',\'$2y$10$qjlLPKkcGcgerzKkJvGylOQ6BU7J.vzpBD3m8L8GgPPIMksWnKhvu\',\'testa@testa.testa\',\'testa\',\'testa\',\'testa\',\'testa\',2);','CURRENT_TIMESTAMP');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tusuario_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `primer_nombre` varchar(100) NOT NULL,
  `segundo_nombre` varchar(100) DEFAULT NULL,
  `primer_apellido` varchar(100) NOT NULL,
  `segundo_apellido` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `estado` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `USUARIO_FK0_idx` (`tusuario_id`),
  CONSTRAINT `USUARIO_FK0` FOREIGN KEY (`tusuario_id`) REFERENCES `tipo_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'chris','$2y$10$HIGrMlct5ndrnj7YWLOmwef.PoyIxys1gBF4EiqkYWnCUcT16t9XW','chris3154@gmail.com','CHRISTHIAN','HERNANDO','TORRES','NIÑO','zEvHVVPS09pF0CCh6dfxouoy3U6NoBCN1k0l1b3r4pyLaf3ZSJ3942zpR64z','1','2017-04-17 17:41:04','2017-07-21 13:26:46'),(3,3,'CHRIS_ADMIN','$2y$10$HIGrMlct5ndrnj7YWLOmwef.PoyIxys1gBF4EiqkYWnCUcT16t9XW','chris3157@gmail.com','CHRISTHIAN','HERNANDO','TORRES','NIÑO','YsjsVzVutjWUQkOD7CSO3crLwsaVvEXEPNjhRb5XWbuwUC7VzYeQcK8Rh7Le','1','2017-04-21 21:34:59','2017-07-21 00:35:23'),(34,2,'MAMA','$2y$10$UlQoY.8omRBD3Ozy/xrm3e6TZBQMqzp7A/cqwqyhMbgMG2rDyR0ma','mama@mam.ma','mama','mama','mama','mama',NULL,'2','2017-07-20 18:39:40','2017-07-20 18:39:40'),(35,2,'HOLA','$2y$10$Rw8c2Z86VYRKFb2mJcNKO.itPTRytMbx.TBRalVFrg9C/MkDJ7PHW','holag@d.l','hola','hola','hola','hola',NULL,'2','2017-07-20 18:40:45','2017-07-20 18:40:45'),(36,3,'COMO','$2y$10$LpRwNAvTFfKx8cRYJvnKy.l2HlXsDtiIX4o262jrz9xAIDZF5Jie.','como@coms.co','como','como','como','como',NULL,'2','2017-07-20 18:41:51','2017-07-20 18:41:51');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aquaweb'
--

--
-- Dumping routines for database 'aquaweb'
--
/*!50003 DROP PROCEDURE IF EXISTS `getDataDropdownArgTest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDataDropdownArgTest`(
IN _idEstado INT
)
BEGIN
	SELECT
		id AS id,
		CONCAT( '(' , sigla , ') ', nombre ) AS nombre
    FROM 
		aquaweb.tipo_sensor 
	WHERE
		estado = _idEstado 
	ORDER BY 
		nombre ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDataDropdownTest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDataDropdownTest`()
BEGIN
	SELECT
		id AS id,
		CONCAT( '(' , sigla , ') ', nombre ) AS nombre
    FROM 
		aquaweb.tipo_sensor
	ORDER BY 
		nombre ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDataGridTest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDataGridTest`(
IN _idUsuario INT
)
BEGIN
SELECT
	proc.id as idproceso,
    proc.codigo as codigo,
    proc.fecha_implementacion as fechaimplementacion,
    proc.area_cultivo as areacultivo,
    proc.volumen_cultivo as volumencultivo,
    case proc.estado when 1 then 'Activo' else 'Inactivo' end as estado    
FROM
	proceso AS proc
WHERE
	proc.usuario_id = _idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getGaleriaPezById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getGaleriaPezById`(
IN _idPez INT
)
BEGIN
SELECT 
	concat(gal.codigo,'.',gal.extension) as imagen,
	UPPER(gal.titulo) as titulo, 
	gal.descripcion as descripcion,
	case gal.estado when 1 then 'Activo' else 'Inactivo' end as estado ,
	gal.created_at as creacion, 
	gal.updated_at as actualizacion 
FROM
	aquaweb.galeria as gal 
WHERE
	gal.pez_id = _idPez;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getGaleriaPlantaById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getGaleriaPlantaById`(
IN _idPlanta INT
)
BEGIN
SELECT 
	concat(gal.codigo,'.',gal.extension) as imagen,
	UPPER(gal.titulo) as titulo, 
	gal.descripcion as descripcion,
	case gal.estado when 1 then 'Activo' else 'Inactivo' end as estado ,
	gal.created_at as creacion, 
	gal.updated_at as actualizacion 
FROM
	aquaweb.galeria as gal 
WHERE
	gal.planta_id = _idPlanta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInfoAsociacionElementos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoAsociacionElementos`(
IN _elementoid int,
IN _elementotipo int
)
BEGIN
	IF _elementotipo = 1 THEN

		SELECT 
			usu.id,
            _elementotipo as elementotipo,
            "Usuario" as elemento,
			ucase(usu.username) as nombre,
            usu.estado estadoactual,
            CASE usu.estado when 1 then 'Desactivar' else 'Activar' end as estado,
			count(proc.id) as relacion
		FROM aquaweb.usuario as usu
		LEFT JOIN proceso as proc ON proc.usuario_id = usu.id
		WHERE usu.id=_elementoid and proc.estado=1;
		
	ELSEIF _elementotipo = 2 THEN

		SELECT 
			pla.id,
            _elementotipo as elementotipo,
            "Planta" as elemento,
			ucase(pla.nombre) as nombre,
            pla.estado estadoactual,
			CASE pla.estado when 1 then 'Desactivar' else 'Activar' end as estado,
			count(proc.id) as relacion
		FROM aquaweb.planta as pla
		LEFT JOIN proceso_planta as proc_pla ON pla.id = proc_pla.planta_id
		LEFT JOIN proceso as proc ON proc.id = proc_pla.proceso_id
		WHERE pla.id=_elementoid and proc.estado=1;
		
	ELSEIF _elementotipo = 3 THEN

		SELECT 
			pez.id,
            _elementotipo as elementotipo,
            "Pez" as elemento,
			ucase(pez.nombre) as nombre,
            pez.estado estadoactual,
			CASE pez.estado when 1 then 'Desactivar' else 'Activar' end as estado,
			count(proc.id) as relacion
		FROM aquaweb.pez as pez
		LEFT JOIN proceso_pez as proc_pez ON pez.id = proc_pez.pez_id
		LEFT JOIN proceso as proc ON proc.id = proc_pez.proceso_id
		WHERE pez.id=_elementoid and proc.estado=1;
	
    ELSE
		SELECT 
			pro.id,
			_elementotipo as elementotipo,
			"Proceso" as elemento,
			ucase(pro.nombre) as nombre,
			pro.estado estadoactual,
			CASE pro.estado when 1 then 'Desactivar' else 'Activar' end as estado,
			0 as relacion
		FROM aquaweb.proceso as pro
		WHERE pro.id=_elementoid and pro.estado=1;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInfoPezById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoPezById`(
IN _idPez INT
)
BEGIN
SELECT
	pez.id as id,
	concat(gal.codigo,'.',gal.extension) as imagen,
    UPPER(pez.nombre) as nombre,
    pez.temperatura_vital_min as tempvitalmin,
    pez.temperatura_vital_max as tempvitalmax,
    pez.temperatura_optima_min as tempoptimamin,
    pez.temperatura_optima_max as tempoptimamax,
    pez.nitrogeno_nat as nitrogeno,
    pez.nitrito as nitrito,
    pez.oxigeno as oxigeno,
    pez.porcentaje_proteina_min as porcprotmin,
    pez.porcentaje_proteina_max as porcprotmax,
    pez.crecimiento_peso as crecpeso,
    pez.crecimiento_tiempo as crectiempo,
    case pez.estado when 1 then 'Activo' else 'Inactivo' end as estado,
    count(proc.id) as relacion
FROM
    aquaweb.pez AS pez
    INNER JOIN aquaweb.galeria AS gal ON pez.id = gal.pez_id
	LEFT JOIN proceso_pez as proc_pez ON pez.id = proc_pez.pez_id
	LEFT JOIN proceso as proc ON proc.id = proc_pez.proceso_id and proc.estado = 1
WHERE 
	pez.id = _idPez
ORDER BY 
	RAND()
LIMIT
	1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInfoPezByProcesoId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoPezByProcesoId`(
IN _idProceso INT
)
BEGIN
SELECT
	pez.id as idpez,
    pez.nombre as nombre,
    proc_pez.porcentaje as porcentaje,
    case proc_pez.estado when 1 then 'Activo' else 'Inactivo' end as estado  
FROM
	aquaweb.proceso as proc
    INNER JOIN aquaweb.proceso_pez as proc_pez ON proc.id = proc_pez.proceso_id
    INNER JOIN aquaweb.pez as pez ON pez.id = proc_pez.pez_id
WHERE 
	proc.id=_idProceso;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInfoPlantaById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoPlantaById`(
IN _idPlanta INT
)
BEGIN
SELECT
	plant.id as id,
	concat(gal.codigo,'.',gal.extension) as imagen,
    UPPER(plant.nombre) as nombre,
    plant.ph_min as phmin,
    plant.ph_max as phmax,
    plant.planta_m2_min as plantmin,
    plant.planta_m2_max as plantmax,
    plant.tiempo_germinacion_min as tiempogermmin,
    plant.tiempo_germinacion_max as tiempogermax,
    plant.tiempo_crecimiento_min as tiempocrecmin,
    plant.tiempo_crecimiento_max as tiempocrecmax,
    plant.temperatura_min as tempmin,
    plant.temperatura_max as tempmax,
    exp.nombre as expsolar,
    exp.id as expsolarid,
    case plant.estado when 1 then 'Activo' else 'Inactivo' end as estado,
    count(proc.id) as relacion
FROM
    aquaweb.planta AS plant
    LEFT JOIN aquaweb.galeria AS gal ON plant.id = gal.planta_id
    INNER JOIN aquaweb.exposicion_solar AS exp ON plant.solar_id = exp.id
	LEFT JOIN proceso_planta as proc_pla ON plant.id = proc_pla.planta_id
	LEFT JOIN proceso as proc ON proc.id = proc_pla.proceso_id and proc.estado = 1
WHERE 
	plant.id = _idPlanta
ORDER BY 
	RAND()
LIMIT
	1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInfoPlantaByProcesoId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoPlantaByProcesoId`(
IN _idProceso INT
)
BEGIN
SELECT
	plant.id as idplanta,
    plant.nombre as nombre,
    proc_plant.porcentaje as porcentaje,
    case proc_plant.estado when 1 then 'Activo' else 'Inactivo' end as estado  
FROM
	aquaweb.proceso as proc
    INNER JOIN aquaweb.proceso_planta as proc_plant ON proc.id = proc_plant.proceso_id
    INNER JOIN aquaweb.planta as plant ON plant.id = proc_plant.planta_id
WHERE 
	proc.id=_idProceso;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInfoProcesoById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoProcesoById`(
IN _idProceso INT
)
BEGIN
SELECT
	proc.id,
	proc.codigo,
	proc.nombre,
	proc.descripcion,
	proc.fecha_implementacion as fechaimplementacion,
	proc.area_cultivo as areacultivo,
	proc.volumen_cultivo as volumencultivo,
	case proc.estado when 1 then 'Activo' else 'Inactivo' end as estado   
FROM
	aquaweb.proceso proc
WHERE	
    proc.id = _idProceso;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInfoUsuarioById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoUsuarioById`(
IN _idUsuario INT
)
BEGIN
SELECT
	usu.id as id,
	usu.username as usuario,
	tus.nombre as rol,
	UPPER(CONCAT(usu.primer_nombre, ' ',usu.segundo_nombre, ' ',usu.primer_apellido, ' ',usu.segundo_apellido, ' ')) As nombre,
    UPPER(usu.primer_nombre) AS primer_nombre,
    UPPER(usu.segundo_nombre) AS segundo_nombre,
    UPPER(usu.primer_apellido) AS primer_apellido,
    UPPER(usu.segundo_apellido) AS segundo_apellido,
	usu.email as correo,
    CASE usu.estado when 1 then 'Activo' else 'Inactivo' end as estado,
    usu.estado as tipoestado,
    (SELECT COUNT(1) FROM proceso AS proc WHERE proc.usuario_id = usu.id) AS procesos,
    (SELECT COUNT(1) FROM pez AS pez WHERE pez.usuario_id = usu.id) AS peces,
    (SELECT COUNT(1) FROM planta AS pla WHERE pla.usuario_id = usu.id) AS plantas
FROM
	aquaweb.usuario usu
    INNER JOIN aquaweb.tipo_usuario tus ON usu.tusuario_id = tus.id
WHERE
    usu.id = _idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPeces` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPeces`()
BEGIN
SELECT
	pez.id as idpez,
    UPPER(usu.username) as usuario,
	UPPER(pez.nombre) as nombre,
    pez.created_at as registro,
    pez.updated_at as actualizacion,
    case pez.estado when 1 then 'Activo' else 'Inactivo' end as estado
FROM aquaweb.pez AS pez
INNER JOIN aquaweb.usuario AS usu ON pez.usuario_id = usu.id
ORDER BY 
	nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPecesByUsuarioId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPecesByUsuarioId`(
IN _usuarioid int
)
BEGIN
SELECT
	pez.id as idpez,
    UPPER(usu.username) as usuario,
	UPPER(pez.nombre) as nombre,
    pez.created_at as registro,
    pez.updated_at as actualizacion,
    case pez.estado when 1 then 'Activo' else 'Inactivo' end as estado
FROM aquaweb.pez AS pez
INNER JOIN aquaweb.usuario AS usu ON pez.usuario_id = usu.id
WHERE
	pez.usuario_id = _usuarioid
ORDER BY 
	nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPlantas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPlantas`()
BEGIN
SELECT
	pla.id as idplanta,
    UPPER(usu.username) as usuario,
	UPPER(pla.nombre) as nombre,
    pla.created_at as registro,
    pla.updated_at as actualizacion,
    case pla.estado when 1 then 'Activo' else 'Inactivo' end as estado
FROM aquaweb.planta AS pla
INNER JOIN aquaweb.usuario AS usu ON pla.usuario_id = usu.id
ORDER BY 
	nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPlantasByUsuarioId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPlantasByUsuarioId`(
IN _usuarioid int
)
BEGIN
SELECT
	pla.id as idplanta,
    UPPER(usu.username) as usuario,
	UPPER(pla.nombre) as nombre,
    pla.created_at as registro,
    pla.updated_at as actualizacion,
    case pla.estado when 1 then 'Activo' else 'Inactivo' end as estado
FROM aquaweb.planta AS pla
INNER JOIN aquaweb.usuario AS usu ON pla.usuario_id = usu.id
WHERE
	pla.usuario_id = _usuarioid
ORDER BY 
	nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProcesosByIdUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProcesosByIdUsuario`(
IN _idUsuario INT
)
BEGIN
SELECT
	proc.id as idproceso,
    proc.nombre as nombre,
    proc.fecha_implementacion as fechaimplementacion,
    case proc.estado when 1 then 'Activo' else 'Inactivo' end as estado    
FROM
	proceso AS proc
WHERE
	proc.usuario_id = _idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTiposExpoSolar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTiposExpoSolar`()
BEGIN
SELECT
	exp.id as id,
	UPPER(exp.nombre) as nombre	
FROM
	aquaweb.exposicion_solar exp
WHERE
	exp.estado = 1
ORDER BY 
	id ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTiposUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTiposUsuario`()
BEGIN
SELECT
	tus.id as id,
	UPPER(tus.nombre) as nombre	
FROM
	aquaweb.tipo_usuario tus
WHERE
	tus.estado = 1
ORDER BY 
	nombre ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsuarios`()
BEGIN
SELECT
	usu.id as idusuario,
	usu.username as usuario,
    UPPER(usu.username) as usuario,
    usu.email,
    UPPER(tus.nombre) as rol,
    UPPER(CONCAT(usu.primer_nombre, ' ',usu.segundo_nombre, ' ',usu.primer_apellido, ' ',usu.segundo_apellido, ' ')) As nombre,
    case usu.estado when 1 then 'Activo' else 'Inactivo' end as estado 
FROM 
	aquaweb.usuario AS usu
    INNER JOIN aquaweb.tipo_usuario tus ON usu.tusuario_id = tus.id
ORDER BY 
	rol;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getValuesProcesoById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getValuesProcesoById`(
IN _idTipoSensor INT,
IN _idProceso INT
)
BEGIN
SELECT 
    sen.captured_at AS fecha, 
    sen.valor
FROM
    aquaweb.sensor AS sen
    INNER JOIN tipo_sensor AS tsen ON sen.tsensor_id = tsen.id
	INNER JOIN proceso AS pro ON sen.proceso_id = pro.id
WHERE
		tsen.id = _idTipoSensor AND
        pro.id = _idProceso
order by fecha desc
limit 5;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insDatosPez` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insDatosPez`(
IN _usuarioid int,
IN _nombre varchar(100),
IN _tempvitmin int,
IN _tempvitmax int,
IN _tempoptmin int,
IN _tempoptmax int,
IN _porcpromin int,
IN _porcpromax int,
IN _nitnat int,
IN _nitri int,
IN _oxi int,
IN _crepeso int,
IN _cretiemp int
)
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
    ROLLBACK;
    SELECT 'E0666' AS ERROR, 'SQLEXCEPTION' AS MESSAGE;
END;

START TRANSACTION;

    INSERT INTO pez (usuario_id, 
						nombre, 
						temperatura_vital_min,
						temperatura_vital_max,
						temperatura_optima_min,
						temperatura_optima_max,
						nitrogeno_nat,
						nitrito,
						oxigeno,
						porcentaje_proteina_min,
						porcentaje_proteina_max,
						crecimiento_peso,
						crecimiento_tiempo) 
    VALUES(_usuarioid,
			_nombre,		
			_tempvitmin,
			_tempvitmax,
			_tempoptmin,
			_tempoptmax,
			_nitnat,
			_nitri,
			_oxi,            
			_porcpromin,
			_porcpromax,
			_crepeso,
			_cretiemp);
    
COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insDatosPlanta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insDatosPlanta`(
IN _usuarioid int,
IN _nombre varchar(100),
IN _phmin double,
IN _phmax double,
IN _plantmin int,
IN _plantmax int,
IN _germin int,
IN _germax int,
IN _cremin int,
IN _cremax int,
IN _tempmin int,
IN _tempmax int,
IN _expsolar int
)
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
    ROLLBACK;
    SELECT 'E0666' AS ERROR, 'SQLEXCEPTION' AS MESSAGE;
END;

START TRANSACTION;

    INSERT INTO planta (usuario_id, 
						nombre, 
						ph_min, 
						ph_max, 
						planta_m2_min,
						planta_m2_max,
						tiempo_germinacion_min,
						tiempo_germinacion_max,
						tiempo_crecimiento_min,
						tiempo_crecimiento_max,
						temperatura_min,
						temperatura_max,
						solar_id) 
    VALUES(_usuarioid,
			_nombre,		
			_phmin,
			_phmax,
			_plantmin,
			_plantmax,
			_germin,
			_germax,
			_cremin,
			_cremax,
			_tempmin,
			_tempmax,
			_expsolar);
    
COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insDatosProceso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insDatosProceso`(
IN _idUsuario int,
IN _nombre varchar(100),
IN _descripcion varchar(1000),
IN _fecha date,
IN _areaCultivo double,
IN _volumenCultivo double
)
BEGIN

DECLARE _idProceso INT;

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
    ROLLBACK;
    SELECT 'E0666' AS ERROR, 'SQLEXCEPTION' AS MESSAGE;
END;

START TRANSACTION;

    INSERT INTO proceso (nombre, descripcion, fecha_implementacion, area_cultivo, volumen_cultivo,estado)
	VALUES (_nombre, _descripcion, _fecha, _areaCultivo, _volumenCultivo,2);
	
COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insDatosUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insDatosUsuario`(
IN _usuario varchar(100),
IN _pass varchar(100),
IN _email varchar(200),
IN _primernombre varchar(100),
IN _segundonombre varchar(100),
IN _primerapellido varchar(100),
IN _segundoapellido varchar(100),
IN _tiposusuario int
)
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
    ROLLBACK;
    SELECT 'E0666' AS ERROR, 'SQLEXCEPTION' AS MESSAGE;
END;

START TRANSACTION;

    INSERT INTO usuario (username, password, email, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tusuario_id)
	VALUES (_usuario, _pass, _email, _primernombre, _segundonombre, _primerapellido, _segundoapellido, _tiposusuario);
	 
COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updDatosPez` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updDatosPez`(
IN _pezid int,
IN _nombre varchar(100),
IN _tempvitmin int,
IN _tempvitmax int,
IN _tempoptmin int,
IN _tempoptmax int,
IN _porcpromin int,
IN _porcpromax int,
IN _nitnat int,
IN _nitri int,
IN _oxi int,
IN _crepeso int,
IN _cretiemp int
)
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
    ROLLBACK;
    SELECT 'E0666' AS ERROR, 'SQLEXCEPTION' AS MESSAGE;
END;

START TRANSACTION;

UPDATE
	pez 
SET    
	nombre = _nombre,
	temperatura_vital_min = _tempvitmin,
	temperatura_vital_max = _tempvitmax,
	temperatura_optima_min = _tempoptmin,
	temperatura_optima_max = _tempoptmax,
	nitrogeno_nat = _nitnat,
	nitrito = _nitri,
	oxigeno = _oxi,      
	porcentaje_proteina_min = _porcpromin,
	porcentaje_proteina_max= _porcpromax,
	crecimiento_peso = _crepeso,
	crecimiento_tiempo = _cretiemp,
    updated_at = NOW()
WHERE
	pez.id = _pezid;

COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updDatosPlanta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updDatosPlanta`(
IN _plantaid int,
IN _nombre varchar(100),
IN _phmin double,
IN _phmax double,
IN _plantmin int,
IN _plantmax int,
IN _germin int,
IN _germax int,
IN _cremin int,
IN _cremax int,
IN _tempmin int,
IN _tempmax int,
IN _expsolar int
)
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
    ROLLBACK;
    SELECT 'E0666' AS ERROR, 'SQLEXCEPTION' AS MESSAGE;
END;

START TRANSACTION;

UPDATE
	planta
SET
	nombre = _nombre,
	ph_min = _phmin,
	ph_max = _phmax,
	planta_m2_min = _plantmin,
	planta_m2_max = _plantmax,
	tiempo_germinacion_min = _germin,
	tiempo_germinacion_max = _germax,
	tiempo_crecimiento_min = _cremin,
	tiempo_crecimiento_max = _cremax,
	temperatura_min = _tempmin,
	temperatura_max = _tempmax,
	solar_id = _expsolar,
    updated_at = NOW()
WHERE
	planta.id = _plantaid;

COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updDatosProceso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updDatosProceso`(
IN _procesoid int,
IN _nombre varchar(100),
IN _descripcion varchar(1000),
IN _fecha date,
IN _areaCultivo double,
IN _volumenCultivo double
)
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING

BEGIN
    ROLLBACK;
    SELECT 'E0666' AS ERROR, 'SQLEXCEPTION' AS MESSAGE;
END;

START TRANSACTION;

	UPDATE
		proceso 
	SET
		nombre = _nombre,
		descripcion =  _descripcion,
		fecha_implementacion = _fecha,
		area_cultivo =   _areaCultivo,  
		volumen_cultivo =  _volumenCultivo
	WHERE
		id = _procesoid;
	
COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updDatosUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updDatosUsuario`(
IN _usuarioid INT,
IN _usuario varchar(100),
IN _email varchar(200),
IN _primernombre varchar(100),
IN _segundonombre varchar(100),
IN _primerapellido varchar(100),
IN _segundoapellido varchar(100)
)
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
BEGIN
    ROLLBACK;
    SELECT 'E0666' AS ERROR, 'SQLEXCEPTION' AS MESSAGE;
END;

START TRANSACTION;

	UPDATE 
		usuario
	SET 
		username = _usuario,
		email = _email,
		primer_nombre = _primernombre,
		segundo_nombre = _segundonombre,
		primer_apellido = _primerapellido,
		segundo_apellido = _segundoapellido     
	WHERE
		id = _usuarioid;
	 
COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updEstadoElemento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updEstadoElemento`(
IN _estadoactual int,
IN _elementotipo int,
IN _elementoid int
)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
	BEGIN
		ROLLBACK;
		SELECT 'E0666' AS ERROR, 'SQLEXCEPTION' AS MESSAGE;
	END;

	START TRANSACTION;
		IF _elementotipo = 1 THEN
			
			UPDATE aquaweb.usuario as usu
			SET usu.estado = _estadoactual
			WHERE usu.id = _elementoid;
					
		ELSEIF _elementotipo = 2 THEN
			
			UPDATE aquaweb.planta as pla
			SET pla.estado = _estadoactual
			WHERE pla.id = _elementoid;
			
		ELSEIF _elementotipo = 3 THEN

			UPDATE aquaweb.pez as pez
			SET pez.estado = _estadoactual
			WHERE pez.id = _elementoid;
		
        ELSE
        
			UPDATE aquaweb.proceso as pro
			SET pro.estado = _estadoactual
			WHERE pro.id = _elementoid;
            
		END IF;
	COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-31  8:22:47
