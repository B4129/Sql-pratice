select "注文日",
       "注文番号",
       "注文枝番",
       注文.商品コード,
       "商品名",
       "数量",
       単価,
       (数量 * 単価) - coalesce(クーポン割引料,'0') as 注文金額
from 注文
         inner join (
    select 商品コード, 商品名, 単価
    from 商品
    union all
    select 商品コード, 商品名, 単価
    from 廃番商品
)
    as A on 注文.商品コード = A.商品コード
where 注文番号 ='201704030010'
