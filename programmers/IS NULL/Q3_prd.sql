drop procedure ifnull;

delimiter //
create procedure ifnull()
begin
	select animal_type, ifnull(name, "No name") name, sex_upon_intake
    from animal_ins
    order by animal_id;
end //
delimiter ;

call ifnull();