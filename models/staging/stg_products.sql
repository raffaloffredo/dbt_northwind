with products as (
    select * from {{ source('northwind', 'products')}}
)

select * from products
