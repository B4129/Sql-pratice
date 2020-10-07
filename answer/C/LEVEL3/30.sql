FROM パーティー
WHERE 職業コード LIKE '1%'
UNION
SELECT 'M' AS 職業コード ,職業コード,ID,名称
FROM パーティー
WHERE 職業コード LIKE '2%'
UNION
SELECT 'A' AS 職業コード ,職業コード,ID,名称
FROM パーティー
WHERE 職業コード <> '1%' AND 職業コード <>  '2%'