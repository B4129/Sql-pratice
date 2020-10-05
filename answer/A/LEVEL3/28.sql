select 更新日,残高
from 口座
where 残高 <> 0 AND 更新日 is not null
order by 残高 asc, 更新日 desc
OFFSET 10 LIMIT 10;

--
-- SELECT 更新日, 残高
--   FROM 口座
--  WHERE 残高 > 0
--    AND 更新日 IS NOT NULL
--  ORDER BY 残高, 更新日 DESC
-- OFFSET 10
--  FETCH FIRST 10 ROWS ONLY