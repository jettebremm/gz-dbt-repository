with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        CAST(date_date AS INT64) AS date_date,
        orders_id,
        pdt_id AS products_id,
        revenue,
        CAST (quantity AS INT64) AS quantity

    from source

)

select * from renamed
