drop function if exists areaCirculo
delimiter $$
create function areaCirculo(radio int)
returns double
deterministic
begin
declare valor double;
set valor=3.14*(radio*radio);
return valor;
end $$
delimiter ;
