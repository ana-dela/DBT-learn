with
source as (
    select * from {{source('jaffle_shop', 'customers')}}
),
stage as(
    select 
    id customer_id,
    first_name, last_name
    from source
)
select  * from stage