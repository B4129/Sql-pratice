select (case
    when max(mp) < 500 then '敵は見とれている！'
    when min(mp) >= 500 and max(1000) > 1000 then '敵は呆然としている！'
    when min(mp) >= 1000 then '敵はひれ伏している！' end)
from パーティー