﻿select name, count(name) count
from animal_ins
where name is not null
group by 1
having count(name) >= 2
order by 1;