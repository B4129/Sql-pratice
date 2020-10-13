SELECT *
FROM 口座
WHERE 更新日 > ALL (SELECT 日付
                 FROM 取引
)