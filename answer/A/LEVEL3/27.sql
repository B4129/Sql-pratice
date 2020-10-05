select 更新日
from 口座
where 更新日 is not null
order by 更新日 asc
limit 10