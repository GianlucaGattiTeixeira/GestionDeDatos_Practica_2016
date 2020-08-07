select p.dni, p.apellido, p.nombre, c.sueldo, c.nro_contrato
from personas as p inner join contratos as c on p.dni = c.dni
where c.nro_contrato = 5