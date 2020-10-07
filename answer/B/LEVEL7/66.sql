select 注文日,
       商品.商品コード || ':' || 商品名,
       coalesce(数量,0) as 数量
from 商品
         left join 注文 注 on 商品.商品コード = 注.商品コード

where 注.商品コード is not null  OR 商品区分='3'
