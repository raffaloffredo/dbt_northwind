with order_details as (
    select * from {{ source('northwind', 'order_details')}}
)

select * from order_details
