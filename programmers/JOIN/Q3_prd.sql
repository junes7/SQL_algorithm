drop procedure if exists join3;

delimiter //
create procedure join3()
begin
	select name, datetime
    from animal_ins
    where animal_id not in (select animal_id
							from animal_outs)
	order by 2
    limit 3;
end //
delimiter ;

call join3();