select substring(口座番号,length(口座番号)-1,1) as 口座番号グループ ,count(*) as 件数
from 口座
group by 口座番号グループ
order by 件数 desc