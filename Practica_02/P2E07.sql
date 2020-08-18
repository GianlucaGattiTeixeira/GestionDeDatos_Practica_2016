select distinct e.razon_social, se.fecha_solicitud, c.desc_cargo, se.edad_minima, se.edad_maxima from 
empresas as e inner join solicitudes_empresas as se on e.cuit = se.cuit
	inner join cargos as c on se.cod_cargo = c.cod_cargo
	inner join entrevistas as ent on ent.cuit = e.cuit
where e.razon_social = 'Viejos amigos'

