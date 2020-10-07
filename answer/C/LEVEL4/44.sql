select coalesce(cast(前提イベント番号 as varchar),'前提なし'),
       イベント番号,
       coalesce(cast(後続イベント番号 as varchar),'前提なし')
from イベント
