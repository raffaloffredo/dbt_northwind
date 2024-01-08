with customers as (
    select * from {{ source('northwind', 'customers')}}
)

select * from customers
