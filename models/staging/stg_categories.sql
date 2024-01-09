with categories as (
    select * from {{ source('northwind', 'categories')}}
)

select * from categories
