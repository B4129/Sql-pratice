select 名称,MP from パーティー
where mp =  (select max(mp) from パーティー)
