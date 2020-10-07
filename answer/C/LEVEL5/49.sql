SELECT CASE クリア区分 WHEN '1' THEN 'クリアした'
                  WHEN '0' THEN '参加したがクリアしていない'
           END AS 区分,
       COUNT(イベント番号) AS イベント数
FROM 経験イベント
GROUP BY クリア区分
