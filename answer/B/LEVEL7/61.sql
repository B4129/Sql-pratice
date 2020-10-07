select  注文番号, 注文枝番, 商.商品コード
     , 数量 from 注文
inner join 商品 商 on 注文.商品コード = 商.商品コード
order by 注文番号 asc,注文枝番 asc