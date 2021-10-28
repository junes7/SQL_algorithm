drop procedure if exists minDate;

delimiter //
create procedure minDate()
begin
	select min(datetime) as 시간
    from animal_ins;
end //
delimiter ;

call minDate();