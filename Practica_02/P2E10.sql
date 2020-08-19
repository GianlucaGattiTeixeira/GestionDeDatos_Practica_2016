select emp.cuit, emp.razon_social, ifnull(se.fecha_solicitud,'sin solicitud') as 'fecha solicitud',ifnull(se.fecha_solicitud,'sin solicitud') as 'cargo'
from empresas emp left join solicitudes_empresas se on emp.cuit = se.cuit
left join cargos car on car.cod_cargo = se.cod_cargo