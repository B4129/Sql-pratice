select 口座番号,日付,取引事由名,COALESCE(入金額,出金額)as 取引金額
from 取引
inner join 取引事由 as t on 取引.取引事由ID = t.取引事由ID
where 口座番号 IN('0311240','1234161','2750902')
order by 口座番号 asc