use personal;
drop procedure if exists fechaEmpleado;
delimiter $$
create procedure fechaEmpleado(nombreDepartamento varchar(16))
begin
 select Fecha_Alta from datosPersonales DP, empleados E, departamento D
	where DP.claveEmpleado=E.claveEmpleado and E.claveDepartamento=D.claveDepartamento
    and D.nombre=nombreDepartamento order by 1 limit 1;
end $$
delimiter ;