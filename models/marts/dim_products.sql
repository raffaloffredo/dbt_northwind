with dim_products as(
    select
        {{ dbt_utils.generate_surrogate_key(['product_id', 'supplier_id']) }} as sk_products
        , *
    from {{ ref('stg_products')}}
)

select * from dim_products
