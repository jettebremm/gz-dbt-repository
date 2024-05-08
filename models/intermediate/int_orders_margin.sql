SELECT orders_id
, date_date
, revenue
, margin
, quantity
, purchase_cost
FROM {{ref("int_sales_margin")}}
ORDER BY orders_id DESC