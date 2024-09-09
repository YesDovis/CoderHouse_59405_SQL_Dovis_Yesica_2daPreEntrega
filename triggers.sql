
/*creacion de la tabla contenedora de las acciones que realizaran los Triggers
La tabla guardara un registro de creacion -edicio - eliminacion de usuarios y de creacion de productos */

CREATE TABLE `cerveceria_la_birra_es_bella`.`acciones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `accion` VARCHAR(200) NULL,
  `tipo_accion` VARCHAR(100) NULL,
  `tabla_afectada` VARCHAR(100) NULL,
  `fecha` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

/*Trigger para la tabla productos:*/

DELIMITER //
CREATE TRIGGER log_tabla_productos AFTER INSERT ON productos
FOR EACH ROW 
BEGIN
    INSERT INTO acciones (accion) 
    VALUES (CONCAT('Se agregó un nuevo producto: ', NEW.nombre, ' con el id: ', NEW.id_producto));
END//
DELIMITER ;

/*Trigger CREACION usuarios:*/

DELIMITER //
CREATE TRIGGER log_tabla_usuarios AFTER INSERT ON usuarios
FOR EACH ROW 
BEGIN
    INSERT INTO acciones (accion, tipo_accion, tabla_afectada) 
    VALUES (
        CONCAT('Se creó un usuario nuevo de nombre: ', NEW.nombre, ' y con el id: ', NEW.id_usuario),
        'Creación de Usuario',
        'usuarios'
    );
END//
DELIMITER ;

/*Trigger para Registrar la Edición de un Usuario*/

DELIMITER //
CREATE TRIGGER log_edicion_usuario AFTER UPDATE ON usuarios
FOR EACH ROW 
BEGIN
    INSERT INTO acciones (accion, tipo_accion, tabla_afectada) 
    VALUES (
        CONCAT('Se editó el usuario con el id: ', OLD.id_usuario, '. Nombre anterior: ', OLD.nombre, ', Nombre nuevo: ', NEW.nombre),
        'Edición de Usuario',
        'usuarios'
    );
END//
DELIMITER ;

/*Trigger para Registrar la Eliminación de un Usuario*/

DELIMITER //
CREATE TRIGGER log_eliminacion_usuario AFTER DELETE ON usuarios
FOR EACH ROW 
BEGIN
    INSERT INTO acciones (accion, tipo_accion, tabla_afectada) 
    VALUES (
        CONCAT('Se eliminó un usuario de nombre: ', OLD.nombre, ' con el id: ', OLD.id_usuario),
        'Eliminación de Usuario',
        'usuarios'
    );
END//
DELIMITER ;

/* Creacion de registros */

INSERT INTO `cerveceria_la_birra_es_bella`.`usuarios` (`nombre`, `apellidos`, `fecha_nacimiento`, `email`, `password`) VALUES 
('Leandra', 'Trigger', '1980-07-14', 'lean.trigger@mail.com', 'Leandra');
('Cesar', 'Thor', '1987-07-20', 'cesar.thor@mail.com', 'Cesar');
('Pedro', 'Pedro ', '2000-10-58', 'pedro.pedro@mail.com', 'Pedro');
INSERT INTO `cerveceria_la_birra_es_bella`.`productos` (`nombre`, `descripcion`, `precio`, `stock`) VALUES
('Mur Fruit', 'Cerveza Color Rubi', '4999.99', '7');

UPDATE `cerveceria_la_birra_es_bella`.`usuarios` SET `fecha_nacimiento` = '2000-05-07' WHERE (`id_usuario` = '25');
UPDATE `cerveceria_la_birra_es_bella`.`usuarios` SET `email` = 'hikary.son@mail.com' WHERE (`id_usuario` = '26');

DELETE FROM `cerveceria_la_birra_es_bella`.`usuarios` WHERE (`id_usuario` = '26');
DELETE FROM `cerveceria_la_birra_es_bella`.`usuarios` WHERE (`id_usuario` = '24');
DELETE FROM `cerveceria_la_birra_es_bella`.`usuarios` WHERE (`id_usuario` = '25');

SELECT * FROM cerveceria_la_birra_es_bella.acciones;