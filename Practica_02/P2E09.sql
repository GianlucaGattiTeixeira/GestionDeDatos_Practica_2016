select emp.razon_social, car.desc_cargo, eva.desc_evaluacion, ea.resultado from
entrevistas ent inner join empresas emp on emp.cuit = ent.cuit
	inner join entrevistas_evaluaciones ea on ent.nro_entrevista = ea.nro_entrevista
	inner join evaluaciones eva on ea.cod_evaluacion = eva.cod_evaluacion
	inner join cargos car on car.cod_cargo = ent.cod_cargo
order by emp.razon_social asc, car.desc_cargo desc