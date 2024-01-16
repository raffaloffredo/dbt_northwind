with
    orders as (
        select *
        from {{ ref('stg_orders')}}
    )
    , order_details as (
        select *
        from {{ ref('stg_orderdetails')}}
    )
    , test_that as (
        select 
            order_date
            , sum(unit_price * quantity) as revenue
        from orders
        left join order_details
            on orders.order_id = order_details.order_id
        group by order_date
        order by order_date
    )
select *
from test_that
where revenue = 0
