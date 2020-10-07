select 商品.商品コード,
       商品名,
       単価,
       sum(数量) as 売上個数,
       sum(数量) * 単価 as 総売上金額
from 商品
         inner join 注文 注 on 商品.商品コード = 注.商品コード
where 商品.商品コード like 'B%'
group by 商品.商品コード, 商品名, 単価
order by 商品コード asc