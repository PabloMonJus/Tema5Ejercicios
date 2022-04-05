use personal;
set GLOBAL log_bin_trust_function_creators = 1;
create delimiter $$
create function suma (num1 int, num2 int)
returns int
begin 
declare suma int;

set suma = num1+num2;

return suma;
end $$ 


