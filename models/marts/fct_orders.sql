with customers as (
    select * from {{ ref('dim_customers')}}
)
, orders as (
    select * from {{ ref('stg_orders')}}
)

select 
    customers.sk_customer
    , orders.*
from orders
left join customers
    on orders.customer_id = customers.customer_id
    