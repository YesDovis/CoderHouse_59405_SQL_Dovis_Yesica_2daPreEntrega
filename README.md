
<div aling="center">
    <img src="/img/Logo_blackbg.png">
</div>

# Entrega Proyecto SQL Coderhouse

## Primera preentrega

Alumna:Dovis Yesica Lorena

Docente: Maximiliano Torreblanca

Comisión: 59405 SQL   

### Introducción: Descripción de la temática de la base de datos:

Crear una base de datos relacionar para gestionar una tienda on line especializada en cerveza llamada "Cervecería La Birra es Bella". 
La base de datos gestionara usuarios, roles (cliente & administrador), direcciones, tarjetas, productos y pedidos.El diseño incluye múltiples tablas que reflejan las relaciones entre los diferentes elementos.

### Diagrama de Entidad Relación
___
<div aling="center">
    <img src="/img/DiagramaDER.jpg">
</div>

___

Para implementar las relaciones descritas, se necesitarán varias tablas intermedias y claves foráneas para establecer las conexiones entre las entidades.  A continuación, detallo cada componente y cómo se interrelacionan. 

___

### Listado de Tablas (Descripcion)

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


___

<div aling="center">
    <img src="/img/logo.png">
</div>
___


** © [DOVIS YESICA] 2024. Todos los derechos reservados.**
