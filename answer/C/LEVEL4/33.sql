select 名称 as なまえ,
       HP    as 現在のHP,
       HP + (case
                 when 職業コード in ('11', '21')
                     then 50
                 else 0
           end
           ) as 装備後のHP
from パーティー
