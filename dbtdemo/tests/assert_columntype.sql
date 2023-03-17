SELECT COUNT(*)
FROM {{ ref('diamonds_four_cs') }}
WHERE CAST({{ depth }} AS {{ double }}) IS NULL