drop procedure if exists nameCount;

delimiter //
create procedure nameCount()
begin
	select name, count(name) count
    from animal_ins
	where name is not null
	group by 1
    having count(name) >= 2
    order by 1;
end //
delimiter ;

call nameCount();