select color,cut, avg(price)as price
from diamonds
group by color
order by price desc