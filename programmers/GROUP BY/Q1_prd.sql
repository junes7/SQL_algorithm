drop procedure if exists animalCount;

delimiter //
create procedure animalCount()
begin
	select animal_type, count(*) count
    from animal_ins
    group by 1
    order by 1;
end //
delimiter ;

call animalCount();