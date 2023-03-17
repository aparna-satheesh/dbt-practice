SELECT COUNT(*)
FROM {{ ref('diamonds_four_cs') }}
WHERE TRY_CAST({{ depth }} AS {{ double }}) IS NULL