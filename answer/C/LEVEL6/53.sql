select 名称                     as なまえ,
       hp                     as 現在のHP,
       round(CAST(HP AS NUMERIC) / (SELECT SUM(HP) FROM パーティー) * 100, 1) as パーティーでの割合
from パーティー
where 職業コード = '01'