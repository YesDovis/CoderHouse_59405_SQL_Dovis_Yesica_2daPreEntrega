/*la función devolverá únicamente el número de usuarios cuyo nombre comienza con la letra proporcionada*/

DELIMITER //
CREATE FUNCTION contar_usuarios_por_letra_inicial(letra CHAR(1))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total 
    FROM Usuarios 
    WHERE LEFT(nombre, 1) = letra;
    RETURN total;
END//
DELIMITER ;

/*Uso de la función:*/

SELECT contar_usuarios_por_letra_inicial('J');

--------------------------------------------------------------------------------------------
/* la función que cuenta y devuelve la localidade que más pedidos han realizado:*/

DELIMITER //
CREATE FUNCTION localidad_con_mas_pedidos()
RETURNS VARCHAR(20)
BEGIN
    DECLARE localidad_mayor VARCHAR(100);
    
    SELECT d.localidad
    INTO localidad_mayor
    FROM Pedidos p
    JOIN Direcciones d ON p.id_direccion = d.id_direccion
    GROUP BY d.localidad
    ORDER BY COUNT(p.id_pedido) DESC
    LIMIT 1;

    RETURN localidad_mayor;
END//
DELIMITER ;


/*Uso de la función:*/

SELECT localidad_con_mas_pedidos();


------------------------------------------------------------------------------




