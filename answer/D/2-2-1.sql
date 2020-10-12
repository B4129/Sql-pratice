select stylistname, gender, coalesce(r.title, 'アシスタント') as 肩書
from stylist
inner join rank r on r.rankcd = stylist.rankcd