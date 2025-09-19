select FACTORY_ID, FACTORY_NAME, ADDRESS
from food_factory
where ADDRESS like '%강원도%'
order by FACTORY_ID asc