use personal;
delimiter $$
create function empleadosPersonal()
returns int 
deterministic
begin 
declare contador int;
set contador =
	(select count(*) from empleados E, departamento D 
	where E.claveDepartamento=D.claveDepartamento and D.nombre='Personal');
return contador;
end $$
delimiter ;