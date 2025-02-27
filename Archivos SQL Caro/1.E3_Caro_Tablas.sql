DROP SCHEMA if exists GestionComercialIntegral;
CREATE SCHEMA GestionComercialIntegral;
USE GestionComercialIntegral;

CREATE TABLE CLIENTE (
id_cliente int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre varchar(100) NOT NULL,
mail varchar(100) NOT NULL,
direccion varchar(100) NOT NULL,
region varchar(100) NOT NULL
);

CREATE TABLE PRODUCTO (
id_producto int NOT NULL PRIMARY KEY AUTO_INCREMENT,
marca varchar(100) NOT NULL,
precio FLOAT,
categoria varchar(100) NOT NULL
);

CREATE TABLE PEDIDO (
id_pedido int NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_cliente int NOT NULL,
id_producto int NOT NULL,
fecha DATE,
FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente),
FOREIGN KEY (id_producto) REFERENCES PRODUCTO (id_producto)
);

CREATE TABLE FACTURACION (
id_factura int NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_cliente int NOT NULL,
id_producto int NOT NULL,
id_pedido int NOT NULL,
valor FLOAT,
fecha DATE,
FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente),
FOREIGN KEY (id_producto) REFERENCES PRODUCTO (id_producto),
FOREIGN KEY (id_pedido) REFERENCES PEDIDO (id_pedido)
);

CREATE TABLE ENTREGA (
id_entrega int NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_pedido int NOT NULL,
id_factura int NOT NULL,
transportista varchar(100) NOT NULL,
direccion varchar(100) NOT NULL,
region varchar(100) NOT NULL,
fecha DATE,
FOREIGN KEY (id_pedido) REFERENCES PEDIDO (id_pedido),
FOREIGN KEY (id_factura) REFERENCES FACTURACION (id_factura)
);

