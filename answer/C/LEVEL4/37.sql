select イベント番号,
       イベント名称,
       (case タイプ
            when '1' then '強制'
            when '2' then 'フリー'
            when '3' then '特殊' end
           ) as タイプ,
       (case
            when イベント番号 >= 1 and イベント番号 <= 10 then '序盤'
            when イベント番号 >= 11 and イベント番号 <= 17 then '序盤'
            else '終盤'
           end
           ) as 発生時期
from イベント