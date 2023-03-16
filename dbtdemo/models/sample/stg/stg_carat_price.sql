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
        carat from cc.carat,
        cut from cc.cut
        price from amt.price

    from cc join amt using (_c0)
)

select * from final