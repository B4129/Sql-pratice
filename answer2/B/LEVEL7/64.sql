select 商品.商品コード, 商品名
from 商品
         inner join 注文 注 on 商品.商品コード = 注.商品コード
where 注文日 >='2016-08-01' and 注文日 < '2016-09-01'