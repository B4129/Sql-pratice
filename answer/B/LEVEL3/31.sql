select distinct 商品.商品コード from 商品
left join "注文" 注 on "商品"."商品コード" = 注."商品コード"
where 注文日 is null
order by 商品コード asc