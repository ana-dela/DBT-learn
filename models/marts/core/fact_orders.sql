with orders as (
    select * from {{ref("stage_order")}}
),
 payments as (
    select * from {{ref("stage_payments")}}
),


order_payment as (
    select orderid, sum(case when status = 'success' then amount end) amount
    from payments
    group by 1
),

final as (
    select o.order_id, o.customer_id, p.amount
    from orders o left join order_payment p 
    on o.order_id = p.orderid
)

select * from final
order by order_id