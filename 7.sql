drop procedure if exists diaSemana()
delimiter $$
create procedure diaSemana(numero int)
begin 
declare dia varchar(10);
case

	when numero=1 then set dia='Lunes';
	when numero=2 then set dia='Martes';
	when numero=3 then set dia='Miercoles';
	when numero=4 then set dia='Jueves';
	when numero=5 then set dia='Viernes';
	when numero=6 then set dia='Sabado';
	when numero=7 then set dia='Domingo';
    else set dia='No valido';

end case;
select dia;
end $$
delimiter ;