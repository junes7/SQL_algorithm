drop procedure if exists search5;

delimiter $$
create procedure search5()
begin
	select name
    from animal_ins
    where datetime in(select min(datetime)
					  from animal_ins);
end $$
delimiter ;

call search5();