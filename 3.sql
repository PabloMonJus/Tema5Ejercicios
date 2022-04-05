use personal;
create delimiter $$
create procedure suma(num1 int, num2 int)
begin
declare suma int;
set suma = num1+num2;
select suma;
end $$