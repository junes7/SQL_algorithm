drop procedure if exists join2;

delimiter //
create procedure join2()
begin
	select ai.animal_id, ao.name
    from animal_ins ai
		inner join animal_outs ao
		on ai.animal_id=ao.animal_id
	where ai.datetime > ao.datetime
	order by ai.datetime;
end //
delimiter ;

call join2();