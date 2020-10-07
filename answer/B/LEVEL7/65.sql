SELECT T.商品コード, COALESCE(S.商品名, '廃番') AS 商品名
FROM 注文 AS T
         LEFT JOIN 商品 AS S
                   ON T.商品コード = S.商品コード
WHERE T.注文日 >= '2016-08-01'
  AND T.注文日 < '2016-09-01'