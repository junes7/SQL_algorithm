drop procedure if exists search1;

delimiter $$
create procedure search1(
in cond varchar(7))
begin
	select animal_id, name
    from animal_ins
    where intake_condition=cond
    order by 1;
end $$
delimiter ;

call search1('Sick');