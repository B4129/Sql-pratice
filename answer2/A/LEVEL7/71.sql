select 口座.口座番号,
       名義,
       残高,
       日付,
       入金額,
       出金額,
       取引事由名
from 口座
         inner join 取引 取 on 口座.口座番号 = 取.口座番号
         inner join 取引事由 取2 on 取.取引事由ID = 取2.取引事由ID
where 取.口座番号 = '0887132'
order by 取引番号 asc