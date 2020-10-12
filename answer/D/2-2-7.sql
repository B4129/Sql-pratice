SELECT r.ReserveDate AS 予約日, s.StylistNo AS 担当スタイリスト番号,
       s.StylistName AS スタイリスト名, startTime AS 開始時刻,
       StartTime + CAST(ServiceTime || 'minutes' AS interval) AS 終了時刻
FROM Reservation r
         RIGHT JOIN Stylist s ON r.StylistNo = s.StylistNo
ORDER BY r.ReserveDate, s.StylistNo
