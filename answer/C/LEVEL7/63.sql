SELECT M.イベント番号, M.イベント名称, E.クリア区分
FROM イベント M
         JOIN 経験イベント E
              ON M.イベント番号 = E.イベント番号
WHERE タイプ ='1'