SELECT *,
quantity * purchase_price AS purchase_cost
FROM 
{{ref("stg_raw__product")}}
LEFT JOIN
{{ref("stg_raw__sales")}}
using (products_id)

