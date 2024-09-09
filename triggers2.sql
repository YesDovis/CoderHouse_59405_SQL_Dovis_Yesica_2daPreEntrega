------ Se crea una nueva tabla contenedora de los log generados por create trigger log_tabla_usuarios //

CREATE TABLE `cerveceria_la_birra_es_bella`.`acciones` (
`id` INT NOT NULL AUTO_INCREMENT,
`accion` VARCHAR(200) NULL,
`fecha` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`id`));


DELIMITER //
create trigger log_tabla_usuarios after insert on usuarios
for each row begin
	insert into acciones (accion) 
    value (concat('Se creo un usuario nuevo de nombre:' ,NEW.nombre, ' y con el id : ' , NEW.id_usuario));
end//
delimiter ;

/* Insert para creacion de registros */
INSERT INTO `cerveceria_la_birra_es_bella`.`usuarios` (`nombre`, `apellidos`, `fecha_nacimiento`, `email`, `password`) VALUES 
('Trigger',	'Prueba', '1986-08-24',	'trigger.prueba@mail.com',	'Trigger');
('Pepa', 'Pig', '2000-01-01', 'pepa.pig.prueba@mail.com', 'Pepa');
('Tri', 'Gger', '2013-03-18', 'tri.ger.prueba@mail.com', 'Tri');

UPDATE `cerveceria_la_birra_es_bella`.`usuarios` SET `fecha_nacimiento` = '2000-05-07' WHERE (`id_usuario` = '25');
UPDATE `cerveceria_la_birra_es_bella`.`usuarios` SET `email` = 'hikary.son@mail.com' WHERE (`id_usuario` = '26');

DELETE FROM `cerveceria_la_birra_es_bella`.`usuarios` WHERE (`id_usuario` = '26');
DELETE FROM `cerveceria_la_birra_es_bella`.`usuarios` WHERE (`id_usuario` = '24');
DELETE FROM `cerveceria_la_birra_es_bella`.`usuarios` WHERE (`id_usuario` = '25');
