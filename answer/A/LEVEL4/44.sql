select 口座番号,種別, floor(残高 * 0.0002) as 利息
from 口座
order by 残高 desc