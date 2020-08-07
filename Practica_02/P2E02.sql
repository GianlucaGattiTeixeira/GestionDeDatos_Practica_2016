select concat(p.nombre,' ',p.apellido) as 'Nombre y apellido',c.dni, c.nro_contrato, c.fecha_incorporacion , p.fecha_registro_agencia, ifnull(c.fecha_caducidad,'sin fecha') as 'Fecha_Caducidad'from
empresas as e inner join contratos as c on e.cuit = c.cuit
inner join personas as p on c.dni = p.dni				
where e.razon_social IN ('Viejos Amigos', 'Tráigame Eso')