with 
source as (
    select * from {{source('stripe', 'payment')}}
),



stage as (
    select 
        orderid,
        amount/100 amount,
        status
    from source
)
select * from stage


