
<div aling="center">
    <img src="/img/Logo_blackbg.png">
</div>

# Entrega Proyecto SQL Coderhouse

## Segunda preentrega

Alumna:Dovis Yesica Lorena

Docente: Maximiliano Torreblanca

Tutor: Cristian Ovejero

Comisión: 59405 SQL   

### Introducción: Descripción de la temática de la base de datos:

La Birra es Bellas es una tienda de ditribucion de cervezas artesanales, la misma busca expandirse dentro del mercado digital.

### Objetivo

Crear una base de datos relacionar para gestionar una tienda on line especializada en cerveza llamada "Cervecería La Birra es Bella". 

### Situación problemática

Creacion de base de datos gestionara y administrara usuarios roles desde administrador/vendedor y Cliente almacenando direcciones,metodo de pago, , productos y pedidos.El diseño incluye múltiples tablas que reflejan las relaciones entre los diferentes elementos.

### Diagrama de Entidad Relación
___
<div aling="center">
    <img src="/img/DiagramaDER.jpg">
</div>

___

Para implementar las relaciones descritas, se necesitarán varias tablas intermedias y claves foráneas para establecer las conexiones entre las entidades.  A continuación, detallo cada componente y cómo se interrelacionan. 

___

### Descripción de base de datos
___

TABLAS
___
`USUARIOS`  
+ Esta tabla almacena información básica sobre los usuarios.

`ROLES`  
+ Define los roles disponibles en el sistema, como "cliente", "administrador", etc. 

`USUARIO_ROLES`  
+ Esta tabla establece la relación entre usuarios y roles, indicando qué roles tiene asignados cada usuario.

`DIRECCIONES`  
+ Esta tabla almacena información sobre las direcciones de los usuarios.

`USUARIOS_DIRECCIONES`  
+ indicando las direcciones asociadas a cada usuario.

`TARJETAS`  
+ Guarda la información de las tarjetas de crédito de los usuarios.

`USUARIOS_TARJETAS`  
+ indica las tarjetas asociadas a cada usuario.

`PRODUCTOS`  
+ Representa los productos que se venden en la tienda.

`PEDIDOS`  
+ Almacena la información de los pedidos realizados.

`PEDIDOS_PRODUCTOS`  
+ Detalla los productos incluidos en cada pedido

___

## Definición de Entidades / Atributos / Tipo Dato / PK / FK / IX 

<div aling="center">
    <img src="/img/TABLA1.jpg">
</div>
<div aling="center">
    <img src="/img/TABLA2.jpg">
</div>


## Representación del Diagrama ER en Notación Chen:

<div aling="center">
    <img src="/img/DiagramaChen_BD_LBEB.jpg">
</div>

// se utilizo para el esquema https://online.visual-paradigm.com/ es de pago no permite descarga se realiza captura de pantalla, se procede a explicar las Relaciones entre Entidades que no me permitio la web//

## Explicacion 

`Usuarios tiene Usuarios_Roles`

Un usuario puede tener múltiples roles asignados a través de la entidad "Usuarios_Roles". Esta relación es de tipo **uno a muchos** (1), donde un usuario puede tener varios roles, pero un rol específico solo puede estar vinculado a un usuario dentro de esta tabla intermedia.

`Roles pertenece a Usuarios_Roles`

Un rol puede estar asociado a múltiples usuarios a través de la entidad "Usuarios_Roles". Esta relación también es de tipo **uno a muchos** (1), donde un rol puede ser asignado a varios usuarios diferentes.

`Usuarios tiene Usuarios_Direcciones`

Un usuario puede tener varias direcciones registradas mediante la entidad "Usuarios_Direcciones". 
La relación es de tipo **uno a muchos** (1), lo que significa que un usuario puede tener varias direcciones asociadas.

`Direcciones pertenece a Usuarios_Direcciones`

Una dirección específica puede estar vinculada a múltiples usuarios, pero en este contexto, una dirección está asociada directamente a un usuario mediante la entidad "Usuarios_Direcciones". Esta relación es de tipo **uno a muchos** (1).


`Usuarios tiene Usuarios_Tarjetas`

Un usuario puede tener varias tarjetas registradas a través de la entidad "Usuarios_Tarjetas". Esta es una relación de tipo **uno a muchos** (1), donde un usuario puede tener varias tarjetas asociadas.

`Tarjetas pertenece a Usuarios_Tarjetas`

Una tarjeta puede estar vinculada a múltiples usuarios, pero en este contexto, una tarjeta específica está asociada a un único usuario mediante la entidad "Usuarios_Tarjetas". Esta relación también es de tipo **uno a muchos** (1).

`Usuarios realiza Pedidos`

Un usuario puede realizar múltiples pedidos. Esta relación es de tipo **uno a muchos** (1), donde un usuario puede hacer varios pedidos.

`Direcciones es para Pedidos`

Un pedido está asociado a una única dirección de entrega. Esta relación es de tipo **uno a uno (1:1)**, donde un pedido específico se envía a una única dirección.

`Tarjetas se paga con Pedidos`

Un pedido se paga con una única tarjeta. Esta relación es de tipo **uno a uno (1:1)**, donde cada pedido se asocia a una tarjeta específica para el pago.

`Pedidos incluye Pedidos_Productos`

Un pedido puede incluir múltiples productos, a través de la entidad "Pedidos_Productos". Esta relación es de tipo **uno a muchos** (1), donde un pedido puede incluir varios productos.

`Productos es parte de Pedidos_Productos`

Un producto puede ser parte de múltiples pedidos a través de la entidad "Pedidos_Productos". Esta relación también es de tipo **uno a muchos** (1
), donde un producto puede ser incluido en diferentes pedidos.

## INSERT

Debido a la falta de datos adecuados que pudieran generarse utilizando herramientas como Mockaroo, los registros de la base de datos fueron insertados manualmente. Esta decisión se tomó porque los datos generados automáticamente no cumplían con los requisitos específicos de mi estructura de base de datos, como la coherencia en las relaciones entre las tablas y las particularidades de los tipos de datos utilizados. Por lo tanto, se realizaron inserciones directas para garantizar la integridad referencial y la correcta vinculación entre las diferentes entidades de la base de datos.

Se genera Carpeta CSV de registros insertados.

# Vistas

## Se diseñaron un total de 5 vistas:

1. Nombre de la vista: "Vista_Usuarios_Administradores"

` Descripción`  
+ Esta vista obtiene la información de los usuarios y sus roles, filtrando solo aquellos que tienen asignado el rol de administrador.

` Objetivo / Datos ` 

+ Crear la vista llamada Vista_Usuarios_Administradores.
+ Especifica las columnas que queremos obtener en el resultado de la vista. En este caso, se selecciona el id_usuario, nombre, apellidos, y email de la tabla Usuarios.Como buena practica se utilizo como alias (u) para identificar  de qué tabla proviene cada campo.
+ Se realiza una unión (JOIN) entre la tabla Usuarios y la tabla Usuarios_Roles mediante la coincidencia del campo id_usuario en ambas tablas. Esto significa que estamos relacionando cada usuario con los roles que tenga asignados.
+ JOIN Roles r ON ur.id_rol = r.id_rol:
Se realiza una segunda unión (JOIN), esta vez entre la tabla Usuarios_Roles y la tabla Roles, mediante el campo id_rol. Esto nos permite obtener el nombre del rol asignado a cada usuario.
+ WHERE r.nombre = 'rol_admin':
El WHERE filtra los resultados para obtener únicamente aquellos registros donde el campo nombre de la tabla Roles sea igual a 'rol_admin', es decir, usuarios con el rol de administrador.


` Consulta sobre un Rol de usuario específico ` 

<div aling="center">
    <img src="/img/Vista_Usuarios_Administradores.jpg">
</div>

___
 
2. Nombre de la vista: "Vista_Usuarios_Nombre_J"

` Descripción`  
+ Esta vista muestra todos los usuarios cuyo nombre comienza con la letra "J".

` Objetivo / Datos ` 

+ crear una vista llamada Vista_Usuarios_Nombre_J que muestra los usuarios de la tabla Usuarios cuyos nombres comienzan con la letra "J". La vista incluye las columnas id_usuario, nombre, apellidos y email.La misma modificando La cláusula LIKE  se puede utilizar para buscar cualquiel nombre segun necesidad > 'J%'  'Y%'  'D%' etc.

` Consulta sobre usuario cuyo nombre comienza con la letra "J" ` 

<div aling="center">
    <img src="/img/Vista_Usuarios_Nombre_J.jpg">
</div>

___

 
3. Nombre de la vista: "Vista_Usuarios_Con_Compra_IPA"

` Descripción`  
+ vista llamada Vista_Usuarios_Con_Compra_IPA que muestra información sobre los usuarios que han realizado compras de productos cuyo nombre contiene la palabra "IPA". La vista incluye el identificador, nombre, apellidos y email de los usuarios, así como el nombre y la descripción de los productos comprados.

` Objetivo / Datos ` 

+ El objetivo de la vista Vista_Usuarios_Con_Compra_IPA es proporcionar una manera rápida y conveniente de consultar qué usuarios han comprado productos relacionados con "IPA". Esto es útil para analizar las preferencias de los usuarios y generar informes sobre la popularidad de productos específicos dentro de una categoría de interés, en este caso, las cervezas IPA.

Datos en la Vista > id_usuario usuario_nombre usuario_apellidos  usuario_email producto_descripcion.

` Consulta sobre usuario cuya compra contenga la palabra ipa y datos del producto ` 

<div aling="center">
    <img src="/img/Vista_Usuarios_Con_Compra_IPA.jpg">
</div>
<div aling="center">
    <img src="/img/Vista_Usuarios_Con_Compra_IPA2.jpg">
</div>

___


4. Nombre de la vista: "Vista_Suma_Productos_Vendidos"

` Descripción`  

+ La vista Vista_Suma_Productos_Vendidos proporciona un resumen de la cantidad total de unidades vendidas para cada producto en la base de datos. Muestra el nombre, la descripción y el total de unidades vendidas de cada producto.

` Objetivo / Datos ` 

+ El objetivo de esta vista es facilitar el análisis de las ventas de productos al consolidar la información sobre las unidades vendidas por producto, lo que ayuda a evaluar el rendimiento de cada producto en términos de ventas.


`Resumen de la cantidad total de unidades vendidas  ` 

<div aling="center">
    <img src="/img/Vista_Suma_Productos_Vendidos.jpg">
</div>

___


5. Nombre de la vista: "Vista_Detalle_Pedidos"

` Descripción`  

+ La vista Vista_Detalle_Pedidos proporciona una visión detallada de cada pedido, incluyendo información del usuario, el rol del usuario, dirección de envío y los productos incluidos en el pedido, junto con el total de unidades vendidas y el costo total por producto.

` Objetivo / Datos ` 

+ El objetivo de esta vista es ofrecer un análisis integral de los pedidos, facilitando la revisión del comportamiento del cliente y las características del pedido, incluyendo el rol del usuario para posibles análisis de ventas basados en el tipo de usuario.
+ La vista Vista_Detalle_Pedidos utiliza los siguientes datos: el ID del pedido, la fecha del pedido, el nombre del usuario, los apellidos del usuario, el email del usuario, el rol del usuario, la localidad de la dirección, la calle de la dirección, el número de la dirección, el piso de la dirección, la letra de la dirección, el nombre del producto, la descripción del producto, las unidades vendidas del producto, el precio unitario del producto.


` Esta vista es ofrecer un análisis integral de los pedidos ` 

<div aling="center">
    <img src="/img/Vista_Detalle_Pedidos.jpg">
</div>

___

<div aling="center">
    <img src="/img/logo.png">
</div>


** © [DOVIS YESICA] 2024. Todos los derechos reservados.**
___
