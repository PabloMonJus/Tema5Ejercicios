use personal;

create delimiter $$
create procedure devolverDni(clave char(8))
begin
declare dni2 varchar(10);
set dni2 = (select Dni from datosPersonales D,empleados E 
where D.claveEmpleado=E.claveEmpleado and E.claveEmpleado=clave);
select dni2;
end $$