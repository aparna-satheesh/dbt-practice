select _c0 as id, color,cut, avg(price)as price
from {{ source('default', 'diamonds') }}
group by color,cut
order by price desc, id