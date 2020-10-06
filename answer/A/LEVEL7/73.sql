select coalesce(入金額, 出金額) as 取引金額
from 口座
         inner join (SELECT 口座番号, 日付, 取引事由ID, 入金額, 出金額
                     FROM 取引
                     WHERE (入金額 >= 1000000 OR 出金額 >= 1000000)
                       AND 日付 >= '2018-01-01') AS 取 on 口座.口座番号 = 取.口座番号
where 残高 >= 5000000
