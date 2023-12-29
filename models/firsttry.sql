with cte as 
(select *
from  `dbt-tutorial.jaffle_shop.customers` as c
left join  `dbt-tutorial.jaffle_shop.orders`  as o on c.ID = o.ID
limit 3)
select * from cte