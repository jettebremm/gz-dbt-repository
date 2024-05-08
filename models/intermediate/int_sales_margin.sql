SELECT 
    products_id, 
    date_date, 
    orders_id,
    revenue, 
    quantity
FROM {{ref("stg_raw__sales")}} s
LEFT JOIN {{ref("stg_raw__product")}} p 
    USING (products_id)