select substring(注文番号, 1, 6) as 年月,
       count(*)              AS 注文件数
from 注文
where 注文枝番 = 1
group by 年月 order by 年月 desc