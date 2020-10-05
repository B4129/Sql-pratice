select distinct  種別 as 種別コード,
       case 種別
           when '1' then '普通'
           when '2' then '当座'
           when '3' then '別段' end as 種別名
from 口座
order by 種別コード