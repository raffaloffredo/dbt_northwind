with dim_orderdetails as(
    select
        {{ dbt_utils.generate_surrogate_key(['order_id', 'product_id', 'quantity']) }} as sk_orderdetails
        , *
    from {{ ref('stg_orderdetails')}}
)

select * from dim_orderdetails
