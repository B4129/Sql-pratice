select 口座番号, 名義, '〇' as 有効
from 口座
union
select 口座番号, 名義 , '×' as 有効
from 廃止口座
order by 名義 asc