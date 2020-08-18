select distinct concat(p.nombre ,' ' , p.apellido ,' tiene como referencia a ', ifnull(a.persona_contacto,' no tiene referencia') ,' cuando trabajo en ' , emp.razon_social)  as 'antecedentes y contactos'
from personas p inner join antecedentes a on p.dni = a.dni
inner join empresas emp on a.cuit = emp.cuit
where a.persona_contacto in ('Armando Esteban Quito' , 'Felipe Rojas') or a.persona_contacto is null
