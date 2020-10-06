SELECT 商品コード, SUM(数量) AS 数量合計
from 注文
group by 商品コード
having sum(数量) < 5
