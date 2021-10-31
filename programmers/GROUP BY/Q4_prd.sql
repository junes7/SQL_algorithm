﻿drop procedure if exists countHour2;

delimiter //
create procedure countHour2()
begin
	set @HourList := -1;
    select (@HourList := @HourList + 1) as HOUR,
    (select count(*) from animal_outs
     where hour(datetime)=@HourList) as COUNT
     from animal_outs
     where @HourList < 23
     group by 1
     order by 1;
end //
delimiter ;

call countHour2();