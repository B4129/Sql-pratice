SELECT K.口座番号, T.回数, K.名義
FROM 口座 AS K
         JOIN (SELECT 口座番号, COUNT(*) AS 回数
               FROM 取引
               GROUP BY 口座番号, 日付
               HAVING COUNT(*) >= 3) AS T
              ON K.口座番号 = T.口座番号
