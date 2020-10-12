SELECT 予約日, スタイリスト名,
       MAX(CASE WHEN 開始時刻 = 10 THEN 終了時刻 END) AS "10時台",
       MAX(CASE WHEN 開始時刻 = 11 THEN 終了時刻 END) AS "11時台",
       MAX(CASE WHEN 開始時刻 = 12 THEN 終了時刻 END) AS "12時台",
       MAX(CASE WHEN 開始時刻 = 13 THEN 終了時刻 END) AS "13時台",
       MAX(CASE WHEN 開始時刻 = 14 THEN 終了時刻 END) AS "14時台",
       MAX(CASE WHEN 開始時刻 = 15 THEN 終了時刻 END) AS "15時台",
       MAX(CASE WHEN 開始時刻 = 16 THEN 終了時刻 END) AS "16時台",
       MAX(CASE WHEN 開始時刻 = 17 THEN 終了時刻 END) AS "17時台",
       MAX(CASE WHEN 開始時刻 = 18 THEN 終了時刻 END) AS "18時台"
FROM (SELECT r.ReserveDate AS 予約日, s.StylistNo AS 担当スタイリスト番号,
             s.StylistName AS スタイリスト名, startTime,
             EXTRACT(hour from StartTime) AS 開始時刻,
             StartTime + CAST(ServiceTime || 'minutes' AS interval) AS 終了時刻
      FROM Reservation r
               RIGHT JOIN Stylist s ON r.StylistNo = s.StylistNo) t
GROUP BY 予約日, 担当スタイリスト番号, スタイリスト名
ORDER BY CASE WHEN 予約日 IS NULL THEN 1 ELSE 0 END, 予約日, 担当スタイリスト番号
