select substr(名義, 1, 1)                  as 名義,
       count(*)                          as データ件数,
       avg(length(replace(名義, '　', ''))) as 名義文字数平均
from 口座
group by substr(名義, 1, 1)
having avg(length(replace(名義, '　', ''))) > 5
    OR count(名義) >= 10
