select _c0 as id, color,cut, avg(price)as price
from {{ source('default', 'diamonds') }}
group by color,cut,id
order by price desc