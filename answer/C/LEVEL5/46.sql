select (case タイプ
            when '1' then '強制'
            when '2' then 'フリー'
            when '3' then '特殊'
            else 'バグ' end
           ),
       count(*)
from イベント
group by タイプ