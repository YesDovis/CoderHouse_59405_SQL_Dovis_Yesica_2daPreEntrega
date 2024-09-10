CREATE DATABASE  IF NOT EXISTS `cerveceria_la_birra_es_bella` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `cerveceria_la_birra_es_bella`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cerveceria_la_birra_es_bella
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `acciones`
--

DROP TABLE IF EXISTS `acciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accion` varchar(200) DEFAULT NULL,
  `tipo_accion` varchar(100) DEFAULT NULL,
  `tabla_afectada` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acciones`
--

LOCK TABLES `acciones` WRITE;
/*!40000 ALTER TABLE `acciones` DISABLE KEYS */;
INSERT INTO `acciones` VALUES (1,'Se eliminó un usuario de nombre: Tri con el id: 22','Eliminación de Usuario','usuarios','2024-09-08 22:45:36'),(2,'Se eliminó un usuario de nombre: Trigger con el id: 20','Eliminación de Usuario','usuarios','2024-09-08 22:46:35'),(3,'Se eliminó un usuario de nombre: Pepa con el id: 21','Eliminación de Usuario','usuarios','2024-09-08 22:46:50'),(4,'Se creó un usuario nuevo de nombre: Leandra y con el id: 23','Creación de Usuario','usuarios','2024-09-08 22:56:42'),(5,'Se creó un usuario nuevo de nombre: Cesar y con el id: 24','Creación de Usuario','usuarios','2024-09-08 22:59:47'),(6,'Se creó un usuario nuevo de nombre: Pedro y con el id: 25','Creación de Usuario','usuarios','2024-09-08 23:02:57'),(7,'Se creó un usuario nuevo de nombre: Hikary y con el id: 26','Creación de Usuario','usuarios','2024-09-08 23:04:52'),(8,'Se editó el usuario con el id: 25. Nombre anterior: Pedro, Nombre nuevo: Pedro','Edición de Usuario','usuarios','2024-09-08 23:05:57'),(9,'Se editó el usuario con el id: 26. Nombre anterior: Hikary, Nombre nuevo: Hikary','Edición de Usuario','usuarios','2024-09-08 23:05:58'),(10,'Se eliminó un usuario de nombre: Hikary con el id: 26','Eliminación de Usuario','usuarios','2024-09-08 23:07:23'),(11,'Se eliminó un usuario de nombre: Cesar con el id: 24','Eliminación de Usuario','usuarios','2024-09-08 23:07:24'),(12,'Se eliminó un usuario de nombre: Pedro con el id: 25','Eliminación de Usuario','usuarios','2024-09-08 23:07:24'),(13,'Se agregó un nuevo producto: Mur Fruit con el id: 293','Creación de Producto','productos','2024-09-08 23:12:32');
/*!40000 ALTER TABLE `acciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-09  0:54:40
