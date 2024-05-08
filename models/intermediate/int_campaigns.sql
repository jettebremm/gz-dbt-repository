WITH union_all_data AS (
    SELECT *
    FROM {{ref("stg_raw__adwords")}}
    UNION ALL
    SELECT *
    FROM {{ref("stg_raw__bing")}}
    UNION ALL
    SELECT *
    FROM {{ref("stg_raw__criteo")}}
    UNION ALL
    SELECT * 
    FROM {{ref("stg_raw__facebook")}}
)
SELECT campaign_key
     , COUNT(*) AS row_count
FROM union_all_data
GROUP BY campaign_key
HAVING COUNT(*) > 2