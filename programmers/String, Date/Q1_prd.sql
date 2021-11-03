drop procedure if exists nameList;

delimiter //
create procedure nameList()
begin
	select animal_id, name, sex_upon_intake
    from animal_ins
    where name in('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
    order by 1;
end //
delimiter ;

call nameList();