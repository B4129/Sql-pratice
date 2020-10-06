select 注文日,
       SUBSTRING(注文番号, 9, 4) as a
from 注文
where cast(SUBSTRING(注文番号, 9, 4) as integer) >= 1000 and
        cast (SUBSTRING(注文番号, 9, 4) as integer) <= 2000
order by SUBSTRING(注文番号, 9, 4)