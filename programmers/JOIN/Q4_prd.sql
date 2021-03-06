drop procedure if exists join4;

delimiter //
create procedure join4()
begin
	select ai.animal_id, ai.animal_type, ai.name
    from animal_ins ai
		inner join animal_outs ao
        on ai.animal_id=ao.animal_id
	where ai.sex_upon_intake <> ao.sex_upon_outcome
    order by 1;
end //
delimiter ;

call join4();