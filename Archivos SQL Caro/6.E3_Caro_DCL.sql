use mysql ;

-- Usuario 1
create user if not exists 'User1_caro'@'localhost' identified by '123123' ;
-- permisos 
grant select on gestioncomercialintegral.cliente to 'User1_caro'@'localhost';

show grants for 'User1_caro'@'localhost';

-- eliminacion de permiso
REVOKE SELECT  ON gestioncomercialintegral.cliente FROM  'User1_caro'@'localhost' ; 

-- Usuario 2
create user if not exists 'User2_caro'@'localhost' identified by '123456' ;
-- permisos 
grant select on gestioncomercialintegral.producto to 'User2_caro'@'localhost';

show grants for 'User2_caro'@'localhost';

-- eliminacion de permiso
REVOKE SELECT  ON gestioncomercialintegral.producto FROM  'User2_caro'@'localhost';


