drop procedure if exists isnotnull;

delimiter //
create procedure isnotnull()
begin
	select animal_id
    from animal_ins
    where name is not null
    order by 1;
end //
delimiter ;

call isnotnull();