select menuprice,  stylistname, menuname
from stylist
         inner join price p on stylist.rankcd = p.rankcd
         inner join menu m on p.menucd = m.menucd
order by  p.rankcd ,stylistno,menuname