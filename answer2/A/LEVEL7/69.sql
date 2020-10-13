select 取引番号,
       日付,
       口座番号,
       入金額,
       出金額,
       CAST(取.取引事由ID AS VARCHAR) || ':' || 取.取引事由名 AS 取引事由
from 取引
         right join 取引事由 取 on 取引.取引事由id = 取.取引事由id