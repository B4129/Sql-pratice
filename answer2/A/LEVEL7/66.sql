select 口座.口座番号,名義, 残高,日付,入金額,出金額 from 口座
inner join 取引 取 on 口座.口座番号 = 取.口座番号
where 取.口座番号 = '0887132'
order by 取引番号 asc