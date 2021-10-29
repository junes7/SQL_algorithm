drop procedure if exists nameNum;

delimiter //
create procedure nameNum()
begin
	select count(distinct name) as count
    from animal_ins
	where name is not null;
end //
delimiter ;

call nameNum();