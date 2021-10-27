drop procedure if exists search4;

delimiter $$
create procedure search4()
begin
	select animal_id, name, datetime
    from animal_ins
	order by 2, 3 desc;
end $$
delimiter ;

call search4();