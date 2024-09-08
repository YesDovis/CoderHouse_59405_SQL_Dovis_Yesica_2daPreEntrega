CREATE VIEW Vista_Usuarios_Administradores AS
SELECT 
    u.id_usuario,
    u.nombre,
    u.apellidos,
    u.email
FROM 
    Usuarios u
JOIN Usuarios_Roles ur ON u.id_usuario = ur.id_usuario
JOIN Roles r ON ur.id_rol = r.id_rol
WHERE 
    r.nombre = 'rol_admin';

SELECT * FROM Vista_Usuarios_Administradores;

-----------------------------------------------------------
CREATE VIEW Vista_Clientes_Nombre_J AS
SELECT 
    u.id_usuario,
    u.nombre,
    u.apellidos,
    u.email
FROM 
    Usuarios u
JOIN Usuarios_Roles ur ON u.id_usuario = ur.id_usuario
JOIN Roles r ON ur.id_rol = r.id_rol
WHERE 
    r.nombre = 'rol_cliente' AND
    u.nombre LIKE 'J%';
    
SELECT * FROM Vista_Clientes_Nombre_J;



--------------------------------------------------------

CREATE VIEW Vista_Usuarios_Con_Compra_IPA AS
SELECT DISTINCT 
    u.id_usuario,
    u.nombre AS usuario_nombre,
    u.apellidos AS usuario_apellidos,
    u.email AS usuario_email,
    prod.nombre AS producto_nombre,
    prod.descripcion AS producto_descripcion
FROM 
    Usuarios u
JOIN Pedidos p ON u.id_usuario = p.id_usuario
JOIN Pedidos_Productos pp ON p.id_pedido = pp.id_pedido
JOIN Productos prod ON pp.id_producto = prod.id_producto
WHERE 
    prod.nombre LIKE '%IPA%';

-----------------------------------------------------------

CREATE VIEW Vista_Suma_Productos_Vendidos AS
SELECT 
    p.id_producto,
    p.nombre AS nombre_producto,
    p.descripcion AS descripcion_producto,
    SUM(pp.unidades) AS total_unidades_vendidas
FROM 
    Productos p
JOIN 
    Pedidos_Productos pp ON p.id_producto = pp.id_producto
GROUP BY 
    p.id_producto, p.nombre, p.descripcion;

SELECT * FROM Vista_Suma_Productos_Vendidos;


-------------------------------------------------------

CREATE VIEW Vista_Detalle_Pedidos AS
SELECT
    p.id_pedido AS pedido_id,
    p.fecha AS fecha_pedido,
    u.nombre AS nombre_usuario,
    u.apellidos AS apellidos_usuario,
    u.email AS email_usuario,
    r.nombre AS rol_usuario,
    d.localidad AS localidad_direccion,
    d.calle AS calle_direccion,
    d.numero AS numero_direccion,
    d.piso AS piso_direccion,
    d.letra AS letra_direccion,
    pr.nombre AS nombre_producto,
    pr.descripcion AS descripcion_producto,
    pp.unidades AS unidades_vendidas,
    pp.precio_venta AS precio_unitario,
    (pp.unidades * pp.precio_venta) AS total_producto
FROM 
    Pedidos p
JOIN 
    Usuarios u ON p.id_usuario = u.id_usuario
JOIN 
    Direcciones d ON p.id_direccion = d.id_direccion
JOIN 
    Pedidos_Productos pp ON p.id_pedido = pp.id_pedido
JOIN 
    Productos pr ON pp.id_producto = pr.id_producto
JOIN
    Usuarios_Roles ur ON u.id_usuario = ur.id_usuario
JOIN
    Roles r ON ur.id_rol = r.id_rol;

SELECT * FROM Vista_Detalle_Pedidos;