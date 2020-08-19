select  emp.cuit, emp.razon_social, car.desc_cargo
from solicitudes_empresas se 
	inner join empresas emp on emp.cuit = se.cuit
	inner join cargos car on car.cod_cargo = se.cod_cargo
    left join contratos con on con.fecha_solicitud = se.fecha_solicitud and con.cod_cargo = se.cod_cargo and  con.cuit = se.cuit
where con.nro_contrato is null