SELECT *
FROM 
{{ref("stg_raw__product")}}
JOIN
{{ref("stg_raw__sales")}}
using (products_id)