select 商品コード, 商品名, 単価
from 商品
where 商品区分 = '9' AND 単価 <=1000 OR 単価 > 10000
order by 単価 asc , 商品コード asc