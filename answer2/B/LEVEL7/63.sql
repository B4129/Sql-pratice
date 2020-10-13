select 商品.商品コード,
       商品名,
       単価,
       注文日,
       注文番号,
       数量,
       単価 * 数量 as 売上金額
from 商品
         inner join 注文 注 on 商品.商品コード = 注.商品コード

where 商品.商品コード = 'S0604'
order by 注文番号 asc