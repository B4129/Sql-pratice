select 口座番号,名義,
       case
           when 残高 < 100000 then 'C'
           when 残高 >= 100000 AND 残高 < 1000000  then 'B'
           else 'A' END as 残高ランク
from 口座