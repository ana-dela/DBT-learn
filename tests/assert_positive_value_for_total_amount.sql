with payment as (
    select * from {{ref("stage_payments")}}
)

select orderid, sum(amount) 
from payment 
group by 1
having sum(amount)<0