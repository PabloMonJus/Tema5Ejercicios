use personal;
delimiter $$
create procedure actualizarFecha(nombreDepartamento char(30), OUT mensaje varchar(2))
begin
declare fecha date;
set mensaje='OK';


set fecha=(select Fecha_Alta from datosPersonales DP, empleados E, departamento D 
where DP.claveEmpleado=E.claveEmpleado and E.claveDepartamento=D.claveDepartamento 
and D.nombre=nombreDepartamento order by 1 limit 1);

update datosPersonales set Fecha_Alta='2022-04-04' where Fecha_Alta=fecha;
end $$

select mensaje;
select * from datosPersonales order by Fecha_Alta desc;
delimiter ;