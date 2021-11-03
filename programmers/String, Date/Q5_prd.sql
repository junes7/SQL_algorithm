drop procedure if exists dateList;

delimiter //
create procedure dateList()
begin
	select animal_id, name, date_format(datetime, '%Y-%m-%d') 날짜
    from animal_ins
    order by 1;
end //
delimiter ;

call dateList();