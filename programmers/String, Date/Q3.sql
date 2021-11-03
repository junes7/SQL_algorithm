-- method 1
select animal_id, name,
case when sex_upon_intake like '%Neutered%' or sex_upon_intake like '%Spayed%' then 'O' else 'X' end 중성화
from animal_ins
order by 1;
-- method 2
select animal_id, name,
case when sex_upon_intake like 'intact%' then 'X' else 'O' end 중성화
from animal_ins
order by 1;