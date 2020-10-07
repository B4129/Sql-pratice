SELECT イベント番号, イベント名称
FROM イベント
WHERE イベント番号 NOT IN (SELECT イベント番号
                     FROM 経験イベント)
ORDER BY イベント番号
