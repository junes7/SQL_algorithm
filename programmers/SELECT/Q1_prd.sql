-- check previous procedure
drop procedure if exists search;
-- create procedure
delimiter $$
create procedure search()
begin
    select animal_id, animal_type, datetime, intake_condition, name, sex_upon_intake
    from animal_ins
    order by 1;
end $$
delimiter ;
-- check result
call search();