SELECT (case when 更新日 is null then '設定なし'
    else  cast(更新日 as varchar) end) as 更新日
from 口座