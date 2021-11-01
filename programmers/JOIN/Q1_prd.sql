drop procedure if exists join1;

delimiter //
create procedure join1()
begin
	select animal_id, name
	from animal_outs
	where animal_id not in(select animal_id
						   from animal_ins);
end //
delimiter ;

call join1();