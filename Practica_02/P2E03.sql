select em.razon_social, em.direccion, em.e_mail, c.desc_cargo, se.anios_experiencia 
from empresas as em 
	inner join solicitudes_empresas as se on em.cuit = se.cuit
	inner join cargos as c on se.cod_cargo  = c.cod_cargo 
order by se.fecha_solicitud, c.desc_cargo