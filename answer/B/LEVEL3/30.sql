select *
from 廃番商品
where 廃番日 >= '2015-12-01' and 廃番日 < '2016-01-01' OR 売上個数 >= 100
order by 売上個数 desc