use personal;
drop function if exists numeroEmpleados;
delimiter $$
create function numeroEmpleados(departamento varchar(16))
returns int
deterministic
begin
	declare contador int;
	set contador = (select count(*)
    from empleados E, departamento D
    where E.claveDepartamento=D.claveDepartamento
    and D.nombre=departamento);
return contador;
end $$
delimiter ;