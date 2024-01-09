with dim_suppliers as(
    select
        {{ dbt_utils.generate_surrogate_key(['supplier_id', 'company_name']) }} as sk_suppliers
        , *
    from {{ ref('stg_suppliers')}}
)

select * from dim_suppliers
