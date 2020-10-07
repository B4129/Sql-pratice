select sum(
               (case
                    when hp < 100 then 1
                    when hp >= 100 and hp < 150 then 2
                    when hp >= 150 and hp < 200 then 3
                    when hp >= 200 then 5
                   end
                   )
           ) as 開けることの出来る扉の数
from パーティー
