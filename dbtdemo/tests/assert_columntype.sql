SELECT COUNT(*)
FROM {{ ref('diamonds_four_cs') }}
WHERE CAST(diamonds_four_cs.depth AS DOUBLE PRECISION) IS NULL 
