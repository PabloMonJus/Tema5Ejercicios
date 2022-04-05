use personal;
create delimiter $$
create procedure mostrarVariable () 
begin 
declare numero int;
set numero=5;
select numero;
end $$
