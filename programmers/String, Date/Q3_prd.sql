drop procedure if exists findNeut;

delimiter //
create procedure findNeut(
in input varchar(13))
begin
	select animal_id, name,
	case when sex_upon_intake like input then 'X' else 'O' end 중성화
    from animal_ins
    order by 1;
end //
delimiter ;

call findNeut('intact%');