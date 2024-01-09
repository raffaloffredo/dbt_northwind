with dim_customers as(
    select
        {{ dbt_utils.generate_surrogate_key(['customer_id', 'company_name']) }} as sk_customers
        , *
    from {{ ref('stg_customers')}}
)

select * from dim_customers
