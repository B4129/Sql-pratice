select 名義
from 口座
where length(cast(残高 as varchar)) >= 4
AND substr(cast(残高 as varchar) , length(cast(残高 as varchar))-2, 3) = '000'
