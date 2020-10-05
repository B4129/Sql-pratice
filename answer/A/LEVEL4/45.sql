select 口座番号,
       残高,
       floor(残高 * case when 残高 < 500000 then 0.0001
                 when 残高 >= 500000 AND 残高 < 2000000 then 0.0002
                 when 残高 >= 2000000 then 0.0003
                 end) as 残高別利息
from 口座
order by 残高別利息 desc , 口座番号 asc