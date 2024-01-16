with 
    orders as (
        select * from {{ source('northwind', 'orders')}}
        {% if env_var("DBT_TARGET_SCHEMA") == 'dev' %}
    
    -- this filter will only be applied to the development schema
    limit 100

        {% endif %}
    )

select * from orders

