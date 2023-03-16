select _c0 as id ,distinct color
from {{ ref('diamonds_four_cs') }}
sort by color,id
