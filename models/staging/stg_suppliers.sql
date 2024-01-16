with suppliers as (
    select * from {{ source('northwind', 'suppliers')}}
)

select * from suppliers
