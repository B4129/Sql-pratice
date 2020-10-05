update 口座
set 残高 = 残高 + (
    select COALESCE(SUM(入金額) - SUM(出金額), 0)
    from 取引
    where 取引.口座番号 = '0351333'
      AND 日付 = '2018-01-11')
where 口座.口座番号 = '0351333'