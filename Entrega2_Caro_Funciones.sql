USE gestioncomercialintegral2;
-- FUNCION 1 --
DROP FUNCTION IF EXISTS FN_Num_Cliente ; 

DELIMITER $$ 
CREATE FUNCTION  FN_Num_Cliente (P_PEDIDO INT)
RETURNS VARCHAR(100)
DETERMINISTIC 
BEGIN 
DECLARE Num_Client VARCHAR(100) ; 
SELECT id_cliente INTO Num_Client FROM PEDIDO
WHERE id_pedido = P_PEDIDO ; -- 10

RETURN Num_Client ;
END$$
DELIMITER ;

SELECT FN_Num_Cliente(10); 

-- FUNCION 2 --
DROP FUNCTION IF EXISTS FN_NombreCliente ; 

DELIMITER $$ 
CREATE FUNCTION  FN_NombreCliente (P_IdCliente INT)
RETURNS VARCHAR(100)
DETERMINISTIC 
BEGIN 
DECLARE V_Nombre VARCHAR(100) ; 
SELECT nombre INTO V_Nombre FROM cliente
WHERE id_cliente = P_IdCliente ; -- 1

RETURN V_Nombre ;
END$$
DELIMITER ;

SELECT FN_NombreCliente (1); 

-- Consulta
-- SELECT nombre AS V_Nombre FROM cliente
-- WHERE id_cliente = 1 ;