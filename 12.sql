use personal;
delimiter $$
create procedure notasAlumnos(nota double)
begin 
declare mensaje varchar(16);
	case
	when nota>=0 and nota<5 then set mensaje='Insuficiente';
    when nota>=5 and nota<6 then set mensaje='Suficiente';
    when nota>=6 and nota<7 then set mensaje='Bien';
    when nota>=7 and nota<9 then set mensaje='Notable';
    when nota>=9 and nota<=10 then set mensaje='Sobresaliente';
    when nota<0 and nota>10 then set mensaje='Nota no valida';
	end case;
select mensaje;
end $$
delimiter ;