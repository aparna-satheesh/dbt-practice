with cc as 
(
    select _c0 as id, carat, cut from {{ ref('diamonds_four_cs') }}
),

amt as
(
    select _c0 as id, price from {{ ref('diamonds_prices') }}
),

final as 
(
    select 
        carat,cut from cc
        price from amt

    from cc join amt using (id)
)

select * from final