select 口座番号
from 口座
    except
select 口座番号
from 廃止口座
order by 口座番号 desc