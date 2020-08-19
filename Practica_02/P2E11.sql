select  emp.cuit, emp.razon_social, car.desc_cargo, ifnull(per.dni,'sin contrato') as 'dni',ifnull(per.nombre ,'sin contrato') as 'nombre',ifnull(per.apellido ,'sin contrato') as 'apellido'
from solicitudes_empresas se 
	inner join empresas emp on emp.cuit = se.cuit
	inner join cargos car on car.cod_cargo = se.cod_cargo
    left join contratos con on con.fecha_solicitud = se.fecha_solicitud and con.cod_cargo = se.cod_cargo and  con.cuit = se.cuit
    left join personas per on con.dni = per.dni
order by emp.razon_social
    
