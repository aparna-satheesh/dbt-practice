{{ config(
  materialized='table',
  file_format='delta'
) }}

select carat, cut, color, clarity,depth
from {{ source('default', 'diamonds') }}

