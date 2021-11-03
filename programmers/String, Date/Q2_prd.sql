drop procedure if exists findAnimal;

desc animal_ins;
delimiter //
create procedure findAnimal(
in typeA varchar(3),
in input varchar(12))
begin
	select animal_id, name
    from animal_ins
    where animal_type=typeA and
    name like input
    order by 2;
end //
delimiter ;

call findAnimal('Dog', '%el%');
call findAnimal('Cat', '%el%');