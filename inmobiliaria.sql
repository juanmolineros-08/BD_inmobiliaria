-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: inmobiliaria
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `casa`
--

DROP TABLE IF EXISTS `casa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casa` (
  `id_casa` smallint NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(50) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `No_escritura` bigint NOT NULL,
  `estrato` tinyint NOT NULL,
  `precio` float NOT NULL,
  `estado` enum('venta','renta') NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `id_propietario` smallint NOT NULL,
  PRIMARY KEY (`id_casa`),
  UNIQUE KEY `id_casa` (`id_casa`),
  KEY `id_propietario` (`id_propietario`),
  CONSTRAINT `casa_ibfk_1` FOREIGN KEY (`id_propietario`) REFERENCES `propietario` (`id_propietario`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa`
--

LOCK TABLES `casa` WRITE;
/*!40000 ALTER TABLE `casa` DISABLE KEYS */;
INSERT INTO `casa` VALUES (1,'Cll. 5 #10-32, Barrio El Centro','Casa de 3 habitaciones, 2 banos, 120m2, con patio interior y balcon. Ideal para familia.',5432109876,4,350000000,'venta',1,12),(2,'Cra. 9 #2N-15, Barrio Campobello','Apartamento de 2 habitaciones, 1 bano, 75m2, con garaje cubierto y vista panoramica.',1234567890,5,1800000,'renta',1,25),(3,'Cll. 20 #1-45, Barrio La Esmeralda','Casa de 4 habitaciones, 3 banos, 180m2, con jardin amplio y zona de ropas.',9876543210,3,280000000,'venta',0,7),(4,'Cra. 7 #12N-05, Barrio Ciudad Jardin','Casa moderna de 3 habitaciones, 2 banos, 150m2, con garaje y excelente iluminacion.',6789012345,5,420000000,'venta',1,18),(5,'Cll. 1N #3-28, Barrio El Recuerdo','Apartamento de 1 habitacion, 1 bano, 50m2, ideal para estudiantes, cerca a universidades.',3456789012,4,950000,'renta',1,3),(6,'Cra. 17 #25-10, Barrio Belalcazar','Casa de 5 habitaciones, 4 banos, 250m2, con estudio, garaje doble y terraza.',2109876543,6,480000000,'venta',1,29),(7,'Cll. 10 #15-30, Barrio El Cadillal','Casa de 3 habitaciones, 2 banos, 130m2, con patio y buena ventilacion.',8765432109,3,1200000,'renta',0,10),(8,'Cra. 2 #18N-50, Barrio Los Sauces','Casa de 4 habitaciones, 3 banos, 200m2, con jardin y zona de BBQ.',7654321098,4,390000000,'venta',1,22),(9,'Cll. 23 #7-08, Barrio La Pamba','Apartamento de 2 habitaciones, 2 banos, 85m2, con balcon y vista a la ciudad.',4321098765,5,2500000,'renta',1,5),(10,'Cra. 6 #8-19, Barrio El Ortigal','Casa colonial de 3 habitaciones, 2 banos, 160m2, con patio central y acabados de lujo.',9012345678,4,450000000,'venta',1,15),(11,'Cll. 12 #5-24, Barrio La Esmeralda','Casa de 3 habitaciones, 2 banos, 110m2, con garaje y cerca a parques.',5678901234,3,220000000,'venta',0,1),(12,'Cra. 4 #1N-35, Barrio Modelo','Apartamento de 2 habitaciones, 1 bano, 65m2, ideal para pareja joven.',1098765432,2,900000,'renta',1,28),(13,'Cll. 15 #2-10, Barrio Alfonso Lopez','Casa de 4 habitaciones, 2 banos, 170m2, con patio grande y arboles frutales.',7890123456,3,310000000,'venta',1,9),(14,'Cra. 11 #20N-01, Barrio Los Naranjos','Casa de 3 habitaciones, 3 banos, 140m2, con terraza y vista a la montana.',3210987654,5,2800000,'renta',1,20),(15,'Cll. 8 #13-03, Barrio Valencia','Apartamento de 1 habitacion, 1 bano, 45m2, amoblado, perfecto para solteros.',6543210987,4,1100000,'renta',0,4),(16,'Cra. 1 #22-18, Barrio La Floresta','Casa de 5 habitaciones, 3 banos, 220m2, con piscina y zona social.',9876543210,6,490000000,'venta',1,27),(17,'Cll. 2N #7-07, Barrio El Centro','Local comercial adaptable a vivienda, 2 habitaciones, 1 bano, 90m2, con excelente ubicacion.',1234567890,4,200000000,'venta',1,11),(18,'Cra. 14 #16-25, Barrio La Paz','Casa de 3 habitaciones, 2 banos, 100m2, con garaje y patio pequeno.',5432109876,2,850000,'renta',1,6),(19,'Cll. 6 #11-40, Barrio Yanaconas','Casa de 4 habitaciones, 3 banos, 190m2, con estudio y balcon.',3456789012,5,370000000,'venta',1,19),(20,'Cra. 3 #19N-12, Barrio La Aldea','Apartamento de 2 habitaciones, 2 banos, 70m2, con vista al rio.',2109876543,3,1500000,'renta',0,2),(21,'Cll. 7 #9-20, Barrio San Jose','Casa de 3 habitaciones, 2 banos, 135m2, con garaje y patio. Cerca a colegios.',8765432109,3,260000000,'venta',1,13),(22,'Cra. 10 #4-05, Barrio El Lago','Apartamento de 2 habitaciones, 1 bano, 80m2, con balcon y zona verde comun.',7654321098,4,1800000,'renta',1,26),(23,'Cll. 18 #6-15, Barrio La Pista','Casa de 4 habitaciones, 3 banos, 165m2, con jardin y zona de lavanderia.',4321098765,2,290000000,'venta',0,8),(24,'Cra. 5 #17N-30, Barrio Pomona','Casa de 3 habitaciones, 2 banos, 125m2, con garaje y patio interior.',9012345678,5,330000000,'venta',1,16),(25,'Cll. 9 #14-02, Barrio Los Alcazares','Apartamento de 1 habitacion, 1 bano, 55m2, ideal para inversion.',5678901234,3,1000000,'renta',1,21),(26,'Cra. 13 #21-09, Barrio Santa Clara','Casa de 5 habitaciones, 4 banos, 240m2, con estudio y terraza amplia.',1098765432,6,470000000,'venta',1,30),(27,'Cll. 4 #11-11, Barrio El Centro','Casa de 2 habitaciones, 1 bano, 95m2, con patio y cerca a comercio.',7890123456,4,190000000,'venta',1,14),(28,'Cra. 8 #15N-22, Barrio La Campina','Apartamento de 3 habitaciones, 2 banos, 90m2, con balcon y vista a la ciudad.',3210987654,5,2300000,'renta',1,23),(29,'Cll. 16 #3-06, Barrio Lomas de Granada','Casa de 4 habitaciones, 3 banos, 185m2, con jardin y garaje doble.',6543210987,5,410000000,'venta',1,17),(30,'Cra. 12 #1N-40, Barrio El Tablazo','Casa de 3 habitaciones, 2 banos, 105m2, con patio y zona de lavanderia.',9876543210,2,950000,'renta',0,1),(31,'Cll. 21 #8-18, Barrio Villa del Rosario','Casa de 3 habitaciones, 2 banos, 145m2, con garaje y buen estado.',1234567890,3,275000000,'venta',1,2),(32,'Cra. 1 #24N-03, Barrio El Dorado','Apartamento de 2 habitaciones, 1 bano, 70m2, con balcon y area social.',5432109876,4,1600000,'renta',1,24),(33,'Cll. 13 #10-25, Barrio La Paz','Casa de 4 habitaciones, 2 banos, 175m2, con jardin grande y zona de BBQ.',3456789012,3,300000000,'venta',1,5),(34,'Cra. 7 #18-14, Barrio Los Comuneros','Casa de 3 habitaciones, 2 banos, 115m2, con patio y buena ubicacion.',2109876543,2,1000000,'renta',1,10),(35,'Cll. 3N #5-05, Barrio La Estancia','Apartamento de 1 habitacion, 1 bano, 60m2, amoblado, ideal para ejecutivos.',8765432109,4,1200000,'renta',0,3),(36,'Cra. 15 #23-07, Barrio Puerta del Sol','Casa de 5 habitaciones, 3 banos, 230m2, con estudio y terraza.',7654321098,6,460000000,'venta',1,29),(37,'Cll. 11 #12-33, Barrio San Fernando','Casa de 3 habitaciones, 2 banos, 120m2, con garaje y patio.',4321098765,3,240000000,'venta',1,12),(38,'Cra. 9 #20N-10, Barrio Las Garzas','Apartamento de 2 habitaciones, 2 banos, 80m2, con vista a la ciudad.',9012345678,5,2000000,'renta',1,25),(39,'Cll. 19 #4-16, Barrio El Placer','Casa de 4 habitaciones, 3 banos, 195m2, con jardin y zona de juegos.',5678901234,4,380000000,'venta',1,7),(40,'Cra. 2 #16-08, Barrio La Victoria','Casa de 3 habitaciones, 2 banos, 100m2, con patio y cerca a transporte publico.',1098765432,2,800000,'renta',1,18),(41,'Cll. 14 #6-28, Barrio Los Andes','Casa de 3 habitaciones, 2 banos, 155m2, con garaje doble y balcon.',7890123456,4,360000000,'venta',1,3),(42,'Cra. 11 #19N-02, Barrio Villa Paula','Apartamento de 2 habitaciones, 1 bano, 75m2, con balcon y zona verde.',3210987654,3,1700000,'renta',1,20),(43,'Cll. 8 #15-01, Barrio El Dorado','Casa de 4 habitaciones, 3 banos, 210m2, con piscina y zona social.',6543210987,6,500000000,'venta',1,29),(44,'Cra. 1 #20-15, Barrio La Primavera','Casa de 2 habitaciones, 1 bano, 85m2, con patio y buena iluminacion.',9876543210,2,150000000,'venta',0,10),(45,'Cll. 2N #9-09, Barrio Centro Historico','Casa colonial de 3 habitaciones, 2 banos, 170m2, con patio central y detalles arquitectonicos.',1234567890,4,400000000,'venta',1,22),(46,'Cra. 14 #17-20, Barrio Los Rosales','Apartamento de 3 habitaciones, 2 banos, 95m2, con garaje y vista a la ciudad.',5432109876,5,2800000,'renta',1,5),(47,'Cll. 6 #13-45, Barrio Santa Rita','Casa de 4 habitaciones, 3 banos, 205m2, con jardin y zona de BBQ.',3456789012,4,430000000,'venta',1,15),(48,'Cra. 3 #21N-11, Barrio El Cortijo','Casa de 3 habitaciones, 2 banos, 110m2, con patio y cerca a vias principales.',2109876543,3,900000,'renta',0,1),(49,'Cll. 7 #10-22, Barrio San Camilo','Casa de 3 habitaciones, 2 banos, 130m2, con garaje y cerca a colegios.',8765432109,3,250000000,'venta',1,28),(50,'Cra. 10 #5-01, Barrio El Mirador','Apartamento de 2 habitaciones, 1 bano, 78m2, con balcon y zona verde comun.',7654321098,4,1900000,'renta',1,9);
/*!40000 ALTER TABLE `casa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `id_contrato` smallint NOT NULL AUTO_INCREMENT,
  `descripcion` mediumtext NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_final` datetime NOT NULL,
  `valor_total` float NOT NULL,
  `id_ficha` smallint NOT NULL,
  `estado_firma` tinyint(1) NOT NULL,
  `id_empleado` smallint NOT NULL,
  PRIMARY KEY (`id_contrato`),
  UNIQUE KEY `id_contrato` (`id_contrato`),
  KEY `id_ficha` (`id_ficha`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_ficha`) REFERENCES `ficha` (`id_ficha`),
  CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,'Contrato de arrendamiento de apartamento en El Recuerdo','2024-11-17 10:00:00','2025-11-17 10:00:00',950000,1,1,15),(2,'Contrato de compraventa de casa en La Esmeralda','2024-12-22 09:00:00','2024-12-22 09:00:00',280000000,3,1,7),(3,'Contrato de compraventa de casa en Los Sauces','2025-01-24 16:00:00','2025-01-24 16:00:00',390000000,5,1,11),(4,'Contrato de compraventa de casa en El Centro','2025-03-02 15:00:00','2025-03-02 15:00:00',350000000,7,1,3),(5,'Contrato de compraventa de casa en Centro Historico','2025-03-27 09:30:00','2025-03-27 09:30:00',400000000,9,1,27),(6,'Contrato de compraventa de local en El Centro','2025-04-20 11:30:00','2025-04-20 11:30:00',200000000,11,1,19),(7,'Contrato de compraventa de casa en Ciudad Jardin','2025-05-12 15:30:00','2025-05-12 15:30:00',420000000,13,1,3),(8,'Contrato de arrendamiento de casa en Los Naranjos','2025-06-07 11:00:00','2026-06-07 11:00:00',2800000,15,1,23),(9,'Contrato de compraventa de casa en El Centro','2025-06-22 10:30:00','2025-06-22 10:30:00',190000000,17,1,11),(10,'Contrato de compraventa de casa en El Placer','2025-07-12 12:00:00','2025-07-12 12:00:00',380000000,19,1,15),(11,'Contrato de compraventa de casa en El Cortijo','2025-08-03 14:00:00','2025-08-03 14:00:00',900000,21,1,19),(12,'Contrato de compraventa de casa en San Camilo','2025-08-30 10:00:00','2025-08-30 10:00:00',250000000,23,1,3),(13,'Contrato de compraventa de casa en La Primavera','2025-09-20 09:00:00','2025-09-20 09:00:00',150000000,25,1,7),(14,'Contrato de compraventa de casa en Santa Rita','2025-10-03 16:00:00','2025-10-03 16:00:00',430000000,27,1,27),(15,'Contrato de arrendamiento de apartamento en Los Rosales','2025-10-22 15:00:00','2026-10-22 15:00:00',2800000,29,1,23),(16,'Contrato de compraventa de casa en La Paz','2025-11-07 09:30:00','2025-11-07 09:30:00',300000000,31,1,11),(17,'Contrato de arrendamiento de apartamento en La Estancia','2025-11-22 11:30:00','2026-11-22 11:30:00',1200000,33,1,15),(18,'Contrato de compraventa de casa en Puerta del Sol','2025-12-07 15:30:00','2025-12-07 15:30:00',460000000,35,1,7),(19,'Contrato de compraventa de casa en El Dorado','2025-12-24 11:00:00','2025-12-24 11:00:00',500000000,37,1,3),(20,'Contrato de arrendamiento de apartamento en Las Garzas','2026-01-12 10:30:00','2027-01-12 10:30:00',2000000,39,1,27),(21,'Contrato de compraventa de casa en Los Andes','2026-02-03 12:00:00','2026-02-03 12:00:00',360000000,41,1,19),(22,'Contrato de compraventa de casa en El Dorado','2026-02-22 14:00:00','2026-02-22 14:00:00',500000000,43,1,23),(23,'Contrato de arrendamiento de apartamento en Valencia','2026-03-12 10:00:00','2027-03-12 10:00:00',1100000,45,1,15),(24,'Contrato de arrendamiento de apartamento en Villa Paula','2026-04-03 09:00:00','2027-04-03 09:00:00',1700000,47,1,11),(25,'Contrato de compraventa de casa en Santa Clara','2026-04-22 16:00:00','2026-04-22 16:00:00',470000000,49,1,19);
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` smallint NOT NULL AUTO_INCREMENT,
  `cc_empleado` varchar(10) NOT NULL,
  `nombre_empleado` varchar(50) NOT NULL,
  `salario` float NOT NULL,
  `tipo_empleado` enum('asesor','agente inmobiliario','abogado','cajero') NOT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `id_empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'79123456','Juanita Sierra',1350000,'asesor'),(2,'80234567','Andres Quintero',2750000,'agente inmobiliario'),(3,'91345678','Sofia Rueda',4200000,'abogado'),(4,'1024567890','David Cardenas',1150000,'cajero'),(5,'1135678901','Mariana Acosta',1600000,'asesor'),(6,'1246789012','Felipe Benitez',3100000,'agente inmobiliario'),(7,'83578901','Camila Delgado',5100000,'abogado'),(8,'94689012','Nicolas Giraldo',1050000,'cajero'),(9,'1057901234','Isabella Restrepo',1850000,'asesor'),(10,'1168012345','Alejandro Cifuentes',2400000,'agente inmobiliario'),(11,'1279123456','Valentina Duque',3700000,'abogado'),(12,'78802345','Santiago Betancur',1300000,'cajero'),(13,'89913456','Gabriela Echeverry',1450000,'asesor'),(14,'1000245678','Daniel Marin',3800000,'agente inmobiliario'),(15,'1111356789','Laura Cano',5800000,'abogado'),(16,'1222467890','Sebastian Posada',1700000,'cajero'),(17,'73335789','Emilia Osorio',1950000,'asesor'),(18,'84446890','Jose Mesa',2900000,'agente inmobiliario'),(19,'95557901','Ana Maria Cardona',4900000,'abogado'),(20,'1066801234','Mateo Gaviria',1200000,'cajero'),(21,'1177912345','Juliana Montoya',1550000,'asesor'),(22,'1288023456','Carlos Cuervo',3300000,'agente inmobiliario'),(23,'79991345','Valeria Yepes',4400000,'abogado'),(24,'80002456','Miguel Alzate',1000000,'cajero'),(25,'91113567','Natalia Rojas',1700000,'asesor'),(26,'1022467890','Ricardo Rivera',2600000,'agente inmobiliario'),(27,'1133578901','Paula Soto',3900000,'abogado'),(28,'1244689012','Esteban Palacio',1400000,'cajero'),(29,'75557901','Luisa Franco',1800000,'asesor'),(30,'86668012','Javier Velez',3400000,'agente inmobiliario');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id_factura` smallint NOT NULL AUTO_INCREMENT,
  `id_contrato` smallint NOT NULL,
  `fecha` datetime NOT NULL,
  `id_empleado` smallint NOT NULL,
  `estado_pago` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `id_factura` (`id_factura`),
  KEY `id_contrato` (`id_contrato`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_contrato`) REFERENCES `contrato` (`id_contrato`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,1,'2025-01-15 10:30:00',4,1),(2,2,'2025-02-01 15:00:00',8,1),(3,3,'2025-02-05 09:30:00',12,1),(4,4,'2025-02-20 11:00:00',16,1),(5,5,'2025-03-10 16:00:00',20,1),(6,6,'2025-03-25 10:00:00',24,1),(7,7,'2025-04-10 14:00:00',28,1),(8,8,'2025-04-25 12:30:00',2,1),(9,9,'2025-05-05 09:00:00',6,1),(10,10,'2025-05-20 15:00:00',10,1),(11,11,'2025-06-05 11:00:00',14,1),(12,12,'2025-06-20 10:30:00',18,1),(13,13,'2025-07-05 14:30:00',22,1),(14,14,'2025-07-20 12:00:00',26,1),(15,15,'2025-08-05 09:00:00',30,1),(16,16,'2025-08-20 16:00:00',1,0),(17,17,'2025-09-05 10:00:00',5,1),(18,18,'2025-09-20 15:30:00',9,0),(19,19,'2025-10-05 11:00:00',13,1),(20,20,'2025-10-20 14:00:00',17,0),(21,21,'2025-11-05 10:30:00',21,1),(22,22,'2025-11-20 12:00:00',25,0),(23,23,'2025-12-05 09:00:00',29,1),(24,24,'2025-12-20 15:00:00',3,0),(25,25,'2026-01-05 11:30:00',7,1),(26,1,'2025-02-15 10:00:00',4,0),(27,2,'2025-03-01 14:00:00',8,1),(28,3,'2025-03-05 09:00:00',12,0),(29,4,'2025-03-20 11:00:00',16,1),(30,5,'2025-04-10 16:00:00',20,0);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha`
--

DROP TABLE IF EXISTS `ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ficha` (
  `id_ficha` smallint NOT NULL AUTO_INCREMENT,
  `id_usuario` smallint NOT NULL,
  `fecha_visita` datetime NOT NULL,
  `id_casa` smallint NOT NULL,
  `estado_visita` tinyint(1) NOT NULL,
  `desicion` tinyint(1) NOT NULL,
  `id_asesor` smallint NOT NULL,
  `id_agente` smallint NOT NULL,
  PRIMARY KEY (`id_ficha`),
  UNIQUE KEY `id_ficha` (`id_ficha`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_asesor` (`id_asesor`),
  KEY `id_agente` (`id_agente`),
  KEY `id_casa` (`id_casa`),
  CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `ficha_ibfk_2` FOREIGN KEY (`id_asesor`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `ficha_ibfk_3` FOREIGN KEY (`id_agente`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `ficha_ibfk_4` FOREIGN KEY (`id_casa`) REFERENCES `casa` (`id_casa`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha`
--

LOCK TABLES `ficha` WRITE;
/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
INSERT INTO `ficha` VALUES (1,1,'2024-11-15 10:00:00',5,1,1,1,10),(2,2,'2024-12-01 14:30:00',12,1,0,21,2),(3,3,'2024-12-20 09:00:00',3,1,1,25,14),(4,4,'2025-01-05 11:00:00',25,1,0,9,30),(5,5,'2025-01-22 16:00:00',8,1,1,5,22),(6,6,'2025-02-10 10:30:00',30,1,0,13,6),(7,7,'2025-02-28 15:00:00',1,1,1,17,26),(8,8,'2025-03-10 12:00:00',19,1,0,29,2),(9,9,'2025-03-25 09:30:00',45,1,1,1,30),(10,10,'2025-04-01 14:00:00',2,1,0,25,14),(11,11,'2025-04-18 11:30:00',17,1,1,9,6),(12,12,'2025-05-02 10:00:00',28,1,0,13,22),(13,13,'2025-05-10 15:30:00',4,1,1,5,10),(14,14,'2025-05-20 09:00:00',31,1,0,29,26),(15,15,'2025-06-05 11:00:00',14,1,1,1,18),(16,16,'2025-06-12 16:00:00',40,1,0,21,6),(17,17,'2025-06-20 10:30:00',27,1,1,17,14),(18,18,'2025-07-01 15:00:00',6,0,0,25,30),(19,19,'2025-07-10 12:00:00',39,0,1,5,2),(20,20,'2025-07-25 09:30:00',11,0,0,13,22),(21,21,'2025-08-01 14:00:00',48,0,1,9,6),(22,22,'2025-08-15 11:30:00',20,0,0,29,10),(23,23,'2025-08-28 10:00:00',49,0,1,17,18),(24,24,'2025-09-05 15:30:00',7,0,0,1,30),(25,25,'2025-09-18 09:00:00',44,0,1,21,14),(26,26,'2025-09-25 11:00:00',18,0,0,25,2),(27,27,'2025-10-01 16:00:00',47,0,1,5,22),(28,28,'2025-10-10 10:30:00',9,0,0,13,6),(29,29,'2025-10-20 15:00:00',46,0,1,9,10),(30,30,'2025-11-01 12:00:00',21,0,0,17,18),(31,1,'2025-11-05 09:30:00',33,0,1,29,14),(32,2,'2025-11-12 14:00:00',13,0,0,21,26),(33,3,'2025-11-20 11:30:00',35,0,1,1,6),(34,4,'2025-11-28 10:00:00',24,0,0,25,22),(35,5,'2025-12-05 15:30:00',37,0,1,5,10),(36,6,'2025-12-15 09:00:00',16,0,0,13,30),(37,7,'2025-12-22 11:00:00',32,0,1,17,2),(38,8,'2026-01-05 16:00:00',26,0,0,29,14),(39,9,'2026-01-10 10:30:00',38,0,1,9,6),(40,10,'2026-01-20 15:00:00',10,0,0,1,26),(41,11,'2026-02-01 12:00:00',41,0,1,25,18),(42,12,'2026-02-10 09:30:00',23,0,0,5,22),(43,13,'2026-02-20 14:00:00',43,0,1,13,30),(44,14,'2026-03-01 11:30:00',15,0,0,21,14),(45,15,'2026-03-10 10:00:00',34,0,1,17,2),(46,16,'2026-03-20 15:30:00',29,0,0,1,10),(47,17,'2026-04-01 09:00:00',42,0,1,29,6),(48,18,'2026-04-10 11:00:00',22,0,0,13,18),(49,19,'2026-04-20 16:00:00',36,0,1,5,22),(50,20,'2026-05-01 10:30:00',50,0,0,25,30);
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario`
--

DROP TABLE IF EXISTS `propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietario` (
  `id_propietario` smallint NOT NULL AUTO_INCREMENT,
  `cc_propietario` varchar(10) NOT NULL,
  `nombre_propietario` varchar(50) NOT NULL,
  `telefono_propietario` varchar(14) NOT NULL,
  PRIMARY KEY (`id_propietario`),
  UNIQUE KEY `id_propietario` (`id_propietario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
INSERT INTO `propietario` VALUES (1,'1012345678','Juan Perez','+57 3101234567'),(2,'1023456789','Maria Rodriguez','+57 3202345678'),(3,'1034567890','Carlos Gomez','+57 3003456789'),(4,'1045678901','Ana Lopez','+57 3114567890'),(5,'1056789012','Andres Martinez','+57 3015678901'),(6,'1067890123','Laura Sanchez','+57 3126789012'),(7,'1078901234','Diego Ramirez','+57 3027890123'),(8,'1089012345','Sofia Torres','+57 3138901234'),(9,'1090123456','Daniel Castro','+57 3039012345'),(10,'1101234567','Valentina Vargas','+57 3140123456'),(11,'1112345678','Fernando Diaz','+57 3041234567'),(12,'1123456789','Camila Morales','+57 3152345678'),(13,'1134567890','Ricardo Rojas','+57 3053456789'),(14,'1145678901','Isabella Herrera','+57 3164567890'),(15,'1156789012','Jorge Pineda','+57 3065678901'),(16,'1167890123','Natalia Guerrero','+57 3176789012'),(17,'1178901234','Luis Medina','+57 3077890123'),(18,'1189012345','Paula Ortiz','+57 3188901234'),(19,'1190123456','Miguel Reyes','+57 3089012345'),(20,'1201234567','Andrea Salazar','+57 3190123456'),(21,'1212345678','Javier Mendoza','+57 3091234567'),(22,'1223456789','Carolina Nuñez','+57 3212345678'),(23,'1234567890','David Solano','+57 3003456789'),(24,'1245678901','Alejandra Sierra','+57 3104567890'),(25,'1256789012','Sergio Quintero','+57 3205678901'),(26,'1267890123','Daniela Rueda','+57 3016789012'),(27,'1278901234','Fabian Cardenas','+57 3117890123'),(28,'1289012345','Gabriela Acosta','+57 3028901234'),(29,'1290123456','Manuel Benitez','+57 3129012345'),(30,'1301234567','Viviana Delgado','+57 3030123456');
/*!40000 ALTER TABLE `propietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` smallint NOT NULL AUTO_INCREMENT,
  `cc_usuario` varchar(10) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `telefono_usuario` varchar(14) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'1301234567','Sofia Giraldo','+57 3109876543'),(2,'1302345678','Mateo Restrepo','+57 3118765432'),(3,'1303456789','Valeria Cifuentes','+57 3127654321'),(4,'1304567890','Sebastian Duque','+57 3136543210'),(5,'1305678901','Mariana Betancur','+57 3145432109'),(6,'1306789012','Nicolas Echeverry','+57 3154321098'),(7,'1307890123','Gabriela Marin','+57 3163210987'),(8,'1308901234','Alejandro Cano','+57 3172109876'),(9,'1309012345','Manuela Posada','+57 3181098765'),(10,'1310123456','Juan David Osorio','+57 3190987654'),(11,'1311234567','Laura Mesa','+57 3209876543'),(12,'1312345678','Santiago Vargas','+57 3218765432'),(13,'1313456789','Emilia Cardona','+57 3227654321'),(14,'1314567890','Felipe Gaviria','+57 3236543210'),(15,'1315678901','Sara Montoya','+57 3245432109'),(16,'1316789012','Jose Cuervo','+57 3254321098'),(17,'1317890123','Maria Jose Yepes','+57 3263210987'),(18,'1318901234','Daniela Alzate','+57 3272109876'),(19,'1319012345','Esteban Quintero','+57 3281098765'),(20,'1320123456','Valeria Rojas','+57 3290987654'),(21,'1321234567','Samuel Duque','+57 3009876543'),(22,'1322345678','Isabella Rivera','+57 3018765432'),(23,'1323456789','Carlos Andres Soto','+57 3027654321'),(24,'1324567890','Sofia Palacio','+57 3036543210'),(25,'1325678901','Julian Herrera','+57 3045432109'),(26,'1326789012','Lorena Franco','+57 3054321098'),(27,'1327890123','Andres Felipe Velez','+57 3063210987'),(28,'1328901234','Paula Andrea Restrepo','+57 3072109876'),(29,'1329012345','Cristian Zapata','+57 3081098765'),(30,'1330123456','Viviana Lopez','+57 3090987654');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-03 12:25:31
