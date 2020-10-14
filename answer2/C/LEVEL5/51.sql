select substring(ID, 1, 1) as IDによる分類,
       avg(HP)             as HPの平均,
       avg(MP)             as MPの平均
from パーティー
group by IDによる分類
having avg(HP) >= 100