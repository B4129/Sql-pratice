select 注文日,
       商品.商品コード || ':' || coalesce(商品.商品名,'廃盤済み'),
       coalesce(数量,0) as 数量
from 商品
         left join 注文 注 on 商品.商品コード = 注.商品コード
        left join 廃番商品 廃 on 注.商品コード = 廃.商品コード
where 注.商品コード is not null  OR 商品.商品区分='3' OR 廃.商品区分 ='3'
