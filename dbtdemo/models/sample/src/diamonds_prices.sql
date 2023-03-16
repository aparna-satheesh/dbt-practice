select color,cut, avg(price)as price
from diamonds
group by color,cut
order by price desc