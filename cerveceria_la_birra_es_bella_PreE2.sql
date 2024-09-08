CREATE DATABASE IF NOT EXISTS cerveceria_la_birra_es_bella;

USE cerveceria_la_birra_es_bella;

CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE Roles (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

/* M:N (Un usuario puede tener varios roles y un rol puede pertenecer a varios usuarios)*/

CREATE TABLE Usuarios_Roles (
    id_usuario INT,
    id_rol INT,
    PRIMARY KEY(id_usuario, id_rol),
    FOREIGN KEY(id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY(id_rol) REFERENCES Roles(id_rol)
);

CREATE TABLE Direcciones (
    id_direccion INT AUTO_INCREMENT PRIMARY KEY,
    codigo_postal VARCHAR(5) NOT NULL,
    localidad VARCHAR(100) NOT NULL,
    calle VARCHAR(100) NOT NULL,
    numero INT NOT NULL,
    piso VARCHAR(5),
    letra VARCHAR(5)
);

/* 1:N (Un usuario puede tener varias direcciones)*/

CREATE TABLE usuarios_direcciones (
    id_usuario INT NOT NULL,
    id_direccion INT NOT NULL,
    PRIMARY KEY (id_usuario, id_direccion),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_direccion) REFERENCES direcciones(id_direccion)
);


CREATE TABLE Tarjetas (
    id_tarjeta INT AUTO_INCREMENT PRIMARY KEY,
    num_tarjeta VARCHAR(16) UNIQUE NOT NULL,
    nombre_titular VARCHAR(100) NOT NULL,
    fecha_caducidad DATE NOT NULL,
    CVV INT NOT NULL
);

/*1:N (Un usuario puede tener varias tarjetas)*/

CREATE TABLE Usuarios_Tarjetas (
    id_usuario INT,
    id_tarjeta INT,
    PRIMARY KEY(id_usuario, id_tarjeta),
    FOREIGN KEY(id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY(id_tarjeta) REFERENCES Tarjetas(id_tarjeta)
);

CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

/*1:N (Un usuario puede realizar varios pedidos)
1:1 (Un pedido tiene una única dirección y se paga con una única tarjeta)*/


CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME NOT NULL,
    id_usuario INT NOT NULL,
    id_direccion INT,
    id_tarjeta INT,
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario), /*referencia intro*/
    FOREIGN KEY(id_direccion) REFERENCES Direcciones(id_direccion),
    FOREIGN KEY(id_tarjeta) REFERENCES Tarjetas(id_tarjeta)
);


/*  M:N (Un pedido puede tener varios productos, y un producto puede estar en varios pedidos)*/

CREATE TABLE Pedidos_Productos (
    id_pedido INT,
    id_producto INT,
    unidades INT NOT NULL,
    precio_venta DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY(id_pedido, id_producto),
    FOREIGN KEY(id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY(id_producto) REFERENCES Productos(id_producto)
);

/* ----------------------  INSERT ----------------------------------*/


/*SELECT * FROM cerveceria_la_birra_es_bella.usuarios;*/

INSERT INTO Usuarios (nombre, apellidos, fecha_nacimiento, email, password) VALUES
('Yesica', 'Gonzalez', '1986-05-13', 'yesicagonzalez.perez@mail.com', 'Yesica'),
('Matias', 'Perez', '1988-03-12', 'matias.perez@mail.com', 'Matias'),
('Pedro', 'Rodriguez', '1995-07-01', 'pedro.rodriguez@mail.com', 'Pedro'),
('Eugenia', 'Martinez Perez', '1992-09-05', 'eugenia.martinez@mail.com', 'Eugenia'),
('Carlos', 'Gomez', '1997-02-14', 'carlos.sanchez@mail.com', 'Carlos'),
('Anabel', 'Garcia', '1991-11-23', 'ana.garcia@mail.com', 'Anabel'),
('David', 'Fernandez', '1993-06-09', 'david.fernandez@mail.com', 'David'),
('Luis', 'Paredez', '1989-12-30', 'luis.paredez@mail.com', 'Luis'),
('Javier', 'Gomez', '1996-08-18', 'javier.gomez@mail.com', 'Javier'),
('Nicolas', 'Sanchez', '1994-04-07', 'nicolas.sanchez@mail.com', 'Nicolas'),
('Esteban', 'Lalala', '1989-12-30', 'esteban.lalala@mail.com', 'Esteban'),
('Jimena', 'Gomez', '1984-08-18', 'jimena.gomez@mail.com', 'Jimena'),
('Juan', 'Sanchez', '1982-08-07', 'juan.sanchez@mail.com', 'Juan'),
('Jose', 'Sam', '1998-05-12', 'jose.sam@mail.com', 'Jose'),
('Maria', 'Sam', '1995-12-19', 'maria.sam@mail.com', 'Maria');

/*SELECT * FROM cerveceria_la_birra_es_bella.roles;*/

INSERT INTO Roles (nombre) VALUES 
('rol_cliente'), 
('rol_admin');

/*SELECT * FROM cerveceria_la_birra_es_bella.usuarios_roles;*/

    (1, 2), -- Yesica es administrador
    (2, 1), -- Cliente 1
    (3, 1), -- Cliente 2
    (4, 1), -- Cliente 3
    (5, 1), -- Cliente 4
    (6, 1), -- Cliente 5
    (7, 1), -- Cliente 6
    (8, 1), -- Cliente 7
    (9, 1), -- Cliente 8
    (10, 1); -- Cliente 9

/*SELECT * FROM cerveceria_la_birra_es_bella.usuarios_direcciones;*/

INSERT INTO Direcciones (codigo_postal, localidad, calle, numero, piso, letra) VALUES
('1515', 'Palermo', 'Cordoba', 111, '1r', NULL),
('1111', 'Palermo', 'Corrientes', 123, '3r', '1a'),
('1515', 'Palermo', 'Arevalo', 100, '2o', 'B'),
('1616', 'Palermo', 'Ravignani', 500, '4o', 'D'),
('1717', 'Belgrano', 'Arribeños', 1123, '1o', 'A'),
('1818', 'Belgrano', 'Juramento', 5025, '5o', 'C'),
('1919', 'Belgrano', 'Cabildo', 1865, '2o', 'A'),
('2020', 'Belgrano', 'Barrio chino', 1145, '1o', 'C'),
('2121', 'Almagro', 'Independencia', 2412, '3o', 'B'),
('5050', 'Almagro', 'Boedo', 1823, '1o', 'D');
('1919', 'Almagro', 'Belgrano', 1438, '2o', 'A'),
('2020', 'Almagro', 'Medrano', 1777, '1o', 'C'),
('2121', 'Almagro', 'Rivadavia', 2437, '3o', 'B'),
('5050', 'Almagro', 'Colombres', 1828, '1o', 'D'),
('5050', 'Retiro', 'Santa fe', 1827, '1o', 'D');

/*SELECT * FROM cerveceria_la_birra_es_bella.usuarios_direcciones;*/

INSERT INTO usuarios_direcciones (id_usuario, id_direccion) VALUES
(1, 2),
(2, 4),
(3, 10),
(4, 6),
(5, 8),
(6, 1),
(7, 3),
(8, 5),
(9, 7),
(10, 9);



/*SELECT * FROM cerveceria_la_birra_es_bella.tarjetas;*/

INSERT INTO Tarjetas (num_tarjeta, nombre_titular, fecha_caducidad, CVV) VALUES 
('1111222233334444', 'Matias Perez', '2024-05-01', 123),
('2222333344445555', 'Pedro Rodriguez', '2023-11-01', 456),
('3333444455556666', 'Eugenia Martinez', '2024-02-01', 789),
('4444555566667777', 'Carlos Gomez', '2025-08-01', 234),
('5555666677778888', 'Anabel Garcia', '2022-10-01', 567),
('6666777788889999', 'David Fernandez', '2023-12-01', 890),
('7777888899990000', 'Luis Paredez', '2026-01-01', 345),
('8888999900001111', 'Javier Gomez', '2022-06-01', 678),
('9999000011112222', 'Nicolas Sanchez', '2025-03-01', 901),
('0000111122223333', 'Esteban Lalala', '2024-09-01', 234),
('9999000011112372', 'Jimena Gomez', '2025-03-01', 901),
('9999000011112352', 'Juan Sanchez', '2025-04-01', 921),
('9999000014442382', 'Jose Sam', '2025-08-08', 927),
('9999000055512372', 'Maria Sam', '2025-09-07', 981);

/*SELECT * FROM cerveceria_la_birra_es_bella.usuarios_tarjetas;*/

INSERT INTO Usuarios_Tarjetas (id_usuario, id_tarjeta) VALUES
(2,15),
(3,16),
(4,17),
(5,18),
(6,19),
(7,20),
(8,21),
(9,22),
(10,23),
(11,24),
(12,25),
(13,26),
(14,27),
(15,28);

/* SELECT * FROM cerveceria_la_birra_es_bella.productos;*/

INSERT INTO Productos (id_producto, nombre, descripcion, precio, stock) VALUES 
    (100, 'Ipa kraken', 'Una Cerveza con mucho lupulo', 4999.99, 15),
    (110, 'Ipa Stranger', 'Una Cerveza con mucho lupulo', 5999.99, 12),
    (120, 'Ipa Juguetes Perdidos', 'Una Cerveza con mucho lupulo', 6999.99, 17),
    (130, 'Ipa Sanfer', 'Una Cerveza con mucho lupulo', 6999.99, 17),
    (140, 'Unthemhumtem', 'Una Cerveza con mucho lupulo', 6999.99, 17),
    (150, 'Red ipa Stranger', 'Una Cerveza con mucho lupulo',5999.99, 12),
    (160, 'Hawkins Beer', 'Una cerveza ficticia que representa la localidad de Hawkins', 5999.99, 12),
    (170, 'Asics Gel-Kayano 27', 'De cuerpo medio y amargor equilibrado, con doble dryhop de lúpulos ekuanot, sincoe, amarillo y mosaic.', 4999.99, 15),
    (180, 'Under Armour HOVR Phantom', 'Una IPA viajera, para tomar en cualquier momento y en cualquier lugar. Tiene un aroma intenso, con notas a mango, pomelo y ananá, que nos transportan a un mundo mejor.', 4999.99, 15),
    (190, 'Dungeons & Dragons Ale ', ' Sus 7° de alcohol y elevado, aunque placentero, amargor de 65 IBU son la base ideal para que se transforme en la cerveza de culto de los cerveceros alrededor del mundo.', 4999.99, 15),
    (200, 'Strange Brewing Mapachamama Neipa', 'Una Cerveza con mucho lupulo', 5999.99, 12),
    (210, 'Strange Brewing Forma Fantasma Imperial Stout', 'Una Cerveza con mucho lupulo', 5999.99, 12),
    (220, 'Strange Brewing Salto De Fé Neipa', ' La intensidad del aroma, la cremosidad de la textura y la explosión del perfil tropical se hacen presentes en esta delicia inabarcable.', 5999.99, 12),
    (230, 'Bieckert BAPA', 'BAPA Buenos Aires Pale Ale es una verdadera representación de la vibrante ciudad de Buenos Aires.', 5999.99, 12),
    (240, 'Blest Apa', 'Me gusta la birra', 5999.99, 12),
    (250, 'Strange Catacumbia', 'La hermana mayor de Cortado, por favor. Bizcocho, caramelo y café (mucho café)', 5999.99, 12),
    (260, 'Mur Solo Pils Czech Pilsner', ' Un perfecto ejemplo de equilibrio entre malta y lúpulo. En aroma y sabor se perciben notas a frutas de carozo, pasas, cítricos y florales.', 5999.99, 12),
    (270, 'Mur  Atolondrada', 'Una pausa reflexiva en esta permanente y desquiciada rutina. Una cerveza color rubí, de amargor suave y cuerpo ligero.', 5999.99, 12),
    (280, 'Baum Honey', 'Nuestra Maldita Honey es una cerveza color dorado, de cuerpo pleno con un intenso aroma y sabor a miel pura', 4999.99, 15),
    (290, 'Nonstop American IPA', 'Resinas, frutas cítricas, frutas tropicales, como ananá, naranja, durazno, mango, limón, maracuyá, pino son algunos de los aromas y sabores que se pueden percibir en la American IPA.', 4999.99, 156);

/*SELECT * FROM cerveceria_la_birra_es_bella.pedidos;*/

INSERT INTO Pedidos (id_pedido, fecha, id_usuario, id_direccion, id_tarjeta) VALUES 

(1, '2023-01-01 10:20:16', 1, 1, 15),
(2, '2023-01-02 11:05:46', 2, 2, 16),
(3,'2023-01-03 12:20:01', 3, 3, 17),
(4,'2023-01-04 13:45:00', 4, 4 ,18),
(5, '2023-01-05 14:27:09', 5, 5, 19),
(6, '2023-01-10 15:27:09', 6, 6, 20),
(7, '2023-01-10 16:27:09', 7, 7, 21),
(8, '2023-01-11 17:27:09', 8, 8, 22),
(9, '2023-01-11 18:27:09', 9, 9, 23),
(10, '2023-01-12 19:27:09', 10, 10, 24),
(11, '2023-01-12 19:27:09', 11, 11, 25),
(12, '2023-01-12 19:27:09', 12, 12, 26),
(13, '2023-01-12 19:27:09', 13, 13, 27),
(14, '2023-01-12 19:27:09', 14, 15, 28);

/*SELECT * FROM cerveceria_la_birra_es_bella.pedidos_productos;*/

INSERT INTO Pedidos_Productos (id_pedido, id_producto, unidades, precio_venta) VALUES 
(1, 100, 2, 4999.99),
(2, 110, 6, 5999.99),
(3, 120, 1, 6999.99),
(4, 130, 2, 6999.99),
(5, 140, 1, 6999.99),
(6, 150, 12, 5999.99),
(7, 160, 1, 5999.99),
(8, 170, 5, 4999.99),
(9, 180, 6, 4999.99),
(10, 190, 1, 4999.999),
(11, 200, 12, 5999.99),
(12, 210, 1, 5999.99),
(13, 220, 12, 5999.999),
(14, 230, 1, 5999.99);

ALTER TABLE Pedidos_Productos ADD CONSTRAINT fk_pedidos_productos_pedidos FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido);
ALTER TABLE Pedidos_Productos ADD CONSTRAINT fk_pedidos_productos_productos FOREIGN KEY (id_producto) REFERENCES Productos(id_producto);