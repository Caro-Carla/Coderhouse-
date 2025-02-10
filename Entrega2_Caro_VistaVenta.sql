
DROP SCHEMA if exists VENTA;
CREATE SCHEMA VENTA;
USE VENTA;

-- Vista 1 --
CREATE OR REPLACE VIEW VW_CLIENTE AS
SELECT id_cliente, nombre, direccion FROM  gestioncomercialintegral2.cliente;

select * from VW_CLIENTE;

-- Vista 2 --
DROP view if exists VW_FACTURACION_DIC24;

CREATE OR REPLACE VIEW VW_FACTURACION_DIC24 AS
SELECT * FROM  gestioncomercialintegral2.facturacion
WHERE fecha > '2024-11-30';

select * from VW_FACTURACION_DIC24;

-- Vista 3 --
CREATE OR REPLACE VIEW VW_FACTURACION_CONTEO AS
SELECT COUNT(id_factura) 
FROM  gestioncomercialintegral2.facturacion;

select * from VW_FACTURACION_CONTEO;