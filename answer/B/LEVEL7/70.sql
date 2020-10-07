SELECT S1.商品コード, S1.商品名,
       S2.商品コード as 関連商品コード, S2.商品名 as 関連商品名
FROM 商品 as S1
         inner join 商品 as S2
              on S1.商品コード = S2.関連商品コード