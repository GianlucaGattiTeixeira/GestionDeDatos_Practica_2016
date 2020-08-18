select  concat(p.nombre,' ' ,p.apellido) as postulante , c.desc_cargo from 
personas as p inner join antecedentes as a on p.dni = a.dni
inner join cargos as c on a.cod_cargo = c.cod_cargo