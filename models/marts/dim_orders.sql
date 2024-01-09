with dim_orders as(
    select
        {{ dbt_utils.generate_surrogate_key(['order_id', 'customer_id']) }} as sk_orders
        , *
    from {{ ref('stg_orders')}}
)

select * from dim_orders
