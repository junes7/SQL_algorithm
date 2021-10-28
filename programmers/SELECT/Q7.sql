-- method 1
select name
from animal_ins
where datetime=(select min(datetime)
				from animal_ins);
-- method 2
select name
from animal_ins
where datetime in(select min(datetime)
				  from animal_ins);