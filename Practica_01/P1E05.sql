SELECT CONCAT(nombre, ' ',apellido) AS 'nombre y apellido', fecha_nacimiento, Telefono, direccion 
FROM personas
WHERE dni IN (27890765, 29345777 ,31345778) 
ORDER BY fecha_nacimiento ASC