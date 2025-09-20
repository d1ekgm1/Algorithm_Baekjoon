select o.product_id, p.product_name, sum(p.price*o.amount) as total_sales
from food_order as o
join food_product as p on o.product_id = p.product_id
where date_format(o.produce_date,'%Y-%m') = '2022-05'
group by p.product_id 
order by total_sales desc, o.product_id asc
