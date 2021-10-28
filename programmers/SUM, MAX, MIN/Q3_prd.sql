drop procedure if exists animalNum;

delimiter //
create procedure animalNum()
begin
	select count(animal_id) as total
    from animal_ins;
end //
delimiter ;

call animalNum();