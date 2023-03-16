{{ config(
  materialized='table',
  file_format='delta'
) }}

select carat, cut, color, clarity
from {{ source('default', 'diamonds') }}

