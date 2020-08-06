SELECT CONCAT(nombre, ' ',apellido) AS 'nombre y apellido', fecha_nacimiento, Telefono, direccion 
FROM personas
WHERE dni = '28675888'