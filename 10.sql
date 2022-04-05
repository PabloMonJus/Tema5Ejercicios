use personal;
delimiter $$
create function apellidosDni(dniEmpleado varchar(10))
returns char (30)
deterministic
begin
declare apellido char(30);
declare codEmpleado char(8);
	set codEmpleado=(select E.claveEmpleado from empleados E, datosPersonales DP 
	where E.claveEmpleado=DP.claveEmpleado and DP.dni=dniEmpleado);
	set apellido=(select apellidos from empleados  where claveEmpleado=codEmpleado);
return apellido;
end $$
delimiter ;