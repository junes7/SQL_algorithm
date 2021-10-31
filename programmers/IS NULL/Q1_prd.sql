drop procedure if exists isnull1;

delimiter //
create procedure isnull1()
begin
	select animal_id
    from animal_ins
	where name is null
	order by 1;
end //
delimiter ;

call isnull1();