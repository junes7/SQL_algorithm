drop procedure if exists maxDate;

delimiter //
create procedure maxDate()
begin
	select max(datetime) as 시간
    from animal_ins;
end //
delimiter ;

call maxDate();