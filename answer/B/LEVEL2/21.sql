select *
from 商品
where (商品コード = '1' AND 単価 <= 3000)
   OR (商品コード = '3' AND 単価 >= 10000)