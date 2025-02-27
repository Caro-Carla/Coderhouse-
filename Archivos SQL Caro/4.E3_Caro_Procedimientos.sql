USE gestioncomercialintegral; 

-- PROCEDIMIENTO 1 --
DROP PROCEDURE IF EXISTS  SP_id_entrega_id_pedido; 

DELIMITER //
CREATE PROCEDURE SP_id_entrega_id_pedido( IN P_id_entrega INT ,
                                                      IN P_id_pedido INT ,                                                  
                                                      OUT P_id_factura INT ,
                                                      OUT P_transportista VARCHAR (100) )
BEGIN
SELECT id_factura, 
       transportista
       INTO 
       P_id_factura,
       P_transportista
FROM ENTREGA 
WHERE id_entrega = P_id_entrega
AND id_pedido  =  P_id_pedido; 
END //
DELIMITER ; 
CALL SP_id_entrega_id_pedido (1224 ,10,
  @P_id_factura,@P_transportista);
  
  SELECT @P_id_factura,@P_transportista;

-- PROCEDIMIENTO 2 --
DROP PROCEDURE IF EXISTS  SP_Marca_Precio_Categoria; 

DELIMITER //
CREATE PROCEDURE SP_Marca_Precio_Categoria ( IN P_id_producto INT ,
                                                      OUT P_marca VARCHAR (100),
                                                      OUT P_precio FLOAT,
                                                      OUT P_categoria VARCHAR (100) )
BEGIN
SELECT marca,
       precio,
       categoria
       INTO 
       P_marca,
       P_precio,
       P_categoria
FROM PRODUCTO
WHERE P_id_producto = id_producto; 
END //
DELIMITER ; 
CALL SP_Marca_Precio_Categoria(300030744,
  @P_marca,@P_precio,@P_categoria);
  
  SELECT @P_marca,@P_precio,@P_categoria;
