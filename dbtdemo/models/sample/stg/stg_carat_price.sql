with cc as 
(
    select carat, cut from diamonds_four_cs
),
with amt as
(
    select price from diamonds_prices
)

select * from cc 