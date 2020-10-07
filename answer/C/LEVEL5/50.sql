select substring(職業コード, 1, 1) as 職業タイプ,
       max(hp),
       min(hp),
       avg(hp)
from パーティー
group by 職業タイプ
order by 職業タイプ