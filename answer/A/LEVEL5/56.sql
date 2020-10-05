select substr(COALESCE(CAST(更新日 AS VARCHAR), 'XXXX'), 1, 4) as 更新年,
       sum(残高),
       max(残高),
       min(残高),
       avg(残高),
       count(*) as 件数
from 口座
group by 更新年