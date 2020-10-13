select 口座.口座番号,名義, 残高 from 口座
inner join 取引 取 on 口座.口座番号 = 取.口座番号
where 日付 = '2016/03/01'