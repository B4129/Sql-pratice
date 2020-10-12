-- 所要時間の確認
SELECT SUM(m.duration)
FROM ReserveDetail d
         JOIN Menu m
              ON d.MenuCD = m.MenuCD
WHERE d.ReserveNo = 4;

-- 金額の確認
SELECT SUM(p.MenuPrice)
FROM Reservation r
         JOIN ReserveDetail d
              ON r.ReserveNo = d.ReserveNo
         JOIN Stylist s
              ON r.StylistNo = s.StylistNo
         JOIN Price p
              ON d.MenuCD = p.MenuCD
                  AND s.RankCD = p.RankCD
WHERE d.ReserveNo = 4;

-- トランザクション取り消しと再登録
ROLLBACK;
BEGIN;
INSERT INTO Reservation VALUES (4, '2018-10-01 11:45', '0008', '0', '2018-10-02', '11:00', 90, '04', 14400, NULL);
INSERT INTO ReserveDetail VALUES (4, 'C');
INSERT INTO ReserveDetail VALUES (4, 'R');
COMMIT;
