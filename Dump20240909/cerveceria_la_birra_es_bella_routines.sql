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
-- Temporary view structure for view `vista_usuarios_con_compra_ipa`
--

DROP TABLE IF EXISTS `vista_usuarios_con_compra_ipa`;
/*!50001 DROP VIEW IF EXISTS `vista_usuarios_con_compra_ipa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuarios_con_compra_ipa` AS SELECT 
 1 AS `id_usuario`,
 1 AS `usuario_nombre`,
 1 AS `usuario_apellidos`,
 1 AS `usuario_email`,
 1 AS `producto_nombre`,
 1 AS `producto_descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_usuarios_nombre_j`
--

DROP TABLE IF EXISTS `vista_usuarios_nombre_j`;
/*!50001 DROP VIEW IF EXISTS `vista_usuarios_nombre_j`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuarios_nombre_j` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre`,
 1 AS `apellidos`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_usuarios_administradores`
--

DROP TABLE IF EXISTS `vista_usuarios_administradores`;
/*!50001 DROP VIEW IF EXISTS `vista_usuarios_administradores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuarios_administradores` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre`,
 1 AS `apellidos`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_suma_productos_vendidos`
--

DROP TABLE IF EXISTS `vista_suma_productos_vendidos`;
/*!50001 DROP VIEW IF EXISTS `vista_suma_productos_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_suma_productos_vendidos` AS SELECT 
 1 AS `id_producto`,
 1 AS `nombre_producto`,
 1 AS `descripcion_producto`,
 1 AS `total_unidades_vendidas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_detalle_pedidos`
--

DROP TABLE IF EXISTS `vista_detalle_pedidos`;
/*!50001 DROP VIEW IF EXISTS `vista_detalle_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_detalle_pedidos` AS SELECT 
 1 AS `pedido_id`,
 1 AS `fecha_pedido`,
 1 AS `nombre_usuario`,
 1 AS `apellidos_usuario`,
 1 AS `email_usuario`,
 1 AS `rol_usuario`,
 1 AS `localidad_direccion`,
 1 AS `calle_direccion`,
 1 AS `numero_direccion`,
 1 AS `piso_direccion`,
 1 AS `letra_direccion`,
 1 AS `nombre_producto`,
 1 AS `descripcion_producto`,
 1 AS `unidades_vendidas`,
 1 AS `precio_unitario`,
 1 AS `total_producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_usuarios_con_compra_ipa`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuarios_con_compra_ipa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_usuarios_con_compra_ipa` AS select distinct `u`.`id_usuario` AS `id_usuario`,`u`.`nombre` AS `usuario_nombre`,`u`.`apellidos` AS `usuario_apellidos`,`u`.`email` AS `usuario_email`,`prod`.`nombre` AS `producto_nombre`,`prod`.`descripcion` AS `producto_descripcion` from (((`usuarios` `u` join `pedidos` `p` on(`u`.`id_usuario` = `p`.`id_usuario`)) join `pedidos_productos` `pp` on(`p`.`id_pedido` = `pp`.`id_pedido`)) join `productos` `prod` on(`pp`.`id_producto` = `prod`.`id_producto`)) where `prod`.`nombre` like '%IPA%' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_usuarios_nombre_j`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuarios_nombre_j`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_usuarios_nombre_j` AS select `usuarios`.`id_usuario` AS `id_usuario`,`usuarios`.`nombre` AS `nombre`,`usuarios`.`apellidos` AS `apellidos`,`usuarios`.`email` AS `email` from `usuarios` where `usuarios`.`nombre` like 'J%' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_usuarios_administradores`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuarios_administradores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_usuarios_administradores` AS select `u`.`id_usuario` AS `id_usuario`,`u`.`nombre` AS `nombre`,`u`.`apellidos` AS `apellidos`,`u`.`email` AS `email` from ((`usuarios` `u` join `usuarios_roles` `ur` on(`u`.`id_usuario` = `ur`.`id_usuario`)) join `roles` `r` on(`ur`.`id_rol` = `r`.`id_rol`)) where `r`.`nombre` = 'rol_admin' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_suma_productos_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `vista_suma_productos_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_suma_productos_vendidos` AS select `p`.`id_producto` AS `id_producto`,`p`.`nombre` AS `nombre_producto`,`p`.`descripcion` AS `descripcion_producto`,sum(`pp`.`unidades`) AS `total_unidades_vendidas` from (`productos` `p` join `pedidos_productos` `pp` on(`p`.`id_producto` = `pp`.`id_producto`)) group by `p`.`id_producto`,`p`.`nombre`,`p`.`descripcion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_detalle_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `vista_detalle_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_detalle_pedidos` AS select `p`.`id_pedido` AS `pedido_id`,`p`.`fecha` AS `fecha_pedido`,`u`.`nombre` AS `nombre_usuario`,`u`.`apellidos` AS `apellidos_usuario`,`u`.`email` AS `email_usuario`,`r`.`nombre` AS `rol_usuario`,`d`.`localidad` AS `localidad_direccion`,`d`.`calle` AS `calle_direccion`,`d`.`numero` AS `numero_direccion`,`d`.`piso` AS `piso_direccion`,`d`.`letra` AS `letra_direccion`,`pr`.`nombre` AS `nombre_producto`,`pr`.`descripcion` AS `descripcion_producto`,`pp`.`unidades` AS `unidades_vendidas`,`pp`.`precio_venta` AS `precio_unitario`,`pp`.`unidades` * `pp`.`precio_venta` AS `total_producto` from ((((((`pedidos` `p` join `usuarios` `u` on(`p`.`id_usuario` = `u`.`id_usuario`)) join `direcciones` `d` on(`p`.`id_direccion` = `d`.`id_direccion`)) join `pedidos_productos` `pp` on(`p`.`id_pedido` = `pp`.`id_pedido`)) join `productos` `pr` on(`pp`.`id_producto` = `pr`.`id_producto`)) join `usuarios_roles` `ur` on(`u`.`id_usuario` = `ur`.`id_usuario`)) join `roles` `r` on(`ur`.`id_rol` = `r`.`id_rol`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'cerveceria_la_birra_es_bella'
--

--
-- Dumping routines for database 'cerveceria_la_birra_es_bella'
--
/*!50003 DROP FUNCTION IF EXISTS `contar_usuarios_por_letra_inicial` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `contar_usuarios_por_letra_inicial`(letra CHAR(1)) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total 
    FROM Usuarios 
    WHERE LEFT(nombre, 1) = letra;
    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `localidad_con_mas_pedidos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `localidad_con_mas_pedidos`() RETURNS varchar(20) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE localidad_mayor VARCHAR(20);
    
    SELECT d.localidad
    INTO localidad_mayor
    FROM Pedidos p
    JOIN Direcciones d ON p.id_direccion = d.id_direccion
    GROUP BY d.localidad
    ORDER BY COUNT(p.id_pedido) DESC
    LIMIT 1;

    RETURN localidad_mayor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarUsuarioSimple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarUsuarioSimple`(
    IN nombreUsuario VARCHAR(50),
    IN apellidosUsuario VARCHAR(100),
    IN fechaNacimiento DATE,
    IN emailUsuario VARCHAR(100),
    IN passwordUsuario VARCHAR(255),
    IN idRol INT,
    OUT idUsuario INT
)
BEGIN

    INSERT INTO Usuarios (nombre, apellidos, fecha_nacimiento, email, password)
    VALUES (nombreUsuario, apellidosUsuario, fechaNacimiento, emailUsuario, passwordUsuario);


    SET idUsuario = LAST_INSERT_ID();


    INSERT INTO Usuarios_Roles (id_usuario, id_rol)
    VALUES (idUsuario, idRol);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerDetallesProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerDetallesProducto`(IN p_id_producto INT)
BEGIN
    SELECT nombre, descripcion, precio, stock
    FROM Productos
    WHERE id_producto = p_id_producto;
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

-- Dump completed on 2024-09-09  0:54:41
