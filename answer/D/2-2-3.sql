select r2.reserveno, stylistname, menuname, duration, menuprice
from reservation r
         inner join stylist s on s.stylistno = r.stylistno
         inner join reservedetail r2 on r.reserveno = r2.reserveno
         inner join menu m on r2.menucd = m.menucd
         inner join rank r3 on r3.rankcd = s.rankcd
         inner join price p on m.menucd = p.menucd and r3.rankcd = p.rankcd
