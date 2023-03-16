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
        cc.carat,cc.cut,amt.price

    from cc join amt using (id)
)

select * from final