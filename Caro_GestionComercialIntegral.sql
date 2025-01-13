CREATE SCHEMA GestionComercialIntegral;
USE GestionComercialIntegral;

CREATE TABLE CLIENTES (
id_cliente int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre varchar(100) NOT NULL,
mail varchar(100) NOT NULL,
direccion varchar(100) NOT NULL,
region varchar(100) NOT NULL
);

CREATE TABLE PRODUCTOS (
id_producto int NOT NULL PRIMARY KEY AUTO_INCREMENT,
marca varchar(100) NOT NULL,
precio FLOAT,
categoria varchar(100) NOT NULL
);

CREATE TABLE FACTURACION (
id_factura int NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_cliente int NOT NULL,
id_producto int NOT NULL,
id_pedido int NOT NULL,
valor FLOAT,
fecha DATE
);

CREATE TABLE PEDIDOS (
id_pedido int NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_cliente int NOT NULL,
id_producto int NOT NULL,
fecha DATE
);

CREATE TABLE ENTREGAS (
id_entrega int NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_pedido int NOT NULL,
id_factura int NOT NULL,
transportista varchar(100) NOT NULL,
direccion varchar(100) NOT NULL,
region varchar(100) NOT NULL,
fecha DATE
);

ALTER TABLE FACTURACION ADD CONSTRAINT fk_idcliente_FACTURACION
	FOREIGN KEY (id_cliente) REFERENCES CLIENTES (id_cliente);
ALTER TABLE FACTURACION ADD CONSTRAINT fk_idproducto_FACTURACION
	FOREIGN KEY (id_producto) REFERENCES PRODUCTOS (id_producto);
ALTER TABLE FACTURACION ADD CONSTRAINT fk_idpedido_FACTURACION
	FOREIGN KEY (id_pedido) REFERENCES PEDIDOS (id_pedido);
    
ALTER TABLE PEDIDOS ADD CONSTRAINT fk_idcliente_PEDIDOS
	FOREIGN KEY (id_cliente) REFERENCES CLIENTES (id_cliente);
ALTER TABLE PEDIDOS ADD CONSTRAINT fk_idproducto_PEDIDOS
	FOREIGN KEY (id_producto) REFERENCES PRODUCTOS (id_producto);

ALTER TABLE ENTREGAS ADD CONSTRAINT fk_idpedido_ENTREGAS
	FOREIGN KEY (id_pedido) REFERENCES PEDIDOS (id_pedido);
ALTER TABLE ENTREGAS ADD CONSTRAINT fk_idfactura_FACTURACION
	FOREIGN KEY (id_factura) REFERENCES FACTURACION (id_factura);
    

    