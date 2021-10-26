-- method 1
select animal_id, name
from animal_ins
where intake_condition <> 'Aged'
order by 1;
-- method 2
select animal_id, name
from animal_ins
where intake_condition not in('Aged')
order by 1;