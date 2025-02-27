USE gestioncomercialintegral;
-- FUNCION 1 --
DROP FUNCTION IF EXISTS FN_Num_Cliente ; 

DELIMITER $$ 
CREATE FUNCTION  FN_Num_Cliente (P_PEDIDO INT)
RETURNS VARCHAR(100)
DETERMINISTIC 
BEGIN 
DECLARE Num_Client VARCHAR(100) ; 
SELECT id_cliente INTO Num_Client FROM PEDIDO
WHERE id_pedido = P_PEDIDO ; 

RETURN Num_Client ;
END$$
DELIMITER ;

SELECT FN_Num_Cliente(10); 

-- FUNCION 2 --
DROP FUNCTION IF EXISTS FN_MarcaProducto ; 

DELIMITER $$ 
CREATE FUNCTION  FN_MarcaProducto (P_id_producto INT)
RETURNS VARCHAR(100)
DETERMINISTIC 
BEGIN 
DECLARE MarcaProducto VARCHAR(100) ; 
SELECT marca INTO MarcaProducto FROM producto
WHERE id_producto = P_id_producto ; 

RETURN MarcaProducto ;
END$$
DELIMITER ;

SELECT FN_MarcaProducto (300030743) ;  

