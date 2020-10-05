select 名義 from 口座
INTERSECT
select 名義 from 廃止口座
order by 名義 asc