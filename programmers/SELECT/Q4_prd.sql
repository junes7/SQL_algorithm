drop procedure if exists search2;

delimiter $$
create procedure search2(
in cond varchar(7))
begin
	select animal_id, name
    from animal_ins
    where intake_condition <> cond
    order by 1;
end $$
delimiter ;

call search2('Aged');