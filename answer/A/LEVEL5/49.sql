select sum(残高) as 残高の合計,
       max(残高) as 最大,
       min(残高) as 最小,
       avg(残高) as 平均,
       count(残高)
from 口座