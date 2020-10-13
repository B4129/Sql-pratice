select sum(数量), 注文日 from 注文
group by 注文日
order by 注文日