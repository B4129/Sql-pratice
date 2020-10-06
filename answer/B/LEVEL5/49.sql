select 商品コード, SUM(数量)

from 注文
group by 商品コード
order by 商品コード