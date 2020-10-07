SELECT イベント番号, イベント名称
FROM イベント
WHERE イベント番号 <ALL (SELECT イベント番号
                   FROM 経験イベント
                   WHERE ルート番号 = 5)
