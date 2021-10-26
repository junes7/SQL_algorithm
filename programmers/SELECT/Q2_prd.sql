drop procedure if exists reverseSearch;

delimiter $$
create procedure reverseSearch()
begin
	select name, datetime
    from animal_ins
    order by animal_id desc;
end $$
delimiter ;

call reverseSearch();