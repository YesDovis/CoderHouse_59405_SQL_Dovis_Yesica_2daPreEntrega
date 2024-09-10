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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (100,'Ipa kraken','Una Cerveza con mucho lupulo',4999.99,15),(110,'Ipa Stranger','Una Cerveza con mucho lupulo',5999.99,12),(120,'Ipa Juguetes Perdidos','Una Cerveza con mucho lupulo',6999.99,17),(130,'Ipa Sanfer','Una Cerveza con mucho lupulo',6999.99,17),(140,'Unthemhumtem','Una Cerveza con mucho lupulo',6999.99,17),(150,'Red ipa Stranger','Una Cerveza con mucho lupulo',5999.99,12),(160,'Hawkins Beer','Una cerveza ficticia que representa la localidad de Hawkins',5999.99,12),(170,'Asics Gel-Kayano 27','De cuerpo medio y amargor equilibrado, con doble dryhop de lúpulos ekuanot, sincoe, amarillo y mosaic.',4999.99,15),(180,'Under Armour HOVR Phantom','Una IPA viajera, para tomar en cualquier momento y en cualquier lugar. Tiene un aroma intenso, con notas a mango, pomelo y ananá, que nos transportan a un mundo mejor.',4999.99,15),(190,'Dungeons & Dragons Ale ',' Sus 7° de alcohol y elevado, aunque placentero, amargor de 65 IBU son la base ideal para que se transforme en la cerveza de culto de los cerveceros alrededor del mundo.',4999.99,15),(200,'Strange Brewing Mapachamama Neipa','Una Cerveza con mucho lupulo',5999.99,12),(210,'Strange Brewing Forma Fantasma Imperial Stout','Una Cerveza con mucho lupulo',5999.99,12),(220,'Strange Brewing Salto De Fé Neipa',' La intensidad del aroma, la cremosidad de la textura y la explosión del perfil tropical se hacen presentes en esta delicia inabarcable.',5999.99,12),(230,'Bieckert BAPA','BAPA Buenos Aires Pale Ale es una verdadera representación de la vibrante ciudad de Buenos Aires.',5999.99,12),(240,'Blest Apa','Me gusta la birra',5999.99,12),(250,'Strange Catacumbia','La hermana mayor de Cortado, por favor. Bizcocho, caramelo y café (mucho café)',5999.99,12),(260,'Mur Solo Pils Czech Pilsner',' Un perfecto ejemplo de equilibrio entre malta y lúpulo. En aroma y sabor se perciben notas a frutas de carozo, pasas, cítricos y florales.',5999.99,12),(270,'Mur  Atolondrada','Una pausa reflexiva en esta permanente y desquiciada rutina. Una cerveza color rubí, de amargor suave y cuerpo ligero.',5999.99,12),(280,'Baum Honey','Nuestra Maldita Honey es una cerveza color dorado, de cuerpo pleno con un intenso aroma y sabor a miel pura',4999.99,10),(290,'Nonstop American IPA','Resinas, frutas cítricas, frutas tropicales, como ananá, naranja, durazno, mango, limón, maracuyá, pino son algunos de los aromas y sabores que se pueden percibir en la American IPA.',4999.99,156),(291,'Cerveza Trigger','Nueva y complicada ',5555.99,10),(292,'Mur alcala','cerveza artesanal',4999.99,5),(293,'Mur Fruit','Cerveza Color Rubi',4999.99,7);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER log_tabla_productos AFTER INSERT ON productos
FOR EACH ROW 
BEGIN
    INSERT INTO acciones (accion, tipo_accion, tabla_afectada) 
    VALUES (
        CONCAT('Se agregó un nuevo producto: ', NEW.nombre, ' con el id: ', NEW.id_producto),
        'Creación de Producto',
        'productos'
    );
END */;;
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

-- Dump completed on 2024-09-09  0:54:41
