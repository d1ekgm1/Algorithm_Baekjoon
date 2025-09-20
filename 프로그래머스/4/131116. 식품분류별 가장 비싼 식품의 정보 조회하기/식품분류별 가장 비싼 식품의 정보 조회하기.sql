select category, price as max_price, product_name
from(select category, price, product_name, 
        rank() over (partition by category order by price desc) as r
    from food_product) as a
where r=1 and category in ('과자','국','김치','식용유')
order by price desc

