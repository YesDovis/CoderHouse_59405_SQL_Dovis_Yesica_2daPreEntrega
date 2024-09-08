/*el procedimiento insertará al nuevo usuario, y el id_usuario será almacenado en la variable @nuevoIdUsuario, para re consultar.*/

DELIMITER //

CREATE PROCEDURE InsertarUsuarioSimple (
    IN nombreUsuario VARCHAR(50),
    IN apellidosUsuario VARCHAR(100),
    IN fechaNacimiento DATE,
    IN emailUsuario VARCHAR(100),
    IN passwordUsuario VARCHAR(255),
    IN idRol INT,
    OUT idUsuario INT
)
BEGIN
    /* Insertar en la tabla Usuarios*/
    INSERT INTO Usuarios (nombre, apellidos, fecha_nacimiento, email, password)
    VALUES (nombreUsuario, apellidosUsuario, fechaNacimiento, emailUsuario, passwordUsuario);

    /* Obtener el id del último usuario insertado*/
    SET idUsuario = LAST_INSERT_ID();

    /*Insertar el rol del usuario en la tabla Usuarios_Roles*/
    INSERT INTO Usuarios_Roles (id_usuario, id_rol)
    VALUES (idUsuario, idRol);

END //

DELIMITER ;

/* llamar al procedimiento*/

CALL InsertarUsuarioSimple(
    'Lorena',    
    'Davis',          
    '1986-05-13',    
    'lore.davis@mail.com', 
    'Lorena',    /*passwordUsuario*/
    1,                /*idRol*/
    @nuevoIdUsuario   /* Var  salida*/
);

/*CONSULTA*/

SELECT @nuevoIdUsuario;



----------------------------------------------------------------------

/*Este procedimiento toma un id_producto como entrada y devuelve los detalles del producto asociado en la tabla Productos.*/

DELIMITER //

CREATE PROCEDURE ObtenerDetallesProducto(IN p_id_producto INT)
BEGIN
    SELECT nombre, descripcion, precio, stock
    FROM Productos
    WHERE id_producto = p_id_producto;
END //

DELIMITER ;

/* llamar al procedimiento*/

CALL ObtenerDetallesProducto(150);


---------------------------------------------------------------------