select 名称 as なまえ,
       hp,
       hp^0 as 攻撃1回目,
       hp^1 as 攻撃2回目,
       hp^2 as 攻撃3回目
from パーティー

where 職業コード = '10'