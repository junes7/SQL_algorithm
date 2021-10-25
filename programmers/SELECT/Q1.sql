-- method 1
select *
from animal_ins
order by animal_id;
-- method 2
select animal_id, animal_type, datetime, intake_condition, name, sex_upon_intake
from animal_ins
order by animal_id;