with cc as 
(
    select carat, cut from {{ ref('diamonds_four_cs') }}
)
select * from cc 