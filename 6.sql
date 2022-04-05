drop function if exists numeroPar
delimiter $$
create function numeroPar(numero int)
returns boolean
deterministic
begin
declare booleano boolean;
	if MOD(numero,2)=0 then 
	set booleano=true;
	else
	set booleano=false;
	end if;
return booleano;
end $$
delimiter ;