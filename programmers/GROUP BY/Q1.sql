select animal_type, count(*) count
from animal_ins
group by 1
order by 1;