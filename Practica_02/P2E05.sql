select  p.nombre, p.apellido, t.desc_titulo, t.tipo_titulo
from personas as p
	inner join personas_titulos as pt on  p.dni = pt.dni
    inner join titulos as t on t.cod_titulo = pt.cod_titulo