select 注文日,
       注文番号,
       注文枝番,
       数量,
       単価 * 数量 as 注文金額
from 注文
         inner join 廃番商品 廃 on 注文.商品コード = 廃.商品コード
where 廃.商品コード = 'A0009' and  廃番日 < 注文日