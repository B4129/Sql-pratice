
update 商品 set 商品コード =  replace(商品コード,'M','E')
where substring(商品コード,1,1) = 'M'