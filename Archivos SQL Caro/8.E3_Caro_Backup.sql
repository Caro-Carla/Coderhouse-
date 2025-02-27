-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: gestioncomercialintegral
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'DEFINO HORACIO','defino_h@hotmail.com','Varrida 554','SUR'),(2,'VILLACORTA IGNACIO','villacorta_i@hotmail.com','General Paz 335','NORTE'),(3,'GIBERAL SA','giberal@hotmail.com','Lisandro 223','SUR'),(4,'NAJM KARAM LILIANA DEOLINDA','najm_k@hotmail.com','Cabral 789','ESTE'),(5,'KLOBERTANS CLAUDIO ABEL','klobertans_c@hotmail.com','Linch 926','OESTE'),(6,'LERVU SA','lervu@hotmail.com','Don Orione 453','SUR'),(7,'NALA SA','nala@hotmail.com','Vedia 677','NORTE'),(8,'ATUEL SA','atuel@hotmail.com','Monroe 234','SUR'),(9,'CABRERA SRL','cabrera@hotmail.com','Chile 2323','ESTE'),(10,'LIGRAM SA','ligram@hotmail.com','Pacheco 1267','OESTE'),(11,'CABRAL SA','cabral@gmail.com','Castelar 156','SUR'),(12,'GOMEZ SA','gomez@gmail.com','Benito 778','NORTE'),(13,'ELITE SRL','elite@gmail.com','Tigre 564','SUR'),(14,'DIAZ SRL','diaz@gmail.com','Jose Paz 498','ESTE'),(15,'MANAS SA','manas@gmail.com','Solis 232','OESTE'),(16,'Caro SA','caro@gmail.com','PAZ 647','NORTE');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega` (
  `id_entrega` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_factura` int NOT NULL,
  `transportista` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_entrega`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_factura` (`id_factura`),
  CONSTRAINT `entrega_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  CONSTRAINT `entrega_ibfk_2` FOREIGN KEY (`id_factura`) REFERENCES `facturacion` (`id_factura`)
) ENGINE=InnoDB AUTO_INCREMENT=1244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
INSERT INTO `entrega` VALUES (1224,10,100030414,'Aubul Guzman Leonardo','Varrida 554','SUR','2024-09-05'),(1225,11,100030415,'Fernandez Garrido Mario','General Paz 335','NORTE','2024-05-06'),(1226,12,100030416,'Fernandez Garrido Mario','General Paz 335','NORTE','2024-05-07'),(1227,13,100030417,'Fernandez Cristian Javier','Lisandro 223','SUR','2024-02-07'),(1228,14,100030418,'Erdrich German Andres','Lisandro 223','SUR','2024-02-08'),(1229,15,100030419,'Romano Jesus Alberto','Lisandro 223','SUR','2024-07-09'),(1230,16,100030420,'Romano Jesus Alberto','Cabral 789','ESTE','2024-08-10'),(1231,17,100030421,'Romano Jesus Alberto','Linch 926','OESTE','2024-08-11'),(1232,18,100030422,'Aubul Guzman Leonardo','Don Orione 453','SUR','2024-02-12'),(1233,19,100030423,'Fernandez Garrido, Mario','Vedia 677','NORTE','2024-03-13'),(1234,20,100030424,'Aubul Guzman Leonardo','Monroe 234','SUR','2024-04-14'),(1235,21,100030425,'Fernandez Garrido, Mario','Chile 2323','ESTE','2024-05-15'),(1236,22,100030426,'Fernandez Cristian Javier','Pacheco 1267','OESTE','2024-07-16'),(1237,23,100030427,'Fernandez Cristian Javier','Pacheco 1267','OESTE','2024-09-17'),(1238,24,100030428,'Erdrich German Andres','Castelar 156','SUR','2024-08-18'),(1239,25,100030429,'Romano Jesus Alberto','Benito 778','NORTE','2024-12-19'),(1240,26,100030430,'Aubul Guzman Leonardo','Tigre 564','SUR','2024-11-21'),(1241,27,100030431,'Aubul Guzman Leonardo','Jose Paz 498','ESTE','2024-11-22'),(1242,28,100030432,'Fernandez Garrido, Mario','Solis 232','OESTE','2024-01-23'),(1243,29,100030433,'Romano Jesus Alberto','Castelar 156','SUR','2024-01-24');
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturacion`
--

DROP TABLE IF EXISTS `facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturacion` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_producto` int NOT NULL,
  `id_pedido` int NOT NULL,
  `valor` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_producto` (`id_producto`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `facturacion_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `facturacion_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `facturacion_ibfk_3` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=100030434 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacion`
--

LOCK TABLES `facturacion` WRITE;
/*!40000 ALTER TABLE `facturacion` DISABLE KEYS */;
INSERT INTO `facturacion` VALUES (100030414,1,300030743,10,10000,'2024-09-02'),(100030415,2,300030744,11,23000,'2024-05-03'),(100030416,2,300030745,12,15000,'2024-05-04'),(100030417,3,300030746,13,33000,'2024-02-05'),(100030418,3,300030747,14,18500,'2024-02-06'),(100030419,3,300030748,15,20000,'2024-07-07'),(100030420,4,300030749,16,34000,'2024-08-08'),(100030421,5,300030750,17,12000,'2024-08-09'),(100030422,6,300030751,18,24000,'2024-02-10'),(100030423,7,300030752,19,21000,'2024-03-11'),(100030424,8,300030753,20,22000,'2024-04-12'),(100030425,9,300030754,21,16000,'2024-05-13'),(100030426,10,300030755,22,14000,'2024-07-14'),(100030427,10,300030756,23,11000,'2024-09-15'),(100030428,11,300030757,24,31000,'2024-08-16'),(100030429,12,300030743,25,10000,'2024-12-17'),(100030430,13,300030744,26,23000,'2024-11-18'),(100030431,14,300030745,27,15000,'2024-11-19'),(100030432,15,300030746,28,33000,'2024-01-20'),(100030433,11,300030747,29,18500,'2024-01-21');
/*!40000 ALTER TABLE `facturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria_cliente`
--

DROP TABLE IF EXISTS `log_auditoria_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria_cliente` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_DE_ACCION` varchar(10) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_UPD_INS_DEL` date DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria_cliente`
--

LOCK TABLES `log_auditoria_cliente` WRITE;
/*!40000 ALTER TABLE `log_auditoria_cliente` DISABLE KEYS */;
INSERT INTO `log_auditoria_cliente` VALUES (1,'INSERT','cliente','root@localhost','2025-02-25');
/*!40000 ALTER TABLE `log_auditoria_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria_cliente2`
--

DROP TABLE IF EXISTS `log_auditoria_cliente2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria_cliente2` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `CAMPONUEVO_CAMPOANTERIOR` varchar(300) DEFAULT NULL,
  `NOMBRE_DE_ACCION` varchar(10) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_UPD_INS_DEL` date DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria_cliente2`
--

LOCK TABLES `log_auditoria_cliente2` WRITE;
/*!40000 ALTER TABLE `log_auditoria_cliente2` DISABLE KEYS */;
INSERT INTO `log_auditoria_cliente2` VALUES (1,'16 , Caro SA , caro@gmail.com , PAZ 647 , NORTE','INSERT','cliente','root@localhost','2025-02-25');
/*!40000 ALTER TABLE `log_auditoria_cliente2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_producto` int NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (10,1,300030743,'2024-09-02'),(11,2,300030744,'2024-05-03'),(12,2,300030745,'2024-05-04'),(13,3,300030746,'2024-02-05'),(14,3,300030747,'2024-02-06'),(15,3,300030748,'2024-07-07'),(16,4,300030749,'2024-08-08'),(17,5,300030750,'2024-08-09'),(18,6,300030751,'2024-02-10'),(19,7,300030752,'2024-03-11'),(20,8,300030753,'2024-04-12'),(21,9,300030754,'2024-05-13'),(22,10,300030755,'2024-07-14'),(23,10,300030756,'2024-09-15'),(24,11,300030757,'2024-08-16'),(25,12,300030743,'2024-12-17'),(26,13,300030744,'2024-11-18'),(27,14,300030745,'2024-11-19'),(28,15,300030746,'2024-01-20'),(29,11,300030747,'2024-01-21');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) NOT NULL,
  `precio` float DEFAULT NULL,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=300030758 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (300030743,'GLASS BALL 20 LIGHTS',10000,'GOLD'),(300030744,'PINK CHERRY LIGHTS',23000,'GOLD'),(300030745,'WHITE CHERRY LIGHTS',15000,'GOLD'),(300030746,'RECORD FRAME  ',33000,'GOLD'),(300030747,'STRAWBERRY CERAMIC ',18500,'GOLD'),(300030748,'PINK DOUGHNUT ',20000,'BLACK'),(300030749,'PLANET MUG',34000,'BLACK'),(300030750,'FANCY FONT HOME ',12000,'BLACK'),(300030751,'CAT BOWL ',24000,'BLACK'),(300030752,'DOG BOWL  ',21000,'BLACK'),(300030753,'SINGLE SIZE',22000,'SILVER'),(300030754,'TRINKET POT ',16000,'SILVER'),(300030755,'TRINKET BOX',14000,'SILVER'),(300030756,'CHASING BALL DESIGN',11000,'SILVER'),(300030757,'SWEET HOME DOORMAT',31000,'SILVER');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_cliente`
--

DROP TABLE IF EXISTS `vw_cliente`;
/*!50001 DROP VIEW IF EXISTS `vw_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cliente` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre`,
 1 AS `direccion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_facturacion_conteo`
--

DROP TABLE IF EXISTS `vw_facturacion_conteo`;
/*!50001 DROP VIEW IF EXISTS `vw_facturacion_conteo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_facturacion_conteo` AS SELECT 
 1 AS `COUNT(id_factura)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_facturacion_dic24`
--

DROP TABLE IF EXISTS `vw_facturacion_dic24`;
/*!50001 DROP VIEW IF EXISTS `vw_facturacion_dic24`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_facturacion_dic24` AS SELECT 
 1 AS `id_factura`,
 1 AS `id_cliente`,
 1 AS `id_producto`,
 1 AS `id_pedido`,
 1 AS `valor`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vw_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cliente` AS select `cliente`.`id_cliente` AS `id_cliente`,`cliente`.`nombre` AS `nombre`,`cliente`.`direccion` AS `direccion` from `cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_facturacion_conteo`
--

/*!50001 DROP VIEW IF EXISTS `vw_facturacion_conteo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_facturacion_conteo` AS select count(`facturacion`.`id_factura`) AS `COUNT(id_factura)` from `facturacion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_facturacion_dic24`
--

/*!50001 DROP VIEW IF EXISTS `vw_facturacion_dic24`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_facturacion_dic24` AS select `facturacion`.`id_factura` AS `id_factura`,`facturacion`.`id_cliente` AS `id_cliente`,`facturacion`.`id_producto` AS `id_producto`,`facturacion`.`id_pedido` AS `id_pedido`,`facturacion`.`valor` AS `valor`,`facturacion`.`fecha` AS `fecha` from `facturacion` where (`facturacion`.`fecha` > '2024-11-30') */;
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

-- Dump completed on 2025-02-27 11:10:29
