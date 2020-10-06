select coalesce(入金額, 出金額) as 取引金額
from 口座
         inner join 取引 取 on 口座.口座番号 = 取.口座番号
where 残高 >= 5000000
  and 日付 >= '2018-01-01'
  and coalesce(入金額, 出金額) >= 1000000