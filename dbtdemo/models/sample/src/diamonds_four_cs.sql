{{ config(
  materialized='table',
  file_format='delta'
) }}

select _c0 as id,carat, cut, color, clarity,depth
from {{ source('default', 'diamonds') }}

