select 口座.口座番号, 名義, 残高
from 口座
         inner join 取引 取 on 口座.口座番号 = 取.口座番号
union
select 廃止口座.口座番号, '解約済み' as 名義, 0 as 残高
from 廃止口座
         inner join 取引 取 on 廃止口座.口座番号 = 取.口座番号

where 日付 = '2016/03/01'