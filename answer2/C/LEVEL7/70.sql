SELECT E.イベント番号, E.イベント名称, Z.前提イベント数
FROM イベント E
         JOIN (SELECT 前提イベント番号,
                      COUNT(前提イベント番号) AS 前提イベント数
               FROM イベント
               WHERE 前提イベント番号 IS NOT NULL
               GROUP BY 前提イベント番号) Z
              ON E.イベント番号 = Z.前提イベント番号
ORDER BY E.イベント番号