drop procedure if exists search3;

delimiter $$
create procedure search3()
begin
	select animal_id, name
    from animal_ins
    order by 1;
end $$
delimiter ;

call search3();